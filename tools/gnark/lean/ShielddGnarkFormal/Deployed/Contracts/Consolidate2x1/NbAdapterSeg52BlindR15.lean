import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows151 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6940 rho ∧ Seg52.relationRow7794 rho ∧ Seg52.relationRow7795 rho ∧ Seg52.relationRow7796 rho ∧ Seg52.relationRow7797 rho ∧ Seg52.relationRow7798 rho ∧ Seg52.relationRow7799 rho ∧ Seg52.relationRow7800 rho ∧ Seg52.relationRow7801 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, p97, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6940, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7794, r7795, r7796, r7797, r7798, r7799, r7800, r7801, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6940, r7794, r7795, r7796, r7797, r7798, r7799, r7800, r7801⟩

theorem seg52Blind_rung151 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51329 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 151)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      151 (Bool.toZMod bit) (seg52BlindAccState rho 151)
      (seg52BlindAccState rho 152) := by
  obtain ⟨r6940, r7794, r7795, r7796, r7797, r7798, r7799, r7800, r7801⟩ := seg52Blind_rows151 rho h
  unfold Seg52.relationRow6940 at r6940

  unfold Seg52.relationRow7794 at r7794

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7794

  unfold Seg52.relationRow7795 at r7795

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7795

  unfold Seg52.relationRow7796 at r7796

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7796

  unfold Seg52.relationRow7797 at r7797

  unfold Seg52.relationRow7798 at r7798

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7798

  unfold Seg52.relationRow7799 at r7799

  unfold Seg52.relationRow7800 at r7800

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7800

  unfold Seg52.relationRow7801 at r7801

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7801

  have hnextx : seg52BlindDeltaX151 rho =
      seg52BlindDeltaX150 rho + rho 52188 := by
    unfold seg52BlindDeltaX151 seg52BlindDeltaX150
    ring

  have hnexty : seg52BlindDeltaY151 rho =
      seg52BlindDeltaY150 rho + rho 52189 := by
    unfold seg52BlindDeltaY151 seg52BlindDeltaY150
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 151
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX150 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY150 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX151 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY151 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY150 rho) (rho 52189)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 151)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7217505745159762701548223158489870661170246483945651316552729469734220794956 : Seg52.F) (1074654486683884151620951001674271570956398811327129413381684607499304305171 : Seg52.F)
    (8292160231843646853169174160164142232126645295272780729934414077233525100127 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (3857892491519779135344199565860547810935464320097447898939552183113158129847 : Seg52.F) (3791555781740349848523116392869666912510788963065689978530698909597937955826 : Seg52.F)
    (2222663926872630171207868096685297004356390653210761896632018977249448862921 : Seg52.F) (829087343892485685325166829535637271736707442592154759868976674835284919748 : Seg52.F)
    (7369807262744486272627873937107274960419500523826934414553548848418104933870 : Seg52.F) (1226956004268607722700601780291675870205652851208412511382503986183188444085 : Seg52.F)
    (7615374405535884738923658109245909259639191892561909068066256781082124319293 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX150 rho) (seg52BlindDeltaY150 rho) (rho 51329)
    (rho 52182) (rho 52183) (rho 52184) (rho 52186)
    (rho 52185) (rho 52187) (rho 52188) (rho 52189) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 151)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L151]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX150 seg52BlindDeltaY150;
        first | linear_combination r7794 | linear_combination -r7794)
    (by unfold seg52BlindDeltaX150 seg52BlindDeltaY150;
        first | linear_combination r7795 | linear_combination -r7795)
    (by unfold seg52BlindDeltaX150 seg52BlindDeltaY150;
        first | linear_combination r7796 | linear_combination -r7796)
    (by first | linear_combination r7797 | linear_combination -r7797)
    (by unfold seg52BlindDeltaX150 seg52BlindDeltaY150;
        first | linear_combination r7798 | linear_combination -r7798)
    (by first | linear_combination r7799 | linear_combination -r7799)
    (by unfold seg52BlindDeltaX150; first | linear_combination r7800 | linear_combination -r7800)
    (by unfold seg52BlindDeltaY150; first | linear_combination r7801 | linear_combination -r7801)
    (by linear_combination r6940)

theorem seg52Blind_rows152 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6941 rho ∧ Seg52.relationRow7802 rho ∧ Seg52.relationRow7803 rho ∧ Seg52.relationRow7804 rho ∧ Seg52.relationRow7805 rho ∧ Seg52.relationRow7806 rho ∧ Seg52.relationRow7807 rho ∧ Seg52.relationRow7808 rho ∧ Seg52.relationRow7809 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, p97, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6941, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7802, r7803, r7804, r7805, r7806, r7807, r7808, r7809, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6941, r7802, r7803, r7804, r7805, r7806, r7807, r7808, r7809⟩

theorem seg52Blind_rung152 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51330 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 152)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      152 (Bool.toZMod bit) (seg52BlindAccState rho 152)
      (seg52BlindAccState rho 153) := by
  obtain ⟨r6941, r7802, r7803, r7804, r7805, r7806, r7807, r7808, r7809⟩ := seg52Blind_rows152 rho h
  unfold Seg52.relationRow6941 at r6941

  unfold Seg52.relationRow7802 at r7802

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7802

  unfold Seg52.relationRow7803 at r7803

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7803

  unfold Seg52.relationRow7804 at r7804

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7804

  unfold Seg52.relationRow7805 at r7805

  unfold Seg52.relationRow7806 at r7806

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7806

  unfold Seg52.relationRow7807 at r7807

  unfold Seg52.relationRow7808 at r7808

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7808

  unfold Seg52.relationRow7809 at r7809

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7809

  have hnextx : seg52BlindDeltaX152 rho =
      seg52BlindDeltaX151 rho + rho 52196 := by
    unfold seg52BlindDeltaX152 seg52BlindDeltaX151
    ring

  have hnexty : seg52BlindDeltaY152 rho =
      seg52BlindDeltaY151 rho + rho 52197 := by
    unfold seg52BlindDeltaY152 seg52BlindDeltaY151
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 152
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX151 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY151 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX152 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY152 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY151 rho) (rho 52197)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 152)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (8290330328115117660172148332915612272253375214659374914357172012503586879123 : Seg52.F) (4766800558326073445115508844094198907013150769513523943593321251782208602223 : Seg52.F)
    (4612669137012820681038832238228264647890626649018835030015259808368386242305 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2697203927696304349705697386038062090820108262677006965850459294869434750778 : Seg52.F) (4028920331174628317027597966406648616666335012509183425577571528369043530747 : Seg52.F)
    (2704683006927187740067547926043000158693614424332161260817582052933126947922 : Seg52.F) (5280445400689089027406242188401229554262588149154869625251189330135478140470 : Seg52.F)
    (3677661191102296979133316094687347624362748565640539884341912204135200636818 : Seg52.F) (154131421313252764076676605865934259122524120494688913578061443413822359918 : Seg52.F)
    (3164016348739281396842582750380316977113311185999194202684044125781931098571 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX151 rho) (seg52BlindDeltaY151 rho) (rho 51330)
    (rho 52190) (rho 52191) (rho 52192) (rho 52194)
    (rho 52193) (rho 52195) (rho 52196) (rho 52197) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 152)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L152]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX151 seg52BlindDeltaY151;
        first | linear_combination r7802 | linear_combination -r7802)
    (by unfold seg52BlindDeltaX151 seg52BlindDeltaY151;
        first | linear_combination r7803 | linear_combination -r7803)
    (by unfold seg52BlindDeltaX151 seg52BlindDeltaY151;
        first | linear_combination r7804 | linear_combination -r7804)
    (by first | linear_combination r7805 | linear_combination -r7805)
    (by unfold seg52BlindDeltaX151 seg52BlindDeltaY151;
        first | linear_combination r7806 | linear_combination -r7806)
    (by first | linear_combination r7807 | linear_combination -r7807)
    (by unfold seg52BlindDeltaX151; first | linear_combination r7808 | linear_combination -r7808)
    (by unfold seg52BlindDeltaY151; first | linear_combination r7809 | linear_combination -r7809)
    (by linear_combination r6941)

theorem seg52Blind_rows153 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6942 rho ∧ Seg52.relationRow7810 rho ∧ Seg52.relationRow7811 rho ∧ Seg52.relationRow7812 rho ∧ Seg52.relationRow7813 rho ∧ Seg52.relationRow7814 rho ∧ Seg52.relationRow7815 rho ∧ Seg52.relationRow7816 rho ∧ Seg52.relationRow7817 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, p97, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6942, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7810, r7811, r7812, r7813, r7814, r7815, r7816, r7817, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6942, r7810, r7811, r7812, r7813, r7814, r7815, r7816, r7817⟩

theorem seg52Blind_rung153 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51331 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 153)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      153 (Bool.toZMod bit) (seg52BlindAccState rho 153)
      (seg52BlindAccState rho 154) := by
  obtain ⟨r6942, r7810, r7811, r7812, r7813, r7814, r7815, r7816, r7817⟩ := seg52Blind_rows153 rho h
  unfold Seg52.relationRow6942 at r6942

  unfold Seg52.relationRow7810 at r7810

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7810

  unfold Seg52.relationRow7811 at r7811

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7811

  unfold Seg52.relationRow7812 at r7812

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7812

  unfold Seg52.relationRow7813 at r7813

  unfold Seg52.relationRow7814 at r7814

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7814

  unfold Seg52.relationRow7815 at r7815

  unfold Seg52.relationRow7816 at r7816

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7816

  unfold Seg52.relationRow7817 at r7817

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7817

  have hnextx : seg52BlindDeltaX153 rho =
      seg52BlindDeltaX152 rho + rho 52204 := by
    unfold seg52BlindDeltaX153 seg52BlindDeltaX152
    ring

  have hnexty : seg52BlindDeltaY153 rho =
      seg52BlindDeltaY152 rho + rho 52205 := by
    unfold seg52BlindDeltaY153 seg52BlindDeltaY152
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 153
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX152 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY152 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX153 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY153 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY152 rho) (rho 52205)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 153)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (2281934409253477930736469073092565504958823991373491842547196045413604956952 : Seg52.F) (1888263899182926566656617148971802004269269992540163987173255811323900155548 : Seg52.F)
    (4170198308436404497393086222064367509228093983913655829720451856737505112500 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4433558567471121501683573366269946218732596234842321394123223265251133557833 : Seg52.F) (7976440927665926078703798506881417733438237416602138458146533937097073493945 : Seg52.F)
    (4772517066651927719162638527143767552625964697199281693607364859222287329665 : Seg52.F) (252436739062574054695278397239212481446631070300018821994964595158311468932 : Seg52.F)
    (6556197850245443857592207789809744527106629342613899840761977644593509083493 : Seg52.F) (6162527340174892493512355865688981026417075343780571985388037410503804282089 : Seg52.F)
    (8192025010365796369553546541542334049929268264854045005940268860759097770109 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX152 rho) (seg52BlindDeltaY152 rho) (rho 51331)
    (rho 52198) (rho 52199) (rho 52200) (rho 52202)
    (rho 52201) (rho 52203) (rho 52204) (rho 52205) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 153)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L153]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX152 seg52BlindDeltaY152;
        first | linear_combination r7810 | linear_combination -r7810)
    (by unfold seg52BlindDeltaX152 seg52BlindDeltaY152;
        first | linear_combination r7811 | linear_combination -r7811)
    (by unfold seg52BlindDeltaX152 seg52BlindDeltaY152;
        first | linear_combination r7812 | linear_combination -r7812)
    (by first | linear_combination r7813 | linear_combination -r7813)
    (by unfold seg52BlindDeltaX152 seg52BlindDeltaY152;
        first | linear_combination r7814 | linear_combination -r7814)
    (by first | linear_combination r7815 | linear_combination -r7815)
    (by unfold seg52BlindDeltaX152; first | linear_combination r7816 | linear_combination -r7816)
    (by unfold seg52BlindDeltaY152; first | linear_combination r7817 | linear_combination -r7817)
    (by linear_combination r6942)

theorem seg52Blind_rows154 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6943 rho ∧ Seg52.relationRow7818 rho ∧ Seg52.relationRow7819 rho ∧ Seg52.relationRow7820 rho ∧ Seg52.relationRow7821 rho ∧ Seg52.relationRow7822 rho ∧ Seg52.relationRow7823 rho ∧ Seg52.relationRow7824 rho ∧ Seg52.relationRow7825 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, p97, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6943, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7818, r7819, r7820, r7821, r7822, r7823, r7824, r7825, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6943, r7818, r7819, r7820, r7821, r7822, r7823, r7824, r7825⟩

theorem seg52Blind_rung154 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51332 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 154)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      154 (Bool.toZMod bit) (seg52BlindAccState rho 154)
      (seg52BlindAccState rho 155) := by
  obtain ⟨r6943, r7818, r7819, r7820, r7821, r7822, r7823, r7824, r7825⟩ := seg52Blind_rows154 rho h
  unfold Seg52.relationRow6943 at r6943

  unfold Seg52.relationRow7818 at r7818

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7818

  unfold Seg52.relationRow7819 at r7819

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7819

  unfold Seg52.relationRow7820 at r7820

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7820

  unfold Seg52.relationRow7821 at r7821

  unfold Seg52.relationRow7822 at r7822

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7822

  unfold Seg52.relationRow7823 at r7823

  unfold Seg52.relationRow7824 at r7824

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7824

  unfold Seg52.relationRow7825 at r7825

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7825

  have hnextx : seg52BlindDeltaX154 rho =
      seg52BlindDeltaX153 rho + rho 52212 := by
    unfold seg52BlindDeltaX154 seg52BlindDeltaX153
    ring

  have hnexty : seg52BlindDeltaY154 rho =
      seg52BlindDeltaY153 rho + rho 52213 := by
    unfold seg52BlindDeltaY154 seg52BlindDeltaY153
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 154
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX153 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY153 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX154 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY154 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY153 rho) (rho 52213)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 154)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (6786160598825403684434793453819516256309751496461121603491906505024998933032 : Seg52.F) (4613594787652687372559014594666475350063033559832425785725863444031847801399 : Seg52.F)
    (2955293637049720632744983109704445074996885721139483561282536493139437495390 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4307966941957352490221941497870255770190481249552982584698262156486963608729 : Seg52.F) (1004292681067682434942168762802365588576508519975378120035919403894166249560 : Seg52.F)
    (2188779408850543842179365115899024311645042450842105937471124147444287027598 : Seg52.F) (7312812073326965778651737933359923734882579686809459255817803672138264287251 : Seg52.F)
    (3830866961775683051689810344115071181312865775321638042209370011885561437642 : Seg52.F) (1658301150602966739814031484962030275066147838692942224443326950892410306009 : Seg52.F)
    (1131649676101404645597087005421622796493319648344604572117429783779144951790 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX153 rho) (seg52BlindDeltaY153 rho) (rho 51332)
    (rho 52206) (rho 52207) (rho 52208) (rho 52210)
    (rho 52209) (rho 52211) (rho 52212) (rho 52213) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 154)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L154]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX153 seg52BlindDeltaY153;
        first | linear_combination r7818 | linear_combination -r7818)
    (by unfold seg52BlindDeltaX153 seg52BlindDeltaY153;
        first | linear_combination r7819 | linear_combination -r7819)
    (by unfold seg52BlindDeltaX153 seg52BlindDeltaY153;
        first | linear_combination r7820 | linear_combination -r7820)
    (by first | linear_combination r7821 | linear_combination -r7821)
    (by unfold seg52BlindDeltaX153 seg52BlindDeltaY153;
        first | linear_combination r7822 | linear_combination -r7822)
    (by first | linear_combination r7823 | linear_combination -r7823)
    (by unfold seg52BlindDeltaX153; first | linear_combination r7824 | linear_combination -r7824)
    (by unfold seg52BlindDeltaY153; first | linear_combination r7825 | linear_combination -r7825)
    (by linear_combination r6943)

theorem seg52Blind_rows155 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6944 rho ∧ Seg52.relationRow7826 rho ∧ Seg52.relationRow7827 rho ∧ Seg52.relationRow7828 rho ∧ Seg52.relationRow7829 rho ∧ Seg52.relationRow7830 rho ∧ Seg52.relationRow7831 rho ∧ Seg52.relationRow7832 rho ∧ Seg52.relationRow7833 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, p97, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6944, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7826, r7827, r7828, r7829, r7830, r7831, r7832, r7833, _, _, _, _, _, _⟩

  exact ⟨r6944, r7826, r7827, r7828, r7829, r7830, r7831, r7832, r7833⟩

theorem seg52Blind_rung155 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51333 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 155)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      155 (Bool.toZMod bit) (seg52BlindAccState rho 155)
      (seg52BlindAccState rho 156) := by
  obtain ⟨r6944, r7826, r7827, r7828, r7829, r7830, r7831, r7832, r7833⟩ := seg52Blind_rows155 rho h
  unfold Seg52.relationRow6944 at r6944

  unfold Seg52.relationRow7826 at r7826

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7826

  unfold Seg52.relationRow7827 at r7827

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7827

  unfold Seg52.relationRow7828 at r7828

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7828

  unfold Seg52.relationRow7829 at r7829

  unfold Seg52.relationRow7830 at r7830

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7830

  unfold Seg52.relationRow7831 at r7831

  unfold Seg52.relationRow7832 at r7832

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7832

  unfold Seg52.relationRow7833 at r7833

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7833

  have hnextx : seg52BlindDeltaX155 rho =
      seg52BlindDeltaX154 rho + rho 52220 := by
    unfold seg52BlindDeltaX155 seg52BlindDeltaX154
    ring

  have hnexty : seg52BlindDeltaY155 rho =
      seg52BlindDeltaY154 rho + rho 52221 := by
    unfold seg52BlindDeltaY155 seg52BlindDeltaY154
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 155
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX154 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY154 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX155 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY155 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY154 rho) (rho 52221)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 155)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (387902939846379824347994907987521234977731479973337504781127519046033367056 : Seg52.F) (2021127038503907221813046248542765687904668964493682295117995905543072449672 : Seg52.F)
    (2409029978350287046161041156530286922882400444467019799899123424589105816728 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (478938483591900365312286108637000975229722419026065954291842017334990632469 : Seg52.F) (6832693155644691934897876447686959782922533949068147319131961905892721253899 : Seg52.F)
    (5213752419509373837139376881296725721697462102576846366036813647781174800681 : Seg52.F) (5576601892806925798960957911932444510949502336997217892393244325609456334309 : Seg52.F)
    (6423334710924463202435778690238780843471230370660381532817237550374336789369 : Seg52.F) (8056558809581990599900830030794025296398167855180726323154105936871375871985 : Seg52.F)
    (2867859856621444625287867026849102020426396998156845935541989130307952904732 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX154 rho) (seg52BlindDeltaY154 rho) (rho 51333)
    (rho 52214) (rho 52215) (rho 52216) (rho 52218)
    (rho 52217) (rho 52219) (rho 52220) (rho 52221) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 155)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L155]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX154 seg52BlindDeltaY154;
        first | linear_combination r7826 | linear_combination -r7826)
    (by unfold seg52BlindDeltaX154 seg52BlindDeltaY154;
        first | linear_combination r7827 | linear_combination -r7827)
    (by unfold seg52BlindDeltaX154 seg52BlindDeltaY154;
        first | linear_combination r7828 | linear_combination -r7828)
    (by first | linear_combination r7829 | linear_combination -r7829)
    (by unfold seg52BlindDeltaX154 seg52BlindDeltaY154;
        first | linear_combination r7830 | linear_combination -r7830)
    (by first | linear_combination r7831 | linear_combination -r7831)
    (by unfold seg52BlindDeltaX154; first | linear_combination r7832 | linear_combination -r7832)
    (by unfold seg52BlindDeltaY154; first | linear_combination r7833 | linear_combination -r7833)
    (by linear_combination r6944)

theorem seg52Blind_rows156 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6945 rho ∧ Seg52.relationRow7834 rho ∧ Seg52.relationRow7835 rho ∧ Seg52.relationRow7836 rho ∧ Seg52.relationRow7837 rho ∧ Seg52.relationRow7838 rho ∧ Seg52.relationRow7839 rho ∧ Seg52.relationRow7840 rho ∧ Seg52.relationRow7841 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, p97, p98, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6945, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7834, r7835, r7836, r7837, r7838, r7839⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨r7840, r7841, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6945, r7834, r7835, r7836, r7837, r7838, r7839, r7840, r7841⟩

theorem seg52Blind_rung156 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51334 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 156)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      156 (Bool.toZMod bit) (seg52BlindAccState rho 156)
      (seg52BlindAccState rho 157) := by
  obtain ⟨r6945, r7834, r7835, r7836, r7837, r7838, r7839, r7840, r7841⟩ := seg52Blind_rows156 rho h
  unfold Seg52.relationRow6945 at r6945

  unfold Seg52.relationRow7834 at r7834

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7834

  unfold Seg52.relationRow7835 at r7835

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7835

  unfold Seg52.relationRow7836 at r7836

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7836

  unfold Seg52.relationRow7837 at r7837

  unfold Seg52.relationRow7838 at r7838

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7838

  unfold Seg52.relationRow7839 at r7839

  unfold Seg52.relationRow7840 at r7840

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7840

  unfold Seg52.relationRow7841 at r7841

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7841

  have hnextx : seg52BlindDeltaX156 rho =
      seg52BlindDeltaX155 rho + rho 52228 := by
    unfold seg52BlindDeltaX156 seg52BlindDeltaX155
    ring

  have hnexty : seg52BlindDeltaY156 rho =
      seg52BlindDeltaY155 rho + rho 52229 := by
    unfold seg52BlindDeltaY156 seg52BlindDeltaY155
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 156
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX155 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY155 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX156 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY156 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY155 rho) (rho 52229)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 156)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7322787079237668291052262831830959523008610143680441438755087463063521780451 : Seg52.F) (4104550208059864304494011432204164190621765556147146336054293653044273335339 : Seg52.F)
    (2982875537869162171297449325253577182254476364673523946874147660190385876749 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (3376330388002281079133526557469711808533521114363381811098412559992983146931 : Seg52.F) (7633047200587542999821430941748148472175566999764888610621602389045792879635 : Seg52.F)
    (5967423104891875324453026495750804127949786629317035256385965424813389740383 : Seg52.F) (3515716925217091580828184766088953844574790254187772379088211908790073117080 : Seg52.F)
    (4339911541368506119754813506577382340754133779006917491880939802873135903702 : Seg52.F) (1121674670190702133196562106950587008367289191473622389180145992853887458590 : Seg52.F)
    (4928744824211278843420640172692592686801109080966291448847021547127336121961 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX155 rho) (seg52BlindDeltaY155 rho) (rho 51334)
    (rho 52222) (rho 52223) (rho 52224) (rho 52226)
    (rho 52225) (rho 52227) (rho 52228) (rho 52229) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 156)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L156]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX155 seg52BlindDeltaY155;
        first | linear_combination r7834 | linear_combination -r7834)
    (by unfold seg52BlindDeltaX155 seg52BlindDeltaY155;
        first | linear_combination r7835 | linear_combination -r7835)
    (by unfold seg52BlindDeltaX155 seg52BlindDeltaY155;
        first | linear_combination r7836 | linear_combination -r7836)
    (by first | linear_combination r7837 | linear_combination -r7837)
    (by unfold seg52BlindDeltaX155 seg52BlindDeltaY155;
        first | linear_combination r7838 | linear_combination -r7838)
    (by first | linear_combination r7839 | linear_combination -r7839)
    (by unfold seg52BlindDeltaX155; first | linear_combination r7840 | linear_combination -r7840)
    (by unfold seg52BlindDeltaY155; first | linear_combination r7841 | linear_combination -r7841)
    (by linear_combination r6945)

theorem seg52Blind_rows157 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6946 rho ∧ Seg52.relationRow7842 rho ∧ Seg52.relationRow7843 rho ∧ Seg52.relationRow7844 rho ∧ Seg52.relationRow7845 rho ∧ Seg52.relationRow7846 rho ∧ Seg52.relationRow7847 rho ∧ Seg52.relationRow7848 rho ∧ Seg52.relationRow7849 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, p98, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6946, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, r7842, r7843, r7844, r7845, r7846, r7847, r7848, r7849, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6946, r7842, r7843, r7844, r7845, r7846, r7847, r7848, r7849⟩

theorem seg52Blind_rung157 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51335 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 157)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      157 (Bool.toZMod bit) (seg52BlindAccState rho 157)
      (seg52BlindAccState rho 158) := by
  obtain ⟨r6946, r7842, r7843, r7844, r7845, r7846, r7847, r7848, r7849⟩ := seg52Blind_rows157 rho h
  unfold Seg52.relationRow6946 at r6946

  unfold Seg52.relationRow7842 at r7842

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7842

  unfold Seg52.relationRow7843 at r7843

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7843

  unfold Seg52.relationRow7844 at r7844

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7844

  unfold Seg52.relationRow7845 at r7845

  unfold Seg52.relationRow7846 at r7846

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7846

  unfold Seg52.relationRow7847 at r7847

  unfold Seg52.relationRow7848 at r7848

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7848

  unfold Seg52.relationRow7849 at r7849

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7849

  have hnextx : seg52BlindDeltaX157 rho =
      seg52BlindDeltaX156 rho + rho 52236 := by
    unfold seg52BlindDeltaX157 seg52BlindDeltaX156
    ring

  have hnexty : seg52BlindDeltaY157 rho =
      seg52BlindDeltaY156 rho + rho 52237 := by
    unfold seg52BlindDeltaY157 seg52BlindDeltaY156
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 157
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX156 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY156 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX157 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY157 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY156 rho) (rho 52237)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 157)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3825760111864017298625061611790720376639861203296968002076899718545294470717 : Seg52.F) (6151629435748317771624533067816999483025469323412646316161896209790384377058 : Seg52.F)
    (1532927798183964646000769740826173328289431191555550490303562472418269608734 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6256676653253054730299532555753069192964288690664099667574846758450877202018 : Seg52.F) (6853873785967761673817565252269773083371453670791960771524614044953689489659 : Seg52.F)
    (5781557649376106901185971628163678182810990417933303841346974876038219314830 : Seg52.F) (8218492458226844538125575761540373582318365384695959106127879528189499399800 : Seg52.F)
    (2292832313680052652624291870964547048350430011741417511773337246127024861983 : Seg52.F) (4618701637564353125623763326990826154736038131857095825858333737372114768324 : Seg52.F)
    (225969291201525886123249177241172949057533950458104721807353927727909839241 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX156 rho) (seg52BlindDeltaY156 rho) (rho 51335)
    (rho 52230) (rho 52231) (rho 52232) (rho 52234)
    (rho 52233) (rho 52235) (rho 52236) (rho 52237) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 157)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L157]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX156 seg52BlindDeltaY156;
        first | linear_combination r7842 | linear_combination -r7842)
    (by unfold seg52BlindDeltaX156 seg52BlindDeltaY156;
        first | linear_combination r7843 | linear_combination -r7843)
    (by unfold seg52BlindDeltaX156 seg52BlindDeltaY156;
        first | linear_combination r7844 | linear_combination -r7844)
    (by first | linear_combination r7845 | linear_combination -r7845)
    (by unfold seg52BlindDeltaX156 seg52BlindDeltaY156;
        first | linear_combination r7846 | linear_combination -r7846)
    (by first | linear_combination r7847 | linear_combination -r7847)
    (by unfold seg52BlindDeltaX156; first | linear_combination r7848 | linear_combination -r7848)
    (by unfold seg52BlindDeltaY156; first | linear_combination r7849 | linear_combination -r7849)
    (by linear_combination r6946)

theorem seg52Blind_rows158 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6947 rho ∧ Seg52.relationRow7850 rho ∧ Seg52.relationRow7851 rho ∧ Seg52.relationRow7852 rho ∧ Seg52.relationRow7853 rho ∧ Seg52.relationRow7854 rho ∧ Seg52.relationRow7855 rho ∧ Seg52.relationRow7856 rho ∧ Seg52.relationRow7857 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, p98, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6947, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, r7850, r7851, r7852, r7853, r7854, r7855, r7856, r7857, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6947, r7850, r7851, r7852, r7853, r7854, r7855, r7856, r7857⟩

theorem seg52Blind_rung158 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51336 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 158)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      158 (Bool.toZMod bit) (seg52BlindAccState rho 158)
      (seg52BlindAccState rho 159) := by
  obtain ⟨r6947, r7850, r7851, r7852, r7853, r7854, r7855, r7856, r7857⟩ := seg52Blind_rows158 rho h
  unfold Seg52.relationRow6947 at r6947

  unfold Seg52.relationRow7850 at r7850

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7850

  unfold Seg52.relationRow7851 at r7851

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7851

  unfold Seg52.relationRow7852 at r7852

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7852

  unfold Seg52.relationRow7853 at r7853

  unfold Seg52.relationRow7854 at r7854

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7854

  unfold Seg52.relationRow7855 at r7855

  unfold Seg52.relationRow7856 at r7856

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7856

  unfold Seg52.relationRow7857 at r7857

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7857

  have hnextx : seg52BlindDeltaX158 rho =
      seg52BlindDeltaX157 rho + rho 52244 := by
    unfold seg52BlindDeltaX158 seg52BlindDeltaX157
    ring

  have hnexty : seg52BlindDeltaY158 rho =
      seg52BlindDeltaY157 rho + rho 52245 := by
    unfold seg52BlindDeltaY158 seg52BlindDeltaY157
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 158
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX157 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY157 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX158 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY158 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY157 rho) (rho 52245)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 158)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (2273663639340633928693020721804439104895775062654950651660939353832556776534 : Seg52.F) (704677394197013206829936375796463624827588987931151423729704149020205909355 : Seg52.F)
    (2978341033537647135522957097600902729723364050586102075390643502852762685889 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (826047013227550922533906708166884697419700081184366447757403298854923923123 : Seg52.F) (119723773000174786443294238096441705965954616437577789749514399541216461622 : Seg52.F)
    (7158908385781492008508021774133083834635706214550962581434019877140964959067 : Seg52.F) (4805344311221515933555665830996385477233342333192708968282177091479621906167 : Seg52.F)
    (7739784355231357217418888562985082906548310347222912404205529306897203329686 : Seg52.F) (6170798110087736495555804216977107426480124272499113176274294102084852462507 : Seg52.F)
    (3639117438206854490693159107785161054142557001961354859653056364437787332874 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX157 rho) (seg52BlindDeltaY157 rho) (rho 51336)
    (rho 52238) (rho 52239) (rho 52240) (rho 52242)
    (rho 52241) (rho 52243) (rho 52244) (rho 52245) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 158)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L158]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX157 seg52BlindDeltaY157;
        first | linear_combination r7850 | linear_combination -r7850)
    (by unfold seg52BlindDeltaX157 seg52BlindDeltaY157;
        first | linear_combination r7851 | linear_combination -r7851)
    (by unfold seg52BlindDeltaX157 seg52BlindDeltaY157;
        first | linear_combination r7852 | linear_combination -r7852)
    (by first | linear_combination r7853 | linear_combination -r7853)
    (by unfold seg52BlindDeltaX157 seg52BlindDeltaY157;
        first | linear_combination r7854 | linear_combination -r7854)
    (by first | linear_combination r7855 | linear_combination -r7855)
    (by unfold seg52BlindDeltaX157; first | linear_combination r7856 | linear_combination -r7856)
    (by unfold seg52BlindDeltaY157; first | linear_combination r7857 | linear_combination -r7857)
    (by linear_combination r6947)

theorem seg52Blind_rows159 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6948 rho ∧ Seg52.relationRow7858 rho ∧ Seg52.relationRow7859 rho ∧ Seg52.relationRow7860 rho ∧ Seg52.relationRow7861 rho ∧ Seg52.relationRow7862 rho ∧ Seg52.relationRow7863 rho ∧ Seg52.relationRow7864 rho ∧ Seg52.relationRow7865 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, p98, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6948, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7858, r7859, r7860, r7861, r7862, r7863, r7864, r7865, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6948, r7858, r7859, r7860, r7861, r7862, r7863, r7864, r7865⟩

theorem seg52Blind_rung159 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51337 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 159)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      159 (Bool.toZMod bit) (seg52BlindAccState rho 159)
      (seg52BlindAccState rho 160) := by
  obtain ⟨r6948, r7858, r7859, r7860, r7861, r7862, r7863, r7864, r7865⟩ := seg52Blind_rows159 rho h
  unfold Seg52.relationRow6948 at r6948

  unfold Seg52.relationRow7858 at r7858

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7858

  unfold Seg52.relationRow7859 at r7859

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7859

  unfold Seg52.relationRow7860 at r7860

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7860

  unfold Seg52.relationRow7861 at r7861

  unfold Seg52.relationRow7862 at r7862

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7862

  unfold Seg52.relationRow7863 at r7863

  unfold Seg52.relationRow7864 at r7864

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7864

  unfold Seg52.relationRow7865 at r7865

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7865

  have hnextx : seg52BlindDeltaX159 rho =
      seg52BlindDeltaX158 rho + rho 52252 := by
    unfold seg52BlindDeltaX159 seg52BlindDeltaX158
    ring

  have hnexty : seg52BlindDeltaY159 rho =
      seg52BlindDeltaY158 rho + rho 52253 := by
    unfold seg52BlindDeltaY159 seg52BlindDeltaY158
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 159
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX158 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY158 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX159 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY159 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY158 rho) (rho 52253)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 159)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1426468388389114089497831252905396604616944600436698474923146480900002957835 : Seg52.F) (4544265066358691768917596130451990424240988231578102300524666658646739574100 : Seg52.F)
    (5970733454747805858415427383357387028857932832014800775447813139546742531935 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5974422648505894495717384575449958146189027972093329490263609906010239914475 : Seg52.F) (6032448681272936222007540258559300758641955942685094521818431101361710448027 : Seg52.F)
    (8184702740013749236808048008684360951225383834559140768761682144804622026153 : Seg52.F) (2009188666013277306530690983047598775263088046824021283420719713001870385030 : Seg52.F)
    (3900196683069678655331228808329556107134911103575961527410566797270669664941 : Seg52.F) (7017993361039256334750993685876149926758954734717365353012086975017406281206 : Seg52.F)
    (6435273083415093117718133955733947756112811288330042544514513742915538854011 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX158 rho) (seg52BlindDeltaY158 rho) (rho 51337)
    (rho 52246) (rho 52247) (rho 52248) (rho 52250)
    (rho 52249) (rho 52251) (rho 52252) (rho 52253) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 159)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L159]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX158 seg52BlindDeltaY158;
        first | linear_combination r7858 | linear_combination -r7858)
    (by unfold seg52BlindDeltaX158 seg52BlindDeltaY158;
        first | linear_combination r7859 | linear_combination -r7859)
    (by unfold seg52BlindDeltaX158 seg52BlindDeltaY158;
        first | linear_combination r7860 | linear_combination -r7860)
    (by first | linear_combination r7861 | linear_combination -r7861)
    (by unfold seg52BlindDeltaX158 seg52BlindDeltaY158;
        first | linear_combination r7862 | linear_combination -r7862)
    (by first | linear_combination r7863 | linear_combination -r7863)
    (by unfold seg52BlindDeltaX158; first | linear_combination r7864 | linear_combination -r7864)
    (by unfold seg52BlindDeltaY158; first | linear_combination r7865 | linear_combination -r7865)
    (by linear_combination r6948)

theorem seg52Blind_rows160 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6949 rho ∧ Seg52.relationRow7866 rho ∧ Seg52.relationRow7867 rho ∧ Seg52.relationRow7868 rho ∧ Seg52.relationRow7869 rho ∧ Seg52.relationRow7870 rho ∧ Seg52.relationRow7871 rho ∧ Seg52.relationRow7872 rho ∧ Seg52.relationRow7873 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, p98, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6949, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7866, r7867, r7868, r7869, r7870, r7871, r7872, r7873, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6949, r7866, r7867, r7868, r7869, r7870, r7871, r7872, r7873⟩

theorem seg52Blind_rung160 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51338 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 160)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      160 (Bool.toZMod bit) (seg52BlindAccState rho 160)
      (seg52BlindAccState rho 161) := by
  obtain ⟨r6949, r7866, r7867, r7868, r7869, r7870, r7871, r7872, r7873⟩ := seg52Blind_rows160 rho h
  unfold Seg52.relationRow6949 at r6949

  unfold Seg52.relationRow7866 at r7866

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7866

  unfold Seg52.relationRow7867 at r7867

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7867

  unfold Seg52.relationRow7868 at r7868

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7868

  unfold Seg52.relationRow7869 at r7869

  unfold Seg52.relationRow7870 at r7870

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7870

  unfold Seg52.relationRow7871 at r7871

  unfold Seg52.relationRow7872 at r7872

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7872

  unfold Seg52.relationRow7873 at r7873

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7873

  have hnextx : seg52BlindDeltaX160 rho =
      seg52BlindDeltaX159 rho + rho 52260 := by
    unfold seg52BlindDeltaX160 seg52BlindDeltaX159
    ring

  have hnexty : seg52BlindDeltaY160 rho =
      seg52BlindDeltaY159 rho + rho 52261 := by
    unfold seg52BlindDeltaY160 seg52BlindDeltaY159
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 160
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX159 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY159 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX160 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY160 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY159 rho) (rho 52261)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 160)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1148817998238183129243048840976596988090227252586455029280971969063699305256 : Seg52.F) (1579387360455174887542145628411263924693174897129472540238137916132223584440 : Seg52.F)
    (2728205358693358016785194469387860912783402149715927569519109885195922889696 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (208327508054045564235853018854526270698239866090481276007742042111228535075 : Seg52.F) (2165375506961622196776158526390368682926513544822198770583404674041523390338 : Seg52.F)
    (4762011631022205628848552996963813363631412162142792127260471880144547334970 : Seg52.F) (2792074471856353418686803436118199349749557637899563792297295388337949522943 : Seg52.F)
    (6865074388973195536706679310370282606682724438024591287697095539785185654601 : Seg52.F) (7295643751190187295005776097804949543285672082567608798654261486853709933785 : Seg52.F)
    (5652387277572017005562021502663347181626341697254500035637938067579459716098 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX159 rho) (seg52BlindDeltaY159 rho) (rho 51338)
    (rho 52254) (rho 52255) (rho 52256) (rho 52258)
    (rho 52257) (rho 52259) (rho 52260) (rho 52261) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 160)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L160]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX159 seg52BlindDeltaY159;
        first | linear_combination r7866 | linear_combination -r7866)
    (by unfold seg52BlindDeltaX159 seg52BlindDeltaY159;
        first | linear_combination r7867 | linear_combination -r7867)
    (by unfold seg52BlindDeltaX159 seg52BlindDeltaY159;
        first | linear_combination r7868 | linear_combination -r7868)
    (by first | linear_combination r7869 | linear_combination -r7869)
    (by unfold seg52BlindDeltaX159 seg52BlindDeltaY159;
        first | linear_combination r7870 | linear_combination -r7870)
    (by first | linear_combination r7871 | linear_combination -r7871)
    (by unfold seg52BlindDeltaX159; first | linear_combination r7872 | linear_combination -r7872)
    (by unfold seg52BlindDeltaY159; first | linear_combination r7873 | linear_combination -r7873)
    (by linear_combination r6949)

theorem seg52Blind_hstep_c15 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 151 ≤ i → i < 161 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung151 rho h bits[151]! (hbitAt 151 (by omega)) hacc
  · exact seg52Blind_rung152 rho h bits[152]! (hbitAt 152 (by omega)) hacc
  · exact seg52Blind_rung153 rho h bits[153]! (hbitAt 153 (by omega)) hacc
  · exact seg52Blind_rung154 rho h bits[154]! (hbitAt 154 (by omega)) hacc
  · exact seg52Blind_rung155 rho h bits[155]! (hbitAt 155 (by omega)) hacc
  · exact seg52Blind_rung156 rho h bits[156]! (hbitAt 156 (by omega)) hacc
  · exact seg52Blind_rung157 rho h bits[157]! (hbitAt 157 (by omega)) hacc
  · exact seg52Blind_rung158 rho h bits[158]! (hbitAt 158 (by omega)) hacc
  · exact seg52Blind_rung159 rho h bits[159]! (hbitAt 159 (by omega)) hacc
  · exact seg52Blind_rung160 rho h bits[160]! (hbitAt 160 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

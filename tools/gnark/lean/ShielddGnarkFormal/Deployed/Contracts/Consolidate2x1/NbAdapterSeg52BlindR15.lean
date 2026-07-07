import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows151 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6300 rho ∧ Seg52.relationRow7154 rho ∧ Seg52.relationRow7155 rho ∧ Seg52.relationRow7156 rho ∧ Seg52.relationRow7157 rho ∧ Seg52.relationRow7158 rho ∧ Seg52.relationRow7159 rho ∧ Seg52.relationRow7160 rho ∧ Seg52.relationRow7161 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, p89,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6300, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7154, r7155, r7156, r7157, r7158, r7159, r7160, r7161, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6300, r7154, r7155, r7156, r7157, r7158, r7159, r7160, r7161⟩

theorem seg52Blind_rung151 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50689 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 151)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      151 (Bool.toZMod bit) (seg52BlindAccState rho 151)
      (seg52BlindAccState rho 152) := by
  obtain ⟨r6300, r7154, r7155, r7156, r7157, r7158, r7159, r7160, r7161⟩ := seg52Blind_rows151 rho h
  unfold Seg52.relationRow6300 at r6300

  unfold Seg52.relationRow7154 at r7154

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7154

  unfold Seg52.relationRow7155 at r7155

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7155

  unfold Seg52.relationRow7156 at r7156

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7156

  unfold Seg52.relationRow7157 at r7157

  unfold Seg52.relationRow7158 at r7158

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7158

  unfold Seg52.relationRow7159 at r7159

  unfold Seg52.relationRow7160 at r7160

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7160

  unfold Seg52.relationRow7161 at r7161

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7161

  have hnextx : seg52BlindDeltaX151 rho =
      seg52BlindDeltaX150 rho + rho 51548 := by
    unfold seg52BlindDeltaX151 seg52BlindDeltaX150
    ring

  have hnexty : seg52BlindDeltaY151 rho =
      seg52BlindDeltaY150 rho + rho 51549 := by
    unfold seg52BlindDeltaY151 seg52BlindDeltaY150
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 151
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX150 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY150 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX151 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY151 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY150 rho) (rho 51549)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 151)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7217505745159762701548223158489870661170246483945651316552729469734220794956 : Seg52.F) (1074654486683884151620951001674271570956398811327129413381684607499304305171 : Seg52.F)
    (8292160231843646853169174160164142232126645295272780729934414077233525100127 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (3857892491519779135344199565860547810935464320097447898939552183113158129847 : Seg52.F) (3791555781740349848523116392869666912510788963065689978530698909597937955826 : Seg52.F)
    (2222663926872630171207868096685297004356390653210761896632018977249448862921 : Seg52.F) (829087343892485685325166829535637271736707442592154759868976674835284919748 : Seg52.F)
    (7369807262744486272627873937107274960419500523826934414553548848418104933870 : Seg52.F) (1226956004268607722700601780291675870205652851208412511382503986183188444085 : Seg52.F)
    (7615374405535884738923658109245909259639191892561909068066256781082124319293 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX150 rho) (seg52BlindDeltaY150 rho) (rho 50689)
    (rho 51542) (rho 51543) (rho 51544) (rho 51546)
    (rho 51545) (rho 51547) (rho 51548) (rho 51549) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 151)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L151]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX150 seg52BlindDeltaY150;
        first | linear_combination r7154 | linear_combination -r7154)
    (by unfold seg52BlindDeltaX150 seg52BlindDeltaY150;
        first | linear_combination r7155 | linear_combination -r7155)
    (by unfold seg52BlindDeltaX150 seg52BlindDeltaY150;
        first | linear_combination r7156 | linear_combination -r7156)
    (by first | linear_combination r7157 | linear_combination -r7157)
    (by unfold seg52BlindDeltaX150 seg52BlindDeltaY150;
        first | linear_combination r7158 | linear_combination -r7158)
    (by first | linear_combination r7159 | linear_combination -r7159)
    (by unfold seg52BlindDeltaX150; first | linear_combination r7160 | linear_combination -r7160)
    (by unfold seg52BlindDeltaY150; first | linear_combination r7161 | linear_combination -r7161)
    (by linear_combination r6300)

theorem seg52Blind_rows152 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6301 rho ∧ Seg52.relationRow7162 rho ∧ Seg52.relationRow7163 rho ∧ Seg52.relationRow7164 rho ∧ Seg52.relationRow7165 rho ∧ Seg52.relationRow7166 rho ∧ Seg52.relationRow7167 rho ∧ Seg52.relationRow7168 rho ∧ Seg52.relationRow7169 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, p89,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6301, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7162, r7163, r7164, r7165, r7166, r7167, r7168, r7169, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6301, r7162, r7163, r7164, r7165, r7166, r7167, r7168, r7169⟩

theorem seg52Blind_rung152 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50690 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 152)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      152 (Bool.toZMod bit) (seg52BlindAccState rho 152)
      (seg52BlindAccState rho 153) := by
  obtain ⟨r6301, r7162, r7163, r7164, r7165, r7166, r7167, r7168, r7169⟩ := seg52Blind_rows152 rho h
  unfold Seg52.relationRow6301 at r6301

  unfold Seg52.relationRow7162 at r7162

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7162

  unfold Seg52.relationRow7163 at r7163

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7163

  unfold Seg52.relationRow7164 at r7164

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7164

  unfold Seg52.relationRow7165 at r7165

  unfold Seg52.relationRow7166 at r7166

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7166

  unfold Seg52.relationRow7167 at r7167

  unfold Seg52.relationRow7168 at r7168

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7168

  unfold Seg52.relationRow7169 at r7169

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7169

  have hnextx : seg52BlindDeltaX152 rho =
      seg52BlindDeltaX151 rho + rho 51556 := by
    unfold seg52BlindDeltaX152 seg52BlindDeltaX151
    ring

  have hnexty : seg52BlindDeltaY152 rho =
      seg52BlindDeltaY151 rho + rho 51557 := by
    unfold seg52BlindDeltaY152 seg52BlindDeltaY151
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 152
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX151 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY151 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX152 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY152 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY151 rho) (rho 51557)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 152)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (8290330328115117660172148332915612272253375214659374914357172012503586879123 : Seg52.F) (4766800558326073445115508844094198907013150769513523943593321251782208602223 : Seg52.F)
    (4612669137012820681038832238228264647890626649018835030015259808368386242305 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2697203927696304349705697386038062090820108262677006965850459294869434750778 : Seg52.F) (4028920331174628317027597966406648616666335012509183425577571528369043530747 : Seg52.F)
    (2704683006927187740067547926043000158693614424332161260817582052933126947922 : Seg52.F) (5280445400689089027406242188401229554262588149154869625251189330135478140470 : Seg52.F)
    (3677661191102296979133316094687347624362748565640539884341912204135200636818 : Seg52.F) (154131421313252764076676605865934259122524120494688913578061443413822359918 : Seg52.F)
    (3164016348739281396842582750380316977113311185999194202684044125781931098571 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX151 rho) (seg52BlindDeltaY151 rho) (rho 50690)
    (rho 51550) (rho 51551) (rho 51552) (rho 51554)
    (rho 51553) (rho 51555) (rho 51556) (rho 51557) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 152)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L152]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX151 seg52BlindDeltaY151;
        first | linear_combination r7162 | linear_combination -r7162)
    (by unfold seg52BlindDeltaX151 seg52BlindDeltaY151;
        first | linear_combination r7163 | linear_combination -r7163)
    (by unfold seg52BlindDeltaX151 seg52BlindDeltaY151;
        first | linear_combination r7164 | linear_combination -r7164)
    (by first | linear_combination r7165 | linear_combination -r7165)
    (by unfold seg52BlindDeltaX151 seg52BlindDeltaY151;
        first | linear_combination r7166 | linear_combination -r7166)
    (by first | linear_combination r7167 | linear_combination -r7167)
    (by unfold seg52BlindDeltaX151; first | linear_combination r7168 | linear_combination -r7168)
    (by unfold seg52BlindDeltaY151; first | linear_combination r7169 | linear_combination -r7169)
    (by linear_combination r6301)

theorem seg52Blind_rows153 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6302 rho ∧ Seg52.relationRow7170 rho ∧ Seg52.relationRow7171 rho ∧ Seg52.relationRow7172 rho ∧ Seg52.relationRow7173 rho ∧ Seg52.relationRow7174 rho ∧ Seg52.relationRow7175 rho ∧ Seg52.relationRow7176 rho ∧ Seg52.relationRow7177 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, p89,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6302, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7170, r7171, r7172, r7173, r7174, r7175, r7176, r7177, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6302, r7170, r7171, r7172, r7173, r7174, r7175, r7176, r7177⟩

theorem seg52Blind_rung153 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50691 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 153)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      153 (Bool.toZMod bit) (seg52BlindAccState rho 153)
      (seg52BlindAccState rho 154) := by
  obtain ⟨r6302, r7170, r7171, r7172, r7173, r7174, r7175, r7176, r7177⟩ := seg52Blind_rows153 rho h
  unfold Seg52.relationRow6302 at r6302

  unfold Seg52.relationRow7170 at r7170

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7170

  unfold Seg52.relationRow7171 at r7171

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7171

  unfold Seg52.relationRow7172 at r7172

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7172

  unfold Seg52.relationRow7173 at r7173

  unfold Seg52.relationRow7174 at r7174

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7174

  unfold Seg52.relationRow7175 at r7175

  unfold Seg52.relationRow7176 at r7176

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7176

  unfold Seg52.relationRow7177 at r7177

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7177

  have hnextx : seg52BlindDeltaX153 rho =
      seg52BlindDeltaX152 rho + rho 51564 := by
    unfold seg52BlindDeltaX153 seg52BlindDeltaX152
    ring

  have hnexty : seg52BlindDeltaY153 rho =
      seg52BlindDeltaY152 rho + rho 51565 := by
    unfold seg52BlindDeltaY153 seg52BlindDeltaY152
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 153
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX152 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY152 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX153 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY153 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY152 rho) (rho 51565)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 153)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (2281934409253477930736469073092565504958823991373491842547196045413604956952 : Seg52.F) (1888263899182926566656617148971802004269269992540163987173255811323900155548 : Seg52.F)
    (4170198308436404497393086222064367509228093983913655829720451856737505112500 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4433558567471121501683573366269946218732596234842321394123223265251133557833 : Seg52.F) (7976440927665926078703798506881417733438237416602138458146533937097073493945 : Seg52.F)
    (4772517066651927719162638527143767552625964697199281693607364859222287329665 : Seg52.F) (252436739062574054695278397239212481446631070300018821994964595158311468932 : Seg52.F)
    (6556197850245443857592207789809744527106629342613899840761977644593509083493 : Seg52.F) (6162527340174892493512355865688981026417075343780571985388037410503804282089 : Seg52.F)
    (8192025010365796369553546541542334049929268264854045005940268860759097770109 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX152 rho) (seg52BlindDeltaY152 rho) (rho 50691)
    (rho 51558) (rho 51559) (rho 51560) (rho 51562)
    (rho 51561) (rho 51563) (rho 51564) (rho 51565) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 153)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L153]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX152 seg52BlindDeltaY152;
        first | linear_combination r7170 | linear_combination -r7170)
    (by unfold seg52BlindDeltaX152 seg52BlindDeltaY152;
        first | linear_combination r7171 | linear_combination -r7171)
    (by unfold seg52BlindDeltaX152 seg52BlindDeltaY152;
        first | linear_combination r7172 | linear_combination -r7172)
    (by first | linear_combination r7173 | linear_combination -r7173)
    (by unfold seg52BlindDeltaX152 seg52BlindDeltaY152;
        first | linear_combination r7174 | linear_combination -r7174)
    (by first | linear_combination r7175 | linear_combination -r7175)
    (by unfold seg52BlindDeltaX152; first | linear_combination r7176 | linear_combination -r7176)
    (by unfold seg52BlindDeltaY152; first | linear_combination r7177 | linear_combination -r7177)
    (by linear_combination r6302)

theorem seg52Blind_rows154 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6303 rho ∧ Seg52.relationRow7178 rho ∧ Seg52.relationRow7179 rho ∧ Seg52.relationRow7180 rho ∧ Seg52.relationRow7181 rho ∧ Seg52.relationRow7182 rho ∧ Seg52.relationRow7183 rho ∧ Seg52.relationRow7184 rho ∧ Seg52.relationRow7185 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, p89,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6303, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7178, r7179, r7180, r7181, r7182, r7183, r7184, r7185, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6303, r7178, r7179, r7180, r7181, r7182, r7183, r7184, r7185⟩

theorem seg52Blind_rung154 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50692 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 154)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      154 (Bool.toZMod bit) (seg52BlindAccState rho 154)
      (seg52BlindAccState rho 155) := by
  obtain ⟨r6303, r7178, r7179, r7180, r7181, r7182, r7183, r7184, r7185⟩ := seg52Blind_rows154 rho h
  unfold Seg52.relationRow6303 at r6303

  unfold Seg52.relationRow7178 at r7178

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7178

  unfold Seg52.relationRow7179 at r7179

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7179

  unfold Seg52.relationRow7180 at r7180

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7180

  unfold Seg52.relationRow7181 at r7181

  unfold Seg52.relationRow7182 at r7182

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7182

  unfold Seg52.relationRow7183 at r7183

  unfold Seg52.relationRow7184 at r7184

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7184

  unfold Seg52.relationRow7185 at r7185

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7185

  have hnextx : seg52BlindDeltaX154 rho =
      seg52BlindDeltaX153 rho + rho 51572 := by
    unfold seg52BlindDeltaX154 seg52BlindDeltaX153
    ring

  have hnexty : seg52BlindDeltaY154 rho =
      seg52BlindDeltaY153 rho + rho 51573 := by
    unfold seg52BlindDeltaY154 seg52BlindDeltaY153
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 154
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX153 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY153 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX154 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY154 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY153 rho) (rho 51573)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 154)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (6786160598825403684434793453819516256309751496461121603491906505024998933032 : Seg52.F) (4613594787652687372559014594666475350063033559832425785725863444031847801399 : Seg52.F)
    (2955293637049720632744983109704445074996885721139483561282536493139437495390 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4307966941957352490221941497870255770190481249552982584698262156486963608729 : Seg52.F) (1004292681067682434942168762802365588576508519975378120035919403894166249560 : Seg52.F)
    (2188779408850543842179365115899024311645042450842105937471124147444287027598 : Seg52.F) (7312812073326965778651737933359923734882579686809459255817803672138264287251 : Seg52.F)
    (3830866961775683051689810344115071181312865775321638042209370011885561437642 : Seg52.F) (1658301150602966739814031484962030275066147838692942224443326950892410306009 : Seg52.F)
    (1131649676101404645597087005421622796493319648344604572117429783779144951790 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX153 rho) (seg52BlindDeltaY153 rho) (rho 50692)
    (rho 51566) (rho 51567) (rho 51568) (rho 51570)
    (rho 51569) (rho 51571) (rho 51572) (rho 51573) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 154)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L154]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX153 seg52BlindDeltaY153;
        first | linear_combination r7178 | linear_combination -r7178)
    (by unfold seg52BlindDeltaX153 seg52BlindDeltaY153;
        first | linear_combination r7179 | linear_combination -r7179)
    (by unfold seg52BlindDeltaX153 seg52BlindDeltaY153;
        first | linear_combination r7180 | linear_combination -r7180)
    (by first | linear_combination r7181 | linear_combination -r7181)
    (by unfold seg52BlindDeltaX153 seg52BlindDeltaY153;
        first | linear_combination r7182 | linear_combination -r7182)
    (by first | linear_combination r7183 | linear_combination -r7183)
    (by unfold seg52BlindDeltaX153; first | linear_combination r7184 | linear_combination -r7184)
    (by unfold seg52BlindDeltaY153; first | linear_combination r7185 | linear_combination -r7185)
    (by linear_combination r6303)

theorem seg52Blind_rows155 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6304 rho ∧ Seg52.relationRow7186 rho ∧ Seg52.relationRow7187 rho ∧ Seg52.relationRow7188 rho ∧ Seg52.relationRow7189 rho ∧ Seg52.relationRow7190 rho ∧ Seg52.relationRow7191 rho ∧ Seg52.relationRow7192 rho ∧ Seg52.relationRow7193 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, p89,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6304, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7186, r7187, r7188, r7189, r7190, r7191, r7192, r7193, _, _, _, _, _, _⟩

  exact ⟨r6304, r7186, r7187, r7188, r7189, r7190, r7191, r7192, r7193⟩

theorem seg52Blind_rung155 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50693 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 155)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      155 (Bool.toZMod bit) (seg52BlindAccState rho 155)
      (seg52BlindAccState rho 156) := by
  obtain ⟨r6304, r7186, r7187, r7188, r7189, r7190, r7191, r7192, r7193⟩ := seg52Blind_rows155 rho h
  unfold Seg52.relationRow6304 at r6304

  unfold Seg52.relationRow7186 at r7186

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7186

  unfold Seg52.relationRow7187 at r7187

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7187

  unfold Seg52.relationRow7188 at r7188

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7188

  unfold Seg52.relationRow7189 at r7189

  unfold Seg52.relationRow7190 at r7190

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7190

  unfold Seg52.relationRow7191 at r7191

  unfold Seg52.relationRow7192 at r7192

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7192

  unfold Seg52.relationRow7193 at r7193

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7193

  have hnextx : seg52BlindDeltaX155 rho =
      seg52BlindDeltaX154 rho + rho 51580 := by
    unfold seg52BlindDeltaX155 seg52BlindDeltaX154
    ring

  have hnexty : seg52BlindDeltaY155 rho =
      seg52BlindDeltaY154 rho + rho 51581 := by
    unfold seg52BlindDeltaY155 seg52BlindDeltaY154
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 155
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX154 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY154 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX155 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY155 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY154 rho) (rho 51581)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 155)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (387902939846379824347994907987521234977731479973337504781127519046033367056 : Seg52.F) (2021127038503907221813046248542765687904668964493682295117995905543072449672 : Seg52.F)
    (2409029978350287046161041156530286922882400444467019799899123424589105816728 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (478938483591900365312286108637000975229722419026065954291842017334990632469 : Seg52.F) (6832693155644691934897876447686959782922533949068147319131961905892721253899 : Seg52.F)
    (5213752419509373837139376881296725721697462102576846366036813647781174800681 : Seg52.F) (5576601892806925798960957911932444510949502336997217892393244325609456334309 : Seg52.F)
    (6423334710924463202435778690238780843471230370660381532817237550374336789369 : Seg52.F) (8056558809581990599900830030794025296398167855180726323154105936871375871985 : Seg52.F)
    (2867859856621444625287867026849102020426396998156845935541989130307952904732 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX154 rho) (seg52BlindDeltaY154 rho) (rho 50693)
    (rho 51574) (rho 51575) (rho 51576) (rho 51578)
    (rho 51577) (rho 51579) (rho 51580) (rho 51581) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 155)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L155]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX154 seg52BlindDeltaY154;
        first | linear_combination r7186 | linear_combination -r7186)
    (by unfold seg52BlindDeltaX154 seg52BlindDeltaY154;
        first | linear_combination r7187 | linear_combination -r7187)
    (by unfold seg52BlindDeltaX154 seg52BlindDeltaY154;
        first | linear_combination r7188 | linear_combination -r7188)
    (by first | linear_combination r7189 | linear_combination -r7189)
    (by unfold seg52BlindDeltaX154 seg52BlindDeltaY154;
        first | linear_combination r7190 | linear_combination -r7190)
    (by first | linear_combination r7191 | linear_combination -r7191)
    (by unfold seg52BlindDeltaX154; first | linear_combination r7192 | linear_combination -r7192)
    (by unfold seg52BlindDeltaY154; first | linear_combination r7193 | linear_combination -r7193)
    (by linear_combination r6304)

theorem seg52Blind_rows156 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6305 rho ∧ Seg52.relationRow7194 rho ∧ Seg52.relationRow7195 rho ∧ Seg52.relationRow7196 rho ∧ Seg52.relationRow7197 rho ∧ Seg52.relationRow7198 rho ∧ Seg52.relationRow7199 rho ∧ Seg52.relationRow7200 rho ∧ Seg52.relationRow7201 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, p89,

    p90, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6305, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7194, r7195, r7196, r7197, r7198, r7199⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨r7200, r7201, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6305, r7194, r7195, r7196, r7197, r7198, r7199, r7200, r7201⟩

theorem seg52Blind_rung156 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50694 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 156)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      156 (Bool.toZMod bit) (seg52BlindAccState rho 156)
      (seg52BlindAccState rho 157) := by
  obtain ⟨r6305, r7194, r7195, r7196, r7197, r7198, r7199, r7200, r7201⟩ := seg52Blind_rows156 rho h
  unfold Seg52.relationRow6305 at r6305

  unfold Seg52.relationRow7194 at r7194

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7194

  unfold Seg52.relationRow7195 at r7195

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7195

  unfold Seg52.relationRow7196 at r7196

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7196

  unfold Seg52.relationRow7197 at r7197

  unfold Seg52.relationRow7198 at r7198

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7198

  unfold Seg52.relationRow7199 at r7199

  unfold Seg52.relationRow7200 at r7200

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7200

  unfold Seg52.relationRow7201 at r7201

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7201

  have hnextx : seg52BlindDeltaX156 rho =
      seg52BlindDeltaX155 rho + rho 51588 := by
    unfold seg52BlindDeltaX156 seg52BlindDeltaX155
    ring

  have hnexty : seg52BlindDeltaY156 rho =
      seg52BlindDeltaY155 rho + rho 51589 := by
    unfold seg52BlindDeltaY156 seg52BlindDeltaY155
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 156
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX155 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY155 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX156 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY156 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY155 rho) (rho 51589)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 156)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7322787079237668291052262831830959523008610143680441438755087463063521780451 : Seg52.F) (4104550208059864304494011432204164190621765556147146336054293653044273335339 : Seg52.F)
    (2982875537869162171297449325253577182254476364673523946874147660190385876749 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (3376330388002281079133526557469711808533521114363381811098412559992983146931 : Seg52.F) (7633047200587542999821430941748148472175566999764888610621602389045792879635 : Seg52.F)
    (5967423104891875324453026495750804127949786629317035256385965424813389740383 : Seg52.F) (3515716925217091580828184766088953844574790254187772379088211908790073117080 : Seg52.F)
    (4339911541368506119754813506577382340754133779006917491880939802873135903702 : Seg52.F) (1121674670190702133196562106950587008367289191473622389180145992853887458590 : Seg52.F)
    (4928744824211278843420640172692592686801109080966291448847021547127336121961 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX155 rho) (seg52BlindDeltaY155 rho) (rho 50694)
    (rho 51582) (rho 51583) (rho 51584) (rho 51586)
    (rho 51585) (rho 51587) (rho 51588) (rho 51589) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 156)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L156]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX155 seg52BlindDeltaY155;
        first | linear_combination r7194 | linear_combination -r7194)
    (by unfold seg52BlindDeltaX155 seg52BlindDeltaY155;
        first | linear_combination r7195 | linear_combination -r7195)
    (by unfold seg52BlindDeltaX155 seg52BlindDeltaY155;
        first | linear_combination r7196 | linear_combination -r7196)
    (by first | linear_combination r7197 | linear_combination -r7197)
    (by unfold seg52BlindDeltaX155 seg52BlindDeltaY155;
        first | linear_combination r7198 | linear_combination -r7198)
    (by first | linear_combination r7199 | linear_combination -r7199)
    (by unfold seg52BlindDeltaX155; first | linear_combination r7200 | linear_combination -r7200)
    (by unfold seg52BlindDeltaY155; first | linear_combination r7201 | linear_combination -r7201)
    (by linear_combination r6305)

theorem seg52Blind_rows157 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6306 rho ∧ Seg52.relationRow7202 rho ∧ Seg52.relationRow7203 rho ∧ Seg52.relationRow7204 rho ∧ Seg52.relationRow7205 rho ∧ Seg52.relationRow7206 rho ∧ Seg52.relationRow7207 rho ∧ Seg52.relationRow7208 rho ∧ Seg52.relationRow7209 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    p90, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6306, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, r7202, r7203, r7204, r7205, r7206, r7207, r7208, r7209, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6306, r7202, r7203, r7204, r7205, r7206, r7207, r7208, r7209⟩

theorem seg52Blind_rung157 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50695 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 157)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      157 (Bool.toZMod bit) (seg52BlindAccState rho 157)
      (seg52BlindAccState rho 158) := by
  obtain ⟨r6306, r7202, r7203, r7204, r7205, r7206, r7207, r7208, r7209⟩ := seg52Blind_rows157 rho h
  unfold Seg52.relationRow6306 at r6306

  unfold Seg52.relationRow7202 at r7202

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7202

  unfold Seg52.relationRow7203 at r7203

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7203

  unfold Seg52.relationRow7204 at r7204

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7204

  unfold Seg52.relationRow7205 at r7205

  unfold Seg52.relationRow7206 at r7206

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7206

  unfold Seg52.relationRow7207 at r7207

  unfold Seg52.relationRow7208 at r7208

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7208

  unfold Seg52.relationRow7209 at r7209

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7209

  have hnextx : seg52BlindDeltaX157 rho =
      seg52BlindDeltaX156 rho + rho 51596 := by
    unfold seg52BlindDeltaX157 seg52BlindDeltaX156
    ring

  have hnexty : seg52BlindDeltaY157 rho =
      seg52BlindDeltaY156 rho + rho 51597 := by
    unfold seg52BlindDeltaY157 seg52BlindDeltaY156
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 157
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX156 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY156 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX157 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY157 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY156 rho) (rho 51597)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 157)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3825760111864017298625061611790720376639861203296968002076899718545294470717 : Seg52.F) (6151629435748317771624533067816999483025469323412646316161896209790384377058 : Seg52.F)
    (1532927798183964646000769740826173328289431191555550490303562472418269608734 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6256676653253054730299532555753069192964288690664099667574846758450877202018 : Seg52.F) (6853873785967761673817565252269773083371453670791960771524614044953689489659 : Seg52.F)
    (5781557649376106901185971628163678182810990417933303841346974876038219314830 : Seg52.F) (8218492458226844538125575761540373582318365384695959106127879528189499399800 : Seg52.F)
    (2292832313680052652624291870964547048350430011741417511773337246127024861983 : Seg52.F) (4618701637564353125623763326990826154736038131857095825858333737372114768324 : Seg52.F)
    (225969291201525886123249177241172949057533950458104721807353927727909839241 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX156 rho) (seg52BlindDeltaY156 rho) (rho 50695)
    (rho 51590) (rho 51591) (rho 51592) (rho 51594)
    (rho 51593) (rho 51595) (rho 51596) (rho 51597) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 157)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L157]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX156 seg52BlindDeltaY156;
        first | linear_combination r7202 | linear_combination -r7202)
    (by unfold seg52BlindDeltaX156 seg52BlindDeltaY156;
        first | linear_combination r7203 | linear_combination -r7203)
    (by unfold seg52BlindDeltaX156 seg52BlindDeltaY156;
        first | linear_combination r7204 | linear_combination -r7204)
    (by first | linear_combination r7205 | linear_combination -r7205)
    (by unfold seg52BlindDeltaX156 seg52BlindDeltaY156;
        first | linear_combination r7206 | linear_combination -r7206)
    (by first | linear_combination r7207 | linear_combination -r7207)
    (by unfold seg52BlindDeltaX156; first | linear_combination r7208 | linear_combination -r7208)
    (by unfold seg52BlindDeltaY156; first | linear_combination r7209 | linear_combination -r7209)
    (by linear_combination r6306)

theorem seg52Blind_rows158 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6307 rho ∧ Seg52.relationRow7210 rho ∧ Seg52.relationRow7211 rho ∧ Seg52.relationRow7212 rho ∧ Seg52.relationRow7213 rho ∧ Seg52.relationRow7214 rho ∧ Seg52.relationRow7215 rho ∧ Seg52.relationRow7216 rho ∧ Seg52.relationRow7217 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    p90, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6307, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, r7210, r7211, r7212, r7213, r7214, r7215, r7216, r7217, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6307, r7210, r7211, r7212, r7213, r7214, r7215, r7216, r7217⟩

theorem seg52Blind_rung158 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50696 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 158)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      158 (Bool.toZMod bit) (seg52BlindAccState rho 158)
      (seg52BlindAccState rho 159) := by
  obtain ⟨r6307, r7210, r7211, r7212, r7213, r7214, r7215, r7216, r7217⟩ := seg52Blind_rows158 rho h
  unfold Seg52.relationRow6307 at r6307

  unfold Seg52.relationRow7210 at r7210

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7210

  unfold Seg52.relationRow7211 at r7211

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7211

  unfold Seg52.relationRow7212 at r7212

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7212

  unfold Seg52.relationRow7213 at r7213

  unfold Seg52.relationRow7214 at r7214

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7214

  unfold Seg52.relationRow7215 at r7215

  unfold Seg52.relationRow7216 at r7216

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7216

  unfold Seg52.relationRow7217 at r7217

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7217

  have hnextx : seg52BlindDeltaX158 rho =
      seg52BlindDeltaX157 rho + rho 51604 := by
    unfold seg52BlindDeltaX158 seg52BlindDeltaX157
    ring

  have hnexty : seg52BlindDeltaY158 rho =
      seg52BlindDeltaY157 rho + rho 51605 := by
    unfold seg52BlindDeltaY158 seg52BlindDeltaY157
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 158
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX157 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY157 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX158 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY158 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY157 rho) (rho 51605)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 158)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (2273663639340633928693020721804439104895775062654950651660939353832556776534 : Seg52.F) (704677394197013206829936375796463624827588987931151423729704149020205909355 : Seg52.F)
    (2978341033537647135522957097600902729723364050586102075390643502852762685889 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (826047013227550922533906708166884697419700081184366447757403298854923923123 : Seg52.F) (119723773000174786443294238096441705965954616437577789749514399541216461622 : Seg52.F)
    (7158908385781492008508021774133083834635706214550962581434019877140964959067 : Seg52.F) (4805344311221515933555665830996385477233342333192708968282177091479621906167 : Seg52.F)
    (7739784355231357217418888562985082906548310347222912404205529306897203329686 : Seg52.F) (6170798110087736495555804216977107426480124272499113176274294102084852462507 : Seg52.F)
    (3639117438206854490693159107785161054142557001961354859653056364437787332874 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX157 rho) (seg52BlindDeltaY157 rho) (rho 50696)
    (rho 51598) (rho 51599) (rho 51600) (rho 51602)
    (rho 51601) (rho 51603) (rho 51604) (rho 51605) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 158)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L158]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX157 seg52BlindDeltaY157;
        first | linear_combination r7210 | linear_combination -r7210)
    (by unfold seg52BlindDeltaX157 seg52BlindDeltaY157;
        first | linear_combination r7211 | linear_combination -r7211)
    (by unfold seg52BlindDeltaX157 seg52BlindDeltaY157;
        first | linear_combination r7212 | linear_combination -r7212)
    (by first | linear_combination r7213 | linear_combination -r7213)
    (by unfold seg52BlindDeltaX157 seg52BlindDeltaY157;
        first | linear_combination r7214 | linear_combination -r7214)
    (by first | linear_combination r7215 | linear_combination -r7215)
    (by unfold seg52BlindDeltaX157; first | linear_combination r7216 | linear_combination -r7216)
    (by unfold seg52BlindDeltaY157; first | linear_combination r7217 | linear_combination -r7217)
    (by linear_combination r6307)

theorem seg52Blind_rows159 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6308 rho ∧ Seg52.relationRow7218 rho ∧ Seg52.relationRow7219 rho ∧ Seg52.relationRow7220 rho ∧ Seg52.relationRow7221 rho ∧ Seg52.relationRow7222 rho ∧ Seg52.relationRow7223 rho ∧ Seg52.relationRow7224 rho ∧ Seg52.relationRow7225 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    p90, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6308, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7218, r7219, r7220, r7221, r7222, r7223, r7224, r7225, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6308, r7218, r7219, r7220, r7221, r7222, r7223, r7224, r7225⟩

theorem seg52Blind_rung159 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50697 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 159)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      159 (Bool.toZMod bit) (seg52BlindAccState rho 159)
      (seg52BlindAccState rho 160) := by
  obtain ⟨r6308, r7218, r7219, r7220, r7221, r7222, r7223, r7224, r7225⟩ := seg52Blind_rows159 rho h
  unfold Seg52.relationRow6308 at r6308

  unfold Seg52.relationRow7218 at r7218

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7218

  unfold Seg52.relationRow7219 at r7219

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7219

  unfold Seg52.relationRow7220 at r7220

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7220

  unfold Seg52.relationRow7221 at r7221

  unfold Seg52.relationRow7222 at r7222

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7222

  unfold Seg52.relationRow7223 at r7223

  unfold Seg52.relationRow7224 at r7224

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7224

  unfold Seg52.relationRow7225 at r7225

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7225

  have hnextx : seg52BlindDeltaX159 rho =
      seg52BlindDeltaX158 rho + rho 51612 := by
    unfold seg52BlindDeltaX159 seg52BlindDeltaX158
    ring

  have hnexty : seg52BlindDeltaY159 rho =
      seg52BlindDeltaY158 rho + rho 51613 := by
    unfold seg52BlindDeltaY159 seg52BlindDeltaY158
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 159
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX158 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY158 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX159 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY159 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY158 rho) (rho 51613)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 159)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1426468388389114089497831252905396604616944600436698474923146480900002957835 : Seg52.F) (4544265066358691768917596130451990424240988231578102300524666658646739574100 : Seg52.F)
    (5970733454747805858415427383357387028857932832014800775447813139546742531935 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5974422648505894495717384575449958146189027972093329490263609906010239914475 : Seg52.F) (6032448681272936222007540258559300758641955942685094521818431101361710448027 : Seg52.F)
    (8184702740013749236808048008684360951225383834559140768761682144804622026153 : Seg52.F) (2009188666013277306530690983047598775263088046824021283420719713001870385030 : Seg52.F)
    (3900196683069678655331228808329556107134911103575961527410566797270669664941 : Seg52.F) (7017993361039256334750993685876149926758954734717365353012086975017406281206 : Seg52.F)
    (6435273083415093117718133955733947756112811288330042544514513742915538854011 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX158 rho) (seg52BlindDeltaY158 rho) (rho 50697)
    (rho 51606) (rho 51607) (rho 51608) (rho 51610)
    (rho 51609) (rho 51611) (rho 51612) (rho 51613) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 159)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L159]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX158 seg52BlindDeltaY158;
        first | linear_combination r7218 | linear_combination -r7218)
    (by unfold seg52BlindDeltaX158 seg52BlindDeltaY158;
        first | linear_combination r7219 | linear_combination -r7219)
    (by unfold seg52BlindDeltaX158 seg52BlindDeltaY158;
        first | linear_combination r7220 | linear_combination -r7220)
    (by first | linear_combination r7221 | linear_combination -r7221)
    (by unfold seg52BlindDeltaX158 seg52BlindDeltaY158;
        first | linear_combination r7222 | linear_combination -r7222)
    (by first | linear_combination r7223 | linear_combination -r7223)
    (by unfold seg52BlindDeltaX158; first | linear_combination r7224 | linear_combination -r7224)
    (by unfold seg52BlindDeltaY158; first | linear_combination r7225 | linear_combination -r7225)
    (by linear_combination r6308)

theorem seg52Blind_rows160 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6309 rho ∧ Seg52.relationRow7226 rho ∧ Seg52.relationRow7227 rho ∧ Seg52.relationRow7228 rho ∧ Seg52.relationRow7229 rho ∧ Seg52.relationRow7230 rho ∧ Seg52.relationRow7231 rho ∧ Seg52.relationRow7232 rho ∧ Seg52.relationRow7233 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    p90, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6309, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7226, r7227, r7228, r7229, r7230, r7231, r7232, r7233, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6309, r7226, r7227, r7228, r7229, r7230, r7231, r7232, r7233⟩

theorem seg52Blind_rung160 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50698 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 160)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      160 (Bool.toZMod bit) (seg52BlindAccState rho 160)
      (seg52BlindAccState rho 161) := by
  obtain ⟨r6309, r7226, r7227, r7228, r7229, r7230, r7231, r7232, r7233⟩ := seg52Blind_rows160 rho h
  unfold Seg52.relationRow6309 at r6309

  unfold Seg52.relationRow7226 at r7226

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7226

  unfold Seg52.relationRow7227 at r7227

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7227

  unfold Seg52.relationRow7228 at r7228

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7228

  unfold Seg52.relationRow7229 at r7229

  unfold Seg52.relationRow7230 at r7230

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7230

  unfold Seg52.relationRow7231 at r7231

  unfold Seg52.relationRow7232 at r7232

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7232

  unfold Seg52.relationRow7233 at r7233

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7233

  have hnextx : seg52BlindDeltaX160 rho =
      seg52BlindDeltaX159 rho + rho 51620 := by
    unfold seg52BlindDeltaX160 seg52BlindDeltaX159
    ring

  have hnexty : seg52BlindDeltaY160 rho =
      seg52BlindDeltaY159 rho + rho 51621 := by
    unfold seg52BlindDeltaY160 seg52BlindDeltaY159
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 160
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX159 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY159 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX160 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY160 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY159 rho) (rho 51621)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 160)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1148817998238183129243048840976596988090227252586455029280971969063699305256 : Seg52.F) (1579387360455174887542145628411263924693174897129472540238137916132223584440 : Seg52.F)
    (2728205358693358016785194469387860912783402149715927569519109885195922889696 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (208327508054045564235853018854526270698239866090481276007742042111228535075 : Seg52.F) (2165375506961622196776158526390368682926513544822198770583404674041523390338 : Seg52.F)
    (4762011631022205628848552996963813363631412162142792127260471880144547334970 : Seg52.F) (2792074471856353418686803436118199349749557637899563792297295388337949522943 : Seg52.F)
    (6865074388973195536706679310370282606682724438024591287697095539785185654601 : Seg52.F) (7295643751190187295005776097804949543285672082567608798654261486853709933785 : Seg52.F)
    (5652387277572017005562021502663347181626341697254500035637938067579459716098 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX159 rho) (seg52BlindDeltaY159 rho) (rho 50698)
    (rho 51614) (rho 51615) (rho 51616) (rho 51618)
    (rho 51617) (rho 51619) (rho 51620) (rho 51621) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 160)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L160]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX159 seg52BlindDeltaY159;
        first | linear_combination r7226 | linear_combination -r7226)
    (by unfold seg52BlindDeltaX159 seg52BlindDeltaY159;
        first | linear_combination r7227 | linear_combination -r7227)
    (by unfold seg52BlindDeltaX159 seg52BlindDeltaY159;
        first | linear_combination r7228 | linear_combination -r7228)
    (by first | linear_combination r7229 | linear_combination -r7229)
    (by unfold seg52BlindDeltaX159 seg52BlindDeltaY159;
        first | linear_combination r7230 | linear_combination -r7230)
    (by first | linear_combination r7231 | linear_combination -r7231)
    (by unfold seg52BlindDeltaX159; first | linear_combination r7232 | linear_combination -r7232)
    (by unfold seg52BlindDeltaY159; first | linear_combination r7233 | linear_combination -r7233)
    (by linear_combination r6309)

theorem seg52Blind_hstep_c15 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
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

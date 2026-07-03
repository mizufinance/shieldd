import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows201 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6990 rho ∧ Seg52.relationRow8194 rho ∧ Seg52.relationRow8195 rho ∧ Seg52.relationRow8196 rho ∧ Seg52.relationRow8197 rho ∧ Seg52.relationRow8198 rho ∧ Seg52.relationRow8199 rho ∧ Seg52.relationRow8200 rho ∧ Seg52.relationRow8201 rho := by
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

    _, _, p102, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6990, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart102 at p102

  rcases p102 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8194, r8195, r8196, r8197, r8198, r8199, r8200, r8201, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6990, r8194, r8195, r8196, r8197, r8198, r8199, r8200, r8201⟩

theorem seg52Blind_rung201 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51379 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 201)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      201 (Bool.toZMod bit) (seg52BlindAccState rho 201)
      (seg52BlindAccState rho 202) := by
  obtain ⟨r6990, r8194, r8195, r8196, r8197, r8198, r8199, r8200, r8201⟩ := seg52Blind_rows201 rho h
  unfold Seg52.relationRow6990 at r6990

  unfold Seg52.relationRow8194 at r8194

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8194

  unfold Seg52.relationRow8195 at r8195

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8195

  unfold Seg52.relationRow8196 at r8196

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8196

  unfold Seg52.relationRow8197 at r8197

  unfold Seg52.relationRow8198 at r8198

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8198

  unfold Seg52.relationRow8199 at r8199

  unfold Seg52.relationRow8200 at r8200

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8200

  unfold Seg52.relationRow8201 at r8201

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8201

  have hnextx : seg52BlindDeltaX201 rho =
      seg52BlindDeltaX200 rho + rho 52588 := by
    unfold seg52BlindDeltaX201 seg52BlindDeltaX200
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 51]

    ring

  have hnexty : seg52BlindDeltaY201 rho =
      seg52BlindDeltaY200 rho + rho 52589 := by
    unfold seg52BlindDeltaY201 seg52BlindDeltaY200
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 51]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 201
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX200 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY200 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX201 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY201 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY200 rho) (rho 52589)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 201)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (276116596555470026893685789675440525669836519435740554516571487869501568414 : Seg52.F) (1647989448199865835482932310711166803085998402448382390558968398347562219930 : Seg52.F)
    (1924106044755335862376618100386607328755834921884122945075539886217063788344 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4788152598484509111380621716104005142396465390819607224791025872631424613381 : Seg52.F) (5568233743258565406855880537247248386639754788323356025239016120687784694847 : Seg52.F)
    (7604009220590200803672988464630369465922061573662031730530357480128314349007 : Seg52.F) (2702977219678547987146810688369003902318391372049352287242320252204299777480 : Seg52.F)
    (6796472301228504588765892628070379728289900932705681437376265057569847019111 : Seg52.F) (8168345152872900397355139149106106005706062815718323273418661968047907670627 : Seg52.F)
    (5741484529749822437102014250412542629057507963104711540692913203713109461561 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX200 rho) (seg52BlindDeltaY200 rho) (rho 51379)
    (rho 52582) (rho 52583) (rho 52584) (rho 52586)
    (rho 52585) (rho 52587) (rho 52588) (rho 52589) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 201)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L201]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX200 seg52BlindDeltaY200;
        first | linear_combination r8194 | linear_combination -r8194)
    (by unfold seg52BlindDeltaX200 seg52BlindDeltaY200;
        first | linear_combination r8195 | linear_combination -r8195)
    (by unfold seg52BlindDeltaX200 seg52BlindDeltaY200;
        first | linear_combination r8196 | linear_combination -r8196)
    (by first | linear_combination r8197 | linear_combination -r8197)
    (by unfold seg52BlindDeltaX200 seg52BlindDeltaY200;
        first | linear_combination r8198 | linear_combination -r8198)
    (by first | linear_combination r8199 | linear_combination -r8199)
    (by unfold seg52BlindDeltaX200; first | linear_combination r8200 | linear_combination -r8200)
    (by unfold seg52BlindDeltaY200; first | linear_combination r8201 | linear_combination -r8201)
    (by linear_combination r6990)

theorem seg52Blind_rows202 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6991 rho ∧ Seg52.relationRow8202 rho ∧ Seg52.relationRow8203 rho ∧ Seg52.relationRow8204 rho ∧ Seg52.relationRow8205 rho ∧ Seg52.relationRow8206 rho ∧ Seg52.relationRow8207 rho ∧ Seg52.relationRow8208 rho ∧ Seg52.relationRow8209 rho := by
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

    _, _, p102, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6991, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart102 at p102

  rcases p102 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8202, r8203, r8204, r8205, r8206, r8207, r8208, r8209, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6991, r8202, r8203, r8204, r8205, r8206, r8207, r8208, r8209⟩

theorem seg52Blind_rung202 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51380 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 202)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      202 (Bool.toZMod bit) (seg52BlindAccState rho 202)
      (seg52BlindAccState rho 203) := by
  obtain ⟨r6991, r8202, r8203, r8204, r8205, r8206, r8207, r8208, r8209⟩ := seg52Blind_rows202 rho h
  unfold Seg52.relationRow6991 at r6991

  unfold Seg52.relationRow8202 at r8202

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8202

  unfold Seg52.relationRow8203 at r8203

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8203

  unfold Seg52.relationRow8204 at r8204

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8204

  unfold Seg52.relationRow8205 at r8205

  unfold Seg52.relationRow8206 at r8206

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8206

  unfold Seg52.relationRow8207 at r8207

  unfold Seg52.relationRow8208 at r8208

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8208

  unfold Seg52.relationRow8209 at r8209

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8209

  have hnextx : seg52BlindDeltaX202 rho =
      seg52BlindDeltaX201 rho + rho 52596 := by
    unfold seg52BlindDeltaX202 seg52BlindDeltaX201
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 52]

    ring

  have hnexty : seg52BlindDeltaY202 rho =
      seg52BlindDeltaY201 rho + rho 52597 := by
    unfold seg52BlindDeltaY202 seg52BlindDeltaY201
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 52]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 202
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX201 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY201 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX202 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY202 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY201 rho) (rho 52597)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 202)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3442098559885003232235426211529029457464196300341264270418824492764285244538 : Seg52.F) (3357587405240507661811027315542279488330867831057245657111704459278994939909 : Seg52.F)
    (6799685965125510894046453527071308945795064131398509927530528952043280184447 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (1472990168100766808274768776588950065096616103908472784243790925035217376848 : Seg52.F) (4101247221261016052067604421392065072123844859804398562413106244858019716921 : Seg52.F)
    (8244586507561696599760777546095843143132366719533414419000579313209516988736 : Seg52.F) (2124338250684215562669463738909416516637465792976779071560742119494102154647 : Seg52.F)
    (5086874344187862762437797623239267043045031504096818170823528996638414299132 : Seg52.F) (5002363189543367192013398727252517073911703034812799557516408963153123994503 : Seg52.F)
    (6320123498744154861579361199872130014738433542177284756374491336423307084394 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX201 rho) (seg52BlindDeltaY201 rho) (rho 51380)
    (rho 52590) (rho 52591) (rho 52592) (rho 52594)
    (rho 52593) (rho 52595) (rho 52596) (rho 52597) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 202)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L202]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX201 seg52BlindDeltaY201;
        first | linear_combination r8202 | linear_combination -r8202)
    (by unfold seg52BlindDeltaX201 seg52BlindDeltaY201;
        first | linear_combination r8203 | linear_combination -r8203)
    (by unfold seg52BlindDeltaX201 seg52BlindDeltaY201;
        first | linear_combination r8204 | linear_combination -r8204)
    (by first | linear_combination r8205 | linear_combination -r8205)
    (by unfold seg52BlindDeltaX201 seg52BlindDeltaY201;
        first | linear_combination r8206 | linear_combination -r8206)
    (by first | linear_combination r8207 | linear_combination -r8207)
    (by unfold seg52BlindDeltaX201; first | linear_combination r8208 | linear_combination -r8208)
    (by unfold seg52BlindDeltaY201; first | linear_combination r8209 | linear_combination -r8209)
    (by linear_combination r6991)

theorem seg52Blind_rows203 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6992 rho ∧ Seg52.relationRow8210 rho ∧ Seg52.relationRow8211 rho ∧ Seg52.relationRow8212 rho ∧ Seg52.relationRow8213 rho ∧ Seg52.relationRow8214 rho ∧ Seg52.relationRow8215 rho ∧ Seg52.relationRow8216 rho ∧ Seg52.relationRow8217 rho := by
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

    _, _, p102, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6992, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart102 at p102

  rcases p102 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8210, r8211, r8212, r8213, r8214, r8215, r8216, r8217, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6992, r8210, r8211, r8212, r8213, r8214, r8215, r8216, r8217⟩

theorem seg52Blind_rung203 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51381 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 203)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      203 (Bool.toZMod bit) (seg52BlindAccState rho 203)
      (seg52BlindAccState rho 204) := by
  obtain ⟨r6992, r8210, r8211, r8212, r8213, r8214, r8215, r8216, r8217⟩ := seg52Blind_rows203 rho h
  unfold Seg52.relationRow6992 at r6992

  unfold Seg52.relationRow8210 at r8210

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8210

  unfold Seg52.relationRow8211 at r8211

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8211

  unfold Seg52.relationRow8212 at r8212

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8212

  unfold Seg52.relationRow8213 at r8213

  unfold Seg52.relationRow8214 at r8214

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8214

  unfold Seg52.relationRow8215 at r8215

  unfold Seg52.relationRow8216 at r8216

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8216

  unfold Seg52.relationRow8217 at r8217

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8217

  have hnextx : seg52BlindDeltaX203 rho =
      seg52BlindDeltaX202 rho + rho 52604 := by
    unfold seg52BlindDeltaX203 seg52BlindDeltaX202
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 53]

    ring

  have hnexty : seg52BlindDeltaY203 rho =
      seg52BlindDeltaY202 rho + rho 52605 := by
    unfold seg52BlindDeltaY203 seg52BlindDeltaY202
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 53]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 203
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX202 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY202 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX203 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY203 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY202 rho) (rho 52605)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 203)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (6700955755614116460422023174888383745142951107591358562322706606517359625990 : Seg52.F) (6838724771047401226623639668549172794634004037794561182111799145169223029428 : Seg52.F)
    (5095218777233147262796837904656010008401055810231855916499272295769173416377 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4634094232405047917389638427388196843876424390529208030164184382239773207702 : Seg52.F) (6738134345351785891826393668637195759734714576430081917563349080497569352953 : Seg52.F)
    (7914361061998835072296676203602698436586194749795357566391867891878379072504 : Seg52.F) (7427422077621273656092863568508976673186311377046092062263730683766810370922 : Seg52.F)
    (1605736978380969197625185270232373736741895297359502645823434310748186209613 : Seg52.F) (1743505993814253963826801763893162786232948227562705265612526849400049613051 : Seg52.F)
    (1017039671807096768155961370272569858189587958107971765671502772150598868119 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX202 rho) (seg52BlindDeltaY202 rho) (rho 51381)
    (rho 52598) (rho 52599) (rho 52600) (rho 52602)
    (rho 52601) (rho 52603) (rho 52604) (rho 52605) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 203)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L203]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX202 seg52BlindDeltaY202;
        first | linear_combination r8210 | linear_combination -r8210)
    (by unfold seg52BlindDeltaX202 seg52BlindDeltaY202;
        first | linear_combination r8211 | linear_combination -r8211)
    (by unfold seg52BlindDeltaX202 seg52BlindDeltaY202;
        first | linear_combination r8212 | linear_combination -r8212)
    (by first | linear_combination r8213 | linear_combination -r8213)
    (by unfold seg52BlindDeltaX202 seg52BlindDeltaY202;
        first | linear_combination r8214 | linear_combination -r8214)
    (by first | linear_combination r8215 | linear_combination -r8215)
    (by unfold seg52BlindDeltaX202; first | linear_combination r8216 | linear_combination -r8216)
    (by unfold seg52BlindDeltaY202; first | linear_combination r8217 | linear_combination -r8217)
    (by linear_combination r6992)

theorem seg52Blind_rows204 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6993 rho ∧ Seg52.relationRow8218 rho ∧ Seg52.relationRow8219 rho ∧ Seg52.relationRow8220 rho ∧ Seg52.relationRow8221 rho ∧ Seg52.relationRow8222 rho ∧ Seg52.relationRow8223 rho ∧ Seg52.relationRow8224 rho ∧ Seg52.relationRow8225 rho := by
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

    _, _, p102, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6993, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart102 at p102

  rcases p102 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8218, r8219, r8220, r8221, r8222, r8223, r8224, r8225, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6993, r8218, r8219, r8220, r8221, r8222, r8223, r8224, r8225⟩

theorem seg52Blind_rung204 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51382 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 204)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      204 (Bool.toZMod bit) (seg52BlindAccState rho 204)
      (seg52BlindAccState rho 205) := by
  obtain ⟨r6993, r8218, r8219, r8220, r8221, r8222, r8223, r8224, r8225⟩ := seg52Blind_rows204 rho h
  unfold Seg52.relationRow6993 at r6993

  unfold Seg52.relationRow8218 at r8218

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8218

  unfold Seg52.relationRow8219 at r8219

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8219

  unfold Seg52.relationRow8220 at r8220

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8220

  unfold Seg52.relationRow8221 at r8221

  unfold Seg52.relationRow8222 at r8222

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8222

  unfold Seg52.relationRow8223 at r8223

  unfold Seg52.relationRow8224 at r8224

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8224

  unfold Seg52.relationRow8225 at r8225

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8225

  have hnextx : seg52BlindDeltaX204 rho =
      seg52BlindDeltaX203 rho + rho 52612 := by
    unfold seg52BlindDeltaX204 seg52BlindDeltaX203
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 54]

    ring

  have hnexty : seg52BlindDeltaY204 rho =
      seg52BlindDeltaY203 rho + rho 52613 := by
    unfold seg52BlindDeltaY204 seg52BlindDeltaY203
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 54]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 204
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX203 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY203 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX204 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY204 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY203 rho) (rho 52613)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 204)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7785157229099352850933791713914015122664496508205396539435072476621716026728 : Seg52.F) (2123667417923591665504807628470197607067701419904927458101108123060944604824 : Seg52.F)
    (1464362897594574092189774403602666198356298592956260169600947143765251392511 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6252801731037269485165717073273153637218394150851405520605446725800038741185 : Seg52.F) (564167192971765932790941774524313935462998939855634453737492982849320556999 : Seg52.F)
    (168003565122874189380771387783550189351077983037762698356310535685290194946 : Seg52.F) (5655273535768641454767475888479578046029778212712467408283685830934784950588 : Seg52.F)
    (6320794331504778758744017310311348924308197915249136369834125332856464634217 : Seg52.F) (659304520329017573315033224867531408711402826948667288500160979295693212313 : Seg52.F)
    (2789188213659728969481349050301968485346121122441596419651547624982624288453 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX203 rho) (seg52BlindDeltaY203 rho) (rho 51382)
    (rho 52606) (rho 52607) (rho 52608) (rho 52610)
    (rho 52609) (rho 52611) (rho 52612) (rho 52613) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 204)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L204]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX203 seg52BlindDeltaY203;
        first | linear_combination r8218 | linear_combination -r8218)
    (by unfold seg52BlindDeltaX203 seg52BlindDeltaY203;
        first | linear_combination r8219 | linear_combination -r8219)
    (by unfold seg52BlindDeltaX203 seg52BlindDeltaY203;
        first | linear_combination r8220 | linear_combination -r8220)
    (by first | linear_combination r8221 | linear_combination -r8221)
    (by unfold seg52BlindDeltaX203 seg52BlindDeltaY203;
        first | linear_combination r8222 | linear_combination -r8222)
    (by first | linear_combination r8223 | linear_combination -r8223)
    (by unfold seg52BlindDeltaX203; first | linear_combination r8224 | linear_combination -r8224)
    (by unfold seg52BlindDeltaY203; first | linear_combination r8225 | linear_combination -r8225)
    (by linear_combination r6993)

theorem seg52Blind_rows205 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6994 rho ∧ Seg52.relationRow8226 rho ∧ Seg52.relationRow8227 rho ∧ Seg52.relationRow8228 rho ∧ Seg52.relationRow8229 rho ∧ Seg52.relationRow8230 rho ∧ Seg52.relationRow8231 rho ∧ Seg52.relationRow8232 rho ∧ Seg52.relationRow8233 rho := by
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

    _, _, p102, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6994, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart102 at p102

  rcases p102 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8226, r8227, r8228, r8229, r8230, r8231, r8232, r8233, _, _, _, _, _, _⟩

  exact ⟨r6994, r8226, r8227, r8228, r8229, r8230, r8231, r8232, r8233⟩

theorem seg52Blind_rung205 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51383 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 205)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      205 (Bool.toZMod bit) (seg52BlindAccState rho 205)
      (seg52BlindAccState rho 206) := by
  obtain ⟨r6994, r8226, r8227, r8228, r8229, r8230, r8231, r8232, r8233⟩ := seg52Blind_rows205 rho h
  unfold Seg52.relationRow6994 at r6994

  unfold Seg52.relationRow8226 at r8226

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8226

  unfold Seg52.relationRow8227 at r8227

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8227

  unfold Seg52.relationRow8228 at r8228

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8228

  unfold Seg52.relationRow8229 at r8229

  unfold Seg52.relationRow8230 at r8230

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8230

  unfold Seg52.relationRow8231 at r8231

  unfold Seg52.relationRow8232 at r8232

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8232

  unfold Seg52.relationRow8233 at r8233

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8233

  have hnextx : seg52BlindDeltaX205 rho =
      seg52BlindDeltaX204 rho + rho 52620 := by
    unfold seg52BlindDeltaX205 seg52BlindDeltaX204
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 55]

    ring

  have hnexty : seg52BlindDeltaY205 rho =
      seg52BlindDeltaY204 rho + rho 52621 := by
    unfold seg52BlindDeltaY205 seg52BlindDeltaY204
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 55]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 205
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX204 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY204 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX205 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY205 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY204 rho) (rho 52621)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 205)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (4349899932341040547106419265074882586804667426292901073528921763015154987837 : Seg52.F) (1550459442274610183101427053273344116286768353828898011074360259869021567624 : Seg52.F)
    (5900359374615650730207846318348226703091435780121799084603282022884176555461 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5706165928280148115562111853795796920078965241749530779523010486069437363390 : Seg52.F) (616102913848551635978132297652874516637591556857344240933436591412989788009 : Seg52.F)
    (977210916583284324617020890674464014886204391561145823617587034849873239524 : Seg52.F) (4739826480186208900146612582133455906891698630778036673217639225600037365819 : Seg52.F)
    (6894002307153760241147397885508202415089130981325165816860873196048387671417 : Seg52.F) (4094561817087329877142405673706663944571231908861162754406311692902254251204 : Seg52.F)
    (3704635269242161524102212356648090624484200704376027154717594230317371873222 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX204 rho) (seg52BlindDeltaY204 rho) (rho 51383)
    (rho 52614) (rho 52615) (rho 52616) (rho 52618)
    (rho 52617) (rho 52619) (rho 52620) (rho 52621) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 205)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L205]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX204 seg52BlindDeltaY204;
        first | linear_combination r8226 | linear_combination -r8226)
    (by unfold seg52BlindDeltaX204 seg52BlindDeltaY204;
        first | linear_combination r8227 | linear_combination -r8227)
    (by unfold seg52BlindDeltaX204 seg52BlindDeltaY204;
        first | linear_combination r8228 | linear_combination -r8228)
    (by first | linear_combination r8229 | linear_combination -r8229)
    (by unfold seg52BlindDeltaX204 seg52BlindDeltaY204;
        first | linear_combination r8230 | linear_combination -r8230)
    (by first | linear_combination r8231 | linear_combination -r8231)
    (by unfold seg52BlindDeltaX204; first | linear_combination r8232 | linear_combination -r8232)
    (by unfold seg52BlindDeltaY204; first | linear_combination r8233 | linear_combination -r8233)
    (by linear_combination r6994)

theorem seg52Blind_rows206 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6995 rho ∧ Seg52.relationRow8234 rho ∧ Seg52.relationRow8235 rho ∧ Seg52.relationRow8236 rho ∧ Seg52.relationRow8237 rho ∧ Seg52.relationRow8238 rho ∧ Seg52.relationRow8239 rho ∧ Seg52.relationRow8240 rho ∧ Seg52.relationRow8241 rho := by
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

    _, _, p102, p103, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6995, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart102 at p102

  rcases p102 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8234, r8235, r8236, r8237, r8238, r8239⟩

  unfold Seg52.relationPart103 at p103

  rcases p103 with ⟨r8240, r8241, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6995, r8234, r8235, r8236, r8237, r8238, r8239, r8240, r8241⟩

theorem seg52Blind_rung206 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51384 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 206)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      206 (Bool.toZMod bit) (seg52BlindAccState rho 206)
      (seg52BlindAccState rho 207) := by
  obtain ⟨r6995, r8234, r8235, r8236, r8237, r8238, r8239, r8240, r8241⟩ := seg52Blind_rows206 rho h
  unfold Seg52.relationRow6995 at r6995

  unfold Seg52.relationRow8234 at r8234

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8234

  unfold Seg52.relationRow8235 at r8235

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8235

  unfold Seg52.relationRow8236 at r8236

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8236

  unfold Seg52.relationRow8237 at r8237

  unfold Seg52.relationRow8238 at r8238

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8238

  unfold Seg52.relationRow8239 at r8239

  unfold Seg52.relationRow8240 at r8240

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8240

  unfold Seg52.relationRow8241 at r8241

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8241

  have hnextx : seg52BlindDeltaX206 rho =
      seg52BlindDeltaX205 rho + rho 52628 := by
    unfold seg52BlindDeltaX206 seg52BlindDeltaX205
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 56]

    ring

  have hnexty : seg52BlindDeltaY206 rho =
      seg52BlindDeltaY205 rho + rho 52629 := by
    unfold seg52BlindDeltaY206 seg52BlindDeltaY205
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 56]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 206
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX205 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY205 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX206 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY206 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY205 rho) (rho 52629)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 206)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (5814734497876100950874880244756732844213278078093913461160889537202459134137 : Seg52.F) (1518727952420516170324658259653941833431169715409633421935880835940118166678 : Seg52.F)
    (7333462450296617121199538504410674677644447793503546883096770373142577300815 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2734414322774210183680660656178512258450371263845909099464238811943764734975 : Seg52.F) (3768736213248914186182620569362351181411192762325831657998054681394022199389 : Seg52.F)
    (7107069545256102977963537795205312568728291822755782065779608297426492288692 : Seg52.F) (2283708988056460992505977641690719069233624143274289733651764904433425647055 : Seg52.F)
    (6925733797007854253924166679127604697944729619744430405999352619977291072363 : Seg52.F) (2629727251552269473373944694024813687162621257060150366774343918714950104904 : Seg52.F)
    (6160752761371909431742847297090827462142275191879774094283468551483983591986 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX205 rho) (seg52BlindDeltaY205 rho) (rho 51384)
    (rho 52622) (rho 52623) (rho 52624) (rho 52626)
    (rho 52625) (rho 52627) (rho 52628) (rho 52629) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 206)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L206]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX205 seg52BlindDeltaY205;
        first | linear_combination r8234 | linear_combination -r8234)
    (by unfold seg52BlindDeltaX205 seg52BlindDeltaY205;
        first | linear_combination r8235 | linear_combination -r8235)
    (by unfold seg52BlindDeltaX205 seg52BlindDeltaY205;
        first | linear_combination r8236 | linear_combination -r8236)
    (by first | linear_combination r8237 | linear_combination -r8237)
    (by unfold seg52BlindDeltaX205 seg52BlindDeltaY205;
        first | linear_combination r8238 | linear_combination -r8238)
    (by first | linear_combination r8239 | linear_combination -r8239)
    (by unfold seg52BlindDeltaX205; first | linear_combination r8240 | linear_combination -r8240)
    (by unfold seg52BlindDeltaY205; first | linear_combination r8241 | linear_combination -r8241)
    (by linear_combination r6995)

theorem seg52Blind_rows207 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6996 rho ∧ Seg52.relationRow8242 rho ∧ Seg52.relationRow8243 rho ∧ Seg52.relationRow8244 rho ∧ Seg52.relationRow8245 rho ∧ Seg52.relationRow8246 rho ∧ Seg52.relationRow8247 rho ∧ Seg52.relationRow8248 rho ∧ Seg52.relationRow8249 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6996, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart103 at p103

  rcases p103 with ⟨_, _, r8242, r8243, r8244, r8245, r8246, r8247, r8248, r8249, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6996, r8242, r8243, r8244, r8245, r8246, r8247, r8248, r8249⟩

theorem seg52Blind_rung207 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51385 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 207)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      207 (Bool.toZMod bit) (seg52BlindAccState rho 207)
      (seg52BlindAccState rho 208) := by
  obtain ⟨r6996, r8242, r8243, r8244, r8245, r8246, r8247, r8248, r8249⟩ := seg52Blind_rows207 rho h
  unfold Seg52.relationRow6996 at r6996

  unfold Seg52.relationRow8242 at r8242

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8242

  unfold Seg52.relationRow8243 at r8243

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8243

  unfold Seg52.relationRow8244 at r8244

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8244

  unfold Seg52.relationRow8245 at r8245

  unfold Seg52.relationRow8246 at r8246

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8246

  unfold Seg52.relationRow8247 at r8247

  unfold Seg52.relationRow8248 at r8248

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8248

  unfold Seg52.relationRow8249 at r8249

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8249

  have hnextx : seg52BlindDeltaX207 rho =
      seg52BlindDeltaX206 rho + rho 52636 := by
    unfold seg52BlindDeltaX207 seg52BlindDeltaX206
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 57]

    ring

  have hnexty : seg52BlindDeltaY207 rho =
      seg52BlindDeltaY206 rho + rho 52637 := by
    unfold seg52BlindDeltaY207 seg52BlindDeltaY206
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 57]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 207
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX206 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY206 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX207 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY207 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY206 rho) (rho 52637)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 207)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (2860763221263677585845844196821920280202197559885233758323698242911676232062 : Seg52.F) (7462524169654658252034494141149158068532244508063290757533304467224801922260 : Seg52.F)
    (1878825641489965413631513399189531817358542732794460687921769254219068915281 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6017107302401917076093038803658832793635333333005021748974701642561348147031 : Seg52.F) (4085920262368901219011562727894792756133938710904331559532217036701010729637 : Seg52.F)
    (1500795255898127698254510651498941818485024357039572942008496360563777053149 : Seg52.F) (5194678040160705067222305854033969213620309679929153428027025196149211881187 : Seg52.F)
    (981937579773712172214330797632388462843654827090773070401928988692607316781 : Seg52.F) (5583698528164692838402980741959626251173701775268830069611535213005733006979 : Seg52.F)
    (3249783709267665357026519084747577317755589655224910399908208259768197357854 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX206 rho) (seg52BlindDeltaY206 rho) (rho 51385)
    (rho 52630) (rho 52631) (rho 52632) (rho 52634)
    (rho 52633) (rho 52635) (rho 52636) (rho 52637) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 207)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L207]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX206 seg52BlindDeltaY206;
        first | linear_combination r8242 | linear_combination -r8242)
    (by unfold seg52BlindDeltaX206 seg52BlindDeltaY206;
        first | linear_combination r8243 | linear_combination -r8243)
    (by unfold seg52BlindDeltaX206 seg52BlindDeltaY206;
        first | linear_combination r8244 | linear_combination -r8244)
    (by first | linear_combination r8245 | linear_combination -r8245)
    (by unfold seg52BlindDeltaX206 seg52BlindDeltaY206;
        first | linear_combination r8246 | linear_combination -r8246)
    (by first | linear_combination r8247 | linear_combination -r8247)
    (by unfold seg52BlindDeltaX206; first | linear_combination r8248 | linear_combination -r8248)
    (by unfold seg52BlindDeltaY206; first | linear_combination r8249 | linear_combination -r8249)
    (by linear_combination r6996)

theorem seg52Blind_rows208 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6997 rho ∧ Seg52.relationRow8250 rho ∧ Seg52.relationRow8251 rho ∧ Seg52.relationRow8252 rho ∧ Seg52.relationRow8253 rho ∧ Seg52.relationRow8254 rho ∧ Seg52.relationRow8255 rho ∧ Seg52.relationRow8256 rho ∧ Seg52.relationRow8257 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6997, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart103 at p103

  rcases p103 with ⟨_, _, _, _, _, _, _, _, _, _, r8250, r8251, r8252, r8253, r8254, r8255, r8256, r8257, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6997, r8250, r8251, r8252, r8253, r8254, r8255, r8256, r8257⟩

theorem seg52Blind_rung208 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51386 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 208)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      208 (Bool.toZMod bit) (seg52BlindAccState rho 208)
      (seg52BlindAccState rho 209) := by
  obtain ⟨r6997, r8250, r8251, r8252, r8253, r8254, r8255, r8256, r8257⟩ := seg52Blind_rows208 rho h
  unfold Seg52.relationRow6997 at r6997

  unfold Seg52.relationRow8250 at r8250

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8250

  unfold Seg52.relationRow8251 at r8251

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8251

  unfold Seg52.relationRow8252 at r8252

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8252

  unfold Seg52.relationRow8253 at r8253

  unfold Seg52.relationRow8254 at r8254

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8254

  unfold Seg52.relationRow8255 at r8255

  unfold Seg52.relationRow8256 at r8256

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8256

  unfold Seg52.relationRow8257 at r8257

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8257

  have hnextx : seg52BlindDeltaX208 rho =
      seg52BlindDeltaX207 rho + rho 52644 := by
    unfold seg52BlindDeltaX208 seg52BlindDeltaX207
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 58]

    ring

  have hnexty : seg52BlindDeltaY208 rho =
      seg52BlindDeltaY207 rho + rho 52645 := by
    unfold seg52BlindDeltaY208 seg52BlindDeltaY207
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 58]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 208
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX207 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY207 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX208 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY208 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY207 rho) (rho 52645)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 208)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7465113095028451185872799872536013607722630637219810378141917417312569802674 : Seg52.F) (8153835616969714359988073820290258638905941524545467486275692240649061086510 : Seg52.F)
    (7174486962569795121612048754044725715252672826611214036482376202044221650143 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (242475782950553990148664671100116111350985007453089951790268089730792064113 : Seg52.F) (4068257700137201981391246638348631810753138665802486623152103742596882974052 : Seg52.F)
    (2692737952833932520316010234032258108169355595324402587875864690555969585701 : Seg52.F) (3703171236264511442902973838646123361276754734237484192810578818768078694694 : Seg52.F)
    (290626132458656064260751118491287892469957810608596341659541215268348152531 : Seg52.F) (979348654399919238376025066245532923653268697934253449793316038604839436367 : Seg52.F)
    (4741290513163858981345851100135423170099144600916579635124654637149330544347 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX207 rho) (seg52BlindDeltaY207 rho) (rho 51386)
    (rho 52638) (rho 52639) (rho 52640) (rho 52642)
    (rho 52641) (rho 52643) (rho 52644) (rho 52645) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 208)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L208]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX207 seg52BlindDeltaY207;
        first | linear_combination r8250 | linear_combination -r8250)
    (by unfold seg52BlindDeltaX207 seg52BlindDeltaY207;
        first | linear_combination r8251 | linear_combination -r8251)
    (by unfold seg52BlindDeltaX207 seg52BlindDeltaY207;
        first | linear_combination r8252 | linear_combination -r8252)
    (by first | linear_combination r8253 | linear_combination -r8253)
    (by unfold seg52BlindDeltaX207 seg52BlindDeltaY207;
        first | linear_combination r8254 | linear_combination -r8254)
    (by first | linear_combination r8255 | linear_combination -r8255)
    (by unfold seg52BlindDeltaX207; first | linear_combination r8256 | linear_combination -r8256)
    (by unfold seg52BlindDeltaY207; first | linear_combination r8257 | linear_combination -r8257)
    (by linear_combination r6997)

theorem seg52Blind_rows209 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6998 rho ∧ Seg52.relationRow8258 rho ∧ Seg52.relationRow8259 rho ∧ Seg52.relationRow8260 rho ∧ Seg52.relationRow8261 rho ∧ Seg52.relationRow8262 rho ∧ Seg52.relationRow8263 rho ∧ Seg52.relationRow8264 rho ∧ Seg52.relationRow8265 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6998, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart103 at p103

  rcases p103 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8258, r8259, r8260, r8261, r8262, r8263, r8264, r8265, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6998, r8258, r8259, r8260, r8261, r8262, r8263, r8264, r8265⟩

theorem seg52Blind_rung209 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51387 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 209)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      209 (Bool.toZMod bit) (seg52BlindAccState rho 209)
      (seg52BlindAccState rho 210) := by
  obtain ⟨r6998, r8258, r8259, r8260, r8261, r8262, r8263, r8264, r8265⟩ := seg52Blind_rows209 rho h
  unfold Seg52.relationRow6998 at r6998

  unfold Seg52.relationRow8258 at r8258

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8258

  unfold Seg52.relationRow8259 at r8259

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8259

  unfold Seg52.relationRow8260 at r8260

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8260

  unfold Seg52.relationRow8261 at r8261

  unfold Seg52.relationRow8262 at r8262

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8262

  unfold Seg52.relationRow8263 at r8263

  unfold Seg52.relationRow8264 at r8264

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8264

  unfold Seg52.relationRow8265 at r8265

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8265

  have hnextx : seg52BlindDeltaX209 rho =
      seg52BlindDeltaX208 rho + rho 52652 := by
    unfold seg52BlindDeltaX209 seg52BlindDeltaX208
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 59]

    ring

  have hnexty : seg52BlindDeltaY209 rho =
      seg52BlindDeltaY208 rho + rho 52653 := by
    unfold seg52BlindDeltaY209 seg52BlindDeltaY208
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 59]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 209
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX208 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY208 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX209 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY209 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY208 rho) (rho 52653)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 209)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (8030100344403790845996943823625781763957991048782322609484900374187528137681 : Seg52.F) (4829265910451333594512553487381529642303084944426558117612016650407467118045 : Seg52.F)
    (4414904505426754016260672372225764874885176658054816899161683568677586016685 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5626874210683066344703416103870189711441465301563842461754122511592407790138 : Seg52.F) (1808281244680904552489492991420048991943923359052202397801231545156362684153 : Seg52.F)
    (2394394569641527098060815883352803663392756907676881861840041555934705680524 : Seg52.F) (2258025703545099012580609683747085116207892576639643554931393688409119222388 : Seg52.F)
    (3615195838977036829736271451400016889072814390727505710323216805509942120996 : Seg52.F) (414361405024579578251881115155764767417908286371741218450333081729881101360 : Seg52.F)
    (6186436045883271411668215255034461415168006758514420273003839767508290016653 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX208 rho) (seg52BlindDeltaY208 rho) (rho 51387)
    (rho 52646) (rho 52647) (rho 52648) (rho 52650)
    (rho 52649) (rho 52651) (rho 52652) (rho 52653) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 209)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L209]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX208 seg52BlindDeltaY208;
        first | linear_combination r8258 | linear_combination -r8258)
    (by unfold seg52BlindDeltaX208 seg52BlindDeltaY208;
        first | linear_combination r8259 | linear_combination -r8259)
    (by unfold seg52BlindDeltaX208 seg52BlindDeltaY208;
        first | linear_combination r8260 | linear_combination -r8260)
    (by first | linear_combination r8261 | linear_combination -r8261)
    (by unfold seg52BlindDeltaX208 seg52BlindDeltaY208;
        first | linear_combination r8262 | linear_combination -r8262)
    (by first | linear_combination r8263 | linear_combination -r8263)
    (by unfold seg52BlindDeltaX208; first | linear_combination r8264 | linear_combination -r8264)
    (by unfold seg52BlindDeltaY208; first | linear_combination r8265 | linear_combination -r8265)
    (by linear_combination r6998)

theorem seg52Blind_rows210 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6999 rho ∧ Seg52.relationRow8266 rho ∧ Seg52.relationRow8267 rho ∧ Seg52.relationRow8268 rho ∧ Seg52.relationRow8269 rho ∧ Seg52.relationRow8270 rho ∧ Seg52.relationRow8271 rho ∧ Seg52.relationRow8272 rho ∧ Seg52.relationRow8273 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6999, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart103 at p103

  rcases p103 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8266, r8267, r8268, r8269, r8270, r8271, r8272, r8273, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6999, r8266, r8267, r8268, r8269, r8270, r8271, r8272, r8273⟩

theorem seg52Blind_rung210 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51388 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 210)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      210 (Bool.toZMod bit) (seg52BlindAccState rho 210)
      (seg52BlindAccState rho 211) := by
  obtain ⟨r6999, r8266, r8267, r8268, r8269, r8270, r8271, r8272, r8273⟩ := seg52Blind_rows210 rho h
  unfold Seg52.relationRow6999 at r6999

  unfold Seg52.relationRow8266 at r8266

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8266

  unfold Seg52.relationRow8267 at r8267

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8267

  unfold Seg52.relationRow8268 at r8268

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8268

  unfold Seg52.relationRow8269 at r8269

  unfold Seg52.relationRow8270 at r8270

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8270

  unfold Seg52.relationRow8271 at r8271

  unfold Seg52.relationRow8272 at r8272

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8272

  unfold Seg52.relationRow8273 at r8273

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8273

  have hnextx : seg52BlindDeltaX210 rho =
      seg52BlindDeltaX209 rho + rho 52660 := by
    unfold seg52BlindDeltaX210 seg52BlindDeltaX209
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 60]

    ring

  have hnexty : seg52BlindDeltaY210 rho =
      seg52BlindDeltaY209 rho + rho 52661 := by
    unfold seg52BlindDeltaY210 seg52BlindDeltaY209
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 60]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 210
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX209 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY209 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX210 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY210 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY209 rho) (rho 52661)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 210)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3782900478265775560931739200186194103556643599302583319935031983674800803617 : Seg52.F) (1153456347483115601279021059595869794902982791302576608046116169125695631023 : Seg52.F)
    (4936356825748891162210760259782063898459626390605159927981148152800496434640 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5473384982003616673406746261125479475040486441609635798000763090753894835591 : Seg52.F) (5921283769484743309292289095720219236617528250280403079561652748954462198901 : Seg52.F)
    (2978822135553467932400026135049372739244910881062198026797986470482102973233 : Seg52.F) (4462266693966748656716864766843460750124038380526592012857316289874748242644 : Seg52.F)
    (7291005401945254822969803879185676736472916543851487219889117286791713608018 : Seg52.F) (4661561271162594863317085738595352427819255735851480508000201472242608435424 : Seg52.F)
    (3982195055461621767531960171938085781251860954627471815077917166042660996397 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX209 rho) (seg52BlindDeltaY209 rho) (rho 51388)
    (rho 52654) (rho 52655) (rho 52656) (rho 52658)
    (rho 52657) (rho 52659) (rho 52660) (rho 52661) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 210)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L210]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX209 seg52BlindDeltaY209;
        first | linear_combination r8266 | linear_combination -r8266)
    (by unfold seg52BlindDeltaX209 seg52BlindDeltaY209;
        first | linear_combination r8267 | linear_combination -r8267)
    (by unfold seg52BlindDeltaX209 seg52BlindDeltaY209;
        first | linear_combination r8268 | linear_combination -r8268)
    (by first | linear_combination r8269 | linear_combination -r8269)
    (by unfold seg52BlindDeltaX209 seg52BlindDeltaY209;
        first | linear_combination r8270 | linear_combination -r8270)
    (by first | linear_combination r8271 | linear_combination -r8271)
    (by unfold seg52BlindDeltaX209; first | linear_combination r8272 | linear_combination -r8272)
    (by unfold seg52BlindDeltaY209; first | linear_combination r8273 | linear_combination -r8273)
    (by linear_combination r6999)

theorem seg52Blind_hstep_c20 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 201 ≤ i → i < 211 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung201 rho h bits[201]! (hbitAt 201 (by omega)) hacc
  · exact seg52Blind_rung202 rho h bits[202]! (hbitAt 202 (by omega)) hacc
  · exact seg52Blind_rung203 rho h bits[203]! (hbitAt 203 (by omega)) hacc
  · exact seg52Blind_rung204 rho h bits[204]! (hbitAt 204 (by omega)) hacc
  · exact seg52Blind_rung205 rho h bits[205]! (hbitAt 205 (by omega)) hacc
  · exact seg52Blind_rung206 rho h bits[206]! (hbitAt 206 (by omega)) hacc
  · exact seg52Blind_rung207 rho h bits[207]! (hbitAt 207 (by omega)) hacc
  · exact seg52Blind_rung208 rho h bits[208]! (hbitAt 208 (by omega)) hacc
  · exact seg52Blind_rung209 rho h bits[209]! (hbitAt 209 (by omega)) hacc
  · exact seg52Blind_rung210 rho h bits[210]! (hbitAt 210 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

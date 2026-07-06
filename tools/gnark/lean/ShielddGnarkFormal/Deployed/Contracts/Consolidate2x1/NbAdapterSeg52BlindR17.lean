import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows171 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6320 rho ∧ Seg52.relationRow7314 rho ∧ Seg52.relationRow7315 rho ∧ Seg52.relationRow7316 rho ∧ Seg52.relationRow7317 rho ∧ Seg52.relationRow7318 rho ∧ Seg52.relationRow7319 rho ∧ Seg52.relationRow7320 rho ∧ Seg52.relationRow7321 rho := by
  unfold Seg52.relation at h

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

    _, p91, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨r6320, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7314, r7315, r7316, r7317, r7318, r7319, r7320, r7321, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6320, r7314, r7315, r7316, r7317, r7318, r7319, r7320, r7321⟩

theorem seg52Blind_rung171 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50709 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 171)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      171 (Bool.toZMod bit) (seg52BlindAccState rho 171)
      (seg52BlindAccState rho 172) := by
  obtain ⟨r6320, r7314, r7315, r7316, r7317, r7318, r7319, r7320, r7321⟩ := seg52Blind_rows171 rho h
  unfold Seg52.relationRow6320 at r6320

  unfold Seg52.relationRow7314 at r7314

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7314

  unfold Seg52.relationRow7315 at r7315

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7315

  unfold Seg52.relationRow7316 at r7316

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7316

  unfold Seg52.relationRow7317 at r7317

  unfold Seg52.relationRow7318 at r7318

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7318

  unfold Seg52.relationRow7319 at r7319

  unfold Seg52.relationRow7320 at r7320

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7320

  unfold Seg52.relationRow7321 at r7321

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7321

  have hnextx : seg52BlindDeltaX171 rho =
      seg52BlindDeltaX170 rho + rho 51708 := by
    unfold seg52BlindDeltaX171 seg52BlindDeltaX170
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 21]

    ring

  have hnexty : seg52BlindDeltaY171 rho =
      seg52BlindDeltaY170 rho + rho 51709 := by
    unfold seg52BlindDeltaY171 seg52BlindDeltaY170
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 21]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 171
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX170 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY170 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX171 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY171 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY170 rho) (rho 51709)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 171)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (4539074155643860541030658495777936422967191037167360927204655615187737478918 : Seg52.F) (6105392408192146457470872675139227921963547698642477078732445372055512856535 : Seg52.F)
    (2200004814407636574252706232135617813554839400655774178001867531325841096412 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (1686004396913441460072685296709927726913449622447854640167601256082561526691 : Seg52.F) (4104337676065758380785832857057132723398202689245960146757014008748361465404 : Seg52.F)
    (1217750448352328848459051523113928039998561399160614947061724317152803199570 : Seg52.F) (6901860039303650540242781060816656021134146156213729055747287584246097255987 : Seg52.F)
    (2339069341236223966777952263642318609412351636511586749202788083861896382506 : Seg52.F) (3905387593784509883218166443003610108408708297986702900730577840729671760123 : Seg52.F)
    (1542601710124719884006043877964890510241753178940334772187945871671311983054 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX170 rho) (seg52BlindDeltaY170 rho) (rho 50709)
    (rho 51702) (rho 51703) (rho 51704) (rho 51706)
    (rho 51705) (rho 51707) (rho 51708) (rho 51709) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 171)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L171]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX170 seg52BlindDeltaY170;
        first | linear_combination r7314 | linear_combination -r7314)
    (by unfold seg52BlindDeltaX170 seg52BlindDeltaY170;
        first | linear_combination r7315 | linear_combination -r7315)
    (by unfold seg52BlindDeltaX170 seg52BlindDeltaY170;
        first | linear_combination r7316 | linear_combination -r7316)
    (by first | linear_combination r7317 | linear_combination -r7317)
    (by unfold seg52BlindDeltaX170 seg52BlindDeltaY170;
        first | linear_combination r7318 | linear_combination -r7318)
    (by first | linear_combination r7319 | linear_combination -r7319)
    (by unfold seg52BlindDeltaX170; first | linear_combination r7320 | linear_combination -r7320)
    (by unfold seg52BlindDeltaY170; first | linear_combination r7321 | linear_combination -r7321)
    (by linear_combination r6320)

theorem seg52Blind_rows172 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6321 rho ∧ Seg52.relationRow7322 rho ∧ Seg52.relationRow7323 rho ∧ Seg52.relationRow7324 rho ∧ Seg52.relationRow7325 rho ∧ Seg52.relationRow7326 rho ∧ Seg52.relationRow7327 rho ∧ Seg52.relationRow7328 rho ∧ Seg52.relationRow7329 rho := by
  unfold Seg52.relation at h

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

    _, p91, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, r6321, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7322, r7323, r7324, r7325, r7326, r7327, r7328, r7329, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6321, r7322, r7323, r7324, r7325, r7326, r7327, r7328, r7329⟩

theorem seg52Blind_rung172 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50710 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 172)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      172 (Bool.toZMod bit) (seg52BlindAccState rho 172)
      (seg52BlindAccState rho 173) := by
  obtain ⟨r6321, r7322, r7323, r7324, r7325, r7326, r7327, r7328, r7329⟩ := seg52Blind_rows172 rho h
  unfold Seg52.relationRow6321 at r6321

  unfold Seg52.relationRow7322 at r7322

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7322

  unfold Seg52.relationRow7323 at r7323

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7323

  unfold Seg52.relationRow7324 at r7324

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7324

  unfold Seg52.relationRow7325 at r7325

  unfold Seg52.relationRow7326 at r7326

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7326

  unfold Seg52.relationRow7327 at r7327

  unfold Seg52.relationRow7328 at r7328

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7328

  unfold Seg52.relationRow7329 at r7329

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7329

  have hnextx : seg52BlindDeltaX172 rho =
      seg52BlindDeltaX171 rho + rho 51716 := by
    unfold seg52BlindDeltaX172 seg52BlindDeltaX171
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 22]

    ring

  have hnexty : seg52BlindDeltaY172 rho =
      seg52BlindDeltaY171 rho + rho 51717 := by
    unfold seg52BlindDeltaY172 seg52BlindDeltaY171
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 22]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 172
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX171 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY171 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX172 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY172 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY171 rho) (rho 51717)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 172)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1189727039257417773146963891805468094277926358781282652259055735334905828690 : Seg52.F) (1368239371210898318989512428810871675633714899585151922875215904592739153663 : Seg52.F)
    (2557966410468316092136476320616339769911641258366434575134271639927644982353 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4109344957650684209641652373467078246637936756406747145698087831051865324874 : Seg52.F) (8185075041605189891702230811232664311135334879558914454024211833472237572350 : Seg52.F)
    (5633231909779173705243818096630389247657880760377004305002706642023381431345 : Seg52.F) (8294227672357123213139327778057891205833854147537240523082955310812169390266 : Seg52.F)
    (7076222378217472105259312509970674855742184435568911905060017551324670085378 : Seg52.F) (7254734710170952651101861046976078437097972976372781175676177720582503410351 : Seg52.F)
    (150234077071247211109497160723655325542045187616823304852278145105239848775 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX171 rho) (seg52BlindDeltaY171 rho) (rho 50710)
    (rho 51710) (rho 51711) (rho 51712) (rho 51714)
    (rho 51713) (rho 51715) (rho 51716) (rho 51717) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 172)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L172]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX171 seg52BlindDeltaY171;
        first | linear_combination r7322 | linear_combination -r7322)
    (by unfold seg52BlindDeltaX171 seg52BlindDeltaY171;
        first | linear_combination r7323 | linear_combination -r7323)
    (by unfold seg52BlindDeltaX171 seg52BlindDeltaY171;
        first | linear_combination r7324 | linear_combination -r7324)
    (by first | linear_combination r7325 | linear_combination -r7325)
    (by unfold seg52BlindDeltaX171 seg52BlindDeltaY171;
        first | linear_combination r7326 | linear_combination -r7326)
    (by first | linear_combination r7327 | linear_combination -r7327)
    (by unfold seg52BlindDeltaX171; first | linear_combination r7328 | linear_combination -r7328)
    (by unfold seg52BlindDeltaY171; first | linear_combination r7329 | linear_combination -r7329)
    (by linear_combination r6321)

theorem seg52Blind_rows173 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6322 rho ∧ Seg52.relationRow7330 rho ∧ Seg52.relationRow7331 rho ∧ Seg52.relationRow7332 rho ∧ Seg52.relationRow7333 rho ∧ Seg52.relationRow7334 rho ∧ Seg52.relationRow7335 rho ∧ Seg52.relationRow7336 rho ∧ Seg52.relationRow7337 rho := by
  unfold Seg52.relation at h

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

    _, p91, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, r6322, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7330, r7331, r7332, r7333, r7334, r7335, r7336, r7337, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6322, r7330, r7331, r7332, r7333, r7334, r7335, r7336, r7337⟩

theorem seg52Blind_rung173 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50711 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 173)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      173 (Bool.toZMod bit) (seg52BlindAccState rho 173)
      (seg52BlindAccState rho 174) := by
  obtain ⟨r6322, r7330, r7331, r7332, r7333, r7334, r7335, r7336, r7337⟩ := seg52Blind_rows173 rho h
  unfold Seg52.relationRow6322 at r6322

  unfold Seg52.relationRow7330 at r7330

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7330

  unfold Seg52.relationRow7331 at r7331

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7331

  unfold Seg52.relationRow7332 at r7332

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7332

  unfold Seg52.relationRow7333 at r7333

  unfold Seg52.relationRow7334 at r7334

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7334

  unfold Seg52.relationRow7335 at r7335

  unfold Seg52.relationRow7336 at r7336

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7336

  unfold Seg52.relationRow7337 at r7337

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7337

  have hnextx : seg52BlindDeltaX173 rho =
      seg52BlindDeltaX172 rho + rho 51724 := by
    unfold seg52BlindDeltaX173 seg52BlindDeltaX172
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 23]

    ring

  have hnexty : seg52BlindDeltaY173 rho =
      seg52BlindDeltaY172 rho + rho 51725 := by
    unfold seg52BlindDeltaY173 seg52BlindDeltaY172
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 23]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 173
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX172 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY172 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX173 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY173 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY172 rho) (rho 51725)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 173)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (492187389477685739719883284483824738295496446159253906695099275432548304139 : Seg52.F) (2812324368576348763916819359102179322153357818117478445519694946026685745170 : Seg52.F)
    (3304511758054034503636702643586004060448854264276732352214794221459234049309 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (903397544208968998393395433447921661139237367914173012153575293703941683324 : Seg52.F) (5261268698174490817639752183640085875124473451973826038092695836296690717596 : Seg52.F)
    (3277399131366304628572171477952357502603016755363655206256944844257262755626 : Seg52.F) (1574035874678740422026609259987080012280549320410988834524935671045305474892 : Seg52.F)
    (5632137380852021660332005579679367209222541517036585382415538509890723493871 : Seg52.F) (7952274359950684684528941654297721793080402888994809921240134180484860934902 : Seg52.F)
    (6870425874749630002222215678794466519095350014743074993410297784872103764149 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX172 rho) (seg52BlindDeltaY172 rho) (rho 50711)
    (rho 51718) (rho 51719) (rho 51720) (rho 51722)
    (rho 51721) (rho 51723) (rho 51724) (rho 51725) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 173)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L173]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX172 seg52BlindDeltaY172;
        first | linear_combination r7330 | linear_combination -r7330)
    (by unfold seg52BlindDeltaX172 seg52BlindDeltaY172;
        first | linear_combination r7331 | linear_combination -r7331)
    (by unfold seg52BlindDeltaX172 seg52BlindDeltaY172;
        first | linear_combination r7332 | linear_combination -r7332)
    (by first | linear_combination r7333 | linear_combination -r7333)
    (by unfold seg52BlindDeltaX172 seg52BlindDeltaY172;
        first | linear_combination r7334 | linear_combination -r7334)
    (by first | linear_combination r7335 | linear_combination -r7335)
    (by unfold seg52BlindDeltaX172; first | linear_combination r7336 | linear_combination -r7336)
    (by unfold seg52BlindDeltaY172; first | linear_combination r7337 | linear_combination -r7337)
    (by linear_combination r6322)

theorem seg52Blind_rows174 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6323 rho ∧ Seg52.relationRow7338 rho ∧ Seg52.relationRow7339 rho ∧ Seg52.relationRow7340 rho ∧ Seg52.relationRow7341 rho ∧ Seg52.relationRow7342 rho ∧ Seg52.relationRow7343 rho ∧ Seg52.relationRow7344 rho ∧ Seg52.relationRow7345 rho := by
  unfold Seg52.relation at h

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

    _, p91, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, r6323, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7338, r7339, r7340, r7341, r7342, r7343, r7344, r7345, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6323, r7338, r7339, r7340, r7341, r7342, r7343, r7344, r7345⟩

theorem seg52Blind_rung174 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50712 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 174)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      174 (Bool.toZMod bit) (seg52BlindAccState rho 174)
      (seg52BlindAccState rho 175) := by
  obtain ⟨r6323, r7338, r7339, r7340, r7341, r7342, r7343, r7344, r7345⟩ := seg52Blind_rows174 rho h
  unfold Seg52.relationRow6323 at r6323

  unfold Seg52.relationRow7338 at r7338

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7338

  unfold Seg52.relationRow7339 at r7339

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7339

  unfold Seg52.relationRow7340 at r7340

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7340

  unfold Seg52.relationRow7341 at r7341

  unfold Seg52.relationRow7342 at r7342

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7342

  unfold Seg52.relationRow7343 at r7343

  unfold Seg52.relationRow7344 at r7344

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7344

  unfold Seg52.relationRow7345 at r7345

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7345

  have hnextx : seg52BlindDeltaX174 rho =
      seg52BlindDeltaX173 rho + rho 51732 := by
    unfold seg52BlindDeltaX174 seg52BlindDeltaX173
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 24]

    ring

  have hnexty : seg52BlindDeltaY174 rho =
      seg52BlindDeltaY173 rho + rho 51733 := by
    unfold seg52BlindDeltaY174 seg52BlindDeltaY173
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 24]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 174
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX173 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY173 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX174 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY174 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY173 rho) (rho 51733)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 174)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1667175853442267745748346309550449676103037935549174577034155677584820160155 : Seg52.F) (6789018812520716971280761201352968868231178570886219064263086153797533754731 : Seg52.F)
    (11732916534614292780282572121872012958317171281329813362008375464944675845 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6472705013002580163032637925723972745706876893200818912036439654879840650803 : Seg52.F) (523168191152816093959112074180680068973676207798847251742382807098758110759 : Seg52.F)
    (7347986451293227228044865939853207470134533378182586591732454424103537980357 : Seg52.F) (765336914149016856309671097497576420375755073621175976857998149400327123081 : Seg52.F)
    (1655442936907653452968063737428577663144720764267844763672147302119875484310 : Seg52.F) (6777285895986102678500478629231096855272861399604889250901077778332589078886 : Seg52.F)
    (7679124835279353567939153841283970111000144261532887851077235306517082115960 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX173 rho) (seg52BlindDeltaY173 rho) (rho 50712)
    (rho 51726) (rho 51727) (rho 51728) (rho 51730)
    (rho 51729) (rho 51731) (rho 51732) (rho 51733) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 174)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L174]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX173 seg52BlindDeltaY173;
        first | linear_combination r7338 | linear_combination -r7338)
    (by unfold seg52BlindDeltaX173 seg52BlindDeltaY173;
        first | linear_combination r7339 | linear_combination -r7339)
    (by unfold seg52BlindDeltaX173 seg52BlindDeltaY173;
        first | linear_combination r7340 | linear_combination -r7340)
    (by first | linear_combination r7341 | linear_combination -r7341)
    (by unfold seg52BlindDeltaX173 seg52BlindDeltaY173;
        first | linear_combination r7342 | linear_combination -r7342)
    (by first | linear_combination r7343 | linear_combination -r7343)
    (by unfold seg52BlindDeltaX173; first | linear_combination r7344 | linear_combination -r7344)
    (by unfold seg52BlindDeltaY173; first | linear_combination r7345 | linear_combination -r7345)
    (by linear_combination r6323)

theorem seg52Blind_rows175 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6324 rho ∧ Seg52.relationRow7346 rho ∧ Seg52.relationRow7347 rho ∧ Seg52.relationRow7348 rho ∧ Seg52.relationRow7349 rho ∧ Seg52.relationRow7350 rho ∧ Seg52.relationRow7351 rho ∧ Seg52.relationRow7352 rho ∧ Seg52.relationRow7353 rho := by
  unfold Seg52.relation at h

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

    _, p91, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, r6324, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7346, r7347, r7348, r7349, r7350, r7351, r7352, r7353, _, _, _, _, _, _⟩

  exact ⟨r6324, r7346, r7347, r7348, r7349, r7350, r7351, r7352, r7353⟩

theorem seg52Blind_rung175 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50713 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 175)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      175 (Bool.toZMod bit) (seg52BlindAccState rho 175)
      (seg52BlindAccState rho 176) := by
  obtain ⟨r6324, r7346, r7347, r7348, r7349, r7350, r7351, r7352, r7353⟩ := seg52Blind_rows175 rho h
  unfold Seg52.relationRow6324 at r6324

  unfold Seg52.relationRow7346 at r7346

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7346

  unfold Seg52.relationRow7347 at r7347

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7347

  unfold Seg52.relationRow7348 at r7348

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7348

  unfold Seg52.relationRow7349 at r7349

  unfold Seg52.relationRow7350 at r7350

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7350

  unfold Seg52.relationRow7351 at r7351

  unfold Seg52.relationRow7352 at r7352

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7352

  unfold Seg52.relationRow7353 at r7353

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7353

  have hnextx : seg52BlindDeltaX175 rho =
      seg52BlindDeltaX174 rho + rho 51740 := by
    unfold seg52BlindDeltaX175 seg52BlindDeltaX174
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 25]

    ring

  have hnexty : seg52BlindDeltaY175 rho =
      seg52BlindDeltaY174 rho + rho 51741 := by
    unfold seg52BlindDeltaY175 seg52BlindDeltaY174
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 25]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 175
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX174 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY174 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX175 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY175 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY174 rho) (rho 51741)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 175)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (6500295608575224403577725407255013509774739731695849381464071273603679024138 : Seg52.F) (2181990151873616184954560751152767413517952616988910761714693664778141881608 : Seg52.F)
    (237824011020470164283461219626234391916793013530696315243531482464411666705 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5112084256065563833644576982904061764533374503329625350607465679187417885788 : Seg52.F) (7527861843569188002123817210029680959433138097825591352209755200104846047280 : Seg52.F)
    (1800696480843674362533975346651308872086511601015124632617255324139971244405 : Seg52.F) (6868188222587393792107293653927770969343235445237894989310685571515823739337 : Seg52.F)
    (6262471597554754239294264187628779117857946718165153066220539791139267357433 : Seg52.F) (1944166140853146020671099531526533021601159603458214446471162182313730214903 : Seg52.F)
    (1576273526840976632141531284853775562032663889916168838624547884401585499704 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX174 rho) (seg52BlindDeltaY174 rho) (rho 50713)
    (rho 51734) (rho 51735) (rho 51736) (rho 51738)
    (rho 51737) (rho 51739) (rho 51740) (rho 51741) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 175)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L175]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX174 seg52BlindDeltaY174;
        first | linear_combination r7346 | linear_combination -r7346)
    (by unfold seg52BlindDeltaX174 seg52BlindDeltaY174;
        first | linear_combination r7347 | linear_combination -r7347)
    (by unfold seg52BlindDeltaX174 seg52BlindDeltaY174;
        first | linear_combination r7348 | linear_combination -r7348)
    (by first | linear_combination r7349 | linear_combination -r7349)
    (by unfold seg52BlindDeltaX174 seg52BlindDeltaY174;
        first | linear_combination r7350 | linear_combination -r7350)
    (by first | linear_combination r7351 | linear_combination -r7351)
    (by unfold seg52BlindDeltaX174; first | linear_combination r7352 | linear_combination -r7352)
    (by unfold seg52BlindDeltaY174; first | linear_combination r7353 | linear_combination -r7353)
    (by linear_combination r6324)

theorem seg52Blind_rows176 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6325 rho ∧ Seg52.relationRow7354 rho ∧ Seg52.relationRow7355 rho ∧ Seg52.relationRow7356 rho ∧ Seg52.relationRow7357 rho ∧ Seg52.relationRow7358 rho ∧ Seg52.relationRow7359 rho ∧ Seg52.relationRow7360 rho ∧ Seg52.relationRow7361 rho := by
  unfold Seg52.relation at h

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

    _, p91, p92, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, r6325, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7354, r7355, r7356, r7357, r7358, r7359⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨r7360, r7361, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6325, r7354, r7355, r7356, r7357, r7358, r7359, r7360, r7361⟩

theorem seg52Blind_rung176 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50714 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 176)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      176 (Bool.toZMod bit) (seg52BlindAccState rho 176)
      (seg52BlindAccState rho 177) := by
  obtain ⟨r6325, r7354, r7355, r7356, r7357, r7358, r7359, r7360, r7361⟩ := seg52Blind_rows176 rho h
  unfold Seg52.relationRow6325 at r6325

  unfold Seg52.relationRow7354 at r7354

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7354

  unfold Seg52.relationRow7355 at r7355

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7355

  unfold Seg52.relationRow7356 at r7356

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7356

  unfold Seg52.relationRow7357 at r7357

  unfold Seg52.relationRow7358 at r7358

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7358

  unfold Seg52.relationRow7359 at r7359

  unfold Seg52.relationRow7360 at r7360

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7360

  unfold Seg52.relationRow7361 at r7361

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7361

  have hnextx : seg52BlindDeltaX176 rho =
      seg52BlindDeltaX175 rho + rho 51748 := by
    unfold seg52BlindDeltaX176 seg52BlindDeltaX175
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 26]

    ring

  have hnexty : seg52BlindDeltaY176 rho =
      seg52BlindDeltaY175 rho + rho 51749 := by
    unfold seg52BlindDeltaY176 seg52BlindDeltaY175
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 26]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 176
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX175 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY175 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX176 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY176 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY175 rho) (rho 51749)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 176)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3686694172161452137307136928011842724124112916089468706551246464119678174556 : Seg52.F) (151041364896572449626002570432852781974197289804479422659975754287075105733 : Seg52.F)
    (3837735537058024586933139498444695506098310205893948129211222218406753280289 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (295028883413367410717218583444741649751448401012889147284147081713795511179 : Seg52.F) (997393638517673454837835612460204460707872237746252290258743549367452952391 : Seg52.F)
    (5447509693584985211681178921174715347732773873372327537382737402961313898781 : Seg52.F) (1447831649959205534870443849415717372910462030814327178069576088208435657101 : Seg52.F)
    (8293420384531797974622822368348693749401702045349584405275257701630334133308 : Seg52.F) (4757767577266918286941688010769703807251786419064595121383986991797731064485 : Seg52.F)
    (6996630099469164889378381089365829158465437304339736649865657367708973581940 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX175 rho) (seg52BlindDeltaY175 rho) (rho 50714)
    (rho 51742) (rho 51743) (rho 51744) (rho 51746)
    (rho 51745) (rho 51747) (rho 51748) (rho 51749) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 176)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L176]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX175 seg52BlindDeltaY175;
        first | linear_combination r7354 | linear_combination -r7354)
    (by unfold seg52BlindDeltaX175 seg52BlindDeltaY175;
        first | linear_combination r7355 | linear_combination -r7355)
    (by unfold seg52BlindDeltaX175 seg52BlindDeltaY175;
        first | linear_combination r7356 | linear_combination -r7356)
    (by first | linear_combination r7357 | linear_combination -r7357)
    (by unfold seg52BlindDeltaX175 seg52BlindDeltaY175;
        first | linear_combination r7358 | linear_combination -r7358)
    (by first | linear_combination r7359 | linear_combination -r7359)
    (by unfold seg52BlindDeltaX175; first | linear_combination r7360 | linear_combination -r7360)
    (by unfold seg52BlindDeltaY175; first | linear_combination r7361 | linear_combination -r7361)
    (by linear_combination r6325)

theorem seg52Blind_rows177 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6326 rho ∧ Seg52.relationRow7362 rho ∧ Seg52.relationRow7363 rho ∧ Seg52.relationRow7364 rho ∧ Seg52.relationRow7365 rho ∧ Seg52.relationRow7366 rho ∧ Seg52.relationRow7367 rho ∧ Seg52.relationRow7368 rho ∧ Seg52.relationRow7369 rho := by
  unfold Seg52.relation at h

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

    _, _, p92, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, r6326, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, r7362, r7363, r7364, r7365, r7366, r7367, r7368, r7369, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6326, r7362, r7363, r7364, r7365, r7366, r7367, r7368, r7369⟩

theorem seg52Blind_rung177 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50715 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 177)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      177 (Bool.toZMod bit) (seg52BlindAccState rho 177)
      (seg52BlindAccState rho 178) := by
  obtain ⟨r6326, r7362, r7363, r7364, r7365, r7366, r7367, r7368, r7369⟩ := seg52Blind_rows177 rho h
  unfold Seg52.relationRow6326 at r6326

  unfold Seg52.relationRow7362 at r7362

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7362

  unfold Seg52.relationRow7363 at r7363

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7363

  unfold Seg52.relationRow7364 at r7364

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7364

  unfold Seg52.relationRow7365 at r7365

  unfold Seg52.relationRow7366 at r7366

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7366

  unfold Seg52.relationRow7367 at r7367

  unfold Seg52.relationRow7368 at r7368

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7368

  unfold Seg52.relationRow7369 at r7369

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7369

  have hnextx : seg52BlindDeltaX177 rho =
      seg52BlindDeltaX176 rho + rho 51756 := by
    unfold seg52BlindDeltaX177 seg52BlindDeltaX176
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 27]

    ring

  have hnexty : seg52BlindDeltaY177 rho =
      seg52BlindDeltaY176 rho + rho 51757 := by
    unfold seg52BlindDeltaY177 seg52BlindDeltaY176
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 27]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 177
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX176 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY176 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX177 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY177 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY176 rho) (rho 51757)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 177)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3636053712089879338690869825299855140209253247089434682864164838528816194568 : Seg52.F) (7618201096770730300139258388392980618443983707444169529391510297778595196843 : Seg52.F)
    (2809793059432239214581303274911289227277337619379540384320441680390002152370 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (3427246152066830642651633155480150319949091894012217168241442214195913275978 : Seg52.F) (2826500319246157779873389090194830972712374672212742612497212842223396009465 : Seg52.F)
    (5128864072279759294272138083283133430709790815935273100211408962448730416752 : Seg52.F) (4716102126369083139022567510012867275241098089377646915530204944364138172009 : Seg52.F)
    (826260652657640124109566550388565912931915627709894298543723158138814042198 : Seg52.F) (4808408037338491085557955113481691391166646088064629145071068617388593044473 : Seg52.F)
    (3728359623059287285226257428768679256134801245776416912405028511553271067032 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX176 rho) (seg52BlindDeltaY176 rho) (rho 50715)
    (rho 51750) (rho 51751) (rho 51752) (rho 51754)
    (rho 51753) (rho 51755) (rho 51756) (rho 51757) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 177)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L177]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX176 seg52BlindDeltaY176;
        first | linear_combination r7362 | linear_combination -r7362)
    (by unfold seg52BlindDeltaX176 seg52BlindDeltaY176;
        first | linear_combination r7363 | linear_combination -r7363)
    (by unfold seg52BlindDeltaX176 seg52BlindDeltaY176;
        first | linear_combination r7364 | linear_combination -r7364)
    (by first | linear_combination r7365 | linear_combination -r7365)
    (by unfold seg52BlindDeltaX176 seg52BlindDeltaY176;
        first | linear_combination r7366 | linear_combination -r7366)
    (by first | linear_combination r7367 | linear_combination -r7367)
    (by unfold seg52BlindDeltaX176; first | linear_combination r7368 | linear_combination -r7368)
    (by unfold seg52BlindDeltaY176; first | linear_combination r7369 | linear_combination -r7369)
    (by linear_combination r6326)

theorem seg52Blind_rows178 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6327 rho ∧ Seg52.relationRow7370 rho ∧ Seg52.relationRow7371 rho ∧ Seg52.relationRow7372 rho ∧ Seg52.relationRow7373 rho ∧ Seg52.relationRow7374 rho ∧ Seg52.relationRow7375 rho ∧ Seg52.relationRow7376 rho ∧ Seg52.relationRow7377 rho := by
  unfold Seg52.relation at h

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

    _, _, p92, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, r6327, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, r7370, r7371, r7372, r7373, r7374, r7375, r7376, r7377, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6327, r7370, r7371, r7372, r7373, r7374, r7375, r7376, r7377⟩

theorem seg52Blind_rung178 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50716 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 178)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      178 (Bool.toZMod bit) (seg52BlindAccState rho 178)
      (seg52BlindAccState rho 179) := by
  obtain ⟨r6327, r7370, r7371, r7372, r7373, r7374, r7375, r7376, r7377⟩ := seg52Blind_rows178 rho h
  unfold Seg52.relationRow6327 at r6327

  unfold Seg52.relationRow7370 at r7370

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7370

  unfold Seg52.relationRow7371 at r7371

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7371

  unfold Seg52.relationRow7372 at r7372

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7372

  unfold Seg52.relationRow7373 at r7373

  unfold Seg52.relationRow7374 at r7374

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7374

  unfold Seg52.relationRow7375 at r7375

  unfold Seg52.relationRow7376 at r7376

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7376

  unfold Seg52.relationRow7377 at r7377

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7377

  have hnextx : seg52BlindDeltaX178 rho =
      seg52BlindDeltaX177 rho + rho 51764 := by
    unfold seg52BlindDeltaX178 seg52BlindDeltaX177
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 28]

    ring

  have hnexty : seg52BlindDeltaY178 rho =
      seg52BlindDeltaY177 rho + rho 51765 := by
    unfold seg52BlindDeltaY178 seg52BlindDeltaY177
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 28]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 178
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX177 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY177 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX178 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY178 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY177 rho) (rho 51765)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 178)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3208908907049162934313763394970265570586756908930088916345667543871796142882 : Seg52.F) (4573699048751469511521419616842993543719924256682280566279198317696462795534 : Seg52.F)
    (7782607955800632445835183011813259114306681165612369482624865861568258938416 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2005404213375380235131062636073370246919867125121168227416183880132590237138 : Seg52.F) (4784214778175042884149442557764463818562024273545516578202392105623304844875 : Seg52.F)
    (1376415166243034028495377564207046757430797731801850254468886873759465321306 : Seg52.F) (1920278057394069746862945085121109813010237154275678092667376672684854496155 : Seg52.F)
    (3870762700676900912727405321938552987655975078471783261656035138220946443507 : Seg52.F) (5235552842379207489935061543811280960789142426223974911589565912045613096159 : Seg52.F)
    (6524183692034300677385879853660436718365662180878385735267856783232554742886 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX177 rho) (seg52BlindDeltaY177 rho) (rho 50716)
    (rho 51758) (rho 51759) (rho 51760) (rho 51762)
    (rho 51761) (rho 51763) (rho 51764) (rho 51765) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 178)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L178]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX177 seg52BlindDeltaY177;
        first | linear_combination r7370 | linear_combination -r7370)
    (by unfold seg52BlindDeltaX177 seg52BlindDeltaY177;
        first | linear_combination r7371 | linear_combination -r7371)
    (by unfold seg52BlindDeltaX177 seg52BlindDeltaY177;
        first | linear_combination r7372 | linear_combination -r7372)
    (by first | linear_combination r7373 | linear_combination -r7373)
    (by unfold seg52BlindDeltaX177 seg52BlindDeltaY177;
        first | linear_combination r7374 | linear_combination -r7374)
    (by first | linear_combination r7375 | linear_combination -r7375)
    (by unfold seg52BlindDeltaX177; first | linear_combination r7376 | linear_combination -r7376)
    (by unfold seg52BlindDeltaY177; first | linear_combination r7377 | linear_combination -r7377)
    (by linear_combination r6327)

theorem seg52Blind_rows179 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6328 rho ∧ Seg52.relationRow7378 rho ∧ Seg52.relationRow7379 rho ∧ Seg52.relationRow7380 rho ∧ Seg52.relationRow7381 rho ∧ Seg52.relationRow7382 rho ∧ Seg52.relationRow7383 rho ∧ Seg52.relationRow7384 rho ∧ Seg52.relationRow7385 rho := by
  unfold Seg52.relation at h

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

    _, _, p92, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, r6328, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7378, r7379, r7380, r7381, r7382, r7383, r7384, r7385, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6328, r7378, r7379, r7380, r7381, r7382, r7383, r7384, r7385⟩

theorem seg52Blind_rung179 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50717 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 179)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      179 (Bool.toZMod bit) (seg52BlindAccState rho 179)
      (seg52BlindAccState rho 180) := by
  obtain ⟨r6328, r7378, r7379, r7380, r7381, r7382, r7383, r7384, r7385⟩ := seg52Blind_rows179 rho h
  unfold Seg52.relationRow6328 at r6328

  unfold Seg52.relationRow7378 at r7378

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7378

  unfold Seg52.relationRow7379 at r7379

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7379

  unfold Seg52.relationRow7380 at r7380

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7380

  unfold Seg52.relationRow7381 at r7381

  unfold Seg52.relationRow7382 at r7382

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7382

  unfold Seg52.relationRow7383 at r7383

  unfold Seg52.relationRow7384 at r7384

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7384

  unfold Seg52.relationRow7385 at r7385

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7385

  have hnextx : seg52BlindDeltaX179 rho =
      seg52BlindDeltaX178 rho + rho 51772 := by
    unfold seg52BlindDeltaX179 seg52BlindDeltaX178
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 29]

    ring

  have hnexty : seg52BlindDeltaY179 rho =
      seg52BlindDeltaY178 rho + rho 51773 := by
    unfold seg52BlindDeltaY179 seg52BlindDeltaY178
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 29]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 179
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX178 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY178 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX179 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY179 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY178 rho) (rho 51773)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 179)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (4795152947387177822651171193672527608619660283440788416206342939920742731776 : Seg52.F) (1614221379281109225873679279112349918714836479827408232335090736890828718752 : Seg52.F)
    (6409374326668287048524850472784877527334496763268196648541433676811571450528 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4108357388061236572813112521456755833627089174705441165679412082848428423135 : Seg52.F) (4123372059699344288277837313666126440828906553166339005009536672862144757468 : Seg52.F)
    (5807655721081984382075658649034336050204781834756902235012964053436416760975 : Seg52.F) (6122089050441692039078024167226060425562256059215830234924832866324735853835 : Seg52.F)
    (6830240370147261198375145659669196612661062855326655595600142719026580520289 : Seg52.F) (3649308802041192601597653745109018922756239051713275411728890515996666507265 : Seg52.F)
    (2322372698986678385170800771555486105813643275938233593010400589592673385206 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX178 rho) (seg52BlindDeltaY178 rho) (rho 50717)
    (rho 51766) (rho 51767) (rho 51768) (rho 51770)
    (rho 51769) (rho 51771) (rho 51772) (rho 51773) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 179)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L179]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX178 seg52BlindDeltaY178;
        first | linear_combination r7378 | linear_combination -r7378)
    (by unfold seg52BlindDeltaX178 seg52BlindDeltaY178;
        first | linear_combination r7379 | linear_combination -r7379)
    (by unfold seg52BlindDeltaX178 seg52BlindDeltaY178;
        first | linear_combination r7380 | linear_combination -r7380)
    (by first | linear_combination r7381 | linear_combination -r7381)
    (by unfold seg52BlindDeltaX178 seg52BlindDeltaY178;
        first | linear_combination r7382 | linear_combination -r7382)
    (by first | linear_combination r7383 | linear_combination -r7383)
    (by unfold seg52BlindDeltaX178; first | linear_combination r7384 | linear_combination -r7384)
    (by unfold seg52BlindDeltaY178; first | linear_combination r7385 | linear_combination -r7385)
    (by linear_combination r6328)

theorem seg52Blind_rows180 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6329 rho ∧ Seg52.relationRow7386 rho ∧ Seg52.relationRow7387 rho ∧ Seg52.relationRow7388 rho ∧ Seg52.relationRow7389 rho ∧ Seg52.relationRow7390 rho ∧ Seg52.relationRow7391 rho ∧ Seg52.relationRow7392 rho ∧ Seg52.relationRow7393 rho := by
  unfold Seg52.relation at h

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

    _, _, p92, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, r6329, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7386, r7387, r7388, r7389, r7390, r7391, r7392, r7393, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6329, r7386, r7387, r7388, r7389, r7390, r7391, r7392, r7393⟩

theorem seg52Blind_rung180 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50718 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 180)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      180 (Bool.toZMod bit) (seg52BlindAccState rho 180)
      (seg52BlindAccState rho 181) := by
  obtain ⟨r6329, r7386, r7387, r7388, r7389, r7390, r7391, r7392, r7393⟩ := seg52Blind_rows180 rho h
  unfold Seg52.relationRow6329 at r6329

  unfold Seg52.relationRow7386 at r7386

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7386

  unfold Seg52.relationRow7387 at r7387

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7387

  unfold Seg52.relationRow7388 at r7388

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7388

  unfold Seg52.relationRow7389 at r7389

  unfold Seg52.relationRow7390 at r7390

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7390

  unfold Seg52.relationRow7391 at r7391

  unfold Seg52.relationRow7392 at r7392

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7392

  unfold Seg52.relationRow7393 at r7393

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7393

  have hnextx : seg52BlindDeltaX180 rho =
      seg52BlindDeltaX179 rho + rho 51780 := by
    unfold seg52BlindDeltaX180 seg52BlindDeltaX179
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 30]

    ring

  have hnexty : seg52BlindDeltaY180 rho =
      seg52BlindDeltaY179 rho + rho 51781 := by
    unfold seg52BlindDeltaY180 seg52BlindDeltaY179
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 30]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 180
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX179 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY179 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX180 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY180 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY179 rho) (rho 51781)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 180)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1603279230062761644371699523018134843206550750153332960177912966805714289819 : Seg52.F) (6083144384519493791896324904071478793578622929786030430707294081222152755324 : Seg52.F)
    (7686423614582255436268024427089613636785173679939363390885207048027867045143 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2030418877256702153354468411292183127062917588355041579667419295840969680588 : Seg52.F) (1747355640068679147516328884857115463749624824253420006611042383112582562104 : Seg52.F)
    (7305892694301029992493071465213924921567977686636080727368555182846421408795 : Seg52.F) (4902552823771956875741508036393245377867373978126235817730127599362191232359 : Seg52.F)
    (2361317364908876632352500034710067737797276405368033397227939374695256483717 : Seg52.F) (6841182519365608779877125415763411688169348585000730867757320489111694949222 : Seg52.F)
    (3541908925656413548507316902388301153508525357027828010205105856555218006682 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX179 rho) (seg52BlindDeltaY179 rho) (rho 50718)
    (rho 51774) (rho 51775) (rho 51776) (rho 51778)
    (rho 51777) (rho 51779) (rho 51780) (rho 51781) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 180)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L180]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX179 seg52BlindDeltaY179;
        first | linear_combination r7386 | linear_combination -r7386)
    (by unfold seg52BlindDeltaX179 seg52BlindDeltaY179;
        first | linear_combination r7387 | linear_combination -r7387)
    (by unfold seg52BlindDeltaX179 seg52BlindDeltaY179;
        first | linear_combination r7388 | linear_combination -r7388)
    (by first | linear_combination r7389 | linear_combination -r7389)
    (by unfold seg52BlindDeltaX179 seg52BlindDeltaY179;
        first | linear_combination r7390 | linear_combination -r7390)
    (by first | linear_combination r7391 | linear_combination -r7391)
    (by unfold seg52BlindDeltaX179; first | linear_combination r7392 | linear_combination -r7392)
    (by unfold seg52BlindDeltaY179; first | linear_combination r7393 | linear_combination -r7393)
    (by linear_combination r6329)

theorem seg52Blind_hstep_c17 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 171 ≤ i → i < 181 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung171 rho h bits[171]! (hbitAt 171 (by omega)) hacc
  · exact seg52Blind_rung172 rho h bits[172]! (hbitAt 172 (by omega)) hacc
  · exact seg52Blind_rung173 rho h bits[173]! (hbitAt 173 (by omega)) hacc
  · exact seg52Blind_rung174 rho h bits[174]! (hbitAt 174 (by omega)) hacc
  · exact seg52Blind_rung175 rho h bits[175]! (hbitAt 175 (by omega)) hacc
  · exact seg52Blind_rung176 rho h bits[176]! (hbitAt 176 (by omega)) hacc
  · exact seg52Blind_rung177 rho h bits[177]! (hbitAt 177 (by omega)) hacc
  · exact seg52Blind_rung178 rho h bits[178]! (hbitAt 178 (by omega)) hacc
  · exact seg52Blind_rung179 rho h bits[179]! (hbitAt 179 (by omega)) hacc
  · exact seg52Blind_rung180 rho h bits[180]! (hbitAt 180 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

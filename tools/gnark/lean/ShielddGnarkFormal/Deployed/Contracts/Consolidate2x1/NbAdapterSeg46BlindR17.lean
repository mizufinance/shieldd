import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg46Blind_rows171 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow559 rho ∧ Seg46.relationRow1553 rho ∧ Seg46.relationRow1554 rho ∧ Seg46.relationRow1555 rho ∧ Seg46.relationRow1556 rho ∧ Seg46.relationRow1557 rho ∧ Seg46.relationRow1558 rho ∧ Seg46.relationRow1559 rho ∧ Seg46.relationRow1560 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, p6, _, _, _,

    _, _, _, _, _, _, _, _, _, p19,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart6 at p6

  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r559⟩

  unfold Seg46.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r559, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560⟩

theorem seg46Blind_rung171 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31832 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 171)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      171 (Bool.toZMod bit) (seg46BlindAccState rho 171)
      (seg46BlindAccState rho 172) := by
  obtain ⟨r559, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560⟩ := seg46Blind_rows171 rho h
  unfold Seg46.relationRow559 at r559

  unfold Seg46.relationRow1553 at r1553

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1553

  unfold Seg46.relationRow1554 at r1554

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1554

  unfold Seg46.relationRow1555 at r1555

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1555

  unfold Seg46.relationRow1556 at r1556

  unfold Seg46.relationRow1557 at r1557

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1557

  unfold Seg46.relationRow1558 at r1558

  unfold Seg46.relationRow1559 at r1559

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1559

  unfold Seg46.relationRow1560 at r1560

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1560

  have hnextx : seg46BlindDeltaX171 rho =
      seg46BlindDeltaX170 rho + rho 32831 := by
    unfold seg46BlindDeltaX171 seg46BlindDeltaX170
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 21]

    ring

  have hnexty : seg46BlindDeltaY171 rho =
      seg46BlindDeltaY170 rho + rho 32832 := by
    unfold seg46BlindDeltaY171 seg46BlindDeltaY170
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 21]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 171
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX170 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY170 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX171 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY171 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY170 rho) (rho 32832)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 171)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (4539074155643860541030658495777936422967191037167360927204655615187737478918 : Seg46.F) (6105392408192146457470872675139227921963547698642477078732445372055512856535 : Seg46.F)
    (2200004814407636574252706232135617813554839400655774178001867531325841096412 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (1686004396913441460072685296709927726913449622447854640167601256082561526691 : Seg46.F) (4104337676065758380785832857057132723398202689245960146757014008748361465404 : Seg46.F)
    (1217750448352328848459051523113928039998561399160614947061724317152803199570 : Seg46.F) (6901860039303650540242781060816656021134146156213729055747287584246097255987 : Seg46.F)
    (2339069341236223966777952263642318609412351636511586749202788083861896382506 : Seg46.F) (3905387593784509883218166443003610108408708297986702900730577840729671760123 : Seg46.F)
    (1542601710124719884006043877964890510241753178940334772187945871671311983054 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX170 rho) (seg46BlindDeltaY170 rho) (rho 31832)
    (rho 32825) (rho 32826) (rho 32827) (rho 32829)
    (rho 32828) (rho 32830) (rho 32831) (rho 32832) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 171)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L171]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX170 seg46BlindDeltaY170;
        first | linear_combination r1553 | linear_combination -r1553)
    (by unfold seg46BlindDeltaX170 seg46BlindDeltaY170;
        first | linear_combination r1554 | linear_combination -r1554)
    (by unfold seg46BlindDeltaX170 seg46BlindDeltaY170;
        first | linear_combination r1555 | linear_combination -r1555)
    (by first | linear_combination r1556 | linear_combination -r1556)
    (by unfold seg46BlindDeltaX170 seg46BlindDeltaY170;
        first | linear_combination r1557 | linear_combination -r1557)
    (by first | linear_combination r1558 | linear_combination -r1558)
    (by unfold seg46BlindDeltaX170; first | linear_combination r1559 | linear_combination -r1559)
    (by unfold seg46BlindDeltaY170; first | linear_combination r1560 | linear_combination -r1560)
    (by linear_combination r559)

theorem seg46Blind_rows172 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow560 rho ∧ Seg46.relationRow1561 rho ∧ Seg46.relationRow1562 rho ∧ Seg46.relationRow1563 rho ∧ Seg46.relationRow1564 rho ∧ Seg46.relationRow1565 rho ∧ Seg46.relationRow1566 rho ∧ Seg46.relationRow1567 rho ∧ Seg46.relationRow1568 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, p19,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨r560, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1561, r1562, r1563, r1564, r1565, r1566, r1567, r1568, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r560, r1561, r1562, r1563, r1564, r1565, r1566, r1567, r1568⟩

theorem seg46Blind_rung172 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31833 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 172)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      172 (Bool.toZMod bit) (seg46BlindAccState rho 172)
      (seg46BlindAccState rho 173) := by
  obtain ⟨r560, r1561, r1562, r1563, r1564, r1565, r1566, r1567, r1568⟩ := seg46Blind_rows172 rho h
  unfold Seg46.relationRow560 at r560

  unfold Seg46.relationRow1561 at r1561

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1561

  unfold Seg46.relationRow1562 at r1562

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1562

  unfold Seg46.relationRow1563 at r1563

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1563

  unfold Seg46.relationRow1564 at r1564

  unfold Seg46.relationRow1565 at r1565

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1565

  unfold Seg46.relationRow1566 at r1566

  unfold Seg46.relationRow1567 at r1567

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1567

  unfold Seg46.relationRow1568 at r1568

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1568

  have hnextx : seg46BlindDeltaX172 rho =
      seg46BlindDeltaX171 rho + rho 32839 := by
    unfold seg46BlindDeltaX172 seg46BlindDeltaX171
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 22]

    ring

  have hnexty : seg46BlindDeltaY172 rho =
      seg46BlindDeltaY171 rho + rho 32840 := by
    unfold seg46BlindDeltaY172 seg46BlindDeltaY171
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 22]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 172
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX171 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY171 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX172 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY172 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY171 rho) (rho 32840)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 172)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (1189727039257417773146963891805468094277926358781282652259055735334905828690 : Seg46.F) (1368239371210898318989512428810871675633714899585151922875215904592739153663 : Seg46.F)
    (2557966410468316092136476320616339769911641258366434575134271639927644982353 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (4109344957650684209641652373467078246637936756406747145698087831051865324874 : Seg46.F) (8185075041605189891702230811232664311135334879558914454024211833472237572350 : Seg46.F)
    (5633231909779173705243818096630389247657880760377004305002706642023381431345 : Seg46.F) (8294227672357123213139327778057891205833854147537240523082955310812169390266 : Seg46.F)
    (7076222378217472105259312509970674855742184435568911905060017551324670085378 : Seg46.F) (7254734710170952651101861046976078437097972976372781175676177720582503410351 : Seg46.F)
    (150234077071247211109497160723655325542045187616823304852278145105239848775 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX171 rho) (seg46BlindDeltaY171 rho) (rho 31833)
    (rho 32833) (rho 32834) (rho 32835) (rho 32837)
    (rho 32836) (rho 32838) (rho 32839) (rho 32840) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 172)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L172]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX171 seg46BlindDeltaY171;
        first | linear_combination r1561 | linear_combination -r1561)
    (by unfold seg46BlindDeltaX171 seg46BlindDeltaY171;
        first | linear_combination r1562 | linear_combination -r1562)
    (by unfold seg46BlindDeltaX171 seg46BlindDeltaY171;
        first | linear_combination r1563 | linear_combination -r1563)
    (by first | linear_combination r1564 | linear_combination -r1564)
    (by unfold seg46BlindDeltaX171 seg46BlindDeltaY171;
        first | linear_combination r1565 | linear_combination -r1565)
    (by first | linear_combination r1566 | linear_combination -r1566)
    (by unfold seg46BlindDeltaX171; first | linear_combination r1567 | linear_combination -r1567)
    (by unfold seg46BlindDeltaY171; first | linear_combination r1568 | linear_combination -r1568)
    (by linear_combination r560)

theorem seg46Blind_rows173 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow561 rho ∧ Seg46.relationRow1569 rho ∧ Seg46.relationRow1570 rho ∧ Seg46.relationRow1571 rho ∧ Seg46.relationRow1572 rho ∧ Seg46.relationRow1573 rho ∧ Seg46.relationRow1574 rho ∧ Seg46.relationRow1575 rho ∧ Seg46.relationRow1576 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, p19,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨_, r561, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1569, r1570, r1571, r1572, r1573, r1574, r1575, r1576, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r561, r1569, r1570, r1571, r1572, r1573, r1574, r1575, r1576⟩

theorem seg46Blind_rung173 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31834 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 173)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      173 (Bool.toZMod bit) (seg46BlindAccState rho 173)
      (seg46BlindAccState rho 174) := by
  obtain ⟨r561, r1569, r1570, r1571, r1572, r1573, r1574, r1575, r1576⟩ := seg46Blind_rows173 rho h
  unfold Seg46.relationRow561 at r561

  unfold Seg46.relationRow1569 at r1569

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1569

  unfold Seg46.relationRow1570 at r1570

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1570

  unfold Seg46.relationRow1571 at r1571

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1571

  unfold Seg46.relationRow1572 at r1572

  unfold Seg46.relationRow1573 at r1573

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1573

  unfold Seg46.relationRow1574 at r1574

  unfold Seg46.relationRow1575 at r1575

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1575

  unfold Seg46.relationRow1576 at r1576

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1576

  have hnextx : seg46BlindDeltaX173 rho =
      seg46BlindDeltaX172 rho + rho 32847 := by
    unfold seg46BlindDeltaX173 seg46BlindDeltaX172
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 23]

    ring

  have hnexty : seg46BlindDeltaY173 rho =
      seg46BlindDeltaY172 rho + rho 32848 := by
    unfold seg46BlindDeltaY173 seg46BlindDeltaY172
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 23]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 173
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX172 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY172 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX173 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY173 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY172 rho) (rho 32848)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 173)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (492187389477685739719883284483824738295496446159253906695099275432548304139 : Seg46.F) (2812324368576348763916819359102179322153357818117478445519694946026685745170 : Seg46.F)
    (3304511758054034503636702643586004060448854264276732352214794221459234049309 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (903397544208968998393395433447921661139237367914173012153575293703941683324 : Seg46.F) (5261268698174490817639752183640085875124473451973826038092695836296690717596 : Seg46.F)
    (3277399131366304628572171477952357502603016755363655206256944844257262755626 : Seg46.F) (1574035874678740422026609259987080012280549320410988834524935671045305474892 : Seg46.F)
    (5632137380852021660332005579679367209222541517036585382415538509890723493871 : Seg46.F) (7952274359950684684528941654297721793080402888994809921240134180484860934902 : Seg46.F)
    (6870425874749630002222215678794466519095350014743074993410297784872103764149 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX172 rho) (seg46BlindDeltaY172 rho) (rho 31834)
    (rho 32841) (rho 32842) (rho 32843) (rho 32845)
    (rho 32844) (rho 32846) (rho 32847) (rho 32848) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 173)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L173]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX172 seg46BlindDeltaY172;
        first | linear_combination r1569 | linear_combination -r1569)
    (by unfold seg46BlindDeltaX172 seg46BlindDeltaY172;
        first | linear_combination r1570 | linear_combination -r1570)
    (by unfold seg46BlindDeltaX172 seg46BlindDeltaY172;
        first | linear_combination r1571 | linear_combination -r1571)
    (by first | linear_combination r1572 | linear_combination -r1572)
    (by unfold seg46BlindDeltaX172 seg46BlindDeltaY172;
        first | linear_combination r1573 | linear_combination -r1573)
    (by first | linear_combination r1574 | linear_combination -r1574)
    (by unfold seg46BlindDeltaX172; first | linear_combination r1575 | linear_combination -r1575)
    (by unfold seg46BlindDeltaY172; first | linear_combination r1576 | linear_combination -r1576)
    (by linear_combination r561)

theorem seg46Blind_rows174 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow562 rho ∧ Seg46.relationRow1577 rho ∧ Seg46.relationRow1578 rho ∧ Seg46.relationRow1579 rho ∧ Seg46.relationRow1580 rho ∧ Seg46.relationRow1581 rho ∧ Seg46.relationRow1582 rho ∧ Seg46.relationRow1583 rho ∧ Seg46.relationRow1584 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, p19,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨_, _, r562, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1577, r1578, r1579, r1580, r1581, r1582, r1583, r1584, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r562, r1577, r1578, r1579, r1580, r1581, r1582, r1583, r1584⟩

theorem seg46Blind_rung174 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31835 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 174)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      174 (Bool.toZMod bit) (seg46BlindAccState rho 174)
      (seg46BlindAccState rho 175) := by
  obtain ⟨r562, r1577, r1578, r1579, r1580, r1581, r1582, r1583, r1584⟩ := seg46Blind_rows174 rho h
  unfold Seg46.relationRow562 at r562

  unfold Seg46.relationRow1577 at r1577

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1577

  unfold Seg46.relationRow1578 at r1578

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1578

  unfold Seg46.relationRow1579 at r1579

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1579

  unfold Seg46.relationRow1580 at r1580

  unfold Seg46.relationRow1581 at r1581

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1581

  unfold Seg46.relationRow1582 at r1582

  unfold Seg46.relationRow1583 at r1583

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1583

  unfold Seg46.relationRow1584 at r1584

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1584

  have hnextx : seg46BlindDeltaX174 rho =
      seg46BlindDeltaX173 rho + rho 32855 := by
    unfold seg46BlindDeltaX174 seg46BlindDeltaX173
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 24]

    ring

  have hnexty : seg46BlindDeltaY174 rho =
      seg46BlindDeltaY173 rho + rho 32856 := by
    unfold seg46BlindDeltaY174 seg46BlindDeltaY173
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 24]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 174
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX173 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY173 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX174 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY174 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY173 rho) (rho 32856)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 174)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (1667175853442267745748346309550449676103037935549174577034155677584820160155 : Seg46.F) (6789018812520716971280761201352968868231178570886219064263086153797533754731 : Seg46.F)
    (11732916534614292780282572121872012958317171281329813362008375464944675845 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (6472705013002580163032637925723972745706876893200818912036439654879840650803 : Seg46.F) (523168191152816093959112074180680068973676207798847251742382807098758110759 : Seg46.F)
    (7347986451293227228044865939853207470134533378182586591732454424103537980357 : Seg46.F) (765336914149016856309671097497576420375755073621175976857998149400327123081 : Seg46.F)
    (1655442936907653452968063737428577663144720764267844763672147302119875484310 : Seg46.F) (6777285895986102678500478629231096855272861399604889250901077778332589078886 : Seg46.F)
    (7679124835279353567939153841283970111000144261532887851077235306517082115960 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX173 rho) (seg46BlindDeltaY173 rho) (rho 31835)
    (rho 32849) (rho 32850) (rho 32851) (rho 32853)
    (rho 32852) (rho 32854) (rho 32855) (rho 32856) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 174)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L174]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX173 seg46BlindDeltaY173;
        first | linear_combination r1577 | linear_combination -r1577)
    (by unfold seg46BlindDeltaX173 seg46BlindDeltaY173;
        first | linear_combination r1578 | linear_combination -r1578)
    (by unfold seg46BlindDeltaX173 seg46BlindDeltaY173;
        first | linear_combination r1579 | linear_combination -r1579)
    (by first | linear_combination r1580 | linear_combination -r1580)
    (by unfold seg46BlindDeltaX173 seg46BlindDeltaY173;
        first | linear_combination r1581 | linear_combination -r1581)
    (by first | linear_combination r1582 | linear_combination -r1582)
    (by unfold seg46BlindDeltaX173; first | linear_combination r1583 | linear_combination -r1583)
    (by unfold seg46BlindDeltaY173; first | linear_combination r1584 | linear_combination -r1584)
    (by linear_combination r562)

theorem seg46Blind_rows175 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow563 rho ∧ Seg46.relationRow1585 rho ∧ Seg46.relationRow1586 rho ∧ Seg46.relationRow1587 rho ∧ Seg46.relationRow1588 rho ∧ Seg46.relationRow1589 rho ∧ Seg46.relationRow1590 rho ∧ Seg46.relationRow1591 rho ∧ Seg46.relationRow1592 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, p19,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨_, _, _, r563, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1585, r1586, r1587, r1588, r1589, r1590, r1591, r1592, _, _, _, _, _, _, _⟩

  exact ⟨r563, r1585, r1586, r1587, r1588, r1589, r1590, r1591, r1592⟩

theorem seg46Blind_rung175 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31836 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 175)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      175 (Bool.toZMod bit) (seg46BlindAccState rho 175)
      (seg46BlindAccState rho 176) := by
  obtain ⟨r563, r1585, r1586, r1587, r1588, r1589, r1590, r1591, r1592⟩ := seg46Blind_rows175 rho h
  unfold Seg46.relationRow563 at r563

  unfold Seg46.relationRow1585 at r1585

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1585

  unfold Seg46.relationRow1586 at r1586

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1586

  unfold Seg46.relationRow1587 at r1587

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1587

  unfold Seg46.relationRow1588 at r1588

  unfold Seg46.relationRow1589 at r1589

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1589

  unfold Seg46.relationRow1590 at r1590

  unfold Seg46.relationRow1591 at r1591

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1591

  unfold Seg46.relationRow1592 at r1592

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1592

  have hnextx : seg46BlindDeltaX175 rho =
      seg46BlindDeltaX174 rho + rho 32863 := by
    unfold seg46BlindDeltaX175 seg46BlindDeltaX174
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 25]

    ring

  have hnexty : seg46BlindDeltaY175 rho =
      seg46BlindDeltaY174 rho + rho 32864 := by
    unfold seg46BlindDeltaY175 seg46BlindDeltaY174
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 25]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 175
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX174 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY174 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX175 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY175 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY174 rho) (rho 32864)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 175)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (6500295608575224403577725407255013509774739731695849381464071273603679024138 : Seg46.F) (2181990151873616184954560751152767413517952616988910761714693664778141881608 : Seg46.F)
    (237824011020470164283461219626234391916793013530696315243531482464411666705 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (5112084256065563833644576982904061764533374503329625350607465679187417885788 : Seg46.F) (7527861843569188002123817210029680959433138097825591352209755200104846047280 : Seg46.F)
    (1800696480843674362533975346651308872086511601015124632617255324139971244405 : Seg46.F) (6868188222587393792107293653927770969343235445237894989310685571515823739337 : Seg46.F)
    (6262471597554754239294264187628779117857946718165153066220539791139267357433 : Seg46.F) (1944166140853146020671099531526533021601159603458214446471162182313730214903 : Seg46.F)
    (1576273526840976632141531284853775562032663889916168838624547884401585499704 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX174 rho) (seg46BlindDeltaY174 rho) (rho 31836)
    (rho 32857) (rho 32858) (rho 32859) (rho 32861)
    (rho 32860) (rho 32862) (rho 32863) (rho 32864) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 175)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L175]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX174 seg46BlindDeltaY174;
        first | linear_combination r1585 | linear_combination -r1585)
    (by unfold seg46BlindDeltaX174 seg46BlindDeltaY174;
        first | linear_combination r1586 | linear_combination -r1586)
    (by unfold seg46BlindDeltaX174 seg46BlindDeltaY174;
        first | linear_combination r1587 | linear_combination -r1587)
    (by first | linear_combination r1588 | linear_combination -r1588)
    (by unfold seg46BlindDeltaX174 seg46BlindDeltaY174;
        first | linear_combination r1589 | linear_combination -r1589)
    (by first | linear_combination r1590 | linear_combination -r1590)
    (by unfold seg46BlindDeltaX174; first | linear_combination r1591 | linear_combination -r1591)
    (by unfold seg46BlindDeltaY174; first | linear_combination r1592 | linear_combination -r1592)
    (by linear_combination r563)

theorem seg46Blind_rows176 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow564 rho ∧ Seg46.relationRow1593 rho ∧ Seg46.relationRow1594 rho ∧ Seg46.relationRow1595 rho ∧ Seg46.relationRow1596 rho ∧ Seg46.relationRow1597 rho ∧ Seg46.relationRow1598 rho ∧ Seg46.relationRow1599 rho ∧ Seg46.relationRow1600 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, p19,

    p20, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨_, _, _, _, r564, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1593, r1594, r1595, r1596, r1597, r1598, r1599⟩

  unfold Seg46.relationPart20 at p20

  rcases p20 with ⟨r1600, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r564, r1593, r1594, r1595, r1596, r1597, r1598, r1599, r1600⟩

theorem seg46Blind_rung176 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31837 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 176)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      176 (Bool.toZMod bit) (seg46BlindAccState rho 176)
      (seg46BlindAccState rho 177) := by
  obtain ⟨r564, r1593, r1594, r1595, r1596, r1597, r1598, r1599, r1600⟩ := seg46Blind_rows176 rho h
  unfold Seg46.relationRow564 at r564

  unfold Seg46.relationRow1593 at r1593

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1593

  unfold Seg46.relationRow1594 at r1594

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1594

  unfold Seg46.relationRow1595 at r1595

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1595

  unfold Seg46.relationRow1596 at r1596

  unfold Seg46.relationRow1597 at r1597

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1597

  unfold Seg46.relationRow1598 at r1598

  unfold Seg46.relationRow1599 at r1599

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1599

  unfold Seg46.relationRow1600 at r1600

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1600

  have hnextx : seg46BlindDeltaX176 rho =
      seg46BlindDeltaX175 rho + rho 32871 := by
    unfold seg46BlindDeltaX176 seg46BlindDeltaX175
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 26]

    ring

  have hnexty : seg46BlindDeltaY176 rho =
      seg46BlindDeltaY175 rho + rho 32872 := by
    unfold seg46BlindDeltaY176 seg46BlindDeltaY175
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 26]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 176
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX175 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY175 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX176 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY176 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY175 rho) (rho 32872)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 176)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (3686694172161452137307136928011842724124112916089468706551246464119678174556 : Seg46.F) (151041364896572449626002570432852781974197289804479422659975754287075105733 : Seg46.F)
    (3837735537058024586933139498444695506098310205893948129211222218406753280289 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (295028883413367410717218583444741649751448401012889147284147081713795511179 : Seg46.F) (997393638517673454837835612460204460707872237746252290258743549367452952391 : Seg46.F)
    (5447509693584985211681178921174715347732773873372327537382737402961313898781 : Seg46.F) (1447831649959205534870443849415717372910462030814327178069576088208435657101 : Seg46.F)
    (8293420384531797974622822368348693749401702045349584405275257701630334133308 : Seg46.F) (4757767577266918286941688010769703807251786419064595121383986991797731064485 : Seg46.F)
    (6996630099469164889378381089365829158465437304339736649865657367708973581940 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX175 rho) (seg46BlindDeltaY175 rho) (rho 31837)
    (rho 32865) (rho 32866) (rho 32867) (rho 32869)
    (rho 32868) (rho 32870) (rho 32871) (rho 32872) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 176)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L176]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX175 seg46BlindDeltaY175;
        first | linear_combination r1593 | linear_combination -r1593)
    (by unfold seg46BlindDeltaX175 seg46BlindDeltaY175;
        first | linear_combination r1594 | linear_combination -r1594)
    (by unfold seg46BlindDeltaX175 seg46BlindDeltaY175;
        first | linear_combination r1595 | linear_combination -r1595)
    (by first | linear_combination r1596 | linear_combination -r1596)
    (by unfold seg46BlindDeltaX175 seg46BlindDeltaY175;
        first | linear_combination r1597 | linear_combination -r1597)
    (by first | linear_combination r1598 | linear_combination -r1598)
    (by unfold seg46BlindDeltaX175; first | linear_combination r1599 | linear_combination -r1599)
    (by unfold seg46BlindDeltaY175; first | linear_combination r1600 | linear_combination -r1600)
    (by linear_combination r564)

theorem seg46Blind_rows177 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow565 rho ∧ Seg46.relationRow1601 rho ∧ Seg46.relationRow1602 rho ∧ Seg46.relationRow1603 rho ∧ Seg46.relationRow1604 rho ∧ Seg46.relationRow1605 rho ∧ Seg46.relationRow1606 rho ∧ Seg46.relationRow1607 rho ∧ Seg46.relationRow1608 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p20, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨_, _, _, _, _, r565, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart20 at p20

  rcases p20 with ⟨_, r1601, r1602, r1603, r1604, r1605, r1606, r1607, r1608, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r565, r1601, r1602, r1603, r1604, r1605, r1606, r1607, r1608⟩

theorem seg46Blind_rung177 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31838 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 177)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      177 (Bool.toZMod bit) (seg46BlindAccState rho 177)
      (seg46BlindAccState rho 178) := by
  obtain ⟨r565, r1601, r1602, r1603, r1604, r1605, r1606, r1607, r1608⟩ := seg46Blind_rows177 rho h
  unfold Seg46.relationRow565 at r565

  unfold Seg46.relationRow1601 at r1601

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1601

  unfold Seg46.relationRow1602 at r1602

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1602

  unfold Seg46.relationRow1603 at r1603

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1603

  unfold Seg46.relationRow1604 at r1604

  unfold Seg46.relationRow1605 at r1605

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1605

  unfold Seg46.relationRow1606 at r1606

  unfold Seg46.relationRow1607 at r1607

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1607

  unfold Seg46.relationRow1608 at r1608

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1608

  have hnextx : seg46BlindDeltaX177 rho =
      seg46BlindDeltaX176 rho + rho 32879 := by
    unfold seg46BlindDeltaX177 seg46BlindDeltaX176
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 27]

    ring

  have hnexty : seg46BlindDeltaY177 rho =
      seg46BlindDeltaY176 rho + rho 32880 := by
    unfold seg46BlindDeltaY177 seg46BlindDeltaY176
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 27]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 177
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX176 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY176 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX177 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY177 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY176 rho) (rho 32880)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 177)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (3636053712089879338690869825299855140209253247089434682864164838528816194568 : Seg46.F) (7618201096770730300139258388392980618443983707444169529391510297778595196843 : Seg46.F)
    (2809793059432239214581303274911289227277337619379540384320441680390002152370 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (3427246152066830642651633155480150319949091894012217168241442214195913275978 : Seg46.F) (2826500319246157779873389090194830972712374672212742612497212842223396009465 : Seg46.F)
    (5128864072279759294272138083283133430709790815935273100211408962448730416752 : Seg46.F) (4716102126369083139022567510012867275241098089377646915530204944364138172009 : Seg46.F)
    (826260652657640124109566550388565912931915627709894298543723158138814042198 : Seg46.F) (4808408037338491085557955113481691391166646088064629145071068617388593044473 : Seg46.F)
    (3728359623059287285226257428768679256134801245776416912405028511553271067032 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX176 rho) (seg46BlindDeltaY176 rho) (rho 31838)
    (rho 32873) (rho 32874) (rho 32875) (rho 32877)
    (rho 32876) (rho 32878) (rho 32879) (rho 32880) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 177)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L177]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX176 seg46BlindDeltaY176;
        first | linear_combination r1601 | linear_combination -r1601)
    (by unfold seg46BlindDeltaX176 seg46BlindDeltaY176;
        first | linear_combination r1602 | linear_combination -r1602)
    (by unfold seg46BlindDeltaX176 seg46BlindDeltaY176;
        first | linear_combination r1603 | linear_combination -r1603)
    (by first | linear_combination r1604 | linear_combination -r1604)
    (by unfold seg46BlindDeltaX176 seg46BlindDeltaY176;
        first | linear_combination r1605 | linear_combination -r1605)
    (by first | linear_combination r1606 | linear_combination -r1606)
    (by unfold seg46BlindDeltaX176; first | linear_combination r1607 | linear_combination -r1607)
    (by unfold seg46BlindDeltaY176; first | linear_combination r1608 | linear_combination -r1608)
    (by linear_combination r565)

theorem seg46Blind_rows178 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow566 rho ∧ Seg46.relationRow1609 rho ∧ Seg46.relationRow1610 rho ∧ Seg46.relationRow1611 rho ∧ Seg46.relationRow1612 rho ∧ Seg46.relationRow1613 rho ∧ Seg46.relationRow1614 rho ∧ Seg46.relationRow1615 rho ∧ Seg46.relationRow1616 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p20, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨_, _, _, _, _, _, r566, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, r1609, r1610, r1611, r1612, r1613, r1614, r1615, r1616, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r566, r1609, r1610, r1611, r1612, r1613, r1614, r1615, r1616⟩

theorem seg46Blind_rung178 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31839 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 178)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      178 (Bool.toZMod bit) (seg46BlindAccState rho 178)
      (seg46BlindAccState rho 179) := by
  obtain ⟨r566, r1609, r1610, r1611, r1612, r1613, r1614, r1615, r1616⟩ := seg46Blind_rows178 rho h
  unfold Seg46.relationRow566 at r566

  unfold Seg46.relationRow1609 at r1609

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1609

  unfold Seg46.relationRow1610 at r1610

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1610

  unfold Seg46.relationRow1611 at r1611

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1611

  unfold Seg46.relationRow1612 at r1612

  unfold Seg46.relationRow1613 at r1613

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1613

  unfold Seg46.relationRow1614 at r1614

  unfold Seg46.relationRow1615 at r1615

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1615

  unfold Seg46.relationRow1616 at r1616

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1616

  have hnextx : seg46BlindDeltaX178 rho =
      seg46BlindDeltaX177 rho + rho 32887 := by
    unfold seg46BlindDeltaX178 seg46BlindDeltaX177
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 28]

    ring

  have hnexty : seg46BlindDeltaY178 rho =
      seg46BlindDeltaY177 rho + rho 32888 := by
    unfold seg46BlindDeltaY178 seg46BlindDeltaY177
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 28]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 178
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX177 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY177 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX178 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY178 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY177 rho) (rho 32888)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 178)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (3208908907049162934313763394970265570586756908930088916345667543871796142882 : Seg46.F) (4573699048751469511521419616842993543719924256682280566279198317696462795534 : Seg46.F)
    (7782607955800632445835183011813259114306681165612369482624865861568258938416 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (2005404213375380235131062636073370246919867125121168227416183880132590237138 : Seg46.F) (4784214778175042884149442557764463818562024273545516578202392105623304844875 : Seg46.F)
    (1376415166243034028495377564207046757430797731801850254468886873759465321306 : Seg46.F) (1920278057394069746862945085121109813010237154275678092667376672684854496155 : Seg46.F)
    (3870762700676900912727405321938552987655975078471783261656035138220946443507 : Seg46.F) (5235552842379207489935061543811280960789142426223974911589565912045613096159 : Seg46.F)
    (6524183692034300677385879853660436718365662180878385735267856783232554742886 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX177 rho) (seg46BlindDeltaY177 rho) (rho 31839)
    (rho 32881) (rho 32882) (rho 32883) (rho 32885)
    (rho 32884) (rho 32886) (rho 32887) (rho 32888) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 178)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L178]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX177 seg46BlindDeltaY177;
        first | linear_combination r1609 | linear_combination -r1609)
    (by unfold seg46BlindDeltaX177 seg46BlindDeltaY177;
        first | linear_combination r1610 | linear_combination -r1610)
    (by unfold seg46BlindDeltaX177 seg46BlindDeltaY177;
        first | linear_combination r1611 | linear_combination -r1611)
    (by first | linear_combination r1612 | linear_combination -r1612)
    (by unfold seg46BlindDeltaX177 seg46BlindDeltaY177;
        first | linear_combination r1613 | linear_combination -r1613)
    (by first | linear_combination r1614 | linear_combination -r1614)
    (by unfold seg46BlindDeltaX177; first | linear_combination r1615 | linear_combination -r1615)
    (by unfold seg46BlindDeltaY177; first | linear_combination r1616 | linear_combination -r1616)
    (by linear_combination r566)

theorem seg46Blind_rows179 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow567 rho ∧ Seg46.relationRow1617 rho ∧ Seg46.relationRow1618 rho ∧ Seg46.relationRow1619 rho ∧ Seg46.relationRow1620 rho ∧ Seg46.relationRow1621 rho ∧ Seg46.relationRow1622 rho ∧ Seg46.relationRow1623 rho ∧ Seg46.relationRow1624 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p20, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨_, _, _, _, _, _, _, r567, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1617, r1618, r1619, r1620, r1621, r1622, r1623, r1624, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r567, r1617, r1618, r1619, r1620, r1621, r1622, r1623, r1624⟩

theorem seg46Blind_rung179 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31840 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 179)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      179 (Bool.toZMod bit) (seg46BlindAccState rho 179)
      (seg46BlindAccState rho 180) := by
  obtain ⟨r567, r1617, r1618, r1619, r1620, r1621, r1622, r1623, r1624⟩ := seg46Blind_rows179 rho h
  unfold Seg46.relationRow567 at r567

  unfold Seg46.relationRow1617 at r1617

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1617

  unfold Seg46.relationRow1618 at r1618

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1618

  unfold Seg46.relationRow1619 at r1619

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1619

  unfold Seg46.relationRow1620 at r1620

  unfold Seg46.relationRow1621 at r1621

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1621

  unfold Seg46.relationRow1622 at r1622

  unfold Seg46.relationRow1623 at r1623

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1623

  unfold Seg46.relationRow1624 at r1624

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1624

  have hnextx : seg46BlindDeltaX179 rho =
      seg46BlindDeltaX178 rho + rho 32895 := by
    unfold seg46BlindDeltaX179 seg46BlindDeltaX178
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 29]

    ring

  have hnexty : seg46BlindDeltaY179 rho =
      seg46BlindDeltaY178 rho + rho 32896 := by
    unfold seg46BlindDeltaY179 seg46BlindDeltaY178
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 29]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 179
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX178 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY178 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX179 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY179 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY178 rho) (rho 32896)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 179)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (4795152947387177822651171193672527608619660283440788416206342939920742731776 : Seg46.F) (1614221379281109225873679279112349918714836479827408232335090736890828718752 : Seg46.F)
    (6409374326668287048524850472784877527334496763268196648541433676811571450528 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (4108357388061236572813112521456755833627089174705441165679412082848428423135 : Seg46.F) (4123372059699344288277837313666126440828906553166339005009536672862144757468 : Seg46.F)
    (5807655721081984382075658649034336050204781834756902235012964053436416760975 : Seg46.F) (6122089050441692039078024167226060425562256059215830234924832866324735853835 : Seg46.F)
    (6830240370147261198375145659669196612661062855326655595600142719026580520289 : Seg46.F) (3649308802041192601597653745109018922756239051713275411728890515996666507265 : Seg46.F)
    (2322372698986678385170800771555486105813643275938233593010400589592673385206 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX178 rho) (seg46BlindDeltaY178 rho) (rho 31840)
    (rho 32889) (rho 32890) (rho 32891) (rho 32893)
    (rho 32892) (rho 32894) (rho 32895) (rho 32896) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 179)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L179]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX178 seg46BlindDeltaY178;
        first | linear_combination r1617 | linear_combination -r1617)
    (by unfold seg46BlindDeltaX178 seg46BlindDeltaY178;
        first | linear_combination r1618 | linear_combination -r1618)
    (by unfold seg46BlindDeltaX178 seg46BlindDeltaY178;
        first | linear_combination r1619 | linear_combination -r1619)
    (by first | linear_combination r1620 | linear_combination -r1620)
    (by unfold seg46BlindDeltaX178 seg46BlindDeltaY178;
        first | linear_combination r1621 | linear_combination -r1621)
    (by first | linear_combination r1622 | linear_combination -r1622)
    (by unfold seg46BlindDeltaX178; first | linear_combination r1623 | linear_combination -r1623)
    (by unfold seg46BlindDeltaY178; first | linear_combination r1624 | linear_combination -r1624)
    (by linear_combination r567)

theorem seg46Blind_rows180 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow568 rho ∧ Seg46.relationRow1625 rho ∧ Seg46.relationRow1626 rho ∧ Seg46.relationRow1627 rho ∧ Seg46.relationRow1628 rho ∧ Seg46.relationRow1629 rho ∧ Seg46.relationRow1630 rho ∧ Seg46.relationRow1631 rho ∧ Seg46.relationRow1632 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, p7, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p20, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart7 at p7

  rcases p7 with ⟨_, _, _, _, _, _, _, _, r568, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1625, r1626, r1627, r1628, r1629, r1630, r1631, r1632, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r568, r1625, r1626, r1627, r1628, r1629, r1630, r1631, r1632⟩

theorem seg46Blind_rung180 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31841 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 180)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      180 (Bool.toZMod bit) (seg46BlindAccState rho 180)
      (seg46BlindAccState rho 181) := by
  obtain ⟨r568, r1625, r1626, r1627, r1628, r1629, r1630, r1631, r1632⟩ := seg46Blind_rows180 rho h
  unfold Seg46.relationRow568 at r568

  unfold Seg46.relationRow1625 at r1625

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1625

  unfold Seg46.relationRow1626 at r1626

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1626

  unfold Seg46.relationRow1627 at r1627

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1627

  unfold Seg46.relationRow1628 at r1628

  unfold Seg46.relationRow1629 at r1629

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1629

  unfold Seg46.relationRow1630 at r1630

  unfold Seg46.relationRow1631 at r1631

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1631

  unfold Seg46.relationRow1632 at r1632

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1632

  have hnextx : seg46BlindDeltaX180 rho =
      seg46BlindDeltaX179 rho + rho 32903 := by
    unfold seg46BlindDeltaX180 seg46BlindDeltaX179
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32663 8 30]

    ring

  have hnexty : seg46BlindDeltaY180 rho =
      seg46BlindDeltaY179 rho + rho 32904 := by
    unfold seg46BlindDeltaY180 seg46BlindDeltaY179
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 32664 8 30]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 180
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX179 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY179 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX180 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY180 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661)
    (seg46BlindDeltaY179 rho) (rho 32904)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 180)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F)
    (1603279230062761644371699523018134843206550750153332960177912966805714289819 : Seg46.F) (6083144384519493791896324904071478793578622929786030430707294081222152755324 : Seg46.F)
    (7686423614582255436268024427089613636785173679939363390885207048027867045143 : Seg46.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg46.F)
    (2030418877256702153354468411292183127062917588355041579667419295840969680588 : Seg46.F) (1747355640068679147516328884857115463749624824253420006611042383112582562104 : Seg46.F)
    (7305892694301029992493071465213924921567977686636080727368555182846421408795 : Seg46.F) (4902552823771956875741508036393245377867373978126235817730127599362191232359 : Seg46.F)
    (2361317364908876632352500034710067737797276405368033397227939374695256483717 : Seg46.F) (6841182519365608779877125415763411688169348585000730867757320489111694949222 : Seg46.F)
    (3541908925656413548507316902388301153508525357027828010205105856555218006682 : Seg46.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg46.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg46.F)
    (rho 31661) (seg46BlindDeltaX179 rho) (seg46BlindDeltaY179 rho) (rho 31841)
    (rho 32897) (rho 32898) (rho 32899) (rho 32901)
    (rho 32900) (rho 32902) (rho 32903) (rho 32904) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 180)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L180]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg46BlindDeltaX179 seg46BlindDeltaY179;
        first | linear_combination r1625 | linear_combination -r1625)
    (by unfold seg46BlindDeltaX179 seg46BlindDeltaY179;
        first | linear_combination r1626 | linear_combination -r1626)
    (by unfold seg46BlindDeltaX179 seg46BlindDeltaY179;
        first | linear_combination r1627 | linear_combination -r1627)
    (by first | linear_combination r1628 | linear_combination -r1628)
    (by unfold seg46BlindDeltaX179 seg46BlindDeltaY179;
        first | linear_combination r1629 | linear_combination -r1629)
    (by first | linear_combination r1630 | linear_combination -r1630)
    (by unfold seg46BlindDeltaX179; first | linear_combination r1631 | linear_combination -r1631)
    (by unfold seg46BlindDeltaY179; first | linear_combination r1632 | linear_combination -r1632)
    (by linear_combination r568)

theorem seg46Blind_hstep_c17 (rho : Nat -> Seg46.F)
    (h : Seg46.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (31661 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 171 ≤ i → i < 181 →
      EdwardsBridge.onCurve (seg46BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg46BlindAccState rho i)
        (seg46BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg46Blind_rung171 rho h bits[171]! (hbitAt 171 (by omega)) hacc
  · exact seg46Blind_rung172 rho h bits[172]! (hbitAt 172 (by omega)) hacc
  · exact seg46Blind_rung173 rho h bits[173]! (hbitAt 173 (by omega)) hacc
  · exact seg46Blind_rung174 rho h bits[174]! (hbitAt 174 (by omega)) hacc
  · exact seg46Blind_rung175 rho h bits[175]! (hbitAt 175 (by omega)) hacc
  · exact seg46Blind_rung176 rho h bits[176]! (hbitAt 176 (by omega)) hacc
  · exact seg46Blind_rung177 rho h bits[177]! (hbitAt 177 (by omega)) hacc
  · exact seg46Blind_rung178 rho h bits[178]! (hbitAt 178 (by omega)) hacc
  · exact seg46Blind_rung179 rho h bits[179]! (hbitAt 179 (by omega)) hacc
  · exact seg46Blind_rung180 rho h bits[180]! (hbitAt 180 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

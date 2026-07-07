import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows191 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6340 rho ∧ Seg52.relationRow7474 rho ∧ Seg52.relationRow7475 rho ∧ Seg52.relationRow7476 rho ∧ Seg52.relationRow7477 rho ∧ Seg52.relationRow7478 rho ∧ Seg52.relationRow7479 rho ∧ Seg52.relationRow7480 rho ∧ Seg52.relationRow7481 rho := by
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

    _, _, _, p93, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6340, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7474, r7475, r7476, r7477, r7478, r7479, r7480, r7481, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6340, r7474, r7475, r7476, r7477, r7478, r7479, r7480, r7481⟩

theorem seg52Blind_rung191 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50729 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 191)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      191 (Bool.toZMod bit) (seg52BlindAccState rho 191)
      (seg52BlindAccState rho 192) := by
  obtain ⟨r6340, r7474, r7475, r7476, r7477, r7478, r7479, r7480, r7481⟩ := seg52Blind_rows191 rho h
  unfold Seg52.relationRow6340 at r6340

  unfold Seg52.relationRow7474 at r7474

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7474

  unfold Seg52.relationRow7475 at r7475

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7475

  unfold Seg52.relationRow7476 at r7476

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7476

  unfold Seg52.relationRow7477 at r7477

  unfold Seg52.relationRow7478 at r7478

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7478

  unfold Seg52.relationRow7479 at r7479

  unfold Seg52.relationRow7480 at r7480

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7480

  unfold Seg52.relationRow7481 at r7481

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7481

  have hnextx : seg52BlindDeltaX191 rho =
      seg52BlindDeltaX190 rho + rho 51868 := by
    unfold seg52BlindDeltaX191 seg52BlindDeltaX190
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 41]

    ring

  have hnexty : seg52BlindDeltaY191 rho =
      seg52BlindDeltaY190 rho + rho 51869 := by
    unfold seg52BlindDeltaY191 seg52BlindDeltaY190
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 41]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 191
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX190 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY190 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX191 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY191 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY190 rho) (rho 51869)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 191)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7795627490918527138041161579809081456452436047591391680037266100603945016815 : Seg52.F) (3189572002925575920347648111790343103502172016293966354214985046616570335139 : Seg52.F)
    (2540737744415732634139984752817878028578708728731294206317017691303106112913 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (566164740394201302335690568881923380160519813285528409368452626895040709138 : Seg52.F) (559200741045195250524530251089018769402279419388473271726665058493386012757 : Seg52.F)
    (7316742360078395850510735121132322818658676912321782356138261176337704907294 : Seg52.F) (6162487642510414456944286869074828711181403113579895600869964336802651405238 : Seg52.F)
    (5254889746502794503901176826991203427873727318860097473720248409300838903902 : Seg52.F) (648834258509843286207663358972465074923463287562672147897967355313464222226 : Seg52.F)
    (2281974106917955967304538069706717820194496221574168227065269119114757833803 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX190 rho) (seg52BlindDeltaY190 rho) (rho 50729)
    (rho 51862) (rho 51863) (rho 51864) (rho 51866)
    (rho 51865) (rho 51867) (rho 51868) (rho 51869) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 191)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L191]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX190 seg52BlindDeltaY190;
        first | linear_combination r7474 | linear_combination -r7474)
    (by unfold seg52BlindDeltaX190 seg52BlindDeltaY190;
        first | linear_combination r7475 | linear_combination -r7475)
    (by unfold seg52BlindDeltaX190 seg52BlindDeltaY190;
        first | linear_combination r7476 | linear_combination -r7476)
    (by first | linear_combination r7477 | linear_combination -r7477)
    (by unfold seg52BlindDeltaX190 seg52BlindDeltaY190;
        first | linear_combination r7478 | linear_combination -r7478)
    (by first | linear_combination r7479 | linear_combination -r7479)
    (by unfold seg52BlindDeltaX190; first | linear_combination r7480 | linear_combination -r7480)
    (by unfold seg52BlindDeltaY190; first | linear_combination r7481 | linear_combination -r7481)
    (by linear_combination r6340)

theorem seg52Blind_rows192 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6341 rho ∧ Seg52.relationRow7482 rho ∧ Seg52.relationRow7483 rho ∧ Seg52.relationRow7484 rho ∧ Seg52.relationRow7485 rho ∧ Seg52.relationRow7486 rho ∧ Seg52.relationRow7487 rho ∧ Seg52.relationRow7488 rho ∧ Seg52.relationRow7489 rho := by
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

    _, _, _, p93, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6341, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7482, r7483, r7484, r7485, r7486, r7487, r7488, r7489, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6341, r7482, r7483, r7484, r7485, r7486, r7487, r7488, r7489⟩

theorem seg52Blind_rung192 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50730 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 192)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      192 (Bool.toZMod bit) (seg52BlindAccState rho 192)
      (seg52BlindAccState rho 193) := by
  obtain ⟨r6341, r7482, r7483, r7484, r7485, r7486, r7487, r7488, r7489⟩ := seg52Blind_rows192 rho h
  unfold Seg52.relationRow6341 at r6341

  unfold Seg52.relationRow7482 at r7482

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7482

  unfold Seg52.relationRow7483 at r7483

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7483

  unfold Seg52.relationRow7484 at r7484

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7484

  unfold Seg52.relationRow7485 at r7485

  unfold Seg52.relationRow7486 at r7486

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7486

  unfold Seg52.relationRow7487 at r7487

  unfold Seg52.relationRow7488 at r7488

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7488

  unfold Seg52.relationRow7489 at r7489

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7489

  have hnextx : seg52BlindDeltaX192 rho =
      seg52BlindDeltaX191 rho + rho 51876 := by
    unfold seg52BlindDeltaX192 seg52BlindDeltaX191
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 42]

    ring

  have hnexty : seg52BlindDeltaY192 rho =
      seg52BlindDeltaY191 rho + rho 51877 := by
    unfold seg52BlindDeltaY192 seg52BlindDeltaY191
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 42]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 192
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX191 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY191 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX192 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY192 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY191 rho) (rho 51877)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 192)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (2201443287703118336923186320266692790412732967462530460839825374398628917893 : Seg52.F) (6846513832253225230347721765363986944279063983096280693769125028585801189149 : Seg52.F)
    (603495370527973143022083146849133203315897615404747326673716947067020868001 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2831462886914251895095178088597103327474821141561661263139977815970166007720 : Seg52.F) (6629768296966429689160763288732932376564175026205222742192023532947073032112 : Seg52.F)
    (7160083176997050742282765130665319097078478313482009216028559646455803224278 : Seg52.F) (1230749160449538127066993612358232434647795025110371274904304972532004703188 : Seg52.F)
    (1597947917175145193901103173417559587096835352057783134166108427331608049892 : Seg52.F) (6243018461725252087325638618514853740963166367691533367095408081518780321148 : Seg52.F)
    (7213712588978832297181831326423314096728104310043692553030928483385404535853 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX191 rho) (seg52BlindDeltaY191 rho) (rho 50730)
    (rho 51870) (rho 51871) (rho 51872) (rho 51874)
    (rho 51873) (rho 51875) (rho 51876) (rho 51877) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 192)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L192]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX191 seg52BlindDeltaY191;
        first | linear_combination r7482 | linear_combination -r7482)
    (by unfold seg52BlindDeltaX191 seg52BlindDeltaY191;
        first | linear_combination r7483 | linear_combination -r7483)
    (by unfold seg52BlindDeltaX191 seg52BlindDeltaY191;
        first | linear_combination r7484 | linear_combination -r7484)
    (by first | linear_combination r7485 | linear_combination -r7485)
    (by unfold seg52BlindDeltaX191 seg52BlindDeltaY191;
        first | linear_combination r7486 | linear_combination -r7486)
    (by first | linear_combination r7487 | linear_combination -r7487)
    (by unfold seg52BlindDeltaX191; first | linear_combination r7488 | linear_combination -r7488)
    (by unfold seg52BlindDeltaY191; first | linear_combination r7489 | linear_combination -r7489)
    (by linear_combination r6341)

theorem seg52Blind_rows193 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6342 rho ∧ Seg52.relationRow7490 rho ∧ Seg52.relationRow7491 rho ∧ Seg52.relationRow7492 rho ∧ Seg52.relationRow7493 rho ∧ Seg52.relationRow7494 rho ∧ Seg52.relationRow7495 rho ∧ Seg52.relationRow7496 rho ∧ Seg52.relationRow7497 rho := by
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

    _, _, _, p93, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6342, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7490, r7491, r7492, r7493, r7494, r7495, r7496, r7497, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6342, r7490, r7491, r7492, r7493, r7494, r7495, r7496, r7497⟩

theorem seg52Blind_rung193 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50731 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 193)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      193 (Bool.toZMod bit) (seg52BlindAccState rho 193)
      (seg52BlindAccState rho 194) := by
  obtain ⟨r6342, r7490, r7491, r7492, r7493, r7494, r7495, r7496, r7497⟩ := seg52Blind_rows193 rho h
  unfold Seg52.relationRow6342 at r6342

  unfold Seg52.relationRow7490 at r7490

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7490

  unfold Seg52.relationRow7491 at r7491

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7491

  unfold Seg52.relationRow7492 at r7492

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7492

  unfold Seg52.relationRow7493 at r7493

  unfold Seg52.relationRow7494 at r7494

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7494

  unfold Seg52.relationRow7495 at r7495

  unfold Seg52.relationRow7496 at r7496

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7496

  unfold Seg52.relationRow7497 at r7497

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7497

  have hnextx : seg52BlindDeltaX193 rho =
      seg52BlindDeltaX192 rho + rho 51884 := by
    unfold seg52BlindDeltaX193 seg52BlindDeltaX192
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 43]

    ring

  have hnexty : seg52BlindDeltaY193 rho =
      seg52BlindDeltaY192 rho + rho 51885 := by
    unfold seg52BlindDeltaY193 seg52BlindDeltaY192
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 43]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 193
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX192 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY192 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX193 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY193 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY192 rho) (rho 51885)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 193)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (8379505003927404927120020956400071289170845704972341444623697570956102475621 : Seg52.F) (8222636974042191456093926116742032547305962112844880315099558006378415146841 : Seg52.F)
    (8157680228541225958965122134360557305100908482663157931788022121417108383421 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5424293512622971143956653721151976634791598216281713958243143416091586587080 : Seg52.F) (1159492356918577458388895628832242118290019297883964640947573388330292787616 : Seg52.F)
    (7398689112597503690364031459430454241780594976319482742382007271263098015962 : Seg52.F) (5425623735987271667172610899632063110025184545561162617297158795099787645232 : Seg52.F)
    (221824775386178968154898822039513984069937222309183512835675449538994092200 : Seg52.F) (64956745500965497128803982381475242205053630181722383311535884961306763420 : Seg52.F)
    (3018838013441098757076214039149483421350714789592901210638074660817621593809 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX192 rho) (seg52BlindDeltaY192 rho) (rho 50731)
    (rho 51878) (rho 51879) (rho 51880) (rho 51882)
    (rho 51881) (rho 51883) (rho 51884) (rho 51885) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 193)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L193]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX192 seg52BlindDeltaY192;
        first | linear_combination r7490 | linear_combination -r7490)
    (by unfold seg52BlindDeltaX192 seg52BlindDeltaY192;
        first | linear_combination r7491 | linear_combination -r7491)
    (by unfold seg52BlindDeltaX192 seg52BlindDeltaY192;
        first | linear_combination r7492 | linear_combination -r7492)
    (by first | linear_combination r7493 | linear_combination -r7493)
    (by unfold seg52BlindDeltaX192 seg52BlindDeltaY192;
        first | linear_combination r7494 | linear_combination -r7494)
    (by first | linear_combination r7495 | linear_combination -r7495)
    (by unfold seg52BlindDeltaX192; first | linear_combination r7496 | linear_combination -r7496)
    (by unfold seg52BlindDeltaY192; first | linear_combination r7497 | linear_combination -r7497)
    (by linear_combination r6342)

theorem seg52Blind_rows194 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6343 rho ∧ Seg52.relationRow7498 rho ∧ Seg52.relationRow7499 rho ∧ Seg52.relationRow7500 rho ∧ Seg52.relationRow7501 rho ∧ Seg52.relationRow7502 rho ∧ Seg52.relationRow7503 rho ∧ Seg52.relationRow7504 rho ∧ Seg52.relationRow7505 rho := by
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

    _, _, _, p93, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6343, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7498, r7499, r7500, r7501, r7502, r7503, r7504, r7505, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6343, r7498, r7499, r7500, r7501, r7502, r7503, r7504, r7505⟩

theorem seg52Blind_rung194 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50732 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 194)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      194 (Bool.toZMod bit) (seg52BlindAccState rho 194)
      (seg52BlindAccState rho 195) := by
  obtain ⟨r6343, r7498, r7499, r7500, r7501, r7502, r7503, r7504, r7505⟩ := seg52Blind_rows194 rho h
  unfold Seg52.relationRow6343 at r6343

  unfold Seg52.relationRow7498 at r7498

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7498

  unfold Seg52.relationRow7499 at r7499

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7499

  unfold Seg52.relationRow7500 at r7500

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7500

  unfold Seg52.relationRow7501 at r7501

  unfold Seg52.relationRow7502 at r7502

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7502

  unfold Seg52.relationRow7503 at r7503

  unfold Seg52.relationRow7504 at r7504

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7504

  unfold Seg52.relationRow7505 at r7505

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7505

  have hnextx : seg52BlindDeltaX194 rho =
      seg52BlindDeltaX193 rho + rho 51892 := by
    unfold seg52BlindDeltaX194 seg52BlindDeltaX193
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 44]

    ring

  have hnexty : seg52BlindDeltaY194 rho =
      seg52BlindDeltaY193 rho + rho 51893 := by
    unfold seg52BlindDeltaY194 seg52BlindDeltaY193
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 44]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 194
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX193 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY193 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX194 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY194 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY193 rho) (rho 51893)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 194)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (6444490698300857073481181944246794033469722497984396226284135138276924131970 : Seg52.F) (8198823652717836620711767586720711280439202192284079120380256009977844066466 : Seg52.F)
    (6198852601590323269944124592185958782533025355114411518729157692337358959395 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (1039943787173976848446334036992801681317072883333815334713679937305626686533 : Seg52.F) (7763323733134130071288516841185356454533071645192017275536901946325694198167 : Seg52.F)
    (5978637330494813918645192268005069037660298137679939836064151660217248578339 : Seg52.F) (3745004071372151816914715129910381229435807440401535650340004072402749506166 : Seg52.F)
    (245638096710533803537057352060835250936697142869984707554977445939565172575 : Seg52.F) (1999971051127513350767642994534752497906176837169667601651098317640485107071 : Seg52.F)
    (4699457678056218607334109808871165301940091894752528177595229383514659732875 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX193 rho) (seg52BlindDeltaY193 rho) (rho 50732)
    (rho 51886) (rho 51887) (rho 51888) (rho 51890)
    (rho 51889) (rho 51891) (rho 51892) (rho 51893) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 194)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L194]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX193 seg52BlindDeltaY193;
        first | linear_combination r7498 | linear_combination -r7498)
    (by unfold seg52BlindDeltaX193 seg52BlindDeltaY193;
        first | linear_combination r7499 | linear_combination -r7499)
    (by unfold seg52BlindDeltaX193 seg52BlindDeltaY193;
        first | linear_combination r7500 | linear_combination -r7500)
    (by first | linear_combination r7501 | linear_combination -r7501)
    (by unfold seg52BlindDeltaX193 seg52BlindDeltaY193;
        first | linear_combination r7502 | linear_combination -r7502)
    (by first | linear_combination r7503 | linear_combination -r7503)
    (by unfold seg52BlindDeltaX193; first | linear_combination r7504 | linear_combination -r7504)
    (by unfold seg52BlindDeltaY193; first | linear_combination r7505 | linear_combination -r7505)
    (by linear_combination r6343)

theorem seg52Blind_rows195 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6344 rho ∧ Seg52.relationRow7506 rho ∧ Seg52.relationRow7507 rho ∧ Seg52.relationRow7508 rho ∧ Seg52.relationRow7509 rho ∧ Seg52.relationRow7510 rho ∧ Seg52.relationRow7511 rho ∧ Seg52.relationRow7512 rho ∧ Seg52.relationRow7513 rho := by
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

    _, _, _, p93, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6344, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7506, r7507, r7508, r7509, r7510, r7511, r7512, r7513, _, _, _, _, _, _⟩

  exact ⟨r6344, r7506, r7507, r7508, r7509, r7510, r7511, r7512, r7513⟩

theorem seg52Blind_rung195 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50733 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 195)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      195 (Bool.toZMod bit) (seg52BlindAccState rho 195)
      (seg52BlindAccState rho 196) := by
  obtain ⟨r6344, r7506, r7507, r7508, r7509, r7510, r7511, r7512, r7513⟩ := seg52Blind_rows195 rho h
  unfold Seg52.relationRow6344 at r6344

  unfold Seg52.relationRow7506 at r7506

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7506

  unfold Seg52.relationRow7507 at r7507

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7507

  unfold Seg52.relationRow7508 at r7508

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7508

  unfold Seg52.relationRow7509 at r7509

  unfold Seg52.relationRow7510 at r7510

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7510

  unfold Seg52.relationRow7511 at r7511

  unfold Seg52.relationRow7512 at r7512

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7512

  unfold Seg52.relationRow7513 at r7513

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7513

  have hnextx : seg52BlindDeltaX195 rho =
      seg52BlindDeltaX194 rho + rho 51900 := by
    unfold seg52BlindDeltaX195 seg52BlindDeltaX194
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 45]

    ring

  have hnexty : seg52BlindDeltaY195 rho =
      seg52BlindDeltaY194 rho + rho 51901 := by
    unfold seg52BlindDeltaY195 seg52BlindDeltaY194
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 45]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 195
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX194 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY194 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX195 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY195 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY194 rho) (rho 51901)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 195)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (534543527702324573819012140335261053705566569841713933263725786904339161184 : Seg52.F) (6217973748861355706774664776848221649695057456414935984473422092483830200013 : Seg52.F)
    (6752517276563680280593676917183482703400624026256649917737147879388169361197 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4015764581459766636875627008318117948768454446883655766248935433332886612089 : Seg52.F) (3157768499214601969918244417310321822715768325365981343453183964039078504438 : Seg52.F)
    (6659275747808960082924259503299544426670642258395145597892705017474190829857 : Seg52.F) (1704336021480828285432287185509947710912034594408787045894785211655744122702 : Seg52.F)
    (2226488000567014717474160161933324881680841878739127843461811363433579039028 : Seg52.F) (7909918221726045850429812798446285477670332765312349894671507669013070077857 : Seg52.F)
    (6740125727947542138816537753271598820463864740745276782040448244261665116339 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX194 rho) (seg52BlindDeltaY194 rho) (rho 50733)
    (rho 51894) (rho 51895) (rho 51896) (rho 51898)
    (rho 51897) (rho 51899) (rho 51900) (rho 51901) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 195)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L195]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX194 seg52BlindDeltaY194;
        first | linear_combination r7506 | linear_combination -r7506)
    (by unfold seg52BlindDeltaX194 seg52BlindDeltaY194;
        first | linear_combination r7507 | linear_combination -r7507)
    (by unfold seg52BlindDeltaX194 seg52BlindDeltaY194;
        first | linear_combination r7508 | linear_combination -r7508)
    (by first | linear_combination r7509 | linear_combination -r7509)
    (by unfold seg52BlindDeltaX194 seg52BlindDeltaY194;
        first | linear_combination r7510 | linear_combination -r7510)
    (by first | linear_combination r7511 | linear_combination -r7511)
    (by unfold seg52BlindDeltaX194; first | linear_combination r7512 | linear_combination -r7512)
    (by unfold seg52BlindDeltaY194; first | linear_combination r7513 | linear_combination -r7513)
    (by linear_combination r6344)

theorem seg52Blind_rows196 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6345 rho ∧ Seg52.relationRow7514 rho ∧ Seg52.relationRow7515 rho ∧ Seg52.relationRow7516 rho ∧ Seg52.relationRow7517 rho ∧ Seg52.relationRow7518 rho ∧ Seg52.relationRow7519 rho ∧ Seg52.relationRow7520 rho ∧ Seg52.relationRow7521 rho := by
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

    _, _, _, p93, p94, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6345, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7514, r7515, r7516, r7517, r7518, r7519⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨r7520, r7521, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6345, r7514, r7515, r7516, r7517, r7518, r7519, r7520, r7521⟩

theorem seg52Blind_rung196 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50734 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 196)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      196 (Bool.toZMod bit) (seg52BlindAccState rho 196)
      (seg52BlindAccState rho 197) := by
  obtain ⟨r6345, r7514, r7515, r7516, r7517, r7518, r7519, r7520, r7521⟩ := seg52Blind_rows196 rho h
  unfold Seg52.relationRow6345 at r6345

  unfold Seg52.relationRow7514 at r7514

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7514

  unfold Seg52.relationRow7515 at r7515

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7515

  unfold Seg52.relationRow7516 at r7516

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7516

  unfold Seg52.relationRow7517 at r7517

  unfold Seg52.relationRow7518 at r7518

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7518

  unfold Seg52.relationRow7519 at r7519

  unfold Seg52.relationRow7520 at r7520

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7520

  unfold Seg52.relationRow7521 at r7521

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7521

  have hnextx : seg52BlindDeltaX196 rho =
      seg52BlindDeltaX195 rho + rho 51908 := by
    unfold seg52BlindDeltaX196 seg52BlindDeltaX195
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 46]

    ring

  have hnexty : seg52BlindDeltaY196 rho =
      seg52BlindDeltaY195 rho + rho 51909 := by
    unfold seg52BlindDeltaY196 seg52BlindDeltaY195
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 46]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 196
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX195 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY195 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX196 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY196 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY195 rho) (rho 51909)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 196)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7033226505414935809728453247699649254198983826468420616303541913858179390258 : Seg52.F) (2532552902178607999355399383107160906073217720946833384503303324915775657262 : Seg52.F)
    (1121317658165173384835027692025263628896302212261190172871611782856545808479 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (159972499471161683226141830651939820625937330801826475157833509385490017356 : Seg52.F) (889344209890450458886721940910110142040239231044373030628454235548509460521 : Seg52.F)
    (1744946012703359804205378596564623655474306445177260178979160388767327552813 : Seg52.F) (4959782277533719432919392301145785066008674030300801316071562549820147524464 : Seg52.F)
    (5911908847249762424893425555674385625302681614207230443431930131001633581779 : Seg52.F) (1411235244013434614520371691081897277176915508685643211631691542059229848783 : Seg52.F)
    (3484679471894650991329432637635761465367225304853262511863670906097261714577 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX195 rho) (seg52BlindDeltaY195 rho) (rho 50734)
    (rho 51902) (rho 51903) (rho 51904) (rho 51906)
    (rho 51905) (rho 51907) (rho 51908) (rho 51909) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 196)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L196]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX195 seg52BlindDeltaY195;
        first | linear_combination r7514 | linear_combination -r7514)
    (by unfold seg52BlindDeltaX195 seg52BlindDeltaY195;
        first | linear_combination r7515 | linear_combination -r7515)
    (by unfold seg52BlindDeltaX195 seg52BlindDeltaY195;
        first | linear_combination r7516 | linear_combination -r7516)
    (by first | linear_combination r7517 | linear_combination -r7517)
    (by unfold seg52BlindDeltaX195 seg52BlindDeltaY195;
        first | linear_combination r7518 | linear_combination -r7518)
    (by first | linear_combination r7519 | linear_combination -r7519)
    (by unfold seg52BlindDeltaX195; first | linear_combination r7520 | linear_combination -r7520)
    (by unfold seg52BlindDeltaY195; first | linear_combination r7521 | linear_combination -r7521)
    (by linear_combination r6345)

theorem seg52Blind_rows197 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6346 rho ∧ Seg52.relationRow7522 rho ∧ Seg52.relationRow7523 rho ∧ Seg52.relationRow7524 rho ∧ Seg52.relationRow7525 rho ∧ Seg52.relationRow7526 rho ∧ Seg52.relationRow7527 rho ∧ Seg52.relationRow7528 rho ∧ Seg52.relationRow7529 rho := by
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

    _, _, _, _, p94, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6346, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, r7522, r7523, r7524, r7525, r7526, r7527, r7528, r7529, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6346, r7522, r7523, r7524, r7525, r7526, r7527, r7528, r7529⟩

theorem seg52Blind_rung197 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50735 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 197)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      197 (Bool.toZMod bit) (seg52BlindAccState rho 197)
      (seg52BlindAccState rho 198) := by
  obtain ⟨r6346, r7522, r7523, r7524, r7525, r7526, r7527, r7528, r7529⟩ := seg52Blind_rows197 rho h
  unfold Seg52.relationRow6346 at r6346

  unfold Seg52.relationRow7522 at r7522

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7522

  unfold Seg52.relationRow7523 at r7523

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7523

  unfold Seg52.relationRow7524 at r7524

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7524

  unfold Seg52.relationRow7525 at r7525

  unfold Seg52.relationRow7526 at r7526

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7526

  unfold Seg52.relationRow7527 at r7527

  unfold Seg52.relationRow7528 at r7528

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7528

  unfold Seg52.relationRow7529 at r7529

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7529

  have hnextx : seg52BlindDeltaX197 rho =
      seg52BlindDeltaX196 rho + rho 51916 := by
    unfold seg52BlindDeltaX197 seg52BlindDeltaX196
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 47]

    ring

  have hnexty : seg52BlindDeltaY197 rho =
      seg52BlindDeltaY196 rho + rho 51917 := by
    unfold seg52BlindDeltaY197 seg52BlindDeltaY196
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 47]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 197
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX196 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY196 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX197 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY197 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY196 rho) (rho 51917)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 197)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1287811907937307797322206503857689576857462357949847351868008167510510354195 : Seg52.F) (2939412043880705116914549657537370999037035682997305022831277955059888969285 : Seg52.F)
    (4227223951818012914236756161395060575894498040947152374699286122570399323480 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4834485914392842313339504760992383614814597087937390813360340066727465977894 : Seg52.F) (4247903498688423199534134705096608045797863838610849994701913573296089218708 : Seg52.F)
    (8422332758588264717161581845639255967478228743291154791017212862493824457737 : Seg52.F) (8172166040961695728421806900328020423030021832888885709746286315834019511595 : Seg52.F)
    (5505049705547665307334275281244175532338863652156758805103955500857520269756 : Seg52.F) (7156649841491062626926618434923856954518436977204216476067225288406898884846 : Seg52.F)
    (272295708466674695827018038453526108345877502265178118188947140083389727446 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX196 rho) (seg52BlindDeltaY196 rho) (rho 50735)
    (rho 51910) (rho 51911) (rho 51912) (rho 51914)
    (rho 51913) (rho 51915) (rho 51916) (rho 51917) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 197)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L197]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX196 seg52BlindDeltaY196;
        first | linear_combination r7522 | linear_combination -r7522)
    (by unfold seg52BlindDeltaX196 seg52BlindDeltaY196;
        first | linear_combination r7523 | linear_combination -r7523)
    (by unfold seg52BlindDeltaX196 seg52BlindDeltaY196;
        first | linear_combination r7524 | linear_combination -r7524)
    (by first | linear_combination r7525 | linear_combination -r7525)
    (by unfold seg52BlindDeltaX196 seg52BlindDeltaY196;
        first | linear_combination r7526 | linear_combination -r7526)
    (by first | linear_combination r7527 | linear_combination -r7527)
    (by unfold seg52BlindDeltaX196; first | linear_combination r7528 | linear_combination -r7528)
    (by unfold seg52BlindDeltaY196; first | linear_combination r7529 | linear_combination -r7529)
    (by linear_combination r6346)

theorem seg52Blind_rows198 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6347 rho ∧ Seg52.relationRow7530 rho ∧ Seg52.relationRow7531 rho ∧ Seg52.relationRow7532 rho ∧ Seg52.relationRow7533 rho ∧ Seg52.relationRow7534 rho ∧ Seg52.relationRow7535 rho ∧ Seg52.relationRow7536 rho ∧ Seg52.relationRow7537 rho := by
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

    _, _, _, _, p94, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6347, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, r7530, r7531, r7532, r7533, r7534, r7535, r7536, r7537, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6347, r7530, r7531, r7532, r7533, r7534, r7535, r7536, r7537⟩

theorem seg52Blind_rung198 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50736 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 198)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      198 (Bool.toZMod bit) (seg52BlindAccState rho 198)
      (seg52BlindAccState rho 199) := by
  obtain ⟨r6347, r7530, r7531, r7532, r7533, r7534, r7535, r7536, r7537⟩ := seg52Blind_rows198 rho h
  unfold Seg52.relationRow6347 at r6347

  unfold Seg52.relationRow7530 at r7530

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7530

  unfold Seg52.relationRow7531 at r7531

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7531

  unfold Seg52.relationRow7532 at r7532

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7532

  unfold Seg52.relationRow7533 at r7533

  unfold Seg52.relationRow7534 at r7534

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7534

  unfold Seg52.relationRow7535 at r7535

  unfold Seg52.relationRow7536 at r7536

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7536

  unfold Seg52.relationRow7537 at r7537

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7537

  have hnextx : seg52BlindDeltaX198 rho =
      seg52BlindDeltaX197 rho + rho 51924 := by
    unfold seg52BlindDeltaX198 seg52BlindDeltaX197
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 48]

    ring

  have hnexty : seg52BlindDeltaY198 rho =
      seg52BlindDeltaY197 rho + rho 51925 := by
    unfold seg52BlindDeltaY198 seg52BlindDeltaY197
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 48]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 198
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX197 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY197 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX198 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY198 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY197 rho) (rho 51925)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 198)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1189785845959812492681481939094349700657637573249984492101068248967037471045 : Seg52.F) (313065814926456601259847752896291272836620104337514703885056590706326326606 : Seg52.F)
    (1502851660886269093941329691990640973494257677587499195986124839673363797651 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (8436572706276275314380493294944270256704509001530835535945046916979407143175 : Seg52.F) (1602782074949261827795561264723734697894838837521197630438188003049246203409 : Seg52.F)
    (6751606183813397713597296114152273309656750207528415013862084614103750643323 : Seg52.F) (1360092137943693216229474947106632950727185500916475945190576124046937278243 : Seg52.F)
    (8131395934501913822988977185885255258539279230816549124050176865211082912435 : Seg52.F) (7254675903468557931567342999687196830718261761904079335834165206950371767996 : Seg52.F)
    (7084369611484677208019349991674913580648713834237587882744657331870471960798 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX197 rho) (seg52BlindDeltaY197 rho) (rho 50736)
    (rho 51918) (rho 51919) (rho 51920) (rho 51922)
    (rho 51921) (rho 51923) (rho 51924) (rho 51925) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 198)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L198]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX197 seg52BlindDeltaY197;
        first | linear_combination r7530 | linear_combination -r7530)
    (by unfold seg52BlindDeltaX197 seg52BlindDeltaY197;
        first | linear_combination r7531 | linear_combination -r7531)
    (by unfold seg52BlindDeltaX197 seg52BlindDeltaY197;
        first | linear_combination r7532 | linear_combination -r7532)
    (by first | linear_combination r7533 | linear_combination -r7533)
    (by unfold seg52BlindDeltaX197 seg52BlindDeltaY197;
        first | linear_combination r7534 | linear_combination -r7534)
    (by first | linear_combination r7535 | linear_combination -r7535)
    (by unfold seg52BlindDeltaX197; first | linear_combination r7536 | linear_combination -r7536)
    (by unfold seg52BlindDeltaY197; first | linear_combination r7537 | linear_combination -r7537)
    (by linear_combination r6347)

theorem seg52Blind_rows199 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6348 rho ∧ Seg52.relationRow7538 rho ∧ Seg52.relationRow7539 rho ∧ Seg52.relationRow7540 rho ∧ Seg52.relationRow7541 rho ∧ Seg52.relationRow7542 rho ∧ Seg52.relationRow7543 rho ∧ Seg52.relationRow7544 rho ∧ Seg52.relationRow7545 rho := by
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

    _, _, _, _, p94, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6348, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7538, r7539, r7540, r7541, r7542, r7543, r7544, r7545, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6348, r7538, r7539, r7540, r7541, r7542, r7543, r7544, r7545⟩

theorem seg52Blind_rung199 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50737 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 199)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      199 (Bool.toZMod bit) (seg52BlindAccState rho 199)
      (seg52BlindAccState rho 200) := by
  obtain ⟨r6348, r7538, r7539, r7540, r7541, r7542, r7543, r7544, r7545⟩ := seg52Blind_rows199 rho h
  unfold Seg52.relationRow6348 at r6348

  unfold Seg52.relationRow7538 at r7538

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7538

  unfold Seg52.relationRow7539 at r7539

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7539

  unfold Seg52.relationRow7540 at r7540

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7540

  unfold Seg52.relationRow7541 at r7541

  unfold Seg52.relationRow7542 at r7542

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7542

  unfold Seg52.relationRow7543 at r7543

  unfold Seg52.relationRow7544 at r7544

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7544

  unfold Seg52.relationRow7545 at r7545

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7545

  have hnextx : seg52BlindDeltaX199 rho =
      seg52BlindDeltaX198 rho + rho 51932 := by
    unfold seg52BlindDeltaX199 seg52BlindDeltaX198
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 49]

    ring

  have hnexty : seg52BlindDeltaY199 rho =
      seg52BlindDeltaY198 rho + rho 51933 := by
    unfold seg52BlindDeltaY199 seg52BlindDeltaY198
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 49]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 199
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX198 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY198 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX199 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY199 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY198 rho) (rho 51933)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 199)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3551123497965750934797699834002404728361160069706598447696579925198710334471 : Seg52.F) (3002030520192283727479249997399438260283975122815343265517649215638558877392 : Seg52.F)
    (6553154018158034662276949831401842988645135192521941713214229140837269211863 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (8226744364247675495825082831103556151548859404841517754312782244706255110239 : Seg52.F) (4248897056721397889874420512898227115066472860817192579095222727956920142414 : Seg52.F)
    (560917769939457241020240338036935902182861430632256579106756322648974055852 : Seg52.F) (394608995391631743646835811120684804941058223995902180862129118204390264326 : Seg52.F)
    (5442431229236086696769574941382108271091924212338720562417584240278850361649 : Seg52.F) (4893338251462619489451125104779141803014739265447465380238653530718698904570 : Seg52.F)
    (8049852754036738680601989127660861726434841111158161647073104337713018974715 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX198 rho) (seg52BlindDeltaY198 rho) (rho 50737)
    (rho 51926) (rho 51927) (rho 51928) (rho 51930)
    (rho 51929) (rho 51931) (rho 51932) (rho 51933) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 199)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L199]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX198 seg52BlindDeltaY198;
        first | linear_combination r7538 | linear_combination -r7538)
    (by unfold seg52BlindDeltaX198 seg52BlindDeltaY198;
        first | linear_combination r7539 | linear_combination -r7539)
    (by unfold seg52BlindDeltaX198 seg52BlindDeltaY198;
        first | linear_combination r7540 | linear_combination -r7540)
    (by first | linear_combination r7541 | linear_combination -r7541)
    (by unfold seg52BlindDeltaX198 seg52BlindDeltaY198;
        first | linear_combination r7542 | linear_combination -r7542)
    (by first | linear_combination r7543 | linear_combination -r7543)
    (by unfold seg52BlindDeltaX198; first | linear_combination r7544 | linear_combination -r7544)
    (by unfold seg52BlindDeltaY198; first | linear_combination r7545 | linear_combination -r7545)
    (by linear_combination r6348)

theorem seg52Blind_rows200 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6349 rho ∧ Seg52.relationRow7546 rho ∧ Seg52.relationRow7547 rho ∧ Seg52.relationRow7548 rho ∧ Seg52.relationRow7549 rho ∧ Seg52.relationRow7550 rho ∧ Seg52.relationRow7551 rho ∧ Seg52.relationRow7552 rho ∧ Seg52.relationRow7553 rho := by
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

    _, _, _, _, p94, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6349, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7546, r7547, r7548, r7549, r7550, r7551, r7552, r7553, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6349, r7546, r7547, r7548, r7549, r7550, r7551, r7552, r7553⟩

theorem seg52Blind_rung200 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50738 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 200)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      200 (Bool.toZMod bit) (seg52BlindAccState rho 200)
      (seg52BlindAccState rho 201) := by
  obtain ⟨r6349, r7546, r7547, r7548, r7549, r7550, r7551, r7552, r7553⟩ := seg52Blind_rows200 rho h
  unfold Seg52.relationRow6349 at r6349

  unfold Seg52.relationRow7546 at r7546

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7546

  unfold Seg52.relationRow7547 at r7547

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7547

  unfold Seg52.relationRow7548 at r7548

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7548

  unfold Seg52.relationRow7549 at r7549

  unfold Seg52.relationRow7550 at r7550

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7550

  unfold Seg52.relationRow7551 at r7551

  unfold Seg52.relationRow7552 at r7552

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7552

  unfold Seg52.relationRow7553 at r7553

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7553

  have hnextx : seg52BlindDeltaX200 rho =
      seg52BlindDeltaX199 rho + rho 51940 := by
    unfold seg52BlindDeltaX200 seg52BlindDeltaX199
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 50]

    ring

  have hnexty : seg52BlindDeltaY200 rho =
      seg52BlindDeltaY199 rho + rho 51941 := by
    unfold seg52BlindDeltaY200 seg52BlindDeltaY199
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 50]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 200
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX199 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY199 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX200 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY200 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY199 rho) (rho 51941)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 200)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (237407082182476649271201308514110417937957700889391563201001451196613456842 : Seg52.F) (961186733346023561115570340324357733199172280018292165698470412330626102152 : Seg52.F)
    (1198593815528500210386771648838468151137129980907683728899471863527239558994 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (7294741384406122612791044117814251732765985977416739593294040271150085610129 : Seg52.F) (8280214252583025169891409716798129779029250702630506565416096652795038393465 : Seg52.F)
    (4440596737623467634352615922521817381278024270263026038921952693420240567282 : Seg52.F) (429353156714312750522287818459088917432687562358820428081310804626925562691 : Seg52.F)
    (7483275016082346863133254598457188798176727055135771662236763043586783136889 : Seg52.F) (8207054667245893774977623630267436113437941634264672264734232004720795782199 : Seg52.F)
    (8015108592714057673726537120322457613943211772795243399853922651290483676350 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX199 rho) (seg52BlindDeltaY199 rho) (rho 50738)
    (rho 51934) (rho 51935) (rho 51936) (rho 51938)
    (rho 51937) (rho 51939) (rho 51940) (rho 51941) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 200)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L200]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX199 seg52BlindDeltaY199;
        first | linear_combination r7546 | linear_combination -r7546)
    (by unfold seg52BlindDeltaX199 seg52BlindDeltaY199;
        first | linear_combination r7547 | linear_combination -r7547)
    (by unfold seg52BlindDeltaX199 seg52BlindDeltaY199;
        first | linear_combination r7548 | linear_combination -r7548)
    (by first | linear_combination r7549 | linear_combination -r7549)
    (by unfold seg52BlindDeltaX199 seg52BlindDeltaY199;
        first | linear_combination r7550 | linear_combination -r7550)
    (by first | linear_combination r7551 | linear_combination -r7551)
    (by unfold seg52BlindDeltaX199; first | linear_combination r7552 | linear_combination -r7552)
    (by unfold seg52BlindDeltaY199; first | linear_combination r7553 | linear_combination -r7553)
    (by linear_combination r6349)

theorem seg52Blind_hstep_c19 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 191 ≤ i → i < 201 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung191 rho h bits[191]! (hbitAt 191 (by omega)) hacc
  · exact seg52Blind_rung192 rho h bits[192]! (hbitAt 192 (by omega)) hacc
  · exact seg52Blind_rung193 rho h bits[193]! (hbitAt 193 (by omega)) hacc
  · exact seg52Blind_rung194 rho h bits[194]! (hbitAt 194 (by omega)) hacc
  · exact seg52Blind_rung195 rho h bits[195]! (hbitAt 195 (by omega)) hacc
  · exact seg52Blind_rung196 rho h bits[196]! (hbitAt 196 (by omega)) hacc
  · exact seg52Blind_rung197 rho h bits[197]! (hbitAt 197 (by omega)) hacc
  · exact seg52Blind_rung198 rho h bits[198]! (hbitAt 198 (by omega)) hacc
  · exact seg52Blind_rung199 rho h bits[199]! (hbitAt 199 (by omega)) hacc
  · exact seg52Blind_rung200 rho h bits[200]! (hbitAt 200 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

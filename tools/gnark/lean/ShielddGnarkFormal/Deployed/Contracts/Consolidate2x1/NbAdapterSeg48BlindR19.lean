import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows191 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6340 rho ∧ Seg48.relationRow7474 rho ∧ Seg48.relationRow7475 rho ∧ Seg48.relationRow7476 rho ∧ Seg48.relationRow7477 rho ∧ Seg48.relationRow7478 rho ∧ Seg48.relationRow7479 rho ∧ Seg48.relationRow7480 rho ∧ Seg48.relationRow7481 rho := by
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

    _, _, _, p93, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6340, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7474, r7475, r7476, r7477, r7478, r7479, r7480, r7481, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6340, r7474, r7475, r7476, r7477, r7478, r7479, r7480, r7481⟩

theorem seg48Blind_rung191 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39097 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 191)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      191 (Bool.toZMod bit) (seg48BlindAccState rho 191)
      (seg48BlindAccState rho 192) := by
  obtain ⟨r6340, r7474, r7475, r7476, r7477, r7478, r7479, r7480, r7481⟩ := seg48Blind_rows191 rho h
  unfold Seg48.relationRow6340 at r6340

  unfold Seg48.relationRow7474 at r7474

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7474

  unfold Seg48.relationRow7475 at r7475

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7475

  unfold Seg48.relationRow7476 at r7476

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7476

  unfold Seg48.relationRow7477 at r7477

  unfold Seg48.relationRow7478 at r7478

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7478

  unfold Seg48.relationRow7479 at r7479

  unfold Seg48.relationRow7480 at r7480

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7480

  unfold Seg48.relationRow7481 at r7481

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7481

  have hnextx : seg48BlindDeltaX191 rho =
      seg48BlindDeltaX190 rho + rho 40236 := by
    unfold seg48BlindDeltaX191 seg48BlindDeltaX190
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 41]

    ring

  have hnexty : seg48BlindDeltaY191 rho =
      seg48BlindDeltaY190 rho + rho 40237 := by
    unfold seg48BlindDeltaY191 seg48BlindDeltaY190
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 41]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 191
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX190 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY190 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX191 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY191 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY190 rho) (rho 40237)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 191)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (7795627490918527138041161579809081456452436047591391680037266100603945016815 : Seg48.F) (3189572002925575920347648111790343103502172016293966354214985046616570335139 : Seg48.F)
    (2540737744415732634139984752817878028578708728731294206317017691303106112913 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (566164740394201302335690568881923380160519813285528409368452626895040709138 : Seg48.F) (559200741045195250524530251089018769402279419388473271726665058493386012757 : Seg48.F)
    (7316742360078395850510735121132322818658676912321782356138261176337704907294 : Seg48.F) (6162487642510414456944286869074828711181403113579895600869964336802651405238 : Seg48.F)
    (5254889746502794503901176826991203427873727318860097473720248409300838903902 : Seg48.F) (648834258509843286207663358972465074923463287562672147897967355313464222226 : Seg48.F)
    (2281974106917955967304538069706717820194496221574168227065269119114757833803 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX190 rho) (seg48BlindDeltaY190 rho) (rho 39097)
    (rho 40230) (rho 40231) (rho 40232) (rho 40234)
    (rho 40233) (rho 40235) (rho 40236) (rho 40237) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 191)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L191]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX190 seg48BlindDeltaY190;
        first | linear_combination r7474 | linear_combination -r7474)
    (by unfold seg48BlindDeltaX190 seg48BlindDeltaY190;
        first | linear_combination r7475 | linear_combination -r7475)
    (by unfold seg48BlindDeltaX190 seg48BlindDeltaY190;
        first | linear_combination r7476 | linear_combination -r7476)
    (by first | linear_combination r7477 | linear_combination -r7477)
    (by unfold seg48BlindDeltaX190 seg48BlindDeltaY190;
        first | linear_combination r7478 | linear_combination -r7478)
    (by first | linear_combination r7479 | linear_combination -r7479)
    (by unfold seg48BlindDeltaX190; first | linear_combination r7480 | linear_combination -r7480)
    (by unfold seg48BlindDeltaY190; first | linear_combination r7481 | linear_combination -r7481)
    (by linear_combination r6340)

theorem seg48Blind_rows192 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6341 rho ∧ Seg48.relationRow7482 rho ∧ Seg48.relationRow7483 rho ∧ Seg48.relationRow7484 rho ∧ Seg48.relationRow7485 rho ∧ Seg48.relationRow7486 rho ∧ Seg48.relationRow7487 rho ∧ Seg48.relationRow7488 rho ∧ Seg48.relationRow7489 rho := by
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

    _, _, _, p93, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6341, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7482, r7483, r7484, r7485, r7486, r7487, r7488, r7489, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6341, r7482, r7483, r7484, r7485, r7486, r7487, r7488, r7489⟩

theorem seg48Blind_rung192 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39098 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 192)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      192 (Bool.toZMod bit) (seg48BlindAccState rho 192)
      (seg48BlindAccState rho 193) := by
  obtain ⟨r6341, r7482, r7483, r7484, r7485, r7486, r7487, r7488, r7489⟩ := seg48Blind_rows192 rho h
  unfold Seg48.relationRow6341 at r6341

  unfold Seg48.relationRow7482 at r7482

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7482

  unfold Seg48.relationRow7483 at r7483

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7483

  unfold Seg48.relationRow7484 at r7484

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7484

  unfold Seg48.relationRow7485 at r7485

  unfold Seg48.relationRow7486 at r7486

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7486

  unfold Seg48.relationRow7487 at r7487

  unfold Seg48.relationRow7488 at r7488

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7488

  unfold Seg48.relationRow7489 at r7489

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7489

  have hnextx : seg48BlindDeltaX192 rho =
      seg48BlindDeltaX191 rho + rho 40244 := by
    unfold seg48BlindDeltaX192 seg48BlindDeltaX191
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 42]

    ring

  have hnexty : seg48BlindDeltaY192 rho =
      seg48BlindDeltaY191 rho + rho 40245 := by
    unfold seg48BlindDeltaY192 seg48BlindDeltaY191
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 42]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 192
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX191 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY191 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX192 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY192 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY191 rho) (rho 40245)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 192)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (2201443287703118336923186320266692790412732967462530460839825374398628917893 : Seg48.F) (6846513832253225230347721765363986944279063983096280693769125028585801189149 : Seg48.F)
    (603495370527973143022083146849133203315897615404747326673716947067020868001 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (2831462886914251895095178088597103327474821141561661263139977815970166007720 : Seg48.F) (6629768296966429689160763288732932376564175026205222742192023532947073032112 : Seg48.F)
    (7160083176997050742282765130665319097078478313482009216028559646455803224278 : Seg48.F) (1230749160449538127066993612358232434647795025110371274904304972532004703188 : Seg48.F)
    (1597947917175145193901103173417559587096835352057783134166108427331608049892 : Seg48.F) (6243018461725252087325638618514853740963166367691533367095408081518780321148 : Seg48.F)
    (7213712588978832297181831326423314096728104310043692553030928483385404535853 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX191 rho) (seg48BlindDeltaY191 rho) (rho 39098)
    (rho 40238) (rho 40239) (rho 40240) (rho 40242)
    (rho 40241) (rho 40243) (rho 40244) (rho 40245) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 192)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L192]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX191 seg48BlindDeltaY191;
        first | linear_combination r7482 | linear_combination -r7482)
    (by unfold seg48BlindDeltaX191 seg48BlindDeltaY191;
        first | linear_combination r7483 | linear_combination -r7483)
    (by unfold seg48BlindDeltaX191 seg48BlindDeltaY191;
        first | linear_combination r7484 | linear_combination -r7484)
    (by first | linear_combination r7485 | linear_combination -r7485)
    (by unfold seg48BlindDeltaX191 seg48BlindDeltaY191;
        first | linear_combination r7486 | linear_combination -r7486)
    (by first | linear_combination r7487 | linear_combination -r7487)
    (by unfold seg48BlindDeltaX191; first | linear_combination r7488 | linear_combination -r7488)
    (by unfold seg48BlindDeltaY191; first | linear_combination r7489 | linear_combination -r7489)
    (by linear_combination r6341)

theorem seg48Blind_rows193 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6342 rho ∧ Seg48.relationRow7490 rho ∧ Seg48.relationRow7491 rho ∧ Seg48.relationRow7492 rho ∧ Seg48.relationRow7493 rho ∧ Seg48.relationRow7494 rho ∧ Seg48.relationRow7495 rho ∧ Seg48.relationRow7496 rho ∧ Seg48.relationRow7497 rho := by
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

    _, _, _, p93, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6342, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7490, r7491, r7492, r7493, r7494, r7495, r7496, r7497, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6342, r7490, r7491, r7492, r7493, r7494, r7495, r7496, r7497⟩

theorem seg48Blind_rung193 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39099 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 193)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      193 (Bool.toZMod bit) (seg48BlindAccState rho 193)
      (seg48BlindAccState rho 194) := by
  obtain ⟨r6342, r7490, r7491, r7492, r7493, r7494, r7495, r7496, r7497⟩ := seg48Blind_rows193 rho h
  unfold Seg48.relationRow6342 at r6342

  unfold Seg48.relationRow7490 at r7490

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7490

  unfold Seg48.relationRow7491 at r7491

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7491

  unfold Seg48.relationRow7492 at r7492

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7492

  unfold Seg48.relationRow7493 at r7493

  unfold Seg48.relationRow7494 at r7494

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7494

  unfold Seg48.relationRow7495 at r7495

  unfold Seg48.relationRow7496 at r7496

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7496

  unfold Seg48.relationRow7497 at r7497

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7497

  have hnextx : seg48BlindDeltaX193 rho =
      seg48BlindDeltaX192 rho + rho 40252 := by
    unfold seg48BlindDeltaX193 seg48BlindDeltaX192
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 43]

    ring

  have hnexty : seg48BlindDeltaY193 rho =
      seg48BlindDeltaY192 rho + rho 40253 := by
    unfold seg48BlindDeltaY193 seg48BlindDeltaY192
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 43]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 193
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX192 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY192 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX193 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY193 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY192 rho) (rho 40253)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 193)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (8379505003927404927120020956400071289170845704972341444623697570956102475621 : Seg48.F) (8222636974042191456093926116742032547305962112844880315099558006378415146841 : Seg48.F)
    (8157680228541225958965122134360557305100908482663157931788022121417108383421 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (5424293512622971143956653721151976634791598216281713958243143416091586587080 : Seg48.F) (1159492356918577458388895628832242118290019297883964640947573388330292787616 : Seg48.F)
    (7398689112597503690364031459430454241780594976319482742382007271263098015962 : Seg48.F) (5425623735987271667172610899632063110025184545561162617297158795099787645232 : Seg48.F)
    (221824775386178968154898822039513984069937222309183512835675449538994092200 : Seg48.F) (64956745500965497128803982381475242205053630181722383311535884961306763420 : Seg48.F)
    (3018838013441098757076214039149483421350714789592901210638074660817621593809 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX192 rho) (seg48BlindDeltaY192 rho) (rho 39099)
    (rho 40246) (rho 40247) (rho 40248) (rho 40250)
    (rho 40249) (rho 40251) (rho 40252) (rho 40253) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 193)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L193]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX192 seg48BlindDeltaY192;
        first | linear_combination r7490 | linear_combination -r7490)
    (by unfold seg48BlindDeltaX192 seg48BlindDeltaY192;
        first | linear_combination r7491 | linear_combination -r7491)
    (by unfold seg48BlindDeltaX192 seg48BlindDeltaY192;
        first | linear_combination r7492 | linear_combination -r7492)
    (by first | linear_combination r7493 | linear_combination -r7493)
    (by unfold seg48BlindDeltaX192 seg48BlindDeltaY192;
        first | linear_combination r7494 | linear_combination -r7494)
    (by first | linear_combination r7495 | linear_combination -r7495)
    (by unfold seg48BlindDeltaX192; first | linear_combination r7496 | linear_combination -r7496)
    (by unfold seg48BlindDeltaY192; first | linear_combination r7497 | linear_combination -r7497)
    (by linear_combination r6342)

theorem seg48Blind_rows194 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6343 rho ∧ Seg48.relationRow7498 rho ∧ Seg48.relationRow7499 rho ∧ Seg48.relationRow7500 rho ∧ Seg48.relationRow7501 rho ∧ Seg48.relationRow7502 rho ∧ Seg48.relationRow7503 rho ∧ Seg48.relationRow7504 rho ∧ Seg48.relationRow7505 rho := by
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

    _, _, _, p93, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6343, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7498, r7499, r7500, r7501, r7502, r7503, r7504, r7505, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6343, r7498, r7499, r7500, r7501, r7502, r7503, r7504, r7505⟩

theorem seg48Blind_rung194 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39100 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 194)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      194 (Bool.toZMod bit) (seg48BlindAccState rho 194)
      (seg48BlindAccState rho 195) := by
  obtain ⟨r6343, r7498, r7499, r7500, r7501, r7502, r7503, r7504, r7505⟩ := seg48Blind_rows194 rho h
  unfold Seg48.relationRow6343 at r6343

  unfold Seg48.relationRow7498 at r7498

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7498

  unfold Seg48.relationRow7499 at r7499

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7499

  unfold Seg48.relationRow7500 at r7500

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7500

  unfold Seg48.relationRow7501 at r7501

  unfold Seg48.relationRow7502 at r7502

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7502

  unfold Seg48.relationRow7503 at r7503

  unfold Seg48.relationRow7504 at r7504

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7504

  unfold Seg48.relationRow7505 at r7505

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7505

  have hnextx : seg48BlindDeltaX194 rho =
      seg48BlindDeltaX193 rho + rho 40260 := by
    unfold seg48BlindDeltaX194 seg48BlindDeltaX193
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 44]

    ring

  have hnexty : seg48BlindDeltaY194 rho =
      seg48BlindDeltaY193 rho + rho 40261 := by
    unfold seg48BlindDeltaY194 seg48BlindDeltaY193
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 44]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 194
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX193 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY193 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX194 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY194 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY193 rho) (rho 40261)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 194)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (6444490698300857073481181944246794033469722497984396226284135138276924131970 : Seg48.F) (8198823652717836620711767586720711280439202192284079120380256009977844066466 : Seg48.F)
    (6198852601590323269944124592185958782533025355114411518729157692337358959395 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (1039943787173976848446334036992801681317072883333815334713679937305626686533 : Seg48.F) (7763323733134130071288516841185356454533071645192017275536901946325694198167 : Seg48.F)
    (5978637330494813918645192268005069037660298137679939836064151660217248578339 : Seg48.F) (3745004071372151816914715129910381229435807440401535650340004072402749506166 : Seg48.F)
    (245638096710533803537057352060835250936697142869984707554977445939565172575 : Seg48.F) (1999971051127513350767642994534752497906176837169667601651098317640485107071 : Seg48.F)
    (4699457678056218607334109808871165301940091894752528177595229383514659732875 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX193 rho) (seg48BlindDeltaY193 rho) (rho 39100)
    (rho 40254) (rho 40255) (rho 40256) (rho 40258)
    (rho 40257) (rho 40259) (rho 40260) (rho 40261) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 194)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L194]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX193 seg48BlindDeltaY193;
        first | linear_combination r7498 | linear_combination -r7498)
    (by unfold seg48BlindDeltaX193 seg48BlindDeltaY193;
        first | linear_combination r7499 | linear_combination -r7499)
    (by unfold seg48BlindDeltaX193 seg48BlindDeltaY193;
        first | linear_combination r7500 | linear_combination -r7500)
    (by first | linear_combination r7501 | linear_combination -r7501)
    (by unfold seg48BlindDeltaX193 seg48BlindDeltaY193;
        first | linear_combination r7502 | linear_combination -r7502)
    (by first | linear_combination r7503 | linear_combination -r7503)
    (by unfold seg48BlindDeltaX193; first | linear_combination r7504 | linear_combination -r7504)
    (by unfold seg48BlindDeltaY193; first | linear_combination r7505 | linear_combination -r7505)
    (by linear_combination r6343)

theorem seg48Blind_rows195 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6344 rho ∧ Seg48.relationRow7506 rho ∧ Seg48.relationRow7507 rho ∧ Seg48.relationRow7508 rho ∧ Seg48.relationRow7509 rho ∧ Seg48.relationRow7510 rho ∧ Seg48.relationRow7511 rho ∧ Seg48.relationRow7512 rho ∧ Seg48.relationRow7513 rho := by
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

    _, _, _, p93, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6344, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7506, r7507, r7508, r7509, r7510, r7511, r7512, r7513, _, _, _, _, _, _⟩

  exact ⟨r6344, r7506, r7507, r7508, r7509, r7510, r7511, r7512, r7513⟩

theorem seg48Blind_rung195 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39101 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 195)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      195 (Bool.toZMod bit) (seg48BlindAccState rho 195)
      (seg48BlindAccState rho 196) := by
  obtain ⟨r6344, r7506, r7507, r7508, r7509, r7510, r7511, r7512, r7513⟩ := seg48Blind_rows195 rho h
  unfold Seg48.relationRow6344 at r6344

  unfold Seg48.relationRow7506 at r7506

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7506

  unfold Seg48.relationRow7507 at r7507

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7507

  unfold Seg48.relationRow7508 at r7508

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7508

  unfold Seg48.relationRow7509 at r7509

  unfold Seg48.relationRow7510 at r7510

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7510

  unfold Seg48.relationRow7511 at r7511

  unfold Seg48.relationRow7512 at r7512

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7512

  unfold Seg48.relationRow7513 at r7513

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7513

  have hnextx : seg48BlindDeltaX195 rho =
      seg48BlindDeltaX194 rho + rho 40268 := by
    unfold seg48BlindDeltaX195 seg48BlindDeltaX194
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 45]

    ring

  have hnexty : seg48BlindDeltaY195 rho =
      seg48BlindDeltaY194 rho + rho 40269 := by
    unfold seg48BlindDeltaY195 seg48BlindDeltaY194
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 45]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 195
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX194 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY194 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX195 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY195 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY194 rho) (rho 40269)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 195)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (534543527702324573819012140335261053705566569841713933263725786904339161184 : Seg48.F) (6217973748861355706774664776848221649695057456414935984473422092483830200013 : Seg48.F)
    (6752517276563680280593676917183482703400624026256649917737147879388169361197 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (4015764581459766636875627008318117948768454446883655766248935433332886612089 : Seg48.F) (3157768499214601969918244417310321822715768325365981343453183964039078504438 : Seg48.F)
    (6659275747808960082924259503299544426670642258395145597892705017474190829857 : Seg48.F) (1704336021480828285432287185509947710912034594408787045894785211655744122702 : Seg48.F)
    (2226488000567014717474160161933324881680841878739127843461811363433579039028 : Seg48.F) (7909918221726045850429812798446285477670332765312349894671507669013070077857 : Seg48.F)
    (6740125727947542138816537753271598820463864740745276782040448244261665116339 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX194 rho) (seg48BlindDeltaY194 rho) (rho 39101)
    (rho 40262) (rho 40263) (rho 40264) (rho 40266)
    (rho 40265) (rho 40267) (rho 40268) (rho 40269) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 195)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L195]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX194 seg48BlindDeltaY194;
        first | linear_combination r7506 | linear_combination -r7506)
    (by unfold seg48BlindDeltaX194 seg48BlindDeltaY194;
        first | linear_combination r7507 | linear_combination -r7507)
    (by unfold seg48BlindDeltaX194 seg48BlindDeltaY194;
        first | linear_combination r7508 | linear_combination -r7508)
    (by first | linear_combination r7509 | linear_combination -r7509)
    (by unfold seg48BlindDeltaX194 seg48BlindDeltaY194;
        first | linear_combination r7510 | linear_combination -r7510)
    (by first | linear_combination r7511 | linear_combination -r7511)
    (by unfold seg48BlindDeltaX194; first | linear_combination r7512 | linear_combination -r7512)
    (by unfold seg48BlindDeltaY194; first | linear_combination r7513 | linear_combination -r7513)
    (by linear_combination r6344)

theorem seg48Blind_rows196 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6345 rho ∧ Seg48.relationRow7514 rho ∧ Seg48.relationRow7515 rho ∧ Seg48.relationRow7516 rho ∧ Seg48.relationRow7517 rho ∧ Seg48.relationRow7518 rho ∧ Seg48.relationRow7519 rho ∧ Seg48.relationRow7520 rho ∧ Seg48.relationRow7521 rho := by
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

    _, _, _, p93, p94, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6345, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7514, r7515, r7516, r7517, r7518, r7519⟩

  unfold Seg48.relationPart94 at p94

  rcases p94 with ⟨r7520, r7521, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6345, r7514, r7515, r7516, r7517, r7518, r7519, r7520, r7521⟩

theorem seg48Blind_rung196 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39102 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 196)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      196 (Bool.toZMod bit) (seg48BlindAccState rho 196)
      (seg48BlindAccState rho 197) := by
  obtain ⟨r6345, r7514, r7515, r7516, r7517, r7518, r7519, r7520, r7521⟩ := seg48Blind_rows196 rho h
  unfold Seg48.relationRow6345 at r6345

  unfold Seg48.relationRow7514 at r7514

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7514

  unfold Seg48.relationRow7515 at r7515

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7515

  unfold Seg48.relationRow7516 at r7516

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7516

  unfold Seg48.relationRow7517 at r7517

  unfold Seg48.relationRow7518 at r7518

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7518

  unfold Seg48.relationRow7519 at r7519

  unfold Seg48.relationRow7520 at r7520

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7520

  unfold Seg48.relationRow7521 at r7521

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7521

  have hnextx : seg48BlindDeltaX196 rho =
      seg48BlindDeltaX195 rho + rho 40276 := by
    unfold seg48BlindDeltaX196 seg48BlindDeltaX195
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 46]

    ring

  have hnexty : seg48BlindDeltaY196 rho =
      seg48BlindDeltaY195 rho + rho 40277 := by
    unfold seg48BlindDeltaY196 seg48BlindDeltaY195
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 46]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 196
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX195 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY195 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX196 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY196 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY195 rho) (rho 40277)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 196)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (7033226505414935809728453247699649254198983826468420616303541913858179390258 : Seg48.F) (2532552902178607999355399383107160906073217720946833384503303324915775657262 : Seg48.F)
    (1121317658165173384835027692025263628896302212261190172871611782856545808479 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (159972499471161683226141830651939820625937330801826475157833509385490017356 : Seg48.F) (889344209890450458886721940910110142040239231044373030628454235548509460521 : Seg48.F)
    (1744946012703359804205378596564623655474306445177260178979160388767327552813 : Seg48.F) (4959782277533719432919392301145785066008674030300801316071562549820147524464 : Seg48.F)
    (5911908847249762424893425555674385625302681614207230443431930131001633581779 : Seg48.F) (1411235244013434614520371691081897277176915508685643211631691542059229848783 : Seg48.F)
    (3484679471894650991329432637635761465367225304853262511863670906097261714577 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX195 rho) (seg48BlindDeltaY195 rho) (rho 39102)
    (rho 40270) (rho 40271) (rho 40272) (rho 40274)
    (rho 40273) (rho 40275) (rho 40276) (rho 40277) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 196)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L196]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX195 seg48BlindDeltaY195;
        first | linear_combination r7514 | linear_combination -r7514)
    (by unfold seg48BlindDeltaX195 seg48BlindDeltaY195;
        first | linear_combination r7515 | linear_combination -r7515)
    (by unfold seg48BlindDeltaX195 seg48BlindDeltaY195;
        first | linear_combination r7516 | linear_combination -r7516)
    (by first | linear_combination r7517 | linear_combination -r7517)
    (by unfold seg48BlindDeltaX195 seg48BlindDeltaY195;
        first | linear_combination r7518 | linear_combination -r7518)
    (by first | linear_combination r7519 | linear_combination -r7519)
    (by unfold seg48BlindDeltaX195; first | linear_combination r7520 | linear_combination -r7520)
    (by unfold seg48BlindDeltaY195; first | linear_combination r7521 | linear_combination -r7521)
    (by linear_combination r6345)

theorem seg48Blind_rows197 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6346 rho ∧ Seg48.relationRow7522 rho ∧ Seg48.relationRow7523 rho ∧ Seg48.relationRow7524 rho ∧ Seg48.relationRow7525 rho ∧ Seg48.relationRow7526 rho ∧ Seg48.relationRow7527 rho ∧ Seg48.relationRow7528 rho ∧ Seg48.relationRow7529 rho := by
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

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6346, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart94 at p94

  rcases p94 with ⟨_, _, r7522, r7523, r7524, r7525, r7526, r7527, r7528, r7529, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6346, r7522, r7523, r7524, r7525, r7526, r7527, r7528, r7529⟩

theorem seg48Blind_rung197 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39103 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 197)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      197 (Bool.toZMod bit) (seg48BlindAccState rho 197)
      (seg48BlindAccState rho 198) := by
  obtain ⟨r6346, r7522, r7523, r7524, r7525, r7526, r7527, r7528, r7529⟩ := seg48Blind_rows197 rho h
  unfold Seg48.relationRow6346 at r6346

  unfold Seg48.relationRow7522 at r7522

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7522

  unfold Seg48.relationRow7523 at r7523

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7523

  unfold Seg48.relationRow7524 at r7524

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7524

  unfold Seg48.relationRow7525 at r7525

  unfold Seg48.relationRow7526 at r7526

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7526

  unfold Seg48.relationRow7527 at r7527

  unfold Seg48.relationRow7528 at r7528

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7528

  unfold Seg48.relationRow7529 at r7529

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7529

  have hnextx : seg48BlindDeltaX197 rho =
      seg48BlindDeltaX196 rho + rho 40284 := by
    unfold seg48BlindDeltaX197 seg48BlindDeltaX196
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 47]

    ring

  have hnexty : seg48BlindDeltaY197 rho =
      seg48BlindDeltaY196 rho + rho 40285 := by
    unfold seg48BlindDeltaY197 seg48BlindDeltaY196
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 47]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 197
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX196 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY196 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX197 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY197 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY196 rho) (rho 40285)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 197)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (1287811907937307797322206503857689576857462357949847351868008167510510354195 : Seg48.F) (2939412043880705116914549657537370999037035682997305022831277955059888969285 : Seg48.F)
    (4227223951818012914236756161395060575894498040947152374699286122570399323480 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (4834485914392842313339504760992383614814597087937390813360340066727465977894 : Seg48.F) (4247903498688423199534134705096608045797863838610849994701913573296089218708 : Seg48.F)
    (8422332758588264717161581845639255967478228743291154791017212862493824457737 : Seg48.F) (8172166040961695728421806900328020423030021832888885709746286315834019511595 : Seg48.F)
    (5505049705547665307334275281244175532338863652156758805103955500857520269756 : Seg48.F) (7156649841491062626926618434923856954518436977204216476067225288406898884846 : Seg48.F)
    (272295708466674695827018038453526108345877502265178118188947140083389727446 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX196 rho) (seg48BlindDeltaY196 rho) (rho 39103)
    (rho 40278) (rho 40279) (rho 40280) (rho 40282)
    (rho 40281) (rho 40283) (rho 40284) (rho 40285) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 197)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L197]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX196 seg48BlindDeltaY196;
        first | linear_combination r7522 | linear_combination -r7522)
    (by unfold seg48BlindDeltaX196 seg48BlindDeltaY196;
        first | linear_combination r7523 | linear_combination -r7523)
    (by unfold seg48BlindDeltaX196 seg48BlindDeltaY196;
        first | linear_combination r7524 | linear_combination -r7524)
    (by first | linear_combination r7525 | linear_combination -r7525)
    (by unfold seg48BlindDeltaX196 seg48BlindDeltaY196;
        first | linear_combination r7526 | linear_combination -r7526)
    (by first | linear_combination r7527 | linear_combination -r7527)
    (by unfold seg48BlindDeltaX196; first | linear_combination r7528 | linear_combination -r7528)
    (by unfold seg48BlindDeltaY196; first | linear_combination r7529 | linear_combination -r7529)
    (by linear_combination r6346)

theorem seg48Blind_rows198 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6347 rho ∧ Seg48.relationRow7530 rho ∧ Seg48.relationRow7531 rho ∧ Seg48.relationRow7532 rho ∧ Seg48.relationRow7533 rho ∧ Seg48.relationRow7534 rho ∧ Seg48.relationRow7535 rho ∧ Seg48.relationRow7536 rho ∧ Seg48.relationRow7537 rho := by
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

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6347, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, r7530, r7531, r7532, r7533, r7534, r7535, r7536, r7537, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6347, r7530, r7531, r7532, r7533, r7534, r7535, r7536, r7537⟩

theorem seg48Blind_rung198 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39104 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 198)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      198 (Bool.toZMod bit) (seg48BlindAccState rho 198)
      (seg48BlindAccState rho 199) := by
  obtain ⟨r6347, r7530, r7531, r7532, r7533, r7534, r7535, r7536, r7537⟩ := seg48Blind_rows198 rho h
  unfold Seg48.relationRow6347 at r6347

  unfold Seg48.relationRow7530 at r7530

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7530

  unfold Seg48.relationRow7531 at r7531

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7531

  unfold Seg48.relationRow7532 at r7532

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7532

  unfold Seg48.relationRow7533 at r7533

  unfold Seg48.relationRow7534 at r7534

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7534

  unfold Seg48.relationRow7535 at r7535

  unfold Seg48.relationRow7536 at r7536

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7536

  unfold Seg48.relationRow7537 at r7537

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7537

  have hnextx : seg48BlindDeltaX198 rho =
      seg48BlindDeltaX197 rho + rho 40292 := by
    unfold seg48BlindDeltaX198 seg48BlindDeltaX197
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 48]

    ring

  have hnexty : seg48BlindDeltaY198 rho =
      seg48BlindDeltaY197 rho + rho 40293 := by
    unfold seg48BlindDeltaY198 seg48BlindDeltaY197
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 48]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 198
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX197 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY197 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX198 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY198 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY197 rho) (rho 40293)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 198)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (1189785845959812492681481939094349700657637573249984492101068248967037471045 : Seg48.F) (313065814926456601259847752896291272836620104337514703885056590706326326606 : Seg48.F)
    (1502851660886269093941329691990640973494257677587499195986124839673363797651 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (8436572706276275314380493294944270256704509001530835535945046916979407143175 : Seg48.F) (1602782074949261827795561264723734697894838837521197630438188003049246203409 : Seg48.F)
    (6751606183813397713597296114152273309656750207528415013862084614103750643323 : Seg48.F) (1360092137943693216229474947106632950727185500916475945190576124046937278243 : Seg48.F)
    (8131395934501913822988977185885255258539279230816549124050176865211082912435 : Seg48.F) (7254675903468557931567342999687196830718261761904079335834165206950371767996 : Seg48.F)
    (7084369611484677208019349991674913580648713834237587882744657331870471960798 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX197 rho) (seg48BlindDeltaY197 rho) (rho 39104)
    (rho 40286) (rho 40287) (rho 40288) (rho 40290)
    (rho 40289) (rho 40291) (rho 40292) (rho 40293) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 198)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L198]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX197 seg48BlindDeltaY197;
        first | linear_combination r7530 | linear_combination -r7530)
    (by unfold seg48BlindDeltaX197 seg48BlindDeltaY197;
        first | linear_combination r7531 | linear_combination -r7531)
    (by unfold seg48BlindDeltaX197 seg48BlindDeltaY197;
        first | linear_combination r7532 | linear_combination -r7532)
    (by first | linear_combination r7533 | linear_combination -r7533)
    (by unfold seg48BlindDeltaX197 seg48BlindDeltaY197;
        first | linear_combination r7534 | linear_combination -r7534)
    (by first | linear_combination r7535 | linear_combination -r7535)
    (by unfold seg48BlindDeltaX197; first | linear_combination r7536 | linear_combination -r7536)
    (by unfold seg48BlindDeltaY197; first | linear_combination r7537 | linear_combination -r7537)
    (by linear_combination r6347)

theorem seg48Blind_rows199 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6348 rho ∧ Seg48.relationRow7538 rho ∧ Seg48.relationRow7539 rho ∧ Seg48.relationRow7540 rho ∧ Seg48.relationRow7541 rho ∧ Seg48.relationRow7542 rho ∧ Seg48.relationRow7543 rho ∧ Seg48.relationRow7544 rho ∧ Seg48.relationRow7545 rho := by
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

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6348, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7538, r7539, r7540, r7541, r7542, r7543, r7544, r7545, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6348, r7538, r7539, r7540, r7541, r7542, r7543, r7544, r7545⟩

theorem seg48Blind_rung199 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39105 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 199)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      199 (Bool.toZMod bit) (seg48BlindAccState rho 199)
      (seg48BlindAccState rho 200) := by
  obtain ⟨r6348, r7538, r7539, r7540, r7541, r7542, r7543, r7544, r7545⟩ := seg48Blind_rows199 rho h
  unfold Seg48.relationRow6348 at r6348

  unfold Seg48.relationRow7538 at r7538

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7538

  unfold Seg48.relationRow7539 at r7539

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7539

  unfold Seg48.relationRow7540 at r7540

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7540

  unfold Seg48.relationRow7541 at r7541

  unfold Seg48.relationRow7542 at r7542

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7542

  unfold Seg48.relationRow7543 at r7543

  unfold Seg48.relationRow7544 at r7544

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7544

  unfold Seg48.relationRow7545 at r7545

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7545

  have hnextx : seg48BlindDeltaX199 rho =
      seg48BlindDeltaX198 rho + rho 40300 := by
    unfold seg48BlindDeltaX199 seg48BlindDeltaX198
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 49]

    ring

  have hnexty : seg48BlindDeltaY199 rho =
      seg48BlindDeltaY198 rho + rho 40301 := by
    unfold seg48BlindDeltaY199 seg48BlindDeltaY198
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 49]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 199
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX198 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY198 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX199 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY199 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY198 rho) (rho 40301)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 199)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (3551123497965750934797699834002404728361160069706598447696579925198710334471 : Seg48.F) (3002030520192283727479249997399438260283975122815343265517649215638558877392 : Seg48.F)
    (6553154018158034662276949831401842988645135192521941713214229140837269211863 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (8226744364247675495825082831103556151548859404841517754312782244706255110239 : Seg48.F) (4248897056721397889874420512898227115066472860817192579095222727956920142414 : Seg48.F)
    (560917769939457241020240338036935902182861430632256579106756322648974055852 : Seg48.F) (394608995391631743646835811120684804941058223995902180862129118204390264326 : Seg48.F)
    (5442431229236086696769574941382108271091924212338720562417584240278850361649 : Seg48.F) (4893338251462619489451125104779141803014739265447465380238653530718698904570 : Seg48.F)
    (8049852754036738680601989127660861726434841111158161647073104337713018974715 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX198 rho) (seg48BlindDeltaY198 rho) (rho 39105)
    (rho 40294) (rho 40295) (rho 40296) (rho 40298)
    (rho 40297) (rho 40299) (rho 40300) (rho 40301) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 199)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L199]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX198 seg48BlindDeltaY198;
        first | linear_combination r7538 | linear_combination -r7538)
    (by unfold seg48BlindDeltaX198 seg48BlindDeltaY198;
        first | linear_combination r7539 | linear_combination -r7539)
    (by unfold seg48BlindDeltaX198 seg48BlindDeltaY198;
        first | linear_combination r7540 | linear_combination -r7540)
    (by first | linear_combination r7541 | linear_combination -r7541)
    (by unfold seg48BlindDeltaX198 seg48BlindDeltaY198;
        first | linear_combination r7542 | linear_combination -r7542)
    (by first | linear_combination r7543 | linear_combination -r7543)
    (by unfold seg48BlindDeltaX198; first | linear_combination r7544 | linear_combination -r7544)
    (by unfold seg48BlindDeltaY198; first | linear_combination r7545 | linear_combination -r7545)
    (by linear_combination r6348)

theorem seg48Blind_rows200 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6349 rho ∧ Seg48.relationRow7546 rho ∧ Seg48.relationRow7547 rho ∧ Seg48.relationRow7548 rho ∧ Seg48.relationRow7549 rho ∧ Seg48.relationRow7550 rho ∧ Seg48.relationRow7551 rho ∧ Seg48.relationRow7552 rho ∧ Seg48.relationRow7553 rho := by
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

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6349, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7546, r7547, r7548, r7549, r7550, r7551, r7552, r7553, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6349, r7546, r7547, r7548, r7549, r7550, r7551, r7552, r7553⟩

theorem seg48Blind_rung200 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39106 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 200)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      200 (Bool.toZMod bit) (seg48BlindAccState rho 200)
      (seg48BlindAccState rho 201) := by
  obtain ⟨r6349, r7546, r7547, r7548, r7549, r7550, r7551, r7552, r7553⟩ := seg48Blind_rows200 rho h
  unfold Seg48.relationRow6349 at r6349

  unfold Seg48.relationRow7546 at r7546

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7546

  unfold Seg48.relationRow7547 at r7547

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7547

  unfold Seg48.relationRow7548 at r7548

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7548

  unfold Seg48.relationRow7549 at r7549

  unfold Seg48.relationRow7550 at r7550

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7550

  unfold Seg48.relationRow7551 at r7551

  unfold Seg48.relationRow7552 at r7552

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7552

  unfold Seg48.relationRow7553 at r7553

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7553

  have hnextx : seg48BlindDeltaX200 rho =
      seg48BlindDeltaX199 rho + rho 40308 := by
    unfold seg48BlindDeltaX200 seg48BlindDeltaX199
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 50]

    ring

  have hnexty : seg48BlindDeltaY200 rho =
      seg48BlindDeltaY199 rho + rho 40309 := by
    unfold seg48BlindDeltaY200 seg48BlindDeltaY199
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 50]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 200
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX199 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY199 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX200 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY200 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY199 rho) (rho 40309)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 200)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (237407082182476649271201308514110417937957700889391563201001451196613456842 : Seg48.F) (961186733346023561115570340324357733199172280018292165698470412330626102152 : Seg48.F)
    (1198593815528500210386771648838468151137129980907683728899471863527239558994 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (7294741384406122612791044117814251732765985977416739593294040271150085610129 : Seg48.F) (8280214252583025169891409716798129779029250702630506565416096652795038393465 : Seg48.F)
    (4440596737623467634352615922521817381278024270263026038921952693420240567282 : Seg48.F) (429353156714312750522287818459088917432687562358820428081310804626925562691 : Seg48.F)
    (7483275016082346863133254598457188798176727055135771662236763043586783136889 : Seg48.F) (8207054667245893774977623630267436113437941634264672264734232004720795782199 : Seg48.F)
    (8015108592714057673726537120322457613943211772795243399853922651290483676350 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX199 rho) (seg48BlindDeltaY199 rho) (rho 39106)
    (rho 40302) (rho 40303) (rho 40304) (rho 40306)
    (rho 40305) (rho 40307) (rho 40308) (rho 40309) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 200)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L200]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX199 seg48BlindDeltaY199;
        first | linear_combination r7546 | linear_combination -r7546)
    (by unfold seg48BlindDeltaX199 seg48BlindDeltaY199;
        first | linear_combination r7547 | linear_combination -r7547)
    (by unfold seg48BlindDeltaX199 seg48BlindDeltaY199;
        first | linear_combination r7548 | linear_combination -r7548)
    (by first | linear_combination r7549 | linear_combination -r7549)
    (by unfold seg48BlindDeltaX199 seg48BlindDeltaY199;
        first | linear_combination r7550 | linear_combination -r7550)
    (by first | linear_combination r7551 | linear_combination -r7551)
    (by unfold seg48BlindDeltaX199; first | linear_combination r7552 | linear_combination -r7552)
    (by unfold seg48BlindDeltaY199; first | linear_combination r7553 | linear_combination -r7553)
    (by linear_combination r6349)

theorem seg48Blind_hstep_c19 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 191 ≤ i → i < 201 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung191 rho h bits[191]! (hbitAt 191 (by omega)) hacc
  · exact seg48Blind_rung192 rho h bits[192]! (hbitAt 192 (by omega)) hacc
  · exact seg48Blind_rung193 rho h bits[193]! (hbitAt 193 (by omega)) hacc
  · exact seg48Blind_rung194 rho h bits[194]! (hbitAt 194 (by omega)) hacc
  · exact seg48Blind_rung195 rho h bits[195]! (hbitAt 195 (by omega)) hacc
  · exact seg48Blind_rung196 rho h bits[196]! (hbitAt 196 (by omega)) hacc
  · exact seg48Blind_rung197 rho h bits[197]! (hbitAt 197 (by omega)) hacc
  · exact seg48Blind_rung198 rho h bits[198]! (hbitAt 198 (by omega)) hacc
  · exact seg48Blind_rung199 rho h bits[199]! (hbitAt 199 (by omega)) hacc
  · exact seg48Blind_rung200 rho h bits[200]! (hbitAt 200 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

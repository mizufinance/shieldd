import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows191 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6980 rho ∧ Seg52.relationRow8114 rho ∧ Seg52.relationRow8115 rho ∧ Seg52.relationRow8116 rho ∧ Seg52.relationRow8117 rho ∧ Seg52.relationRow8118 rho ∧ Seg52.relationRow8119 rho ∧ Seg52.relationRow8120 rho ∧ Seg52.relationRow8121 rho := by
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

    _, p101, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6980, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart101 at p101

  rcases p101 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8114, r8115, r8116, r8117, r8118, r8119, r8120, r8121, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6980, r8114, r8115, r8116, r8117, r8118, r8119, r8120, r8121⟩

theorem seg52Blind_rung191 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51369 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 191)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      191 (Bool.toZMod bit) (seg52BlindAccState rho 191)
      (seg52BlindAccState rho 192) := by
  obtain ⟨r6980, r8114, r8115, r8116, r8117, r8118, r8119, r8120, r8121⟩ := seg52Blind_rows191 rho h
  unfold Seg52.relationRow6980 at r6980

  unfold Seg52.relationRow8114 at r8114

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8114

  unfold Seg52.relationRow8115 at r8115

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8115

  unfold Seg52.relationRow8116 at r8116

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8116

  unfold Seg52.relationRow8117 at r8117

  unfold Seg52.relationRow8118 at r8118

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8118

  unfold Seg52.relationRow8119 at r8119

  unfold Seg52.relationRow8120 at r8120

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8120

  unfold Seg52.relationRow8121 at r8121

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8121

  have hnextx : seg52BlindDeltaX191 rho =
      seg52BlindDeltaX190 rho + rho 52508 := by
    unfold seg52BlindDeltaX191 seg52BlindDeltaX190
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 41]

    ring

  have hnexty : seg52BlindDeltaY191 rho =
      seg52BlindDeltaY190 rho + rho 52509 := by
    unfold seg52BlindDeltaY191 seg52BlindDeltaY190
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 41]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 191
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX190 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY190 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX191 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY191 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY190 rho) (rho 52509)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 191)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7795627490918527138041161579809081456452436047591391680037266100603945016815 : Seg52.F) (3189572002925575920347648111790343103502172016293966354214985046616570335139 : Seg52.F)
    (2540737744415732634139984752817878028578708728731294206317017691303106112913 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (566164740394201302335690568881923380160519813285528409368452626895040709138 : Seg52.F) (559200741045195250524530251089018769402279419388473271726665058493386012757 : Seg52.F)
    (7316742360078395850510735121132322818658676912321782356138261176337704907294 : Seg52.F) (6162487642510414456944286869074828711181403113579895600869964336802651405238 : Seg52.F)
    (5254889746502794503901176826991203427873727318860097473720248409300838903902 : Seg52.F) (648834258509843286207663358972465074923463287562672147897967355313464222226 : Seg52.F)
    (2281974106917955967304538069706717820194496221574168227065269119114757833803 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX190 rho) (seg52BlindDeltaY190 rho) (rho 51369)
    (rho 52502) (rho 52503) (rho 52504) (rho 52506)
    (rho 52505) (rho 52507) (rho 52508) (rho 52509) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 191)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L191]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX190 seg52BlindDeltaY190;
        first | linear_combination r8114 | linear_combination -r8114)
    (by unfold seg52BlindDeltaX190 seg52BlindDeltaY190;
        first | linear_combination r8115 | linear_combination -r8115)
    (by unfold seg52BlindDeltaX190 seg52BlindDeltaY190;
        first | linear_combination r8116 | linear_combination -r8116)
    (by first | linear_combination r8117 | linear_combination -r8117)
    (by unfold seg52BlindDeltaX190 seg52BlindDeltaY190;
        first | linear_combination r8118 | linear_combination -r8118)
    (by first | linear_combination r8119 | linear_combination -r8119)
    (by unfold seg52BlindDeltaX190; first | linear_combination r8120 | linear_combination -r8120)
    (by unfold seg52BlindDeltaY190; first | linear_combination r8121 | linear_combination -r8121)
    (by linear_combination r6980)

theorem seg52Blind_rows192 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6981 rho ∧ Seg52.relationRow8122 rho ∧ Seg52.relationRow8123 rho ∧ Seg52.relationRow8124 rho ∧ Seg52.relationRow8125 rho ∧ Seg52.relationRow8126 rho ∧ Seg52.relationRow8127 rho ∧ Seg52.relationRow8128 rho ∧ Seg52.relationRow8129 rho := by
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

    _, p101, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6981, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart101 at p101

  rcases p101 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8122, r8123, r8124, r8125, r8126, r8127, r8128, r8129, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6981, r8122, r8123, r8124, r8125, r8126, r8127, r8128, r8129⟩

theorem seg52Blind_rung192 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51370 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 192)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      192 (Bool.toZMod bit) (seg52BlindAccState rho 192)
      (seg52BlindAccState rho 193) := by
  obtain ⟨r6981, r8122, r8123, r8124, r8125, r8126, r8127, r8128, r8129⟩ := seg52Blind_rows192 rho h
  unfold Seg52.relationRow6981 at r6981

  unfold Seg52.relationRow8122 at r8122

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8122

  unfold Seg52.relationRow8123 at r8123

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8123

  unfold Seg52.relationRow8124 at r8124

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8124

  unfold Seg52.relationRow8125 at r8125

  unfold Seg52.relationRow8126 at r8126

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8126

  unfold Seg52.relationRow8127 at r8127

  unfold Seg52.relationRow8128 at r8128

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8128

  unfold Seg52.relationRow8129 at r8129

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8129

  have hnextx : seg52BlindDeltaX192 rho =
      seg52BlindDeltaX191 rho + rho 52516 := by
    unfold seg52BlindDeltaX192 seg52BlindDeltaX191
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 42]

    ring

  have hnexty : seg52BlindDeltaY192 rho =
      seg52BlindDeltaY191 rho + rho 52517 := by
    unfold seg52BlindDeltaY192 seg52BlindDeltaY191
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 42]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 192
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX191 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY191 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX192 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY192 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY191 rho) (rho 52517)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 192)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (2201443287703118336923186320266692790412732967462530460839825374398628917893 : Seg52.F) (6846513832253225230347721765363986944279063983096280693769125028585801189149 : Seg52.F)
    (603495370527973143022083146849133203315897615404747326673716947067020868001 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2831462886914251895095178088597103327474821141561661263139977815970166007720 : Seg52.F) (6629768296966429689160763288732932376564175026205222742192023532947073032112 : Seg52.F)
    (7160083176997050742282765130665319097078478313482009216028559646455803224278 : Seg52.F) (1230749160449538127066993612358232434647795025110371274904304972532004703188 : Seg52.F)
    (1597947917175145193901103173417559587096835352057783134166108427331608049892 : Seg52.F) (6243018461725252087325638618514853740963166367691533367095408081518780321148 : Seg52.F)
    (7213712588978832297181831326423314096728104310043692553030928483385404535853 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX191 rho) (seg52BlindDeltaY191 rho) (rho 51370)
    (rho 52510) (rho 52511) (rho 52512) (rho 52514)
    (rho 52513) (rho 52515) (rho 52516) (rho 52517) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 192)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L192]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX191 seg52BlindDeltaY191;
        first | linear_combination r8122 | linear_combination -r8122)
    (by unfold seg52BlindDeltaX191 seg52BlindDeltaY191;
        first | linear_combination r8123 | linear_combination -r8123)
    (by unfold seg52BlindDeltaX191 seg52BlindDeltaY191;
        first | linear_combination r8124 | linear_combination -r8124)
    (by first | linear_combination r8125 | linear_combination -r8125)
    (by unfold seg52BlindDeltaX191 seg52BlindDeltaY191;
        first | linear_combination r8126 | linear_combination -r8126)
    (by first | linear_combination r8127 | linear_combination -r8127)
    (by unfold seg52BlindDeltaX191; first | linear_combination r8128 | linear_combination -r8128)
    (by unfold seg52BlindDeltaY191; first | linear_combination r8129 | linear_combination -r8129)
    (by linear_combination r6981)

theorem seg52Blind_rows193 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6982 rho ∧ Seg52.relationRow8130 rho ∧ Seg52.relationRow8131 rho ∧ Seg52.relationRow8132 rho ∧ Seg52.relationRow8133 rho ∧ Seg52.relationRow8134 rho ∧ Seg52.relationRow8135 rho ∧ Seg52.relationRow8136 rho ∧ Seg52.relationRow8137 rho := by
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

    _, p101, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6982, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart101 at p101

  rcases p101 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8130, r8131, r8132, r8133, r8134, r8135, r8136, r8137, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6982, r8130, r8131, r8132, r8133, r8134, r8135, r8136, r8137⟩

theorem seg52Blind_rung193 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51371 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 193)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      193 (Bool.toZMod bit) (seg52BlindAccState rho 193)
      (seg52BlindAccState rho 194) := by
  obtain ⟨r6982, r8130, r8131, r8132, r8133, r8134, r8135, r8136, r8137⟩ := seg52Blind_rows193 rho h
  unfold Seg52.relationRow6982 at r6982

  unfold Seg52.relationRow8130 at r8130

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8130

  unfold Seg52.relationRow8131 at r8131

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8131

  unfold Seg52.relationRow8132 at r8132

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8132

  unfold Seg52.relationRow8133 at r8133

  unfold Seg52.relationRow8134 at r8134

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8134

  unfold Seg52.relationRow8135 at r8135

  unfold Seg52.relationRow8136 at r8136

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8136

  unfold Seg52.relationRow8137 at r8137

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8137

  have hnextx : seg52BlindDeltaX193 rho =
      seg52BlindDeltaX192 rho + rho 52524 := by
    unfold seg52BlindDeltaX193 seg52BlindDeltaX192
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 43]

    ring

  have hnexty : seg52BlindDeltaY193 rho =
      seg52BlindDeltaY192 rho + rho 52525 := by
    unfold seg52BlindDeltaY193 seg52BlindDeltaY192
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 43]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 193
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX192 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY192 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX193 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY193 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY192 rho) (rho 52525)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 193)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (8379505003927404927120020956400071289170845704972341444623697570956102475621 : Seg52.F) (8222636974042191456093926116742032547305962112844880315099558006378415146841 : Seg52.F)
    (8157680228541225958965122134360557305100908482663157931788022121417108383421 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5424293512622971143956653721151976634791598216281713958243143416091586587080 : Seg52.F) (1159492356918577458388895628832242118290019297883964640947573388330292787616 : Seg52.F)
    (7398689112597503690364031459430454241780594976319482742382007271263098015962 : Seg52.F) (5425623735987271667172610899632063110025184545561162617297158795099787645232 : Seg52.F)
    (221824775386178968154898822039513984069937222309183512835675449538994092200 : Seg52.F) (64956745500965497128803982381475242205053630181722383311535884961306763420 : Seg52.F)
    (3018838013441098757076214039149483421350714789592901210638074660817621593809 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX192 rho) (seg52BlindDeltaY192 rho) (rho 51371)
    (rho 52518) (rho 52519) (rho 52520) (rho 52522)
    (rho 52521) (rho 52523) (rho 52524) (rho 52525) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 193)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L193]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX192 seg52BlindDeltaY192;
        first | linear_combination r8130 | linear_combination -r8130)
    (by unfold seg52BlindDeltaX192 seg52BlindDeltaY192;
        first | linear_combination r8131 | linear_combination -r8131)
    (by unfold seg52BlindDeltaX192 seg52BlindDeltaY192;
        first | linear_combination r8132 | linear_combination -r8132)
    (by first | linear_combination r8133 | linear_combination -r8133)
    (by unfold seg52BlindDeltaX192 seg52BlindDeltaY192;
        first | linear_combination r8134 | linear_combination -r8134)
    (by first | linear_combination r8135 | linear_combination -r8135)
    (by unfold seg52BlindDeltaX192; first | linear_combination r8136 | linear_combination -r8136)
    (by unfold seg52BlindDeltaY192; first | linear_combination r8137 | linear_combination -r8137)
    (by linear_combination r6982)

theorem seg52Blind_rows194 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6983 rho ∧ Seg52.relationRow8138 rho ∧ Seg52.relationRow8139 rho ∧ Seg52.relationRow8140 rho ∧ Seg52.relationRow8141 rho ∧ Seg52.relationRow8142 rho ∧ Seg52.relationRow8143 rho ∧ Seg52.relationRow8144 rho ∧ Seg52.relationRow8145 rho := by
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

    _, p101, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6983, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart101 at p101

  rcases p101 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8138, r8139, r8140, r8141, r8142, r8143, r8144, r8145, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6983, r8138, r8139, r8140, r8141, r8142, r8143, r8144, r8145⟩

theorem seg52Blind_rung194 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51372 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 194)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      194 (Bool.toZMod bit) (seg52BlindAccState rho 194)
      (seg52BlindAccState rho 195) := by
  obtain ⟨r6983, r8138, r8139, r8140, r8141, r8142, r8143, r8144, r8145⟩ := seg52Blind_rows194 rho h
  unfold Seg52.relationRow6983 at r6983

  unfold Seg52.relationRow8138 at r8138

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8138

  unfold Seg52.relationRow8139 at r8139

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8139

  unfold Seg52.relationRow8140 at r8140

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8140

  unfold Seg52.relationRow8141 at r8141

  unfold Seg52.relationRow8142 at r8142

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8142

  unfold Seg52.relationRow8143 at r8143

  unfold Seg52.relationRow8144 at r8144

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8144

  unfold Seg52.relationRow8145 at r8145

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8145

  have hnextx : seg52BlindDeltaX194 rho =
      seg52BlindDeltaX193 rho + rho 52532 := by
    unfold seg52BlindDeltaX194 seg52BlindDeltaX193
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 44]

    ring

  have hnexty : seg52BlindDeltaY194 rho =
      seg52BlindDeltaY193 rho + rho 52533 := by
    unfold seg52BlindDeltaY194 seg52BlindDeltaY193
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 44]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 194
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX193 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY193 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX194 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY194 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY193 rho) (rho 52533)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 194)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (6444490698300857073481181944246794033469722497984396226284135138276924131970 : Seg52.F) (8198823652717836620711767586720711280439202192284079120380256009977844066466 : Seg52.F)
    (6198852601590323269944124592185958782533025355114411518729157692337358959395 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (1039943787173976848446334036992801681317072883333815334713679937305626686533 : Seg52.F) (7763323733134130071288516841185356454533071645192017275536901946325694198167 : Seg52.F)
    (5978637330494813918645192268005069037660298137679939836064151660217248578339 : Seg52.F) (3745004071372151816914715129910381229435807440401535650340004072402749506166 : Seg52.F)
    (245638096710533803537057352060835250936697142869984707554977445939565172575 : Seg52.F) (1999971051127513350767642994534752497906176837169667601651098317640485107071 : Seg52.F)
    (4699457678056218607334109808871165301940091894752528177595229383514659732875 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX193 rho) (seg52BlindDeltaY193 rho) (rho 51372)
    (rho 52526) (rho 52527) (rho 52528) (rho 52530)
    (rho 52529) (rho 52531) (rho 52532) (rho 52533) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 194)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L194]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX193 seg52BlindDeltaY193;
        first | linear_combination r8138 | linear_combination -r8138)
    (by unfold seg52BlindDeltaX193 seg52BlindDeltaY193;
        first | linear_combination r8139 | linear_combination -r8139)
    (by unfold seg52BlindDeltaX193 seg52BlindDeltaY193;
        first | linear_combination r8140 | linear_combination -r8140)
    (by first | linear_combination r8141 | linear_combination -r8141)
    (by unfold seg52BlindDeltaX193 seg52BlindDeltaY193;
        first | linear_combination r8142 | linear_combination -r8142)
    (by first | linear_combination r8143 | linear_combination -r8143)
    (by unfold seg52BlindDeltaX193; first | linear_combination r8144 | linear_combination -r8144)
    (by unfold seg52BlindDeltaY193; first | linear_combination r8145 | linear_combination -r8145)
    (by linear_combination r6983)

theorem seg52Blind_rows195 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6984 rho ∧ Seg52.relationRow8146 rho ∧ Seg52.relationRow8147 rho ∧ Seg52.relationRow8148 rho ∧ Seg52.relationRow8149 rho ∧ Seg52.relationRow8150 rho ∧ Seg52.relationRow8151 rho ∧ Seg52.relationRow8152 rho ∧ Seg52.relationRow8153 rho := by
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

    _, p101, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6984, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart101 at p101

  rcases p101 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8146, r8147, r8148, r8149, r8150, r8151, r8152, r8153, _, _, _, _, _, _⟩

  exact ⟨r6984, r8146, r8147, r8148, r8149, r8150, r8151, r8152, r8153⟩

theorem seg52Blind_rung195 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51373 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 195)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      195 (Bool.toZMod bit) (seg52BlindAccState rho 195)
      (seg52BlindAccState rho 196) := by
  obtain ⟨r6984, r8146, r8147, r8148, r8149, r8150, r8151, r8152, r8153⟩ := seg52Blind_rows195 rho h
  unfold Seg52.relationRow6984 at r6984

  unfold Seg52.relationRow8146 at r8146

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8146

  unfold Seg52.relationRow8147 at r8147

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8147

  unfold Seg52.relationRow8148 at r8148

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8148

  unfold Seg52.relationRow8149 at r8149

  unfold Seg52.relationRow8150 at r8150

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8150

  unfold Seg52.relationRow8151 at r8151

  unfold Seg52.relationRow8152 at r8152

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8152

  unfold Seg52.relationRow8153 at r8153

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8153

  have hnextx : seg52BlindDeltaX195 rho =
      seg52BlindDeltaX194 rho + rho 52540 := by
    unfold seg52BlindDeltaX195 seg52BlindDeltaX194
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 45]

    ring

  have hnexty : seg52BlindDeltaY195 rho =
      seg52BlindDeltaY194 rho + rho 52541 := by
    unfold seg52BlindDeltaY195 seg52BlindDeltaY194
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 45]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 195
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX194 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY194 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX195 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY195 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY194 rho) (rho 52541)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 195)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (534543527702324573819012140335261053705566569841713933263725786904339161184 : Seg52.F) (6217973748861355706774664776848221649695057456414935984473422092483830200013 : Seg52.F)
    (6752517276563680280593676917183482703400624026256649917737147879388169361197 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4015764581459766636875627008318117948768454446883655766248935433332886612089 : Seg52.F) (3157768499214601969918244417310321822715768325365981343453183964039078504438 : Seg52.F)
    (6659275747808960082924259503299544426670642258395145597892705017474190829857 : Seg52.F) (1704336021480828285432287185509947710912034594408787045894785211655744122702 : Seg52.F)
    (2226488000567014717474160161933324881680841878739127843461811363433579039028 : Seg52.F) (7909918221726045850429812798446285477670332765312349894671507669013070077857 : Seg52.F)
    (6740125727947542138816537753271598820463864740745276782040448244261665116339 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX194 rho) (seg52BlindDeltaY194 rho) (rho 51373)
    (rho 52534) (rho 52535) (rho 52536) (rho 52538)
    (rho 52537) (rho 52539) (rho 52540) (rho 52541) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 195)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L195]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX194 seg52BlindDeltaY194;
        first | linear_combination r8146 | linear_combination -r8146)
    (by unfold seg52BlindDeltaX194 seg52BlindDeltaY194;
        first | linear_combination r8147 | linear_combination -r8147)
    (by unfold seg52BlindDeltaX194 seg52BlindDeltaY194;
        first | linear_combination r8148 | linear_combination -r8148)
    (by first | linear_combination r8149 | linear_combination -r8149)
    (by unfold seg52BlindDeltaX194 seg52BlindDeltaY194;
        first | linear_combination r8150 | linear_combination -r8150)
    (by first | linear_combination r8151 | linear_combination -r8151)
    (by unfold seg52BlindDeltaX194; first | linear_combination r8152 | linear_combination -r8152)
    (by unfold seg52BlindDeltaY194; first | linear_combination r8153 | linear_combination -r8153)
    (by linear_combination r6984)

theorem seg52Blind_rows196 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6985 rho ∧ Seg52.relationRow8154 rho ∧ Seg52.relationRow8155 rho ∧ Seg52.relationRow8156 rho ∧ Seg52.relationRow8157 rho ∧ Seg52.relationRow8158 rho ∧ Seg52.relationRow8159 rho ∧ Seg52.relationRow8160 rho ∧ Seg52.relationRow8161 rho := by
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

    _, p101, p102, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6985, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart101 at p101

  rcases p101 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8154, r8155, r8156, r8157, r8158, r8159⟩

  unfold Seg52.relationPart102 at p102

  rcases p102 with ⟨r8160, r8161, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6985, r8154, r8155, r8156, r8157, r8158, r8159, r8160, r8161⟩

theorem seg52Blind_rung196 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51374 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 196)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      196 (Bool.toZMod bit) (seg52BlindAccState rho 196)
      (seg52BlindAccState rho 197) := by
  obtain ⟨r6985, r8154, r8155, r8156, r8157, r8158, r8159, r8160, r8161⟩ := seg52Blind_rows196 rho h
  unfold Seg52.relationRow6985 at r6985

  unfold Seg52.relationRow8154 at r8154

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8154

  unfold Seg52.relationRow8155 at r8155

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8155

  unfold Seg52.relationRow8156 at r8156

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8156

  unfold Seg52.relationRow8157 at r8157

  unfold Seg52.relationRow8158 at r8158

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8158

  unfold Seg52.relationRow8159 at r8159

  unfold Seg52.relationRow8160 at r8160

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8160

  unfold Seg52.relationRow8161 at r8161

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8161

  have hnextx : seg52BlindDeltaX196 rho =
      seg52BlindDeltaX195 rho + rho 52548 := by
    unfold seg52BlindDeltaX196 seg52BlindDeltaX195
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 46]

    ring

  have hnexty : seg52BlindDeltaY196 rho =
      seg52BlindDeltaY195 rho + rho 52549 := by
    unfold seg52BlindDeltaY196 seg52BlindDeltaY195
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 46]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 196
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX195 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY195 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX196 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY196 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY195 rho) (rho 52549)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 196)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7033226505414935809728453247699649254198983826468420616303541913858179390258 : Seg52.F) (2532552902178607999355399383107160906073217720946833384503303324915775657262 : Seg52.F)
    (1121317658165173384835027692025263628896302212261190172871611782856545808479 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (159972499471161683226141830651939820625937330801826475157833509385490017356 : Seg52.F) (889344209890450458886721940910110142040239231044373030628454235548509460521 : Seg52.F)
    (1744946012703359804205378596564623655474306445177260178979160388767327552813 : Seg52.F) (4959782277533719432919392301145785066008674030300801316071562549820147524464 : Seg52.F)
    (5911908847249762424893425555674385625302681614207230443431930131001633581779 : Seg52.F) (1411235244013434614520371691081897277176915508685643211631691542059229848783 : Seg52.F)
    (3484679471894650991329432637635761465367225304853262511863670906097261714577 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX195 rho) (seg52BlindDeltaY195 rho) (rho 51374)
    (rho 52542) (rho 52543) (rho 52544) (rho 52546)
    (rho 52545) (rho 52547) (rho 52548) (rho 52549) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 196)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L196]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX195 seg52BlindDeltaY195;
        first | linear_combination r8154 | linear_combination -r8154)
    (by unfold seg52BlindDeltaX195 seg52BlindDeltaY195;
        first | linear_combination r8155 | linear_combination -r8155)
    (by unfold seg52BlindDeltaX195 seg52BlindDeltaY195;
        first | linear_combination r8156 | linear_combination -r8156)
    (by first | linear_combination r8157 | linear_combination -r8157)
    (by unfold seg52BlindDeltaX195 seg52BlindDeltaY195;
        first | linear_combination r8158 | linear_combination -r8158)
    (by first | linear_combination r8159 | linear_combination -r8159)
    (by unfold seg52BlindDeltaX195; first | linear_combination r8160 | linear_combination -r8160)
    (by unfold seg52BlindDeltaY195; first | linear_combination r8161 | linear_combination -r8161)
    (by linear_combination r6985)

theorem seg52Blind_rows197 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6986 rho ∧ Seg52.relationRow8162 rho ∧ Seg52.relationRow8163 rho ∧ Seg52.relationRow8164 rho ∧ Seg52.relationRow8165 rho ∧ Seg52.relationRow8166 rho ∧ Seg52.relationRow8167 rho ∧ Seg52.relationRow8168 rho ∧ Seg52.relationRow8169 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6986, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart102 at p102

  rcases p102 with ⟨_, _, r8162, r8163, r8164, r8165, r8166, r8167, r8168, r8169, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6986, r8162, r8163, r8164, r8165, r8166, r8167, r8168, r8169⟩

theorem seg52Blind_rung197 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51375 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 197)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      197 (Bool.toZMod bit) (seg52BlindAccState rho 197)
      (seg52BlindAccState rho 198) := by
  obtain ⟨r6986, r8162, r8163, r8164, r8165, r8166, r8167, r8168, r8169⟩ := seg52Blind_rows197 rho h
  unfold Seg52.relationRow6986 at r6986

  unfold Seg52.relationRow8162 at r8162

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8162

  unfold Seg52.relationRow8163 at r8163

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8163

  unfold Seg52.relationRow8164 at r8164

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8164

  unfold Seg52.relationRow8165 at r8165

  unfold Seg52.relationRow8166 at r8166

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8166

  unfold Seg52.relationRow8167 at r8167

  unfold Seg52.relationRow8168 at r8168

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8168

  unfold Seg52.relationRow8169 at r8169

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8169

  have hnextx : seg52BlindDeltaX197 rho =
      seg52BlindDeltaX196 rho + rho 52556 := by
    unfold seg52BlindDeltaX197 seg52BlindDeltaX196
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 47]

    ring

  have hnexty : seg52BlindDeltaY197 rho =
      seg52BlindDeltaY196 rho + rho 52557 := by
    unfold seg52BlindDeltaY197 seg52BlindDeltaY196
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 47]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 197
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX196 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY196 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX197 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY197 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY196 rho) (rho 52557)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 197)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1287811907937307797322206503857689576857462357949847351868008167510510354195 : Seg52.F) (2939412043880705116914549657537370999037035682997305022831277955059888969285 : Seg52.F)
    (4227223951818012914236756161395060575894498040947152374699286122570399323480 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4834485914392842313339504760992383614814597087937390813360340066727465977894 : Seg52.F) (4247903498688423199534134705096608045797863838610849994701913573296089218708 : Seg52.F)
    (8422332758588264717161581845639255967478228743291154791017212862493824457737 : Seg52.F) (8172166040961695728421806900328020423030021832888885709746286315834019511595 : Seg52.F)
    (5505049705547665307334275281244175532338863652156758805103955500857520269756 : Seg52.F) (7156649841491062626926618434923856954518436977204216476067225288406898884846 : Seg52.F)
    (272295708466674695827018038453526108345877502265178118188947140083389727446 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX196 rho) (seg52BlindDeltaY196 rho) (rho 51375)
    (rho 52550) (rho 52551) (rho 52552) (rho 52554)
    (rho 52553) (rho 52555) (rho 52556) (rho 52557) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 197)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L197]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX196 seg52BlindDeltaY196;
        first | linear_combination r8162 | linear_combination -r8162)
    (by unfold seg52BlindDeltaX196 seg52BlindDeltaY196;
        first | linear_combination r8163 | linear_combination -r8163)
    (by unfold seg52BlindDeltaX196 seg52BlindDeltaY196;
        first | linear_combination r8164 | linear_combination -r8164)
    (by first | linear_combination r8165 | linear_combination -r8165)
    (by unfold seg52BlindDeltaX196 seg52BlindDeltaY196;
        first | linear_combination r8166 | linear_combination -r8166)
    (by first | linear_combination r8167 | linear_combination -r8167)
    (by unfold seg52BlindDeltaX196; first | linear_combination r8168 | linear_combination -r8168)
    (by unfold seg52BlindDeltaY196; first | linear_combination r8169 | linear_combination -r8169)
    (by linear_combination r6986)

theorem seg52Blind_rows198 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6987 rho ∧ Seg52.relationRow8170 rho ∧ Seg52.relationRow8171 rho ∧ Seg52.relationRow8172 rho ∧ Seg52.relationRow8173 rho ∧ Seg52.relationRow8174 rho ∧ Seg52.relationRow8175 rho ∧ Seg52.relationRow8176 rho ∧ Seg52.relationRow8177 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6987, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart102 at p102

  rcases p102 with ⟨_, _, _, _, _, _, _, _, _, _, r8170, r8171, r8172, r8173, r8174, r8175, r8176, r8177, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6987, r8170, r8171, r8172, r8173, r8174, r8175, r8176, r8177⟩

theorem seg52Blind_rung198 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51376 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 198)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      198 (Bool.toZMod bit) (seg52BlindAccState rho 198)
      (seg52BlindAccState rho 199) := by
  obtain ⟨r6987, r8170, r8171, r8172, r8173, r8174, r8175, r8176, r8177⟩ := seg52Blind_rows198 rho h
  unfold Seg52.relationRow6987 at r6987

  unfold Seg52.relationRow8170 at r8170

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8170

  unfold Seg52.relationRow8171 at r8171

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8171

  unfold Seg52.relationRow8172 at r8172

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8172

  unfold Seg52.relationRow8173 at r8173

  unfold Seg52.relationRow8174 at r8174

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8174

  unfold Seg52.relationRow8175 at r8175

  unfold Seg52.relationRow8176 at r8176

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8176

  unfold Seg52.relationRow8177 at r8177

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8177

  have hnextx : seg52BlindDeltaX198 rho =
      seg52BlindDeltaX197 rho + rho 52564 := by
    unfold seg52BlindDeltaX198 seg52BlindDeltaX197
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 48]

    ring

  have hnexty : seg52BlindDeltaY198 rho =
      seg52BlindDeltaY197 rho + rho 52565 := by
    unfold seg52BlindDeltaY198 seg52BlindDeltaY197
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 48]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 198
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX197 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY197 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX198 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY198 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY197 rho) (rho 52565)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 198)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1189785845959812492681481939094349700657637573249984492101068248967037471045 : Seg52.F) (313065814926456601259847752896291272836620104337514703885056590706326326606 : Seg52.F)
    (1502851660886269093941329691990640973494257677587499195986124839673363797651 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (8436572706276275314380493294944270256704509001530835535945046916979407143175 : Seg52.F) (1602782074949261827795561264723734697894838837521197630438188003049246203409 : Seg52.F)
    (6751606183813397713597296114152273309656750207528415013862084614103750643323 : Seg52.F) (1360092137943693216229474947106632950727185500916475945190576124046937278243 : Seg52.F)
    (8131395934501913822988977185885255258539279230816549124050176865211082912435 : Seg52.F) (7254675903468557931567342999687196830718261761904079335834165206950371767996 : Seg52.F)
    (7084369611484677208019349991674913580648713834237587882744657331870471960798 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX197 rho) (seg52BlindDeltaY197 rho) (rho 51376)
    (rho 52558) (rho 52559) (rho 52560) (rho 52562)
    (rho 52561) (rho 52563) (rho 52564) (rho 52565) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 198)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L198]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX197 seg52BlindDeltaY197;
        first | linear_combination r8170 | linear_combination -r8170)
    (by unfold seg52BlindDeltaX197 seg52BlindDeltaY197;
        first | linear_combination r8171 | linear_combination -r8171)
    (by unfold seg52BlindDeltaX197 seg52BlindDeltaY197;
        first | linear_combination r8172 | linear_combination -r8172)
    (by first | linear_combination r8173 | linear_combination -r8173)
    (by unfold seg52BlindDeltaX197 seg52BlindDeltaY197;
        first | linear_combination r8174 | linear_combination -r8174)
    (by first | linear_combination r8175 | linear_combination -r8175)
    (by unfold seg52BlindDeltaX197; first | linear_combination r8176 | linear_combination -r8176)
    (by unfold seg52BlindDeltaY197; first | linear_combination r8177 | linear_combination -r8177)
    (by linear_combination r6987)

theorem seg52Blind_rows199 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6988 rho ∧ Seg52.relationRow8178 rho ∧ Seg52.relationRow8179 rho ∧ Seg52.relationRow8180 rho ∧ Seg52.relationRow8181 rho ∧ Seg52.relationRow8182 rho ∧ Seg52.relationRow8183 rho ∧ Seg52.relationRow8184 rho ∧ Seg52.relationRow8185 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6988, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart102 at p102

  rcases p102 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8178, r8179, r8180, r8181, r8182, r8183, r8184, r8185, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6988, r8178, r8179, r8180, r8181, r8182, r8183, r8184, r8185⟩

theorem seg52Blind_rung199 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51377 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 199)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      199 (Bool.toZMod bit) (seg52BlindAccState rho 199)
      (seg52BlindAccState rho 200) := by
  obtain ⟨r6988, r8178, r8179, r8180, r8181, r8182, r8183, r8184, r8185⟩ := seg52Blind_rows199 rho h
  unfold Seg52.relationRow6988 at r6988

  unfold Seg52.relationRow8178 at r8178

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8178

  unfold Seg52.relationRow8179 at r8179

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8179

  unfold Seg52.relationRow8180 at r8180

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8180

  unfold Seg52.relationRow8181 at r8181

  unfold Seg52.relationRow8182 at r8182

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8182

  unfold Seg52.relationRow8183 at r8183

  unfold Seg52.relationRow8184 at r8184

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8184

  unfold Seg52.relationRow8185 at r8185

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8185

  have hnextx : seg52BlindDeltaX199 rho =
      seg52BlindDeltaX198 rho + rho 52572 := by
    unfold seg52BlindDeltaX199 seg52BlindDeltaX198
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 49]

    ring

  have hnexty : seg52BlindDeltaY199 rho =
      seg52BlindDeltaY198 rho + rho 52573 := by
    unfold seg52BlindDeltaY199 seg52BlindDeltaY198
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 49]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 199
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX198 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY198 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX199 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY199 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY198 rho) (rho 52573)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 199)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3551123497965750934797699834002404728361160069706598447696579925198710334471 : Seg52.F) (3002030520192283727479249997399438260283975122815343265517649215638558877392 : Seg52.F)
    (6553154018158034662276949831401842988645135192521941713214229140837269211863 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (8226744364247675495825082831103556151548859404841517754312782244706255110239 : Seg52.F) (4248897056721397889874420512898227115066472860817192579095222727956920142414 : Seg52.F)
    (560917769939457241020240338036935902182861430632256579106756322648974055852 : Seg52.F) (394608995391631743646835811120684804941058223995902180862129118204390264326 : Seg52.F)
    (5442431229236086696769574941382108271091924212338720562417584240278850361649 : Seg52.F) (4893338251462619489451125104779141803014739265447465380238653530718698904570 : Seg52.F)
    (8049852754036738680601989127660861726434841111158161647073104337713018974715 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX198 rho) (seg52BlindDeltaY198 rho) (rho 51377)
    (rho 52566) (rho 52567) (rho 52568) (rho 52570)
    (rho 52569) (rho 52571) (rho 52572) (rho 52573) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 199)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L199]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX198 seg52BlindDeltaY198;
        first | linear_combination r8178 | linear_combination -r8178)
    (by unfold seg52BlindDeltaX198 seg52BlindDeltaY198;
        first | linear_combination r8179 | linear_combination -r8179)
    (by unfold seg52BlindDeltaX198 seg52BlindDeltaY198;
        first | linear_combination r8180 | linear_combination -r8180)
    (by first | linear_combination r8181 | linear_combination -r8181)
    (by unfold seg52BlindDeltaX198 seg52BlindDeltaY198;
        first | linear_combination r8182 | linear_combination -r8182)
    (by first | linear_combination r8183 | linear_combination -r8183)
    (by unfold seg52BlindDeltaX198; first | linear_combination r8184 | linear_combination -r8184)
    (by unfold seg52BlindDeltaY198; first | linear_combination r8185 | linear_combination -r8185)
    (by linear_combination r6988)

theorem seg52Blind_rows200 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6989 rho ∧ Seg52.relationRow8186 rho ∧ Seg52.relationRow8187 rho ∧ Seg52.relationRow8188 rho ∧ Seg52.relationRow8189 rho ∧ Seg52.relationRow8190 rho ∧ Seg52.relationRow8191 rho ∧ Seg52.relationRow8192 rho ∧ Seg52.relationRow8193 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6989, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart102 at p102

  rcases p102 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8186, r8187, r8188, r8189, r8190, r8191, r8192, r8193, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6989, r8186, r8187, r8188, r8189, r8190, r8191, r8192, r8193⟩

theorem seg52Blind_rung200 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51378 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 200)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      200 (Bool.toZMod bit) (seg52BlindAccState rho 200)
      (seg52BlindAccState rho 201) := by
  obtain ⟨r6989, r8186, r8187, r8188, r8189, r8190, r8191, r8192, r8193⟩ := seg52Blind_rows200 rho h
  unfold Seg52.relationRow6989 at r6989

  unfold Seg52.relationRow8186 at r8186

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8186

  unfold Seg52.relationRow8187 at r8187

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8187

  unfold Seg52.relationRow8188 at r8188

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8188

  unfold Seg52.relationRow8189 at r8189

  unfold Seg52.relationRow8190 at r8190

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8190

  unfold Seg52.relationRow8191 at r8191

  unfold Seg52.relationRow8192 at r8192

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8192

  unfold Seg52.relationRow8193 at r8193

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8193

  have hnextx : seg52BlindDeltaX200 rho =
      seg52BlindDeltaX199 rho + rho 52580 := by
    unfold seg52BlindDeltaX200 seg52BlindDeltaX199
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 50]

    ring

  have hnexty : seg52BlindDeltaY200 rho =
      seg52BlindDeltaY199 rho + rho 52581 := by
    unfold seg52BlindDeltaY200 seg52BlindDeltaY199
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 50]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 200
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX199 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY199 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX200 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY200 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY199 rho) (rho 52581)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 200)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (237407082182476649271201308514110417937957700889391563201001451196613456842 : Seg52.F) (961186733346023561115570340324357733199172280018292165698470412330626102152 : Seg52.F)
    (1198593815528500210386771648838468151137129980907683728899471863527239558994 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (7294741384406122612791044117814251732765985977416739593294040271150085610129 : Seg52.F) (8280214252583025169891409716798129779029250702630506565416096652795038393465 : Seg52.F)
    (4440596737623467634352615922521817381278024270263026038921952693420240567282 : Seg52.F) (429353156714312750522287818459088917432687562358820428081310804626925562691 : Seg52.F)
    (7483275016082346863133254598457188798176727055135771662236763043586783136889 : Seg52.F) (8207054667245893774977623630267436113437941634264672264734232004720795782199 : Seg52.F)
    (8015108592714057673726537120322457613943211772795243399853922651290483676350 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX199 rho) (seg52BlindDeltaY199 rho) (rho 51378)
    (rho 52574) (rho 52575) (rho 52576) (rho 52578)
    (rho 52577) (rho 52579) (rho 52580) (rho 52581) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 200)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L200]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX199 seg52BlindDeltaY199;
        first | linear_combination r8186 | linear_combination -r8186)
    (by unfold seg52BlindDeltaX199 seg52BlindDeltaY199;
        first | linear_combination r8187 | linear_combination -r8187)
    (by unfold seg52BlindDeltaX199 seg52BlindDeltaY199;
        first | linear_combination r8188 | linear_combination -r8188)
    (by first | linear_combination r8189 | linear_combination -r8189)
    (by unfold seg52BlindDeltaX199 seg52BlindDeltaY199;
        first | linear_combination r8190 | linear_combination -r8190)
    (by first | linear_combination r8191 | linear_combination -r8191)
    (by unfold seg52BlindDeltaX199; first | linear_combination r8192 | linear_combination -r8192)
    (by unfold seg52BlindDeltaY199; first | linear_combination r8193 | linear_combination -r8193)
    (by linear_combination r6989)

theorem seg52Blind_hstep_c19 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
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

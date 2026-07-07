import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows211 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6360 rho ∧ Seg52.relationRow7634 rho ∧ Seg52.relationRow7635 rho ∧ Seg52.relationRow7636 rho ∧ Seg52.relationRow7637 rho ∧ Seg52.relationRow7638 rho ∧ Seg52.relationRow7639 rho ∧ Seg52.relationRow7640 rho ∧ Seg52.relationRow7641 rho := by
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

    _, _, _, _, _, p95, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6360, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7634, r7635, r7636, r7637, r7638, r7639, r7640, r7641, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6360, r7634, r7635, r7636, r7637, r7638, r7639, r7640, r7641⟩

theorem seg52Blind_rung211 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50749 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 211)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      211 (Bool.toZMod bit) (seg52BlindAccState rho 211)
      (seg52BlindAccState rho 212) := by
  obtain ⟨r6360, r7634, r7635, r7636, r7637, r7638, r7639, r7640, r7641⟩ := seg52Blind_rows211 rho h
  unfold Seg52.relationRow6360 at r6360

  unfold Seg52.relationRow7634 at r7634

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7634

  unfold Seg52.relationRow7635 at r7635

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7635

  unfold Seg52.relationRow7636 at r7636

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7636

  unfold Seg52.relationRow7637 at r7637

  unfold Seg52.relationRow7638 at r7638

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7638

  unfold Seg52.relationRow7639 at r7639

  unfold Seg52.relationRow7640 at r7640

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7640

  unfold Seg52.relationRow7641 at r7641

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7641

  have hnextx : seg52BlindDeltaX211 rho =
      seg52BlindDeltaX210 rho + rho 52028 := by
    unfold seg52BlindDeltaX211 seg52BlindDeltaX210
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 61]

    ring

  have hnexty : seg52BlindDeltaY211 rho =
      seg52BlindDeltaY210 rho + rho 52029 := by
    unfold seg52BlindDeltaY211 seg52BlindDeltaY210
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 61]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 211
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX210 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY210 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX211 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY211 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY210 rho) (rho 52029)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 211)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (5327628337272062592313728388198953727348222447182547552187548765040713893608 : Seg52.F) (423728751917898826075663953917726187800063816483669137843282601518448122082 : Seg52.F)
    (5751357089189961418389392342116679915148286263666216690030831366559162015690 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4970835380288419513008239029437287106231989988900827406336487343702981714531 : Seg52.F) (3914855939400010267395769549785628516737672253666516413791924500803172494869 : Seg52.F)
    (7616254520482598805940572677297280819744719537678599802357995976373364873921 : Seg52.F) (106703423238430874894827281416370557814794399874792126340723427035637150383 : Seg52.F)
    (8020732997510471598173160984863820343575835518670394690091950854398961116959 : Seg52.F) (3116833412156307831935096550582592804027676887971516275747684690876695345433 : Seg52.F)
    (8337758326189939549353997657365175973561104935279271701594510028881772088658 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX210 rho) (seg52BlindDeltaY210 rho) (rho 50749)
    (rho 52022) (rho 52023) (rho 52024) (rho 52026)
    (rho 52025) (rho 52027) (rho 52028) (rho 52029) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 211)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L211]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX210 seg52BlindDeltaY210;
        first | linear_combination r7634 | linear_combination -r7634)
    (by unfold seg52BlindDeltaX210 seg52BlindDeltaY210;
        first | linear_combination r7635 | linear_combination -r7635)
    (by unfold seg52BlindDeltaX210 seg52BlindDeltaY210;
        first | linear_combination r7636 | linear_combination -r7636)
    (by first | linear_combination r7637 | linear_combination -r7637)
    (by unfold seg52BlindDeltaX210 seg52BlindDeltaY210;
        first | linear_combination r7638 | linear_combination -r7638)
    (by first | linear_combination r7639 | linear_combination -r7639)
    (by unfold seg52BlindDeltaX210; first | linear_combination r7640 | linear_combination -r7640)
    (by unfold seg52BlindDeltaY210; first | linear_combination r7641 | linear_combination -r7641)
    (by linear_combination r6360)

theorem seg52Blind_rows212 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6361 rho ∧ Seg52.relationRow7642 rho ∧ Seg52.relationRow7643 rho ∧ Seg52.relationRow7644 rho ∧ Seg52.relationRow7645 rho ∧ Seg52.relationRow7646 rho ∧ Seg52.relationRow7647 rho ∧ Seg52.relationRow7648 rho ∧ Seg52.relationRow7649 rho := by
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

    _, _, _, _, _, p95, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6361, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7642, r7643, r7644, r7645, r7646, r7647, r7648, r7649, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6361, r7642, r7643, r7644, r7645, r7646, r7647, r7648, r7649⟩

theorem seg52Blind_rung212 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50750 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 212)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      212 (Bool.toZMod bit) (seg52BlindAccState rho 212)
      (seg52BlindAccState rho 213) := by
  obtain ⟨r6361, r7642, r7643, r7644, r7645, r7646, r7647, r7648, r7649⟩ := seg52Blind_rows212 rho h
  unfold Seg52.relationRow6361 at r6361

  unfold Seg52.relationRow7642 at r7642

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7642

  unfold Seg52.relationRow7643 at r7643

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7643

  unfold Seg52.relationRow7644 at r7644

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7644

  unfold Seg52.relationRow7645 at r7645

  unfold Seg52.relationRow7646 at r7646

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7646

  unfold Seg52.relationRow7647 at r7647

  unfold Seg52.relationRow7648 at r7648

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7648

  unfold Seg52.relationRow7649 at r7649

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7649

  have hnextx : seg52BlindDeltaX212 rho =
      seg52BlindDeltaX211 rho + rho 52036 := by
    unfold seg52BlindDeltaX212 seg52BlindDeltaX211
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 62]

    ring

  have hnexty : seg52BlindDeltaY212 rho =
      seg52BlindDeltaY211 rho + rho 52037 := by
    unfold seg52BlindDeltaY212 seg52BlindDeltaY211
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 62]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 212
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX211 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY211 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX212 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY212 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY211 rho) (rho 52037)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 212)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3739632739089117939069446857547051358477682486351816434724250294787084895236 : Seg52.F) (546013826735418873252016774866291171760155115758345587572787703661357804066 : Seg52.F)
    (4285646565824536812321463632413342530237837602110162022297037998448442699302 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2837729429168183365821813808664056269128234350919573610021128857067124470391 : Seg52.F) (3157723186260032143823963446973739579877072376899281825095772845969261506130 : Seg52.F)
    (4806844747205417157608727923015087857542443673724285003669831375590022914970 : Seg52.F) (3108375690447327390710528121845870197331695668627703896235363924960491118932 : Seg52.F)
    (7898447922692951550996808163915255359615744219395718240362445752256051434975 : Seg52.F) (4704829010339252485179378081234495172898216848802247393210983161130324343805 : Seg52.F)
    (5336086058981043033538296816935676334044203666526359931699869530956918120109 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX211 rho) (seg52BlindDeltaY211 rho) (rho 50750)
    (rho 52030) (rho 52031) (rho 52032) (rho 52034)
    (rho 52033) (rho 52035) (rho 52036) (rho 52037) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 212)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L212]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX211 seg52BlindDeltaY211;
        first | linear_combination r7642 | linear_combination -r7642)
    (by unfold seg52BlindDeltaX211 seg52BlindDeltaY211;
        first | linear_combination r7643 | linear_combination -r7643)
    (by unfold seg52BlindDeltaX211 seg52BlindDeltaY211;
        first | linear_combination r7644 | linear_combination -r7644)
    (by first | linear_combination r7645 | linear_combination -r7645)
    (by unfold seg52BlindDeltaX211 seg52BlindDeltaY211;
        first | linear_combination r7646 | linear_combination -r7646)
    (by first | linear_combination r7647 | linear_combination -r7647)
    (by unfold seg52BlindDeltaX211; first | linear_combination r7648 | linear_combination -r7648)
    (by unfold seg52BlindDeltaY211; first | linear_combination r7649 | linear_combination -r7649)
    (by linear_combination r6361)

theorem seg52Blind_rows213 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6362 rho ∧ Seg52.relationRow7650 rho ∧ Seg52.relationRow7651 rho ∧ Seg52.relationRow7652 rho ∧ Seg52.relationRow7653 rho ∧ Seg52.relationRow7654 rho ∧ Seg52.relationRow7655 rho ∧ Seg52.relationRow7656 rho ∧ Seg52.relationRow7657 rho := by
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

    _, _, _, _, _, p95, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6362, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7650, r7651, r7652, r7653, r7654, r7655, r7656, r7657, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6362, r7650, r7651, r7652, r7653, r7654, r7655, r7656, r7657⟩

theorem seg52Blind_rung213 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50751 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 213)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      213 (Bool.toZMod bit) (seg52BlindAccState rho 213)
      (seg52BlindAccState rho 214) := by
  obtain ⟨r6362, r7650, r7651, r7652, r7653, r7654, r7655, r7656, r7657⟩ := seg52Blind_rows213 rho h
  unfold Seg52.relationRow6362 at r6362

  unfold Seg52.relationRow7650 at r7650

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7650

  unfold Seg52.relationRow7651 at r7651

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7651

  unfold Seg52.relationRow7652 at r7652

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7652

  unfold Seg52.relationRow7653 at r7653

  unfold Seg52.relationRow7654 at r7654

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7654

  unfold Seg52.relationRow7655 at r7655

  unfold Seg52.relationRow7656 at r7656

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7656

  unfold Seg52.relationRow7657 at r7657

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7657

  have hnextx : seg52BlindDeltaX213 rho =
      seg52BlindDeltaX212 rho + rho 52044 := by
    unfold seg52BlindDeltaX213 seg52BlindDeltaX212
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 63]

    ring

  have hnexty : seg52BlindDeltaY213 rho =
      seg52BlindDeltaY212 rho + rho 52045 := by
    unfold seg52BlindDeltaY213 seg52BlindDeltaY212
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 63]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 213
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX212 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY212 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX213 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY213 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY212 rho) (rho 52045)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 213)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3805711175492090543188314150909428653142552635908459800414467119734417207008 : Seg52.F) (8067958649013307470320091512271525822579748751729142409794742560868383015607 : Seg52.F)
    (3429208075077027589259580724399407944346402052483538382273976224685390983574 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2586469818924823454887685248736220462575497719111012568833522605742026276421 : Seg52.F) (1223079788514069685123698545792301459336818710372046044529245059208797479587 : Seg52.F)
    (615792064455068526792965686539625562780320821830408171915025156311598660413 : Seg52.F) (7011737632969012783782848228240377222908554683976343320660587351676789370908 : Seg52.F)
    (376503100415062953928733426510020708796150583424921418140490895049026223434 : Seg52.F) (4638750573936279881060510787872117878233346699245604027520766336182992032033 : Seg52.F)
    (1432724116459357640465976710541169308467344651177720507274646104240619868133 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX212 rho) (seg52BlindDeltaY212 rho) (rho 50751)
    (rho 52038) (rho 52039) (rho 52040) (rho 52042)
    (rho 52041) (rho 52043) (rho 52044) (rho 52045) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 213)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L213]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX212 seg52BlindDeltaY212;
        first | linear_combination r7650 | linear_combination -r7650)
    (by unfold seg52BlindDeltaX212 seg52BlindDeltaY212;
        first | linear_combination r7651 | linear_combination -r7651)
    (by unfold seg52BlindDeltaX212 seg52BlindDeltaY212;
        first | linear_combination r7652 | linear_combination -r7652)
    (by first | linear_combination r7653 | linear_combination -r7653)
    (by unfold seg52BlindDeltaX212 seg52BlindDeltaY212;
        first | linear_combination r7654 | linear_combination -r7654)
    (by first | linear_combination r7655 | linear_combination -r7655)
    (by unfold seg52BlindDeltaX212; first | linear_combination r7656 | linear_combination -r7656)
    (by unfold seg52BlindDeltaY212; first | linear_combination r7657 | linear_combination -r7657)
    (by linear_combination r6362)

theorem seg52Blind_rows214 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6363 rho ∧ Seg52.relationRow7658 rho ∧ Seg52.relationRow7659 rho ∧ Seg52.relationRow7660 rho ∧ Seg52.relationRow7661 rho ∧ Seg52.relationRow7662 rho ∧ Seg52.relationRow7663 rho ∧ Seg52.relationRow7664 rho ∧ Seg52.relationRow7665 rho := by
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

    _, _, _, _, _, p95, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6363, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7658, r7659, r7660, r7661, r7662, r7663, r7664, r7665, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6363, r7658, r7659, r7660, r7661, r7662, r7663, r7664, r7665⟩

theorem seg52Blind_rung214 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50752 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 214)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      214 (Bool.toZMod bit) (seg52BlindAccState rho 214)
      (seg52BlindAccState rho 215) := by
  obtain ⟨r6363, r7658, r7659, r7660, r7661, r7662, r7663, r7664, r7665⟩ := seg52Blind_rows214 rho h
  unfold Seg52.relationRow6363 at r6363

  unfold Seg52.relationRow7658 at r7658

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7658

  unfold Seg52.relationRow7659 at r7659

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7659

  unfold Seg52.relationRow7660 at r7660

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7660

  unfold Seg52.relationRow7661 at r7661

  unfold Seg52.relationRow7662 at r7662

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7662

  unfold Seg52.relationRow7663 at r7663

  unfold Seg52.relationRow7664 at r7664

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7664

  unfold Seg52.relationRow7665 at r7665

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7665

  have hnextx : seg52BlindDeltaX214 rho =
      seg52BlindDeltaX213 rho + rho 52052 := by
    unfold seg52BlindDeltaX214 seg52BlindDeltaX213
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 64]

    ring

  have hnexty : seg52BlindDeltaY214 rho =
      seg52BlindDeltaY213 rho + rho 52053 := by
    unfold seg52BlindDeltaY214 seg52BlindDeltaY213
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 64]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 214
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX213 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY213 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX214 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY214 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY213 rho) (rho 52053)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 214)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3519700685927272317724189846155332880272853835850155692631351253276228456583 : Seg52.F) (8142715970354096772122928279920887795561330138433719071956176618866653324210 : Seg52.F)
    (3217954906852998665598293187294674144458284639129810936652294416225472541752 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (427870354883302746539286970356984492783584904477385604274508508746579111977 : Seg52.F) (7684909229183172772809243730529769896730912256138259583235399444557459599888 : Seg52.F)
    (5079759746100250841722809672260757649290299822485304154344672621301032296151 : Seg52.F) (5227656773640621061793563773732843114211940894211272237309210039093903113771 : Seg52.F)
    (301745779074273652125896658860658735814569196720344755979056837050755914831 : Seg52.F) (4924761063501098106524635092626213651103045499303908135303882202641180782458 : Seg52.F)
    (3216804975787749362455261165048703417163958440942791590626023416823506125270 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX213 rho) (seg52BlindDeltaY213 rho) (rho 50752)
    (rho 52046) (rho 52047) (rho 52048) (rho 52050)
    (rho 52049) (rho 52051) (rho 52052) (rho 52053) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 214)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L214]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX213 seg52BlindDeltaY213;
        first | linear_combination r7658 | linear_combination -r7658)
    (by unfold seg52BlindDeltaX213 seg52BlindDeltaY213;
        first | linear_combination r7659 | linear_combination -r7659)
    (by unfold seg52BlindDeltaX213 seg52BlindDeltaY213;
        first | linear_combination r7660 | linear_combination -r7660)
    (by first | linear_combination r7661 | linear_combination -r7661)
    (by unfold seg52BlindDeltaX213 seg52BlindDeltaY213;
        first | linear_combination r7662 | linear_combination -r7662)
    (by first | linear_combination r7663 | linear_combination -r7663)
    (by unfold seg52BlindDeltaX213; first | linear_combination r7664 | linear_combination -r7664)
    (by unfold seg52BlindDeltaY213; first | linear_combination r7665 | linear_combination -r7665)
    (by linear_combination r6363)

theorem seg52Blind_rows215 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6364 rho ∧ Seg52.relationRow7666 rho ∧ Seg52.relationRow7667 rho ∧ Seg52.relationRow7668 rho ∧ Seg52.relationRow7669 rho ∧ Seg52.relationRow7670 rho ∧ Seg52.relationRow7671 rho ∧ Seg52.relationRow7672 rho ∧ Seg52.relationRow7673 rho := by
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

    _, _, _, _, _, p95, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6364, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7666, r7667, r7668, r7669, r7670, r7671, r7672, r7673, _, _, _, _, _, _⟩

  exact ⟨r6364, r7666, r7667, r7668, r7669, r7670, r7671, r7672, r7673⟩

theorem seg52Blind_rung215 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50753 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 215)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      215 (Bool.toZMod bit) (seg52BlindAccState rho 215)
      (seg52BlindAccState rho 216) := by
  obtain ⟨r6364, r7666, r7667, r7668, r7669, r7670, r7671, r7672, r7673⟩ := seg52Blind_rows215 rho h
  unfold Seg52.relationRow6364 at r6364

  unfold Seg52.relationRow7666 at r7666

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7666

  unfold Seg52.relationRow7667 at r7667

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7667

  unfold Seg52.relationRow7668 at r7668

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7668

  unfold Seg52.relationRow7669 at r7669

  unfold Seg52.relationRow7670 at r7670

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7670

  unfold Seg52.relationRow7671 at r7671

  unfold Seg52.relationRow7672 at r7672

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7672

  unfold Seg52.relationRow7673 at r7673

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7673

  have hnextx : seg52BlindDeltaX215 rho =
      seg52BlindDeltaX214 rho + rho 52060 := by
    unfold seg52BlindDeltaX215 seg52BlindDeltaX214
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 65]

    ring

  have hnexty : seg52BlindDeltaY215 rho =
      seg52BlindDeltaY214 rho + rho 52061 := by
    unfold seg52BlindDeltaY215 seg52BlindDeltaY214
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 65]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 215
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX214 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY214 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX215 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY215 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY214 rho) (rho 52061)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 215)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (4735750495013647090858931166784620155856988229723922730242031471736714338788 : Seg52.F) (7284740675749725981783765161756827737285160485612667916806380741022276320498 : Seg52.F)
    (3576029421335002648393871389759901361766249380182526819113178756841581420245 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (934262429588865376316763202666333572876159624379441072857832507528287283612 : Seg52.F) (620727456495781485108528089440261790333141839184177284132127399822216471535 : Seg52.F)
    (3734213338409769056441767094129838517498634193117154240157192061073862909754 : Seg52.F) (7767970052041557968615273520727392938738540145605237087225935524923132604692 : Seg52.F)
    (1159721073678644442465059777024718794090738849541395911128852714895132918543 : Seg52.F) (3708711254414723333389893771996926375518911105430141097693201984180694900253 : Seg52.F)
    (676491697386812455633551418054153592637359189548826740709297930994276634349 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX214 rho) (seg52BlindDeltaY214 rho) (rho 50753)
    (rho 52054) (rho 52055) (rho 52056) (rho 52058)
    (rho 52057) (rho 52059) (rho 52060) (rho 52061) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 215)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L215]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX214 seg52BlindDeltaY214;
        first | linear_combination r7666 | linear_combination -r7666)
    (by unfold seg52BlindDeltaX214 seg52BlindDeltaY214;
        first | linear_combination r7667 | linear_combination -r7667)
    (by unfold seg52BlindDeltaX214 seg52BlindDeltaY214;
        first | linear_combination r7668 | linear_combination -r7668)
    (by first | linear_combination r7669 | linear_combination -r7669)
    (by unfold seg52BlindDeltaX214 seg52BlindDeltaY214;
        first | linear_combination r7670 | linear_combination -r7670)
    (by first | linear_combination r7671 | linear_combination -r7671)
    (by unfold seg52BlindDeltaX214; first | linear_combination r7672 | linear_combination -r7672)
    (by unfold seg52BlindDeltaY214; first | linear_combination r7673 | linear_combination -r7673)
    (by linear_combination r6364)

theorem seg52Blind_rows216 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6365 rho ∧ Seg52.relationRow7674 rho ∧ Seg52.relationRow7675 rho ∧ Seg52.relationRow7676 rho ∧ Seg52.relationRow7677 rho ∧ Seg52.relationRow7678 rho ∧ Seg52.relationRow7679 rho ∧ Seg52.relationRow7680 rho ∧ Seg52.relationRow7681 rho := by
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

    _, _, _, _, _, p95, p96, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6365, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7674, r7675, r7676, r7677, r7678, r7679⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨r7680, r7681, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6365, r7674, r7675, r7676, r7677, r7678, r7679, r7680, r7681⟩

theorem seg52Blind_rung216 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50754 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 216)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      216 (Bool.toZMod bit) (seg52BlindAccState rho 216)
      (seg52BlindAccState rho 217) := by
  obtain ⟨r6365, r7674, r7675, r7676, r7677, r7678, r7679, r7680, r7681⟩ := seg52Blind_rows216 rho h
  unfold Seg52.relationRow6365 at r6365

  unfold Seg52.relationRow7674 at r7674

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7674

  unfold Seg52.relationRow7675 at r7675

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7675

  unfold Seg52.relationRow7676 at r7676

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7676

  unfold Seg52.relationRow7677 at r7677

  unfold Seg52.relationRow7678 at r7678

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7678

  unfold Seg52.relationRow7679 at r7679

  unfold Seg52.relationRow7680 at r7680

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7680

  unfold Seg52.relationRow7681 at r7681

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7681

  have hnextx : seg52BlindDeltaX216 rho =
      seg52BlindDeltaX215 rho + rho 52068 := by
    unfold seg52BlindDeltaX216 seg52BlindDeltaX215
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 66]

    ring

  have hnexty : seg52BlindDeltaY216 rho =
      seg52BlindDeltaY215 rho + rho 52069 := by
    unfold seg52BlindDeltaY216 seg52BlindDeltaY215
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 66]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 216
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX215 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY215 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX216 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY216 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY215 rho) (rho 52069)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 216)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3047738114654836539128249014769471463629745053730036031414036362930762700064 : Seg52.F) (7952330047938001541879152429561922298987420548220593536579109485375099806312 : Seg52.F)
    (2555606413164467656758576505549847231241266266796565740057912392388453267335 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (7939859446417171453261363811848930007939766996255547357685806689064639035948 : Seg52.F) (7127738503717230360852932479875059658704579220516546870335272875140449102586 : Seg52.F)
    (7512757180602627786528431155446133589129180852821377444625292664139428669253 : Seg52.F) (4524195004705693286831181982319228680518287867255560910689389147106496714049 : Seg52.F)
    (492131701490368882369672509219624232388478786933470291356123970542309432729 : Seg52.F) (5396723634773533885120575924012075067746154281424027796521197092986646538977 : Seg52.F)
    (3920266744722677137417642956462317850857611467898502917245844308810912524992 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX215 rho) (seg52BlindDeltaY215 rho) (rho 50754)
    (rho 52062) (rho 52063) (rho 52064) (rho 52066)
    (rho 52065) (rho 52067) (rho 52068) (rho 52069) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 216)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L216]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX215 seg52BlindDeltaY215;
        first | linear_combination r7674 | linear_combination -r7674)
    (by unfold seg52BlindDeltaX215 seg52BlindDeltaY215;
        first | linear_combination r7675 | linear_combination -r7675)
    (by unfold seg52BlindDeltaX215 seg52BlindDeltaY215;
        first | linear_combination r7676 | linear_combination -r7676)
    (by first | linear_combination r7677 | linear_combination -r7677)
    (by unfold seg52BlindDeltaX215 seg52BlindDeltaY215;
        first | linear_combination r7678 | linear_combination -r7678)
    (by first | linear_combination r7679 | linear_combination -r7679)
    (by unfold seg52BlindDeltaX215; first | linear_combination r7680 | linear_combination -r7680)
    (by unfold seg52BlindDeltaY215; first | linear_combination r7681 | linear_combination -r7681)
    (by linear_combination r6365)

theorem seg52Blind_rows217 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6366 rho ∧ Seg52.relationRow7682 rho ∧ Seg52.relationRow7683 rho ∧ Seg52.relationRow7684 rho ∧ Seg52.relationRow7685 rho ∧ Seg52.relationRow7686 rho ∧ Seg52.relationRow7687 rho ∧ Seg52.relationRow7688 rho ∧ Seg52.relationRow7689 rho := by
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

    _, _, _, _, _, _, p96, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6366, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, r7682, r7683, r7684, r7685, r7686, r7687, r7688, r7689, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6366, r7682, r7683, r7684, r7685, r7686, r7687, r7688, r7689⟩

theorem seg52Blind_rung217 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50755 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 217)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      217 (Bool.toZMod bit) (seg52BlindAccState rho 217)
      (seg52BlindAccState rho 218) := by
  obtain ⟨r6366, r7682, r7683, r7684, r7685, r7686, r7687, r7688, r7689⟩ := seg52Blind_rows217 rho h
  unfold Seg52.relationRow6366 at r6366

  unfold Seg52.relationRow7682 at r7682

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7682

  unfold Seg52.relationRow7683 at r7683

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7683

  unfold Seg52.relationRow7684 at r7684

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7684

  unfold Seg52.relationRow7685 at r7685

  unfold Seg52.relationRow7686 at r7686

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7686

  unfold Seg52.relationRow7687 at r7687

  unfold Seg52.relationRow7688 at r7688

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7688

  unfold Seg52.relationRow7689 at r7689

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7689

  have hnextx : seg52BlindDeltaX217 rho =
      seg52BlindDeltaX216 rho + rho 52076 := by
    unfold seg52BlindDeltaX217 seg52BlindDeltaX216
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 67]

    ring

  have hnexty : seg52BlindDeltaY217 rho =
      seg52BlindDeltaY216 rho + rho 52077 := by
    unfold seg52BlindDeltaY217 seg52BlindDeltaY216
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 67]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 217
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX216 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY216 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX217 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY217 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY216 rho) (rho 52077)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 217)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (123700968181371724315822978796307772502168331021831444823168513337451326588 : Seg52.F) (7206181308414929907187684219568191539127362878550653399715080565873045393078 : Seg52.F)
    (7329882276596301631503507198364499311629531209572484844538249079210496719666 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (51342695164295900523335136679681816694770074347372122226540147389114240940 : Seg52.F) (3052786237553737179346172201258712579459016790553216720140345524598387402017 : Seg52.F)
    (787620717315931140572433265074708873411572253914448706453206476703224907592 : Seg52.F) (509105858426396779352460963956901544527715611503044149659633818620754686969 : Seg52.F)
    (1238280441013440517061140719213354992248536456603410428220152890044363845963 : Seg52.F) (8320760781246998699933001959985238758873731004132232383112064942579957912453 : Seg52.F)
    (7935355891001973644896363974824644986848183723651019678275599637296654552072 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX216 rho) (seg52BlindDeltaY216 rho) (rho 50755)
    (rho 52070) (rho 52071) (rho 52072) (rho 52074)
    (rho 52073) (rho 52075) (rho 52076) (rho 52077) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 217)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L217]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX216 seg52BlindDeltaY216;
        first | linear_combination r7682 | linear_combination -r7682)
    (by unfold seg52BlindDeltaX216 seg52BlindDeltaY216;
        first | linear_combination r7683 | linear_combination -r7683)
    (by unfold seg52BlindDeltaX216 seg52BlindDeltaY216;
        first | linear_combination r7684 | linear_combination -r7684)
    (by first | linear_combination r7685 | linear_combination -r7685)
    (by unfold seg52BlindDeltaX216 seg52BlindDeltaY216;
        first | linear_combination r7686 | linear_combination -r7686)
    (by first | linear_combination r7687 | linear_combination -r7687)
    (by unfold seg52BlindDeltaX216; first | linear_combination r7688 | linear_combination -r7688)
    (by unfold seg52BlindDeltaY216; first | linear_combination r7689 | linear_combination -r7689)
    (by linear_combination r6366)

theorem seg52Blind_rows218 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6367 rho ∧ Seg52.relationRow7690 rho ∧ Seg52.relationRow7691 rho ∧ Seg52.relationRow7692 rho ∧ Seg52.relationRow7693 rho ∧ Seg52.relationRow7694 rho ∧ Seg52.relationRow7695 rho ∧ Seg52.relationRow7696 rho ∧ Seg52.relationRow7697 rho := by
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

    _, _, _, _, _, _, p96, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6367, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, r7690, r7691, r7692, r7693, r7694, r7695, r7696, r7697, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6367, r7690, r7691, r7692, r7693, r7694, r7695, r7696, r7697⟩

theorem seg52Blind_rung218 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50756 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 218)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      218 (Bool.toZMod bit) (seg52BlindAccState rho 218)
      (seg52BlindAccState rho 219) := by
  obtain ⟨r6367, r7690, r7691, r7692, r7693, r7694, r7695, r7696, r7697⟩ := seg52Blind_rows218 rho h
  unfold Seg52.relationRow6367 at r6367

  unfold Seg52.relationRow7690 at r7690

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7690

  unfold Seg52.relationRow7691 at r7691

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7691

  unfold Seg52.relationRow7692 at r7692

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7692

  unfold Seg52.relationRow7693 at r7693

  unfold Seg52.relationRow7694 at r7694

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7694

  unfold Seg52.relationRow7695 at r7695

  unfold Seg52.relationRow7696 at r7696

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7696

  unfold Seg52.relationRow7697 at r7697

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7697

  have hnextx : seg52BlindDeltaX218 rho =
      seg52BlindDeltaX217 rho + rho 52084 := by
    unfold seg52BlindDeltaX218 seg52BlindDeltaX217
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 68]

    ring

  have hnexty : seg52BlindDeltaY218 rho =
      seg52BlindDeltaY217 rho + rho 52085 := by
    unfold seg52BlindDeltaY218 seg52BlindDeltaY217
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 68]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 218
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX217 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY217 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX218 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY218 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY217 rho) (rho 52085)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 218)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7071659467922580335893637713246431152080471891869532067682393264275824468096 : Seg52.F) (5233045319008618973604072593989384005314840804446403291325745460456179580293 : Seg52.F)
    (3860243037502828885248885368454268626019413361161871531072905268814594809348 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (997513795128485064103021042873973320450514824176857200320006560728416580401 : Seg52.F) (4207962523957544499197113572769958299790779559157759929722328148460317065066 : Seg52.F)
    (5694952463819340159490726989598648212507084910767974062043659083270491817450 : Seg52.F) (1615274810180987536218933776408218560898669733751828603964970398235418274936 : Seg52.F)
    (3211416430419751450644752344792162526061058530707660536609487995461229658748 : Seg52.F) (1372802281505790088355187225535115379295427443284531760252840191641584770945 : Seg52.F)
    (6829186939247382888029891162373327970477229601402235223970263057681990964105 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX217 rho) (seg52BlindDeltaY217 rho) (rho 50756)
    (rho 52078) (rho 52079) (rho 52080) (rho 52082)
    (rho 52081) (rho 52083) (rho 52084) (rho 52085) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 218)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L218]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX217 seg52BlindDeltaY217;
        first | linear_combination r7690 | linear_combination -r7690)
    (by unfold seg52BlindDeltaX217 seg52BlindDeltaY217;
        first | linear_combination r7691 | linear_combination -r7691)
    (by unfold seg52BlindDeltaX217 seg52BlindDeltaY217;
        first | linear_combination r7692 | linear_combination -r7692)
    (by first | linear_combination r7693 | linear_combination -r7693)
    (by unfold seg52BlindDeltaX217 seg52BlindDeltaY217;
        first | linear_combination r7694 | linear_combination -r7694)
    (by first | linear_combination r7695 | linear_combination -r7695)
    (by unfold seg52BlindDeltaX217; first | linear_combination r7696 | linear_combination -r7696)
    (by unfold seg52BlindDeltaY217; first | linear_combination r7697 | linear_combination -r7697)
    (by linear_combination r6367)

theorem seg52Blind_rows219 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6368 rho ∧ Seg52.relationRow7698 rho ∧ Seg52.relationRow7699 rho ∧ Seg52.relationRow7700 rho ∧ Seg52.relationRow7701 rho ∧ Seg52.relationRow7702 rho ∧ Seg52.relationRow7703 rho ∧ Seg52.relationRow7704 rho ∧ Seg52.relationRow7705 rho := by
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

    _, _, _, _, _, _, p96, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6368, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7698, r7699, r7700, r7701, r7702, r7703, r7704, r7705, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6368, r7698, r7699, r7700, r7701, r7702, r7703, r7704, r7705⟩

theorem seg52Blind_rung219 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50757 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 219)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      219 (Bool.toZMod bit) (seg52BlindAccState rho 219)
      (seg52BlindAccState rho 220) := by
  obtain ⟨r6368, r7698, r7699, r7700, r7701, r7702, r7703, r7704, r7705⟩ := seg52Blind_rows219 rho h
  unfold Seg52.relationRow6368 at r6368

  unfold Seg52.relationRow7698 at r7698

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7698

  unfold Seg52.relationRow7699 at r7699

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7699

  unfold Seg52.relationRow7700 at r7700

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7700

  unfold Seg52.relationRow7701 at r7701

  unfold Seg52.relationRow7702 at r7702

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7702

  unfold Seg52.relationRow7703 at r7703

  unfold Seg52.relationRow7704 at r7704

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7704

  unfold Seg52.relationRow7705 at r7705

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7705

  have hnextx : seg52BlindDeltaX219 rho =
      seg52BlindDeltaX218 rho + rho 52092 := by
    unfold seg52BlindDeltaX219 seg52BlindDeltaX218
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 69]

    ring

  have hnexty : seg52BlindDeltaY219 rho =
      seg52BlindDeltaY218 rho + rho 52093 := by
    unfold seg52BlindDeltaY219 seg52BlindDeltaY218
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 69]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 219
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX218 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY218 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX219 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY219 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY218 rho) (rho 52093)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 219)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (5196049551051558169273089982213715624228923171939443945976500797894583833713 : Seg52.F) (4033479743215698499531408291924518140753180809754544209620061389049019153181 : Seg52.F)
    (785067544838886244555673335356687233606204646539924327661328731026193747853 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (8228461578915015317578888180979204971312384976318017379598812884182739062679 : Seg52.F) (5969432451953231280221404556913607896031692218874454843943230165830559924308 : Seg52.F)
    (4204416184951078491647837449034783675960136896610714187858881882252448178393 : Seg52.F) (843701834699381573709699416331279250488711802942569755498026994035694535678 : Seg52.F)
    (4410982006212671924717416646857028390622718525399519618315172066868390085860 : Seg52.F) (3248412198376812254975734956567830907146976163214619881958732658022825405328 : Seg52.F)
    (7600759914728988850539125522450267280887187532211494072437206461881714703363 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX218 rho) (seg52BlindDeltaY218 rho) (rho 50757)
    (rho 52086) (rho 52087) (rho 52088) (rho 52090)
    (rho 52089) (rho 52091) (rho 52092) (rho 52093) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 219)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L219]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX218 seg52BlindDeltaY218;
        first | linear_combination r7698 | linear_combination -r7698)
    (by unfold seg52BlindDeltaX218 seg52BlindDeltaY218;
        first | linear_combination r7699 | linear_combination -r7699)
    (by unfold seg52BlindDeltaX218 seg52BlindDeltaY218;
        first | linear_combination r7700 | linear_combination -r7700)
    (by first | linear_combination r7701 | linear_combination -r7701)
    (by unfold seg52BlindDeltaX218 seg52BlindDeltaY218;
        first | linear_combination r7702 | linear_combination -r7702)
    (by first | linear_combination r7703 | linear_combination -r7703)
    (by unfold seg52BlindDeltaX218; first | linear_combination r7704 | linear_combination -r7704)
    (by unfold seg52BlindDeltaY218; first | linear_combination r7705 | linear_combination -r7705)
    (by linear_combination r6368)

theorem seg52Blind_rows220 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6369 rho ∧ Seg52.relationRow7706 rho ∧ Seg52.relationRow7707 rho ∧ Seg52.relationRow7708 rho ∧ Seg52.relationRow7709 rho ∧ Seg52.relationRow7710 rho ∧ Seg52.relationRow7711 rho ∧ Seg52.relationRow7712 rho ∧ Seg52.relationRow7713 rho := by
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

    _, _, _, _, _, _, p96, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6369, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7706, r7707, r7708, r7709, r7710, r7711, r7712, r7713, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6369, r7706, r7707, r7708, r7709, r7710, r7711, r7712, r7713⟩

theorem seg52Blind_rung220 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50758 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 220)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      220 (Bool.toZMod bit) (seg52BlindAccState rho 220)
      (seg52BlindAccState rho 221) := by
  obtain ⟨r6369, r7706, r7707, r7708, r7709, r7710, r7711, r7712, r7713⟩ := seg52Blind_rows220 rho h
  unfold Seg52.relationRow6369 at r6369

  unfold Seg52.relationRow7706 at r7706

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7706

  unfold Seg52.relationRow7707 at r7707

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7707

  unfold Seg52.relationRow7708 at r7708

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7708

  unfold Seg52.relationRow7709 at r7709

  unfold Seg52.relationRow7710 at r7710

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7710

  unfold Seg52.relationRow7711 at r7711

  unfold Seg52.relationRow7712 at r7712

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7712

  unfold Seg52.relationRow7713 at r7713

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7713

  have hnextx : seg52BlindDeltaX220 rho =
      seg52BlindDeltaX219 rho + rho 52100 := by
    unfold seg52BlindDeltaX220 seg52BlindDeltaX219
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 70]

    ring

  have hnexty : seg52BlindDeltaY220 rho =
      seg52BlindDeltaY219 rho + rho 52101 := by
    unfold seg52BlindDeltaY220 seg52BlindDeltaY219
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 70]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 220
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX219 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY219 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX220 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY220 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY219 rho) (rho 52101)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 220)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (5747457526016758175835998194484556719913156173541495496847991769269239392427 : Seg52.F) (5540089884816897048089479758379024224138607490431233157521031440054709433633 : Seg52.F)
    (2843085661405284799676653014082034412675864328818664826433789753406539587019 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (8132816414244171841396146336788502467076645652554925731338504232889496465072 : Seg52.F) (7288377787750598665321219882333043328894517518308081570821341189087614339729 : Seg52.F)
    (1998872065006281131425930001775492856146442517740113555049321825775753763071 : Seg52.F) (2171795118466354350407889465909225852420134797436474354478276007172658621701 : Seg52.F)
    (2904371864611473376159345180402522307237291844722830670414202015862699805408 : Seg52.F) (2697004223411612248412826744296989811462743161612568331087241686648169846614 : Seg52.F)
    (6272666630962016073840935472872320678955764537717589473456957448744750617340 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX219 rho) (seg52BlindDeltaY219 rho) (rho 50758)
    (rho 52094) (rho 52095) (rho 52096) (rho 52098)
    (rho 52097) (rho 52099) (rho 52100) (rho 52101) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 220)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L220]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX219 seg52BlindDeltaY219;
        first | linear_combination r7706 | linear_combination -r7706)
    (by unfold seg52BlindDeltaX219 seg52BlindDeltaY219;
        first | linear_combination r7707 | linear_combination -r7707)
    (by unfold seg52BlindDeltaX219 seg52BlindDeltaY219;
        first | linear_combination r7708 | linear_combination -r7708)
    (by first | linear_combination r7709 | linear_combination -r7709)
    (by unfold seg52BlindDeltaX219 seg52BlindDeltaY219;
        first | linear_combination r7710 | linear_combination -r7710)
    (by first | linear_combination r7711 | linear_combination -r7711)
    (by unfold seg52BlindDeltaX219; first | linear_combination r7712 | linear_combination -r7712)
    (by unfold seg52BlindDeltaY219; first | linear_combination r7713 | linear_combination -r7713)
    (by linear_combination r6369)

theorem seg52Blind_hstep_c21 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 211 ≤ i → i < 221 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung211 rho h bits[211]! (hbitAt 211 (by omega)) hacc
  · exact seg52Blind_rung212 rho h bits[212]! (hbitAt 212 (by omega)) hacc
  · exact seg52Blind_rung213 rho h bits[213]! (hbitAt 213 (by omega)) hacc
  · exact seg52Blind_rung214 rho h bits[214]! (hbitAt 214 (by omega)) hacc
  · exact seg52Blind_rung215 rho h bits[215]! (hbitAt 215 (by omega)) hacc
  · exact seg52Blind_rung216 rho h bits[216]! (hbitAt 216 (by omega)) hacc
  · exact seg52Blind_rung217 rho h bits[217]! (hbitAt 217 (by omega)) hacc
  · exact seg52Blind_rung218 rho h bits[218]! (hbitAt 218 (by omega)) hacc
  · exact seg52Blind_rung219 rho h bits[219]! (hbitAt 219 (by omega)) hacc
  · exact seg52Blind_rung220 rho h bits[220]! (hbitAt 220 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

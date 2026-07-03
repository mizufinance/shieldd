import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows241 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7030 rho ∧ Seg52.relationRow8514 rho ∧ Seg52.relationRow8515 rho ∧ Seg52.relationRow8516 rho ∧ Seg52.relationRow8517 rho ∧ Seg52.relationRow8518 rho ∧ Seg52.relationRow8519 rho ∧ Seg52.relationRow8520 rho ∧ Seg52.relationRow8521 rho := by
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

    _, _, _, _, _, _, p106, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7030, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart106 at p106

  rcases p106 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8514, r8515, r8516, r8517, r8518, r8519, r8520, r8521, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7030, r8514, r8515, r8516, r8517, r8518, r8519, r8520, r8521⟩

theorem seg52Blind_rung241 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51419 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 241)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      241 (Bool.toZMod bit) (seg52BlindAccState rho 241)
      (seg52BlindAccState rho 242) := by
  obtain ⟨r7030, r8514, r8515, r8516, r8517, r8518, r8519, r8520, r8521⟩ := seg52Blind_rows241 rho h
  unfold Seg52.relationRow7030 at r7030

  unfold Seg52.relationRow8514 at r8514

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8514

  unfold Seg52.relationRow8515 at r8515

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8515

  unfold Seg52.relationRow8516 at r8516

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8516

  unfold Seg52.relationRow8517 at r8517

  unfold Seg52.relationRow8518 at r8518

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8518

  unfold Seg52.relationRow8519 at r8519

  unfold Seg52.relationRow8520 at r8520

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8520

  unfold Seg52.relationRow8521 at r8521

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8521

  have hnextx : seg52BlindDeltaX241 rho =
      seg52BlindDeltaX240 rho + rho 52908 := by
    unfold seg52BlindDeltaX241 seg52BlindDeltaX240
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 91]

    ring

  have hnexty : seg52BlindDeltaY241 rho =
      seg52BlindDeltaY240 rho + rho 52909 := by
    unfold seg52BlindDeltaY241 seg52BlindDeltaY240
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 91]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 241
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX240 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY240 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX241 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY241 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY240 rho) (rho 52909)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 241)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (5513923410512906536181717766244606058613026157505942978262642991579256481779 : Seg52.F) (4019392668560449309488260267251635682877589049350116880541979459658764265975 : Seg52.F)
    (1088854329644985421421153094714695210114715871701996030869388995320611508713 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (7893717792549064318472830338109032386029173470313375374389471475809771008558 : Seg52.F) (4374296518096528526619005251611994626052244170889537534720848003928046783174 : Seg52.F)
    (6602569734421699621514347941938542364431913392460043182359308603865112578723 : Seg52.F) (4096675033091295205087808066124098390907209830903503719888873793552637225980 : Seg52.F)
    (4425069080867921114760564671529910848498310285803946947393253996258644973066 : Seg52.F) (2930538338915463888067107172536940472762873177648120849672590464338152757262 : Seg52.F)
    (4347786716337075219161016872657448140468689504250560108046359662364772013061 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX240 rho) (seg52BlindDeltaY240 rho) (rho 51419)
    (rho 52902) (rho 52903) (rho 52904) (rho 52906)
    (rho 52905) (rho 52907) (rho 52908) (rho 52909) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 241)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L241]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX240 seg52BlindDeltaY240;
        first | linear_combination r8514 | linear_combination -r8514)
    (by unfold seg52BlindDeltaX240 seg52BlindDeltaY240;
        first | linear_combination r8515 | linear_combination -r8515)
    (by unfold seg52BlindDeltaX240 seg52BlindDeltaY240;
        first | linear_combination r8516 | linear_combination -r8516)
    (by first | linear_combination r8517 | linear_combination -r8517)
    (by unfold seg52BlindDeltaX240 seg52BlindDeltaY240;
        first | linear_combination r8518 | linear_combination -r8518)
    (by first | linear_combination r8519 | linear_combination -r8519)
    (by unfold seg52BlindDeltaX240; first | linear_combination r8520 | linear_combination -r8520)
    (by unfold seg52BlindDeltaY240; first | linear_combination r8521 | linear_combination -r8521)
    (by linear_combination r7030)

theorem seg52Blind_rows242 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7031 rho ∧ Seg52.relationRow8522 rho ∧ Seg52.relationRow8523 rho ∧ Seg52.relationRow8524 rho ∧ Seg52.relationRow8525 rho ∧ Seg52.relationRow8526 rho ∧ Seg52.relationRow8527 rho ∧ Seg52.relationRow8528 rho ∧ Seg52.relationRow8529 rho := by
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

    _, _, _, _, _, _, p106, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7031, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart106 at p106

  rcases p106 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8522, r8523, r8524, r8525, r8526, r8527, r8528, r8529, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7031, r8522, r8523, r8524, r8525, r8526, r8527, r8528, r8529⟩

theorem seg52Blind_rung242 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51420 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 242)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      242 (Bool.toZMod bit) (seg52BlindAccState rho 242)
      (seg52BlindAccState rho 243) := by
  obtain ⟨r7031, r8522, r8523, r8524, r8525, r8526, r8527, r8528, r8529⟩ := seg52Blind_rows242 rho h
  unfold Seg52.relationRow7031 at r7031

  unfold Seg52.relationRow8522 at r8522

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8522

  unfold Seg52.relationRow8523 at r8523

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8523

  unfold Seg52.relationRow8524 at r8524

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8524

  unfold Seg52.relationRow8525 at r8525

  unfold Seg52.relationRow8526 at r8526

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8526

  unfold Seg52.relationRow8527 at r8527

  unfold Seg52.relationRow8528 at r8528

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8528

  unfold Seg52.relationRow8529 at r8529

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8529

  have hnextx : seg52BlindDeltaX242 rho =
      seg52BlindDeltaX241 rho + rho 52916 := by
    unfold seg52BlindDeltaX242 seg52BlindDeltaX241
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 92]

    ring

  have hnexty : seg52BlindDeltaY242 rho =
      seg52BlindDeltaY241 rho + rho 52917 := by
    unfold seg52BlindDeltaY242 seg52BlindDeltaY241
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 92]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 242
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX241 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY241 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX242 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY242 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY241 rho) (rho 52917)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 242)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (2203407895172835048751996239651722897202444515700048382087296164906444292884 : Seg52.F) (3448466306987922263614383402131330016976447875891964797858321066322296943384 : Seg52.F)
    (5651874202160757312366379641783052914178892391592013179945617231228741236268 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5795376365332425280251108321101108099365152824664954485845090213493474225511 : Seg52.F) (2804388294726016125662420118254808533838138442815855271791669649881650081475 : Seg52.F)
    (2902823778148234976100277600948068094267423525193951070508650400515105641806 : Seg52.F) (5671053344592727771906963833821946238787773899323490641818704286979229043571 : Seg52.F)
    (4995995442440448160634441536650216514399451459262099030076912389595112295657 : Seg52.F) (6241053854255535375496828699129823634173454819454015445847937291010964946157 : Seg52.F)
    (2773408404835642652341861104959600292588125435830573186116529168938180195470 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX241 rho) (seg52BlindDeltaY241 rho) (rho 51420)
    (rho 52910) (rho 52911) (rho 52912) (rho 52914)
    (rho 52913) (rho 52915) (rho 52916) (rho 52917) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 242)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L242]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX241 seg52BlindDeltaY241;
        first | linear_combination r8522 | linear_combination -r8522)
    (by unfold seg52BlindDeltaX241 seg52BlindDeltaY241;
        first | linear_combination r8523 | linear_combination -r8523)
    (by unfold seg52BlindDeltaX241 seg52BlindDeltaY241;
        first | linear_combination r8524 | linear_combination -r8524)
    (by first | linear_combination r8525 | linear_combination -r8525)
    (by unfold seg52BlindDeltaX241 seg52BlindDeltaY241;
        first | linear_combination r8526 | linear_combination -r8526)
    (by first | linear_combination r8527 | linear_combination -r8527)
    (by unfold seg52BlindDeltaX241; first | linear_combination r8528 | linear_combination -r8528)
    (by unfold seg52BlindDeltaY241; first | linear_combination r8529 | linear_combination -r8529)
    (by linear_combination r7031)

theorem seg52Blind_rows243 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7032 rho ∧ Seg52.relationRow8530 rho ∧ Seg52.relationRow8531 rho ∧ Seg52.relationRow8532 rho ∧ Seg52.relationRow8533 rho ∧ Seg52.relationRow8534 rho ∧ Seg52.relationRow8535 rho ∧ Seg52.relationRow8536 rho ∧ Seg52.relationRow8537 rho := by
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

    _, _, _, _, _, _, p106, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7032, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart106 at p106

  rcases p106 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8530, r8531, r8532, r8533, r8534, r8535, r8536, r8537, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7032, r8530, r8531, r8532, r8533, r8534, r8535, r8536, r8537⟩

theorem seg52Blind_rung243 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51421 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 243)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      243 (Bool.toZMod bit) (seg52BlindAccState rho 243)
      (seg52BlindAccState rho 244) := by
  obtain ⟨r7032, r8530, r8531, r8532, r8533, r8534, r8535, r8536, r8537⟩ := seg52Blind_rows243 rho h
  unfold Seg52.relationRow7032 at r7032

  unfold Seg52.relationRow8530 at r8530

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8530

  unfold Seg52.relationRow8531 at r8531

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8531

  unfold Seg52.relationRow8532 at r8532

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8532

  unfold Seg52.relationRow8533 at r8533

  unfold Seg52.relationRow8534 at r8534

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8534

  unfold Seg52.relationRow8535 at r8535

  unfold Seg52.relationRow8536 at r8536

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8536

  unfold Seg52.relationRow8537 at r8537

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8537

  have hnextx : seg52BlindDeltaX243 rho =
      seg52BlindDeltaX242 rho + rho 52924 := by
    unfold seg52BlindDeltaX243 seg52BlindDeltaX242
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 93]

    ring

  have hnexty : seg52BlindDeltaY243 rho =
      seg52BlindDeltaY242 rho + rho 52925 := by
    unfold seg52BlindDeltaY243 seg52BlindDeltaY242
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 93]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 243
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX242 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY242 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX243 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY243 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY242 rho) (rho 52925)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 243)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (2579576461021703843062238166306385538971946073339432738818486279193087908325 : Seg52.F) (2416772477807176936961022868245741931807687643073911419383531377235193867027 : Seg52.F)
    (4996348938828880780023261034552127470779633716413344158202017656428281775352 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5054703949369480008265337863130172882247344153175250621606584714879089757143 : Seg52.F) (5601485619389641128729184567002420572067936942603615555204830633048519319217 : Seg52.F)
    (8201628241980808648367014804422567103406614700569427414153625827007033516096 : Seg52.F) (1978452197506266677604550734876224268318213547823483511718485120057340746806 : Seg52.F)
    (6027689271621193487287802070535804599568211692080152408551702078682215372014 : Seg52.F) (5864885288406666581186586772475160992403953261814631089116747176724321330716 : Seg52.F)
    (6466009551922103746644274203905322263057685787330580316216748335860068492235 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX242 rho) (seg52BlindDeltaY242 rho) (rho 51421)
    (rho 52918) (rho 52919) (rho 52920) (rho 52922)
    (rho 52921) (rho 52923) (rho 52924) (rho 52925) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 243)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L243]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX242 seg52BlindDeltaY242;
        first | linear_combination r8530 | linear_combination -r8530)
    (by unfold seg52BlindDeltaX242 seg52BlindDeltaY242;
        first | linear_combination r8531 | linear_combination -r8531)
    (by unfold seg52BlindDeltaX242 seg52BlindDeltaY242;
        first | linear_combination r8532 | linear_combination -r8532)
    (by first | linear_combination r8533 | linear_combination -r8533)
    (by unfold seg52BlindDeltaX242 seg52BlindDeltaY242;
        first | linear_combination r8534 | linear_combination -r8534)
    (by first | linear_combination r8535 | linear_combination -r8535)
    (by unfold seg52BlindDeltaX242; first | linear_combination r8536 | linear_combination -r8536)
    (by unfold seg52BlindDeltaY242; first | linear_combination r8537 | linear_combination -r8537)
    (by linear_combination r7032)

theorem seg52Blind_rows244 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7033 rho ∧ Seg52.relationRow8538 rho ∧ Seg52.relationRow8539 rho ∧ Seg52.relationRow8540 rho ∧ Seg52.relationRow8541 rho ∧ Seg52.relationRow8542 rho ∧ Seg52.relationRow8543 rho ∧ Seg52.relationRow8544 rho ∧ Seg52.relationRow8545 rho := by
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

    _, _, _, _, _, _, p106, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7033, _, _, _, _, _, _⟩

  unfold Seg52.relationPart106 at p106

  rcases p106 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8538, r8539, r8540, r8541, r8542, r8543, r8544, r8545, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7033, r8538, r8539, r8540, r8541, r8542, r8543, r8544, r8545⟩

theorem seg52Blind_rung244 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51422 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 244)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      244 (Bool.toZMod bit) (seg52BlindAccState rho 244)
      (seg52BlindAccState rho 245) := by
  obtain ⟨r7033, r8538, r8539, r8540, r8541, r8542, r8543, r8544, r8545⟩ := seg52Blind_rows244 rho h
  unfold Seg52.relationRow7033 at r7033

  unfold Seg52.relationRow8538 at r8538

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8538

  unfold Seg52.relationRow8539 at r8539

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8539

  unfold Seg52.relationRow8540 at r8540

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8540

  unfold Seg52.relationRow8541 at r8541

  unfold Seg52.relationRow8542 at r8542

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8542

  unfold Seg52.relationRow8543 at r8543

  unfold Seg52.relationRow8544 at r8544

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8544

  unfold Seg52.relationRow8545 at r8545

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8545

  have hnextx : seg52BlindDeltaX244 rho =
      seg52BlindDeltaX243 rho + rho 52932 := by
    unfold seg52BlindDeltaX244 seg52BlindDeltaX243
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 94]

    ring

  have hnexty : seg52BlindDeltaY244 rho =
      seg52BlindDeltaY243 rho + rho 52933 := by
    unfold seg52BlindDeltaY244 seg52BlindDeltaY243
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 94]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 244
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX243 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY243 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX244 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY244 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY243 rho) (rho 52933)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 244)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (2514857472370197755194646005525823698508853960596342289202109878754445993616 : Seg52.F) (754628652708249502357400135309921781955918134996983597452135724766179961977 : Seg52.F)
    (3269486125078447257552046140835745480464772095593325886654245603520625955593 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (8172949235390102498771900239037686348711764669444278188324224876846579830488 : Seg52.F) (2291848306146904448449527014905496286647056653699481663383632137549226627925 : Seg52.F)
    (6378915408891041453484610792489999331570369577930014658719925711199666616324 : Seg52.F) (4677364479696824080456115307318514279825491842592336608554691172134405775560 : Seg52.F)
    (7689833096720120921891424803471624749419981200157080230483097731151229277064 : Seg52.F) (5929604277058172669054178933255722832867045374557721538733123577162963245425 : Seg52.F)
    (3767097269731546343792709631463032251550407492561727219380542283783003463481 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX243 rho) (seg52BlindDeltaY243 rho) (rho 51422)
    (rho 52926) (rho 52927) (rho 52928) (rho 52930)
    (rho 52929) (rho 52931) (rho 52932) (rho 52933) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 244)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L244]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX243 seg52BlindDeltaY243;
        first | linear_combination r8538 | linear_combination -r8538)
    (by unfold seg52BlindDeltaX243 seg52BlindDeltaY243;
        first | linear_combination r8539 | linear_combination -r8539)
    (by unfold seg52BlindDeltaX243 seg52BlindDeltaY243;
        first | linear_combination r8540 | linear_combination -r8540)
    (by first | linear_combination r8541 | linear_combination -r8541)
    (by unfold seg52BlindDeltaX243 seg52BlindDeltaY243;
        first | linear_combination r8542 | linear_combination -r8542)
    (by first | linear_combination r8543 | linear_combination -r8543)
    (by unfold seg52BlindDeltaX243; first | linear_combination r8544 | linear_combination -r8544)
    (by unfold seg52BlindDeltaY243; first | linear_combination r8545 | linear_combination -r8545)
    (by linear_combination r7033)

theorem seg52Blind_rows245 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7034 rho ∧ Seg52.relationRow8546 rho ∧ Seg52.relationRow8547 rho ∧ Seg52.relationRow8548 rho ∧ Seg52.relationRow8549 rho ∧ Seg52.relationRow8550 rho ∧ Seg52.relationRow8551 rho ∧ Seg52.relationRow8552 rho ∧ Seg52.relationRow8553 rho := by
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

    _, _, _, _, _, _, p106, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7034, _, _, _, _, _⟩

  unfold Seg52.relationPart106 at p106

  rcases p106 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8546, r8547, r8548, r8549, r8550, r8551, r8552, r8553, _, _, _, _, _, _⟩

  exact ⟨r7034, r8546, r8547, r8548, r8549, r8550, r8551, r8552, r8553⟩

theorem seg52Blind_rung245 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51423 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 245)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      245 (Bool.toZMod bit) (seg52BlindAccState rho 245)
      (seg52BlindAccState rho 246) := by
  obtain ⟨r7034, r8546, r8547, r8548, r8549, r8550, r8551, r8552, r8553⟩ := seg52Blind_rows245 rho h
  unfold Seg52.relationRow7034 at r7034

  unfold Seg52.relationRow8546 at r8546

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8546

  unfold Seg52.relationRow8547 at r8547

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8547

  unfold Seg52.relationRow8548 at r8548

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8548

  unfold Seg52.relationRow8549 at r8549

  unfold Seg52.relationRow8550 at r8550

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8550

  unfold Seg52.relationRow8551 at r8551

  unfold Seg52.relationRow8552 at r8552

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8552

  unfold Seg52.relationRow8553 at r8553

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8553

  have hnextx : seg52BlindDeltaX245 rho =
      seg52BlindDeltaX244 rho + rho 52940 := by
    unfold seg52BlindDeltaX245 seg52BlindDeltaX244
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 95]

    ring

  have hnexty : seg52BlindDeltaY245 rho =
      seg52BlindDeltaY244 rho + rho 52941 := by
    unfold seg52BlindDeltaY245 seg52BlindDeltaY244
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 95]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 245
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX244 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY244 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX245 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY245 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY244 rho) (rho 52941)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 245)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (4875653010124723802105271487582443021807143081825221610768106802677393137478 : Seg52.F) (837830745026968237423835190512321529772325628897387301638787230114395216226 : Seg52.F)
    (5713483755151692039529106678094764551579468710722608912406894032791788353704 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6192617647388288407007453842040928560801823687941953698141418856282585745487 : Seg52.F) (5531294256398319965953230848414062600628135281356110451193038651571188380940 : Seg52.F)
    (2570807001276145449324531511902523303421864657760087009493837657773969935704 : Seg52.F) (6119815029836556037983158482495769450696490408038757353122107864397857228893 : Seg52.F)
    (7606631004401402186824989748269225001603573706256676526296446225803014022815 : Seg52.F) (3568808739303646622143553451199103509568756253328842217167126653240016101563 : Seg52.F)
    (2324646719591814386265666456285777080679408927115306474813125591519552010148 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX244 rho) (seg52BlindDeltaY244 rho) (rho 51423)
    (rho 52934) (rho 52935) (rho 52936) (rho 52938)
    (rho 52937) (rho 52939) (rho 52940) (rho 52941) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 245)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L245]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX244 seg52BlindDeltaY244;
        first | linear_combination r8546 | linear_combination -r8546)
    (by unfold seg52BlindDeltaX244 seg52BlindDeltaY244;
        first | linear_combination r8547 | linear_combination -r8547)
    (by unfold seg52BlindDeltaX244 seg52BlindDeltaY244;
        first | linear_combination r8548 | linear_combination -r8548)
    (by first | linear_combination r8549 | linear_combination -r8549)
    (by unfold seg52BlindDeltaX244 seg52BlindDeltaY244;
        first | linear_combination r8550 | linear_combination -r8550)
    (by first | linear_combination r8551 | linear_combination -r8551)
    (by unfold seg52BlindDeltaX244; first | linear_combination r8552 | linear_combination -r8552)
    (by unfold seg52BlindDeltaY244; first | linear_combination r8553 | linear_combination -r8553)
    (by linear_combination r7034)

theorem seg52Blind_rows246 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7035 rho ∧ Seg52.relationRow8554 rho ∧ Seg52.relationRow8555 rho ∧ Seg52.relationRow8556 rho ∧ Seg52.relationRow8557 rho ∧ Seg52.relationRow8558 rho ∧ Seg52.relationRow8559 rho ∧ Seg52.relationRow8560 rho ∧ Seg52.relationRow8561 rho := by
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

    _, _, _, _, _, _, p106, p107

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7035, _, _, _, _⟩

  unfold Seg52.relationPart106 at p106

  rcases p106 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8554, r8555, r8556, r8557, r8558, r8559⟩

  unfold Seg52.relationPart107 at p107

  rcases p107 with ⟨r8560, r8561, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7035, r8554, r8555, r8556, r8557, r8558, r8559, r8560, r8561⟩

theorem seg52Blind_rung246 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51424 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 246)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      246 (Bool.toZMod bit) (seg52BlindAccState rho 246)
      (seg52BlindAccState rho 247) := by
  obtain ⟨r7035, r8554, r8555, r8556, r8557, r8558, r8559, r8560, r8561⟩ := seg52Blind_rows246 rho h
  unfold Seg52.relationRow7035 at r7035

  unfold Seg52.relationRow8554 at r8554

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8554

  unfold Seg52.relationRow8555 at r8555

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8555

  unfold Seg52.relationRow8556 at r8556

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8556

  unfold Seg52.relationRow8557 at r8557

  unfold Seg52.relationRow8558 at r8558

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8558

  unfold Seg52.relationRow8559 at r8559

  unfold Seg52.relationRow8560 at r8560

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8560

  unfold Seg52.relationRow8561 at r8561

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8561

  have hnextx : seg52BlindDeltaX246 rho =
      seg52BlindDeltaX245 rho + rho 52948 := by
    unfold seg52BlindDeltaX246 seg52BlindDeltaX245
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 96]

    ring

  have hnexty : seg52BlindDeltaY246 rho =
      seg52BlindDeltaY245 rho + rho 52949 := by
    unfold seg52BlindDeltaY246 seg52BlindDeltaY245
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 96]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 246
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX245 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY245 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX246 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY246 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY245 rho) (rho 52949)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 246)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7179761945373182665345787383507852275205996006885247412066571252852218245855 : Seg52.F) (4762005878824215829825631321512654478131353721275819073046772322870151862794 : Seg52.F)
    (3497306074769028070922593766238960221961450393007002657178110119804960869608 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5101400651441189407483351544755435501663024206878720700596611963380843413851 : Seg52.F) (7981528139320114171798714864559238512156499148515537947774068280127163008260 : Seg52.F)
    (6137069378560425525105402465535383648320524364227647625661240755946255236748 : Seg52.F) (2972688831071837780483714302418888123151130968801947930493135679059695321215 : Seg52.F)
    (3682455870604154594423193617268892053244545613878244754888461133047257376247 : Seg52.F) (1264699804055187758903037555273694256169903328268816415868662203065190993186 : Seg52.F)
    (5471772918356532643765110636362658408224768366352115897442097776857713917826 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX245 rho) (seg52BlindDeltaY245 rho) (rho 51424)
    (rho 52942) (rho 52943) (rho 52944) (rho 52946)
    (rho 52945) (rho 52947) (rho 52948) (rho 52949) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 246)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L246]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX245 seg52BlindDeltaY245;
        first | linear_combination r8554 | linear_combination -r8554)
    (by unfold seg52BlindDeltaX245 seg52BlindDeltaY245;
        first | linear_combination r8555 | linear_combination -r8555)
    (by unfold seg52BlindDeltaX245 seg52BlindDeltaY245;
        first | linear_combination r8556 | linear_combination -r8556)
    (by first | linear_combination r8557 | linear_combination -r8557)
    (by unfold seg52BlindDeltaX245 seg52BlindDeltaY245;
        first | linear_combination r8558 | linear_combination -r8558)
    (by first | linear_combination r8559 | linear_combination -r8559)
    (by unfold seg52BlindDeltaX245; first | linear_combination r8560 | linear_combination -r8560)
    (by unfold seg52BlindDeltaY245; first | linear_combination r8561 | linear_combination -r8561)
    (by linear_combination r7035)

theorem seg52Blind_rows247 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7036 rho ∧ Seg52.relationRow8562 rho ∧ Seg52.relationRow8563 rho ∧ Seg52.relationRow8564 rho ∧ Seg52.relationRow8565 rho ∧ Seg52.relationRow8566 rho ∧ Seg52.relationRow8567 rho ∧ Seg52.relationRow8568 rho ∧ Seg52.relationRow8569 rho := by
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

    _, _, _, _, _, _, _, p107

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7036, _, _, _⟩

  unfold Seg52.relationPart107 at p107

  rcases p107 with ⟨_, _, r8562, r8563, r8564, r8565, r8566, r8567, r8568, r8569, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7036, r8562, r8563, r8564, r8565, r8566, r8567, r8568, r8569⟩

theorem seg52Blind_rung247 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51425 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 247)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      247 (Bool.toZMod bit) (seg52BlindAccState rho 247)
      (seg52BlindAccState rho 248) := by
  obtain ⟨r7036, r8562, r8563, r8564, r8565, r8566, r8567, r8568, r8569⟩ := seg52Blind_rows247 rho h
  unfold Seg52.relationRow7036 at r7036

  unfold Seg52.relationRow8562 at r8562

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8562

  unfold Seg52.relationRow8563 at r8563

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8563

  unfold Seg52.relationRow8564 at r8564

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8564

  unfold Seg52.relationRow8565 at r8565

  unfold Seg52.relationRow8566 at r8566

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8566

  unfold Seg52.relationRow8567 at r8567

  unfold Seg52.relationRow8568 at r8568

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8568

  unfold Seg52.relationRow8569 at r8569

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8569

  have hnextx : seg52BlindDeltaX247 rho =
      seg52BlindDeltaX246 rho + rho 52956 := by
    unfold seg52BlindDeltaX247 seg52BlindDeltaX246
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 97]

    ring

  have hnexty : seg52BlindDeltaY247 rho =
      seg52BlindDeltaY246 rho + rho 52957 := by
    unfold seg52BlindDeltaY247 seg52BlindDeltaY246
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 97]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 247
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX246 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY246 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX247 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY247 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY246 rho) (rho 52957)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 247)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3205778446841165504107412647422570446185838532302611287722449995897633519006 : Seg52.F) (6161368615757064578468735830384419737443415875146445724866075505601369212342 : Seg52.F)
    (922685313169859658327323539025443652253355072294993184653292045581593492307 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (1900892461963676509640778516803471664077224137855858051159565579766427638818 : Seg52.F) (4287670697339900789370947690166861455441816137951612202103027632982100060505 : Seg52.F)
    (4136388419679310950960951468679232432376196009946805418881652989243827062098 : Seg52.F) (3394270195696985021778291261454563608844071744136467992192255746065724196317 : Seg52.F)
    (2283093133671305845780089108397126793932483460007618103069157950316040026699 : Seg52.F) (5238683302587204920141412291358976085190060802851452540212783460019775720035 : Seg52.F)
    (5050191553731385402470533677326982922531827591017595835742977709851685042724 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX246 rho) (seg52BlindDeltaY246 rho) (rho 51425)
    (rho 52950) (rho 52951) (rho 52952) (rho 52954)
    (rho 52953) (rho 52955) (rho 52956) (rho 52957) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 247)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L247]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX246 seg52BlindDeltaY246;
        first | linear_combination r8562 | linear_combination -r8562)
    (by unfold seg52BlindDeltaX246 seg52BlindDeltaY246;
        first | linear_combination r8563 | linear_combination -r8563)
    (by unfold seg52BlindDeltaX246 seg52BlindDeltaY246;
        first | linear_combination r8564 | linear_combination -r8564)
    (by first | linear_combination r8565 | linear_combination -r8565)
    (by unfold seg52BlindDeltaX246 seg52BlindDeltaY246;
        first | linear_combination r8566 | linear_combination -r8566)
    (by first | linear_combination r8567 | linear_combination -r8567)
    (by unfold seg52BlindDeltaX246; first | linear_combination r8568 | linear_combination -r8568)
    (by unfold seg52BlindDeltaY246; first | linear_combination r8569 | linear_combination -r8569)
    (by linear_combination r7036)

theorem seg52Blind_rows248 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7037 rho ∧ Seg52.relationRow8570 rho ∧ Seg52.relationRow8571 rho ∧ Seg52.relationRow8572 rho ∧ Seg52.relationRow8573 rho ∧ Seg52.relationRow8574 rho ∧ Seg52.relationRow8575 rho ∧ Seg52.relationRow8576 rho ∧ Seg52.relationRow8577 rho := by
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

    _, _, _, _, _, _, _, p107

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7037, _, _⟩

  unfold Seg52.relationPart107 at p107

  rcases p107 with ⟨_, _, _, _, _, _, _, _, _, _, r8570, r8571, r8572, r8573, r8574, r8575, r8576, r8577, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7037, r8570, r8571, r8572, r8573, r8574, r8575, r8576, r8577⟩

theorem seg52Blind_rung248 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51426 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 248)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      248 (Bool.toZMod bit) (seg52BlindAccState rho 248)
      (seg52BlindAccState rho 249) := by
  obtain ⟨r7037, r8570, r8571, r8572, r8573, r8574, r8575, r8576, r8577⟩ := seg52Blind_rows248 rho h
  unfold Seg52.relationRow7037 at r7037

  unfold Seg52.relationRow8570 at r8570

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8570

  unfold Seg52.relationRow8571 at r8571

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8571

  unfold Seg52.relationRow8572 at r8572

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8572

  unfold Seg52.relationRow8573 at r8573

  unfold Seg52.relationRow8574 at r8574

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8574

  unfold Seg52.relationRow8575 at r8575

  unfold Seg52.relationRow8576 at r8576

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8576

  unfold Seg52.relationRow8577 at r8577

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8577

  have hnextx : seg52BlindDeltaX248 rho =
      seg52BlindDeltaX247 rho + rho 52964 := by
    unfold seg52BlindDeltaX248 seg52BlindDeltaX247
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 98]

    ring

  have hnexty : seg52BlindDeltaY248 rho =
      seg52BlindDeltaY247 rho + rho 52965 := by
    unfold seg52BlindDeltaY248 seg52BlindDeltaY247
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 98]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 248
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX247 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY247 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX248 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY248 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY247 rho) (rho 52965)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 248)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3637295467543686737834382267987615682687332247363798918988631490872682703987 : Seg52.F) (2391382174518060191774241777672417365203178192287378483687464476900478563037 : Seg52.F)
    (6028677642061746929608624045660033047890510439651177402676095967773161267024 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4350753457803126617239087690150575952407387343445826335205579906960839554722 : Seg52.F) (7744348585832122768075044097357239165124010007619404673097934308000867538251 : Seg52.F)
    (4744066201361012552590713371123910662718173171646119997147627113007781772154 : Seg52.F) (7986328868085048780486265555216982383681361301222809630133404507816215461524 : Seg52.F)
    (6053079574910310232474583161109129166172721142866685344247768979016930676004 : Seg52.F) (4807166281884683686414442670793930848688567087790264908946601965044726535054 : Seg52.F)
    (458132881343321643762559383564564147694538033931254197801828948101193777517 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX247 rho) (seg52BlindDeltaY247 rho) (rho 51426)
    (rho 52958) (rho 52959) (rho 52960) (rho 52962)
    (rho 52961) (rho 52963) (rho 52964) (rho 52965) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 248)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L248]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX247 seg52BlindDeltaY247;
        first | linear_combination r8570 | linear_combination -r8570)
    (by unfold seg52BlindDeltaX247 seg52BlindDeltaY247;
        first | linear_combination r8571 | linear_combination -r8571)
    (by unfold seg52BlindDeltaX247 seg52BlindDeltaY247;
        first | linear_combination r8572 | linear_combination -r8572)
    (by first | linear_combination r8573 | linear_combination -r8573)
    (by unfold seg52BlindDeltaX247 seg52BlindDeltaY247;
        first | linear_combination r8574 | linear_combination -r8574)
    (by first | linear_combination r8575 | linear_combination -r8575)
    (by unfold seg52BlindDeltaX247; first | linear_combination r8576 | linear_combination -r8576)
    (by unfold seg52BlindDeltaY247; first | linear_combination r8577 | linear_combination -r8577)
    (by linear_combination r7037)

theorem seg52Blind_rows249 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7038 rho ∧ Seg52.relationRow8578 rho ∧ Seg52.relationRow8579 rho ∧ Seg52.relationRow8580 rho ∧ Seg52.relationRow8581 rho ∧ Seg52.relationRow8582 rho ∧ Seg52.relationRow8583 rho ∧ Seg52.relationRow8584 rho ∧ Seg52.relationRow8585 rho := by
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

    _, _, _, _, _, _, _, p107

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7038, _⟩

  unfold Seg52.relationPart107 at p107

  rcases p107 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8578, r8579, r8580, r8581, r8582, r8583, r8584, r8585, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7038, r8578, r8579, r8580, r8581, r8582, r8583, r8584, r8585⟩

theorem seg52Blind_rung249 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51427 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 249)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      249 (Bool.toZMod bit) (seg52BlindAccState rho 249)
      (seg52BlindAccState rho 250) := by
  obtain ⟨r7038, r8578, r8579, r8580, r8581, r8582, r8583, r8584, r8585⟩ := seg52Blind_rows249 rho h
  unfold Seg52.relationRow7038 at r7038

  unfold Seg52.relationRow8578 at r8578

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8578

  unfold Seg52.relationRow8579 at r8579

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8579

  unfold Seg52.relationRow8580 at r8580

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8580

  unfold Seg52.relationRow8581 at r8581

  unfold Seg52.relationRow8582 at r8582

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8582

  unfold Seg52.relationRow8583 at r8583

  unfold Seg52.relationRow8584 at r8584

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8584

  unfold Seg52.relationRow8585 at r8585

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8585

  have hnextx : seg52BlindDeltaX249 rho =
      seg52BlindDeltaX248 rho + rho 52972 := by
    unfold seg52BlindDeltaX249 seg52BlindDeltaX248
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 99]

    ring

  have hnexty : seg52BlindDeltaY249 rho =
      seg52BlindDeltaY248 rho + rho 52973 := by
    unfold seg52BlindDeltaY249 seg52BlindDeltaY248
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 99]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 249
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX248 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY248 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX249 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY249 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY248 rho) (rho 52973)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 249)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (6040287128678729511763090676601340065858477829358795237452282720529066134675 : Seg52.F) (211065313773697690845714574818954595516654490806675894571851535063540139993 : Seg52.F)
    (6251352442452427202608805251420294661375132320165471132024134255592606274668 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4293681703212942226241860119445843202620766590413090406420978233149069990778 : Seg52.F) (1305409244711178263509137317536703823855434028379551891190204949390309402401 : Seg52.F)
    (7669045227694257730776453443358451663824146133794592849966096451796486309872 : Seg52.F) (1687634193423485956652330228636514267822633673284391909916374707104706944713 : Seg52.F)
    (8233396435654672733403110363962591935859244844347387933363381920853869099048 : Seg52.F) (2404174620749640912485734262180206465517421505795268590482950735388343104366 : Seg52.F)
    (6756827556004884467596494710145032263553265661869671918018858748812702294328 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX248 rho) (seg52BlindDeltaY248 rho) (rho 51427)
    (rho 52966) (rho 52967) (rho 52968) (rho 52970)
    (rho 52969) (rho 52971) (rho 52972) (rho 52973) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 249)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L249]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX248 seg52BlindDeltaY248;
        first | linear_combination r8578 | linear_combination -r8578)
    (by unfold seg52BlindDeltaX248 seg52BlindDeltaY248;
        first | linear_combination r8579 | linear_combination -r8579)
    (by unfold seg52BlindDeltaX248 seg52BlindDeltaY248;
        first | linear_combination r8580 | linear_combination -r8580)
    (by first | linear_combination r8581 | linear_combination -r8581)
    (by unfold seg52BlindDeltaX248 seg52BlindDeltaY248;
        first | linear_combination r8582 | linear_combination -r8582)
    (by first | linear_combination r8583 | linear_combination -r8583)
    (by unfold seg52BlindDeltaX248; first | linear_combination r8584 | linear_combination -r8584)
    (by unfold seg52BlindDeltaY248; first | linear_combination r8585 | linear_combination -r8585)
    (by linear_combination r7038)

theorem seg52Blind_rows250 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7039 rho ∧ Seg52.relationRow8586 rho ∧ Seg52.relationRow8587 rho ∧ Seg52.relationRow8588 rho ∧ Seg52.relationRow8589 rho ∧ Seg52.relationRow8590 rho ∧ Seg52.relationRow8591 rho ∧ Seg52.relationRow8592 rho ∧ Seg52.relationRow8593 rho := by
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

    _, _, _, _, _, _, _, p107

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7039⟩

  unfold Seg52.relationPart107 at p107

  rcases p107 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8586, r8587, r8588, r8589, r8590, r8591, r8592, r8593, _, _, _, _, _, _, _⟩

  exact ⟨r7039, r8586, r8587, r8588, r8589, r8590, r8591, r8592, r8593⟩

theorem seg52Blind_rung250 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51428 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 250)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      250 (Bool.toZMod bit) (seg52BlindAccState rho 250)
      (seg52BlindAccState rho 251) := by
  obtain ⟨r7039, r8586, r8587, r8588, r8589, r8590, r8591, r8592, r8593⟩ := seg52Blind_rows250 rho h
  unfold Seg52.relationRow7039 at r7039

  unfold Seg52.relationRow8586 at r8586

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8586

  unfold Seg52.relationRow8587 at r8587

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8587

  unfold Seg52.relationRow8588 at r8588

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8588

  unfold Seg52.relationRow8589 at r8589

  unfold Seg52.relationRow8590 at r8590

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8590

  unfold Seg52.relationRow8591 at r8591

  unfold Seg52.relationRow8592 at r8592

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8592

  unfold Seg52.relationRow8593 at r8593

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8593

  have hnextx : seg52BlindDeltaX250 rho =
      seg52BlindDeltaX249 rho + rho 52980 := by
    unfold seg52BlindDeltaX250 seg52BlindDeltaX249
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 100]

    ring

  have hnexty : seg52BlindDeltaY250 rho =
      seg52BlindDeltaY249 rho + rho 52981 := by
    unfold seg52BlindDeltaY250 seg52BlindDeltaY249
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 100]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 250
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX249 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY249 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX250 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY250 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY249 rho) (rho 52981)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 250)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3423249253909403246139040301463916746144409278219181153258610840910387912442 : Seg52.F) (6135780641178353956297679987905829122804967566789579500471565046427035547949 : Seg52.F)
    (1114568145659386778187895350588199337573477509854696825794942431420014221350 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (599777004534220749120502838015143623707978608149568606760569517361110658934 : Seg52.F) (5525282322157049009926327647925022509614376580291064601095875967132583903437 : Seg52.F)
    (4492593394048688590737191085005912262920230107213966480357334310224790308748 : Seg52.F) (5140125981417146259393730273521788552644641601090457645155128022334705607696 : Seg52.F)
    (2308681108250016467951144950875717408570931768364484327463668409490373691092 : Seg52.F) (5021212495518967178109784637317629785231490056934882674676622615007021326599 : Seg52.F)
    (3304335768011224164855094665259757978731257734063606182780105433582703631345 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX249 rho) (seg52BlindDeltaY249 rho) (rho 51428)
    (rho 52974) (rho 52975) (rho 52976) (rho 52978)
    (rho 52977) (rho 52979) (rho 52980) (rho 52981) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 250)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L250]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX249 seg52BlindDeltaY249;
        first | linear_combination r8586 | linear_combination -r8586)
    (by unfold seg52BlindDeltaX249 seg52BlindDeltaY249;
        first | linear_combination r8587 | linear_combination -r8587)
    (by unfold seg52BlindDeltaX249 seg52BlindDeltaY249;
        first | linear_combination r8588 | linear_combination -r8588)
    (by first | linear_combination r8589 | linear_combination -r8589)
    (by unfold seg52BlindDeltaX249 seg52BlindDeltaY249;
        first | linear_combination r8590 | linear_combination -r8590)
    (by first | linear_combination r8591 | linear_combination -r8591)
    (by unfold seg52BlindDeltaX249; first | linear_combination r8592 | linear_combination -r8592)
    (by unfold seg52BlindDeltaY249; first | linear_combination r8593 | linear_combination -r8593)
    (by linear_combination r7039)

theorem seg52Blind_hstep_c24 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 241 ≤ i → i < 251 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung241 rho h bits[241]! (hbitAt 241 (by omega)) hacc
  · exact seg52Blind_rung242 rho h bits[242]! (hbitAt 242 (by omega)) hacc
  · exact seg52Blind_rung243 rho h bits[243]! (hbitAt 243 (by omega)) hacc
  · exact seg52Blind_rung244 rho h bits[244]! (hbitAt 244 (by omega)) hacc
  · exact seg52Blind_rung245 rho h bits[245]! (hbitAt 245 (by omega)) hacc
  · exact seg52Blind_rung246 rho h bits[246]! (hbitAt 246 (by omega)) hacc
  · exact seg52Blind_rung247 rho h bits[247]! (hbitAt 247 (by omega)) hacc
  · exact seg52Blind_rung248 rho h bits[248]! (hbitAt 248 (by omega)) hacc
  · exact seg52Blind_rung249 rho h bits[249]! (hbitAt 249 (by omega)) hacc
  · exact seg52Blind_rung250 rho h bits[250]! (hbitAt 250 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

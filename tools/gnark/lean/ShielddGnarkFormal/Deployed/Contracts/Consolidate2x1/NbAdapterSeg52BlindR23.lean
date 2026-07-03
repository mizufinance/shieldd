import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows231 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7020 rho ∧ Seg52.relationRow8434 rho ∧ Seg52.relationRow8435 rho ∧ Seg52.relationRow8436 rho ∧ Seg52.relationRow8437 rho ∧ Seg52.relationRow8438 rho ∧ Seg52.relationRow8439 rho ∧ Seg52.relationRow8440 rho ∧ Seg52.relationRow8441 rho := by
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

    _, _, _, _, _, p105, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7020, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart105 at p105

  rcases p105 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8434, r8435, r8436, r8437, r8438, r8439, r8440, r8441, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7020, r8434, r8435, r8436, r8437, r8438, r8439, r8440, r8441⟩

theorem seg52Blind_rung231 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51409 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 231)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      231 (Bool.toZMod bit) (seg52BlindAccState rho 231)
      (seg52BlindAccState rho 232) := by
  obtain ⟨r7020, r8434, r8435, r8436, r8437, r8438, r8439, r8440, r8441⟩ := seg52Blind_rows231 rho h
  unfold Seg52.relationRow7020 at r7020

  unfold Seg52.relationRow8434 at r8434

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8434

  unfold Seg52.relationRow8435 at r8435

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8435

  unfold Seg52.relationRow8436 at r8436

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8436

  unfold Seg52.relationRow8437 at r8437

  unfold Seg52.relationRow8438 at r8438

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8438

  unfold Seg52.relationRow8439 at r8439

  unfold Seg52.relationRow8440 at r8440

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8440

  unfold Seg52.relationRow8441 at r8441

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8441

  have hnextx : seg52BlindDeltaX231 rho =
      seg52BlindDeltaX230 rho + rho 52828 := by
    unfold seg52BlindDeltaX231 seg52BlindDeltaX230
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 81]

    ring

  have hnexty : seg52BlindDeltaY231 rho =
      seg52BlindDeltaY230 rho + rho 52829 := by
    unfold seg52BlindDeltaY231 seg52BlindDeltaY230
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 81]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 231
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX230 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY230 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX231 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY231 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY230 rho) (rho 52829)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 231)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3963348669445143823427405314053286362507305758458305350955318338551254885297 : Seg52.F) (2863905773352258312430188590311456228261990948132985882262740755286287811416 : Seg52.F)
    (6827254442797402135857593904364742590769296706591291233218059093837542696713 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4730509882521047420802994018605617450553735111988990510060762860448417509752 : Seg52.F) (868458302266357929784260556585626706789160668591807608447688166148445876163 : Seg52.F)
    (3372081631784657270900224132622969995639050554760602369398767258362887176631 : Seg52.F) (2637217354460130603026123934561744867851870030273039648730604825148676589411 : Seg52.F)
    (5580555976076112111818636348470090303113908387021077945672492700631121427625 : Seg52.F) (4481113079983226600821419624728260168868593576695758476979915117366154353744 : Seg52.F)
    (5807244394968239821222701004219801663524029304881024179204628630768732649630 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX230 rho) (seg52BlindDeltaY230 rho) (rho 51409)
    (rho 52822) (rho 52823) (rho 52824) (rho 52826)
    (rho 52825) (rho 52827) (rho 52828) (rho 52829) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 231)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L231]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX230 seg52BlindDeltaY230;
        first | linear_combination r8434 | linear_combination -r8434)
    (by unfold seg52BlindDeltaX230 seg52BlindDeltaY230;
        first | linear_combination r8435 | linear_combination -r8435)
    (by unfold seg52BlindDeltaX230 seg52BlindDeltaY230;
        first | linear_combination r8436 | linear_combination -r8436)
    (by first | linear_combination r8437 | linear_combination -r8437)
    (by unfold seg52BlindDeltaX230 seg52BlindDeltaY230;
        first | linear_combination r8438 | linear_combination -r8438)
    (by first | linear_combination r8439 | linear_combination -r8439)
    (by unfold seg52BlindDeltaX230; first | linear_combination r8440 | linear_combination -r8440)
    (by unfold seg52BlindDeltaY230; first | linear_combination r8441 | linear_combination -r8441)
    (by linear_combination r7020)

theorem seg52Blind_rows232 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7021 rho ∧ Seg52.relationRow8442 rho ∧ Seg52.relationRow8443 rho ∧ Seg52.relationRow8444 rho ∧ Seg52.relationRow8445 rho ∧ Seg52.relationRow8446 rho ∧ Seg52.relationRow8447 rho ∧ Seg52.relationRow8448 rho ∧ Seg52.relationRow8449 rho := by
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

    _, _, _, _, _, p105, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7021, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart105 at p105

  rcases p105 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8442, r8443, r8444, r8445, r8446, r8447, r8448, r8449, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7021, r8442, r8443, r8444, r8445, r8446, r8447, r8448, r8449⟩

theorem seg52Blind_rung232 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51410 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 232)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      232 (Bool.toZMod bit) (seg52BlindAccState rho 232)
      (seg52BlindAccState rho 233) := by
  obtain ⟨r7021, r8442, r8443, r8444, r8445, r8446, r8447, r8448, r8449⟩ := seg52Blind_rows232 rho h
  unfold Seg52.relationRow7021 at r7021

  unfold Seg52.relationRow8442 at r8442

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8442

  unfold Seg52.relationRow8443 at r8443

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8443

  unfold Seg52.relationRow8444 at r8444

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8444

  unfold Seg52.relationRow8445 at r8445

  unfold Seg52.relationRow8446 at r8446

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8446

  unfold Seg52.relationRow8447 at r8447

  unfold Seg52.relationRow8448 at r8448

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8448

  unfold Seg52.relationRow8449 at r8449

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8449

  have hnextx : seg52BlindDeltaX232 rho =
      seg52BlindDeltaX231 rho + rho 52836 := by
    unfold seg52BlindDeltaX232 seg52BlindDeltaX231
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 82]

    ring

  have hnexty : seg52BlindDeltaY232 rho =
      seg52BlindDeltaY231 rho + rho 52837 := by
    unfold seg52BlindDeltaY232 seg52BlindDeltaY231
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 82]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 232
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX231 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY231 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX232 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY232 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY231 rho) (rho 52837)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 232)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7542159258655056281906946526991183720469363449441588561022715280995183175685 : Seg52.F) (7276169017201277557067500180669644779323290237593273653744197081836798281968 : Seg52.F)
    (6373866526427963414725621768879281968416754351880798386831678906914572218612 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (372667203011285581226730154631257164193838363251563845806698475951360601605 : Seg52.F) (1484768422242819297649949070658412404778643083822250195864189986665927258533 : Seg52.F)
    (2460794889423031563146389053437031986715280836810763609335733415507879232974 : Seg52.F) (3920408858845028312817205527159185479526600961284197428726020093421005201209 : Seg52.F)
    (1168292732227092867181324758111901752052609097560790174191036374080610957073 : Seg52.F) (902302490773314142341878411790362810906535885712475266912518174922226063356 : Seg52.F)
    (4524052890583342111431619411622361051849298373869866399209213362496404037832 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX231 rho) (seg52BlindDeltaY231 rho) (rho 51410)
    (rho 52830) (rho 52831) (rho 52832) (rho 52834)
    (rho 52833) (rho 52835) (rho 52836) (rho 52837) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 232)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L232]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX231 seg52BlindDeltaY231;
        first | linear_combination r8442 | linear_combination -r8442)
    (by unfold seg52BlindDeltaX231 seg52BlindDeltaY231;
        first | linear_combination r8443 | linear_combination -r8443)
    (by unfold seg52BlindDeltaX231 seg52BlindDeltaY231;
        first | linear_combination r8444 | linear_combination -r8444)
    (by first | linear_combination r8445 | linear_combination -r8445)
    (by unfold seg52BlindDeltaX231 seg52BlindDeltaY231;
        first | linear_combination r8446 | linear_combination -r8446)
    (by first | linear_combination r8447 | linear_combination -r8447)
    (by unfold seg52BlindDeltaX231; first | linear_combination r8448 | linear_combination -r8448)
    (by unfold seg52BlindDeltaY231; first | linear_combination r8449 | linear_combination -r8449)
    (by linear_combination r7021)

theorem seg52Blind_rows233 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7022 rho ∧ Seg52.relationRow8450 rho ∧ Seg52.relationRow8451 rho ∧ Seg52.relationRow8452 rho ∧ Seg52.relationRow8453 rho ∧ Seg52.relationRow8454 rho ∧ Seg52.relationRow8455 rho ∧ Seg52.relationRow8456 rho ∧ Seg52.relationRow8457 rho := by
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

    _, _, _, _, _, p105, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7022, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart105 at p105

  rcases p105 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8450, r8451, r8452, r8453, r8454, r8455, r8456, r8457, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7022, r8450, r8451, r8452, r8453, r8454, r8455, r8456, r8457⟩

theorem seg52Blind_rung233 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51411 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 233)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      233 (Bool.toZMod bit) (seg52BlindAccState rho 233)
      (seg52BlindAccState rho 234) := by
  obtain ⟨r7022, r8450, r8451, r8452, r8453, r8454, r8455, r8456, r8457⟩ := seg52Blind_rows233 rho h
  unfold Seg52.relationRow7022 at r7022

  unfold Seg52.relationRow8450 at r8450

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8450

  unfold Seg52.relationRow8451 at r8451

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8451

  unfold Seg52.relationRow8452 at r8452

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8452

  unfold Seg52.relationRow8453 at r8453

  unfold Seg52.relationRow8454 at r8454

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8454

  unfold Seg52.relationRow8455 at r8455

  unfold Seg52.relationRow8456 at r8456

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8456

  unfold Seg52.relationRow8457 at r8457

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8457

  have hnextx : seg52BlindDeltaX233 rho =
      seg52BlindDeltaX232 rho + rho 52844 := by
    unfold seg52BlindDeltaX233 seg52BlindDeltaX232
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 83]

    ring

  have hnexty : seg52BlindDeltaY233 rho =
      seg52BlindDeltaY232 rho + rho 52845 := by
    unfold seg52BlindDeltaY233 seg52BlindDeltaY232
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 83]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 233
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX232 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY232 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX233 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY233 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY232 rho) (rho 52845)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 233)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3700573855116872232848760793370485896571534565608097032382980139794775125480 : Seg52.F) (7949343336988049666116721589765712339203085462761513234609986645779405119752 : Seg52.F)
    (3205455442676551474716657444354651704398720693215546439057733329656771006191 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (7361467416040925199206621726280188030839373159528018936900941726388400177229 : Seg52.F) (7445931393784576276737378554667587721373140734981652732523856263225507371632 : Seg52.F)
    (3545910700039114919128064864039007229187020896529801884530346241695575088004 : Seg52.F) (1345715424582057217032289732226630175561454681578984061398787119881707834448 : Seg52.F)
    (495118412440320758132103349015834192172813872392550593325246810138004119289 : Seg52.F) (4743887894311498191400064145411060634804364769545966795552253316122634113561 : Seg52.F)
    (7098746324846313207216535206554916355814444653575079766536446336035701404593 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX232 rho) (seg52BlindDeltaY232 rho) (rho 51411)
    (rho 52838) (rho 52839) (rho 52840) (rho 52842)
    (rho 52841) (rho 52843) (rho 52844) (rho 52845) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 233)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L233]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX232 seg52BlindDeltaY232;
        first | linear_combination r8450 | linear_combination -r8450)
    (by unfold seg52BlindDeltaX232 seg52BlindDeltaY232;
        first | linear_combination r8451 | linear_combination -r8451)
    (by unfold seg52BlindDeltaX232 seg52BlindDeltaY232;
        first | linear_combination r8452 | linear_combination -r8452)
    (by first | linear_combination r8453 | linear_combination -r8453)
    (by unfold seg52BlindDeltaX232 seg52BlindDeltaY232;
        first | linear_combination r8454 | linear_combination -r8454)
    (by first | linear_combination r8455 | linear_combination -r8455)
    (by unfold seg52BlindDeltaX232; first | linear_combination r8456 | linear_combination -r8456)
    (by unfold seg52BlindDeltaY232; first | linear_combination r8457 | linear_combination -r8457)
    (by linear_combination r7022)

theorem seg52Blind_rows234 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7023 rho ∧ Seg52.relationRow8458 rho ∧ Seg52.relationRow8459 rho ∧ Seg52.relationRow8460 rho ∧ Seg52.relationRow8461 rho ∧ Seg52.relationRow8462 rho ∧ Seg52.relationRow8463 rho ∧ Seg52.relationRow8464 rho ∧ Seg52.relationRow8465 rho := by
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

    _, _, _, _, _, p105, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7023, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart105 at p105

  rcases p105 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8458, r8459, r8460, r8461, r8462, r8463, r8464, r8465, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7023, r8458, r8459, r8460, r8461, r8462, r8463, r8464, r8465⟩

theorem seg52Blind_rung234 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51412 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 234)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      234 (Bool.toZMod bit) (seg52BlindAccState rho 234)
      (seg52BlindAccState rho 235) := by
  obtain ⟨r7023, r8458, r8459, r8460, r8461, r8462, r8463, r8464, r8465⟩ := seg52Blind_rows234 rho h
  unfold Seg52.relationRow7023 at r7023

  unfold Seg52.relationRow8458 at r8458

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8458

  unfold Seg52.relationRow8459 at r8459

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8459

  unfold Seg52.relationRow8460 at r8460

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8460

  unfold Seg52.relationRow8461 at r8461

  unfold Seg52.relationRow8462 at r8462

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8462

  unfold Seg52.relationRow8463 at r8463

  unfold Seg52.relationRow8464 at r8464

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8464

  unfold Seg52.relationRow8465 at r8465

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8465

  have hnextx : seg52BlindDeltaX234 rho =
      seg52BlindDeltaX233 rho + rho 52852 := by
    unfold seg52BlindDeltaX234 seg52BlindDeltaX233
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 84]

    ring

  have hnexty : seg52BlindDeltaY234 rho =
      seg52BlindDeltaY233 rho + rho 52853 := by
    unfold seg52BlindDeltaY234 seg52BlindDeltaY233
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 84]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 234
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX233 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY233 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX234 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY234 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY233 rho) (rho 52853)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 234)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (742412909762870309151653278555509004656301434452011403419679029574579381010 : Seg52.F) (358292096637540168614819591002830864487969968231573466132784802098637371056 : Seg52.F)
    (1100705006400410477766472869558339869144271402683584869552463831673216752066 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (1509320015177435081520392255514085602042159127863271211433004782555115362928 : Seg52.F) (1954941239221989708870588011686156971598519976277569547495030964321718007090 : Seg52.F)
    (5768279013075187644924733978688735647347600761707644232655850030390902986330 : Seg52.F) (5836012221690051226484099217530987641298153593227000439679332530856424184524 : Seg52.F)
    (8086169652790830255634005347778715666887929366922490361802448653818771867985 : Seg52.F) (7702048839665500115097171660226037526719597900702052424515554426342829858031 : Seg52.F)
    (2608449527738319197764725721250558890077745741927063388255900925060985054517 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX233 rho) (seg52BlindDeltaY233 rho) (rho 51412)
    (rho 52846) (rho 52847) (rho 52848) (rho 52850)
    (rho 52849) (rho 52851) (rho 52852) (rho 52853) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 234)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L234]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX233 seg52BlindDeltaY233;
        first | linear_combination r8458 | linear_combination -r8458)
    (by unfold seg52BlindDeltaX233 seg52BlindDeltaY233;
        first | linear_combination r8459 | linear_combination -r8459)
    (by unfold seg52BlindDeltaX233 seg52BlindDeltaY233;
        first | linear_combination r8460 | linear_combination -r8460)
    (by first | linear_combination r8461 | linear_combination -r8461)
    (by unfold seg52BlindDeltaX233 seg52BlindDeltaY233;
        first | linear_combination r8462 | linear_combination -r8462)
    (by first | linear_combination r8463 | linear_combination -r8463)
    (by unfold seg52BlindDeltaX233; first | linear_combination r8464 | linear_combination -r8464)
    (by unfold seg52BlindDeltaY233; first | linear_combination r8465 | linear_combination -r8465)
    (by linear_combination r7023)

theorem seg52Blind_rows235 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7024 rho ∧ Seg52.relationRow8466 rho ∧ Seg52.relationRow8467 rho ∧ Seg52.relationRow8468 rho ∧ Seg52.relationRow8469 rho ∧ Seg52.relationRow8470 rho ∧ Seg52.relationRow8471 rho ∧ Seg52.relationRow8472 rho ∧ Seg52.relationRow8473 rho := by
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

    _, _, _, _, _, p105, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart105 at p105

  rcases p105 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8466, r8467, r8468, r8469, r8470, r8471, r8472, r8473, _, _, _, _, _, _⟩

  exact ⟨r7024, r8466, r8467, r8468, r8469, r8470, r8471, r8472, r8473⟩

theorem seg52Blind_rung235 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51413 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 235)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      235 (Bool.toZMod bit) (seg52BlindAccState rho 235)
      (seg52BlindAccState rho 236) := by
  obtain ⟨r7024, r8466, r8467, r8468, r8469, r8470, r8471, r8472, r8473⟩ := seg52Blind_rows235 rho h
  unfold Seg52.relationRow7024 at r7024

  unfold Seg52.relationRow8466 at r8466

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8466

  unfold Seg52.relationRow8467 at r8467

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8467

  unfold Seg52.relationRow8468 at r8468

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8468

  unfold Seg52.relationRow8469 at r8469

  unfold Seg52.relationRow8470 at r8470

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8470

  unfold Seg52.relationRow8471 at r8471

  unfold Seg52.relationRow8472 at r8472

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8472

  unfold Seg52.relationRow8473 at r8473

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8473

  have hnextx : seg52BlindDeltaX235 rho =
      seg52BlindDeltaX234 rho + rho 52860 := by
    unfold seg52BlindDeltaX235 seg52BlindDeltaX234
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 85]

    ring

  have hnexty : seg52BlindDeltaY235 rho =
      seg52BlindDeltaY234 rho + rho 52861 := by
    unfold seg52BlindDeltaY235 seg52BlindDeltaY234
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 85]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 235
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX234 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY234 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX235 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY235 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY234 rho) (rho 52861)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 235)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3637692075207935518475653788840314043786526635757435574558977788505937226996 : Seg52.F) (3913977330483914039989194516719894102771613880155194243203923525953017090015 : Seg52.F)
    (7551669405691849558464848305560208146558140515912629817762901314458954317011 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (1879066192185720859001720716634940546786462733152449609726133619691694277915 : Seg52.F) (6678797658785789629961131819769428830156350543947805026451029553071902326858 : Seg52.F)
    (6492891130515857752177602999795412507306028350114051338297005871466924782430 : Seg52.F) (1550297937175903600947477152432027407943628623750730879312902278628518611779 : Seg52.F)
    (4530484418944456384259630422061652428604285454998869584731309929964392149026 : Seg52.F) (4806769674220434905773171149941232487589372699396628253376255667411472012045 : Seg52.F)
    (6894163812252466823301347786349519123432270711403332948622331177288890627262 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX234 rho) (seg52BlindDeltaY234 rho) (rho 51413)
    (rho 52854) (rho 52855) (rho 52856) (rho 52858)
    (rho 52857) (rho 52859) (rho 52860) (rho 52861) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 235)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L235]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX234 seg52BlindDeltaY234;
        first | linear_combination r8466 | linear_combination -r8466)
    (by unfold seg52BlindDeltaX234 seg52BlindDeltaY234;
        first | linear_combination r8467 | linear_combination -r8467)
    (by unfold seg52BlindDeltaX234 seg52BlindDeltaY234;
        first | linear_combination r8468 | linear_combination -r8468)
    (by first | linear_combination r8469 | linear_combination -r8469)
    (by unfold seg52BlindDeltaX234 seg52BlindDeltaY234;
        first | linear_combination r8470 | linear_combination -r8470)
    (by first | linear_combination r8471 | linear_combination -r8471)
    (by unfold seg52BlindDeltaX234; first | linear_combination r8472 | linear_combination -r8472)
    (by unfold seg52BlindDeltaY234; first | linear_combination r8473 | linear_combination -r8473)
    (by linear_combination r7024)

theorem seg52Blind_rows236 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7025 rho ∧ Seg52.relationRow8474 rho ∧ Seg52.relationRow8475 rho ∧ Seg52.relationRow8476 rho ∧ Seg52.relationRow8477 rho ∧ Seg52.relationRow8478 rho ∧ Seg52.relationRow8479 rho ∧ Seg52.relationRow8480 rho ∧ Seg52.relationRow8481 rho := by
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

    _, _, _, _, _, p105, p106, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7025, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart105 at p105

  rcases p105 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8474, r8475, r8476, r8477, r8478, r8479⟩

  unfold Seg52.relationPart106 at p106

  rcases p106 with ⟨r8480, r8481, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7025, r8474, r8475, r8476, r8477, r8478, r8479, r8480, r8481⟩

theorem seg52Blind_rung236 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51414 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 236)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      236 (Bool.toZMod bit) (seg52BlindAccState rho 236)
      (seg52BlindAccState rho 237) := by
  obtain ⟨r7025, r8474, r8475, r8476, r8477, r8478, r8479, r8480, r8481⟩ := seg52Blind_rows236 rho h
  unfold Seg52.relationRow7025 at r7025

  unfold Seg52.relationRow8474 at r8474

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8474

  unfold Seg52.relationRow8475 at r8475

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8475

  unfold Seg52.relationRow8476 at r8476

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8476

  unfold Seg52.relationRow8477 at r8477

  unfold Seg52.relationRow8478 at r8478

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8478

  unfold Seg52.relationRow8479 at r8479

  unfold Seg52.relationRow8480 at r8480

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8480

  unfold Seg52.relationRow8481 at r8481

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8481

  have hnextx : seg52BlindDeltaX236 rho =
      seg52BlindDeltaX235 rho + rho 52868 := by
    unfold seg52BlindDeltaX236 seg52BlindDeltaX235
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 86]

    ring

  have hnexty : seg52BlindDeltaY236 rho =
      seg52BlindDeltaY235 rho + rho 52869 := by
    unfold seg52BlindDeltaY236 seg52BlindDeltaY235
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 86]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 236
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX235 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY235 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX236 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY236 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY235 rho) (rho 52869)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 236)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7965085853662374621200865913950031428037961369749284505893524603403732973633 : Seg52.F) (1474156925525896642705149136721457630929566882748203065144764536768299201448 : Seg52.F)
    (994781029759900839657190111889942527591628917343423743103055684254622936040 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (3196730064982544033124799297648481003122603156129822480465634308557218599801 : Seg52.F) (2458248034789353238519479193172323700487176766405978146033853497356239147455 : Seg52.F)
    (3187808541585373978812239057781774646112788788225209033943529774632173249982 : Seg52.F) (340258632736410023475915610769122017257590428160467205899845882516157435538 : Seg52.F)
    (6970304823902473781543675802060088900446332452405860762790468919149110037593 : Seg52.F) (479375895765995803047959024831515103337937965404779322041708852513676265408 : Seg52.F)
    (8104203116691960400772909328012424514118308906993596622035387573401251803503 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX235 rho) (seg52BlindDeltaY235 rho) (rho 51414)
    (rho 52862) (rho 52863) (rho 52864) (rho 52866)
    (rho 52865) (rho 52867) (rho 52868) (rho 52869) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 236)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L236]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX235 seg52BlindDeltaY235;
        first | linear_combination r8474 | linear_combination -r8474)
    (by unfold seg52BlindDeltaX235 seg52BlindDeltaY235;
        first | linear_combination r8475 | linear_combination -r8475)
    (by unfold seg52BlindDeltaX235 seg52BlindDeltaY235;
        first | linear_combination r8476 | linear_combination -r8476)
    (by first | linear_combination r8477 | linear_combination -r8477)
    (by unfold seg52BlindDeltaX235 seg52BlindDeltaY235;
        first | linear_combination r8478 | linear_combination -r8478)
    (by first | linear_combination r8479 | linear_combination -r8479)
    (by unfold seg52BlindDeltaX235; first | linear_combination r8480 | linear_combination -r8480)
    (by unfold seg52BlindDeltaY235; first | linear_combination r8481 | linear_combination -r8481)
    (by linear_combination r7025)

theorem seg52Blind_rows237 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7026 rho ∧ Seg52.relationRow8482 rho ∧ Seg52.relationRow8483 rho ∧ Seg52.relationRow8484 rho ∧ Seg52.relationRow8485 rho ∧ Seg52.relationRow8486 rho ∧ Seg52.relationRow8487 rho ∧ Seg52.relationRow8488 rho ∧ Seg52.relationRow8489 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7026, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart106 at p106

  rcases p106 with ⟨_, _, r8482, r8483, r8484, r8485, r8486, r8487, r8488, r8489, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7026, r8482, r8483, r8484, r8485, r8486, r8487, r8488, r8489⟩

theorem seg52Blind_rung237 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51415 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 237)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      237 (Bool.toZMod bit) (seg52BlindAccState rho 237)
      (seg52BlindAccState rho 238) := by
  obtain ⟨r7026, r8482, r8483, r8484, r8485, r8486, r8487, r8488, r8489⟩ := seg52Blind_rows237 rho h
  unfold Seg52.relationRow7026 at r7026

  unfold Seg52.relationRow8482 at r8482

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8482

  unfold Seg52.relationRow8483 at r8483

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8483

  unfold Seg52.relationRow8484 at r8484

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8484

  unfold Seg52.relationRow8485 at r8485

  unfold Seg52.relationRow8486 at r8486

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8486

  unfold Seg52.relationRow8487 at r8487

  unfold Seg52.relationRow8488 at r8488

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8488

  unfold Seg52.relationRow8489 at r8489

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8489

  have hnextx : seg52BlindDeltaX237 rho =
      seg52BlindDeltaX236 rho + rho 52876 := by
    unfold seg52BlindDeltaX237 seg52BlindDeltaX236
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 87]

    ring

  have hnexty : seg52BlindDeltaY237 rho =
      seg52BlindDeltaY236 rho + rho 52877 := by
    unfold seg52BlindDeltaY237 seg52BlindDeltaY236
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 87]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 237
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX236 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY236 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX237 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY237 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY236 rho) (rho 52877)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 237)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (5223704154805626788824590874628175847479664026338309084875661743167402906190 : Seg52.F) (1369356659294285918173003827931848390669226440244888878142827715666229038664 : Seg52.F)
    (6593060814099912706997594702560024238148890466583197963018489458833631944854 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (7484672257564621342969169117937734368918301089472089009153369084064807912895 : Seg52.F) (2243051054702272080098422278286580301370479718239376175558435749547655338533 : Seg52.F)
    (5412226340998192128754120448899200289331961398841384281591755682960184101952 : Seg52.F) (3187946797307268399650523550854902222905663685811130911561670480987092377709 : Seg52.F)
    (7075105090134084506075821110849698140706672894909174949792405740251180200377 : Seg52.F) (3220757594622743635424234064153370683896235308815754743059571712750006332851 : Seg52.F)
    (5256514952121102024598301387926644308470235649342932916373562974930316861332 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX236 rho) (seg52BlindDeltaY236 rho) (rho 51415)
    (rho 52870) (rho 52871) (rho 52872) (rho 52874)
    (rho 52873) (rho 52875) (rho 52876) (rho 52877) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 237)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L237]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX236 seg52BlindDeltaY236;
        first | linear_combination r8482 | linear_combination -r8482)
    (by unfold seg52BlindDeltaX236 seg52BlindDeltaY236;
        first | linear_combination r8483 | linear_combination -r8483)
    (by unfold seg52BlindDeltaX236 seg52BlindDeltaY236;
        first | linear_combination r8484 | linear_combination -r8484)
    (by first | linear_combination r8485 | linear_combination -r8485)
    (by unfold seg52BlindDeltaX236 seg52BlindDeltaY236;
        first | linear_combination r8486 | linear_combination -r8486)
    (by first | linear_combination r8487 | linear_combination -r8487)
    (by unfold seg52BlindDeltaX236; first | linear_combination r8488 | linear_combination -r8488)
    (by unfold seg52BlindDeltaY236; first | linear_combination r8489 | linear_combination -r8489)
    (by linear_combination r7026)

theorem seg52Blind_rows238 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7027 rho ∧ Seg52.relationRow8490 rho ∧ Seg52.relationRow8491 rho ∧ Seg52.relationRow8492 rho ∧ Seg52.relationRow8493 rho ∧ Seg52.relationRow8494 rho ∧ Seg52.relationRow8495 rho ∧ Seg52.relationRow8496 rho ∧ Seg52.relationRow8497 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7027, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart106 at p106

  rcases p106 with ⟨_, _, _, _, _, _, _, _, _, _, r8490, r8491, r8492, r8493, r8494, r8495, r8496, r8497, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7027, r8490, r8491, r8492, r8493, r8494, r8495, r8496, r8497⟩

theorem seg52Blind_rung238 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51416 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 238)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      238 (Bool.toZMod bit) (seg52BlindAccState rho 238)
      (seg52BlindAccState rho 239) := by
  obtain ⟨r7027, r8490, r8491, r8492, r8493, r8494, r8495, r8496, r8497⟩ := seg52Blind_rows238 rho h
  unfold Seg52.relationRow7027 at r7027

  unfold Seg52.relationRow8490 at r8490

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8490

  unfold Seg52.relationRow8491 at r8491

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8491

  unfold Seg52.relationRow8492 at r8492

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8492

  unfold Seg52.relationRow8493 at r8493

  unfold Seg52.relationRow8494 at r8494

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8494

  unfold Seg52.relationRow8495 at r8495

  unfold Seg52.relationRow8496 at r8496

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8496

  unfold Seg52.relationRow8497 at r8497

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8497

  have hnextx : seg52BlindDeltaX238 rho =
      seg52BlindDeltaX237 rho + rho 52884 := by
    unfold seg52BlindDeltaX238 seg52BlindDeltaX237
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 88]

    ring

  have hnexty : seg52BlindDeltaY238 rho =
      seg52BlindDeltaY237 rho + rho 52885 := by
    unfold seg52BlindDeltaY238 seg52BlindDeltaY237
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 88]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 238
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX237 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY237 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX238 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY238 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY237 rho) (rho 52885)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 238)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3415626854020561113337153381151782255963776484738683582312591551072053771997 : Seg52.F) (8214384480478989539622737878071026031914246760485956786249845457377996549620 : Seg52.F)
    (3185549585071180228711066320441261756502123910070576540627203552532641082576 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5826895706475092757243459512385933230547216745435924787067233253579232099562 : Seg52.F) (5432031083734210952568685556973047110028320066777387046666414780905740162675 : Seg52.F)
    (7139782703415344306931719791673397024107800243006857408208968492790013069723 : Seg52.F) (2848070947030623101803078143076415089290404328167445076973664893482421262042 : Seg52.F)
    (230077268949380884626087060710520499461652574668107041685387998539412689421 : Seg52.F) (5028834895407809310911671557629764275412122850415380245622641904845355467044 : Seg52.F)
    (5596390802397747322445746795705131442085495006986618750961568562434987976999 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX237 rho) (seg52BlindDeltaY237 rho) (rho 51416)
    (rho 52878) (rho 52879) (rho 52880) (rho 52882)
    (rho 52881) (rho 52883) (rho 52884) (rho 52885) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 238)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L238]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX237 seg52BlindDeltaY237;
        first | linear_combination r8490 | linear_combination -r8490)
    (by unfold seg52BlindDeltaX237 seg52BlindDeltaY237;
        first | linear_combination r8491 | linear_combination -r8491)
    (by unfold seg52BlindDeltaX237 seg52BlindDeltaY237;
        first | linear_combination r8492 | linear_combination -r8492)
    (by first | linear_combination r8493 | linear_combination -r8493)
    (by unfold seg52BlindDeltaX237 seg52BlindDeltaY237;
        first | linear_combination r8494 | linear_combination -r8494)
    (by first | linear_combination r8495 | linear_combination -r8495)
    (by unfold seg52BlindDeltaX237; first | linear_combination r8496 | linear_combination -r8496)
    (by unfold seg52BlindDeltaY237; first | linear_combination r8497 | linear_combination -r8497)
    (by linear_combination r7027)

theorem seg52Blind_rows239 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7028 rho ∧ Seg52.relationRow8498 rho ∧ Seg52.relationRow8499 rho ∧ Seg52.relationRow8500 rho ∧ Seg52.relationRow8501 rho ∧ Seg52.relationRow8502 rho ∧ Seg52.relationRow8503 rho ∧ Seg52.relationRow8504 rho ∧ Seg52.relationRow8505 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7028, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart106 at p106

  rcases p106 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8498, r8499, r8500, r8501, r8502, r8503, r8504, r8505, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7028, r8498, r8499, r8500, r8501, r8502, r8503, r8504, r8505⟩

theorem seg52Blind_rung239 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51417 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 239)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      239 (Bool.toZMod bit) (seg52BlindAccState rho 239)
      (seg52BlindAccState rho 240) := by
  obtain ⟨r7028, r8498, r8499, r8500, r8501, r8502, r8503, r8504, r8505⟩ := seg52Blind_rows239 rho h
  unfold Seg52.relationRow7028 at r7028

  unfold Seg52.relationRow8498 at r8498

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8498

  unfold Seg52.relationRow8499 at r8499

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8499

  unfold Seg52.relationRow8500 at r8500

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8500

  unfold Seg52.relationRow8501 at r8501

  unfold Seg52.relationRow8502 at r8502

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8502

  unfold Seg52.relationRow8503 at r8503

  unfold Seg52.relationRow8504 at r8504

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8504

  unfold Seg52.relationRow8505 at r8505

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8505

  have hnextx : seg52BlindDeltaX239 rho =
      seg52BlindDeltaX238 rho + rho 52892 := by
    unfold seg52BlindDeltaX239 seg52BlindDeltaX238
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 89]

    ring

  have hnexty : seg52BlindDeltaY239 rho =
      seg52BlindDeltaY238 rho + rho 52893 := by
    unfold seg52BlindDeltaY239 seg52BlindDeltaY238
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 89]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 239
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX238 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY238 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX239 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY239 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY238 rho) (rho 52893)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 239)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7329216008342562966261951251568013874576061931379146282997501345833022067484 : Seg52.F) (8337154768672408287029311071654393525536901156389457862162984876970229620941 : Seg52.F)
    (7221909027586600829042437384440860868737063752614540317225252766885842449384 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5159619363944830005552780021351084084046576023133866691511147781349334042499 : Seg52.F) (7989055757212577824469969974533327584189724790221135014605168378137458897111 : Seg52.F)
    (4267337997283225642471733632135753556093908436229989155369934660842742415056 : Seg52.F) (6444689965774614178681616377036970546823679838924488590374309635050581490485 : Seg52.F)
    (107306980755962137219513867127153005838998178764605965772248578947179618100 : Seg52.F) (1115245741085807457986873687213532656799837403774917544937732110084387171557 : Seg52.F)
    (1999771783653756245567208561744575984552219496229575237560923820866827748556 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX238 rho) (seg52BlindDeltaY238 rho) (rho 51417)
    (rho 52886) (rho 52887) (rho 52888) (rho 52890)
    (rho 52889) (rho 52891) (rho 52892) (rho 52893) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 239)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L239]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX238 seg52BlindDeltaY238;
        first | linear_combination r8498 | linear_combination -r8498)
    (by unfold seg52BlindDeltaX238 seg52BlindDeltaY238;
        first | linear_combination r8499 | linear_combination -r8499)
    (by unfold seg52BlindDeltaX238 seg52BlindDeltaY238;
        first | linear_combination r8500 | linear_combination -r8500)
    (by first | linear_combination r8501 | linear_combination -r8501)
    (by unfold seg52BlindDeltaX238 seg52BlindDeltaY238;
        first | linear_combination r8502 | linear_combination -r8502)
    (by first | linear_combination r8503 | linear_combination -r8503)
    (by unfold seg52BlindDeltaX238; first | linear_combination r8504 | linear_combination -r8504)
    (by unfold seg52BlindDeltaY238; first | linear_combination r8505 | linear_combination -r8505)
    (by linear_combination r7028)

theorem seg52Blind_rows240 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7029 rho ∧ Seg52.relationRow8506 rho ∧ Seg52.relationRow8507 rho ∧ Seg52.relationRow8508 rho ∧ Seg52.relationRow8509 rho ∧ Seg52.relationRow8510 rho ∧ Seg52.relationRow8511 rho ∧ Seg52.relationRow8512 rho ∧ Seg52.relationRow8513 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7029, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart106 at p106

  rcases p106 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8506, r8507, r8508, r8509, r8510, r8511, r8512, r8513, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7029, r8506, r8507, r8508, r8509, r8510, r8511, r8512, r8513⟩

theorem seg52Blind_rung240 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51418 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 240)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      240 (Bool.toZMod bit) (seg52BlindAccState rho 240)
      (seg52BlindAccState rho 241) := by
  obtain ⟨r7029, r8506, r8507, r8508, r8509, r8510, r8511, r8512, r8513⟩ := seg52Blind_rows240 rho h
  unfold Seg52.relationRow7029 at r7029

  unfold Seg52.relationRow8506 at r8506

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8506

  unfold Seg52.relationRow8507 at r8507

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8507

  unfold Seg52.relationRow8508 at r8508

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8508

  unfold Seg52.relationRow8509 at r8509

  unfold Seg52.relationRow8510 at r8510

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8510

  unfold Seg52.relationRow8511 at r8511

  unfold Seg52.relationRow8512 at r8512

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8512

  unfold Seg52.relationRow8513 at r8513

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8513

  have hnextx : seg52BlindDeltaX240 rho =
      seg52BlindDeltaX239 rho + rho 52900 := by
    unfold seg52BlindDeltaX240 seg52BlindDeltaX239
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 90]

    ring

  have hnexty : seg52BlindDeltaY240 rho =
      seg52BlindDeltaY239 rho + rho 52901 := by
    unfold seg52BlindDeltaY240 seg52BlindDeltaY239
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 90]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 240
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX239 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY239 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX240 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY240 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY239 rho) (rho 52901)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 240)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (5790688032707317684636175993482897077520959853438083706965602547854781804222 : Seg52.F) (3776492217524632224647919066434794131398200936402842013764212150674759307624 : Seg52.F)
    (1122718500803579485035270121136144677543261454686861892794581242612131872805 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (315165664185507501201007405643707065125027079845492041184508244027986387713 : Seg52.F) (2518794966706652762931428995801127820653344605275753054034923835216870230285 : Seg52.F)
    (3601892535133519944405285361176328391158836036835157603494002969734130044426 : Seg52.F) (4712442058301268938509792123735770662187265490877342010228303733002725985548 : Seg52.F)
    (4667969531903738199600905872346752399977698398751221814171021305242649931417 : Seg52.F) (2653773716721052739612648945298649453854939481715980120969630908062627434819 : Seg52.F)
    (3732019691127101485739032815045775869188633844276721817706929722914683253493 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX239 rho) (seg52BlindDeltaY239 rho) (rho 51418)
    (rho 52894) (rho 52895) (rho 52896) (rho 52898)
    (rho 52897) (rho 52899) (rho 52900) (rho 52901) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 240)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L240]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX239 seg52BlindDeltaY239;
        first | linear_combination r8506 | linear_combination -r8506)
    (by unfold seg52BlindDeltaX239 seg52BlindDeltaY239;
        first | linear_combination r8507 | linear_combination -r8507)
    (by unfold seg52BlindDeltaX239 seg52BlindDeltaY239;
        first | linear_combination r8508 | linear_combination -r8508)
    (by first | linear_combination r8509 | linear_combination -r8509)
    (by unfold seg52BlindDeltaX239 seg52BlindDeltaY239;
        first | linear_combination r8510 | linear_combination -r8510)
    (by first | linear_combination r8511 | linear_combination -r8511)
    (by unfold seg52BlindDeltaX239; first | linear_combination r8512 | linear_combination -r8512)
    (by unfold seg52BlindDeltaY239; first | linear_combination r8513 | linear_combination -r8513)
    (by linear_combination r7029)

theorem seg52Blind_hstep_c23 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 231 ≤ i → i < 241 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung231 rho h bits[231]! (hbitAt 231 (by omega)) hacc
  · exact seg52Blind_rung232 rho h bits[232]! (hbitAt 232 (by omega)) hacc
  · exact seg52Blind_rung233 rho h bits[233]! (hbitAt 233 (by omega)) hacc
  · exact seg52Blind_rung234 rho h bits[234]! (hbitAt 234 (by omega)) hacc
  · exact seg52Blind_rung235 rho h bits[235]! (hbitAt 235 (by omega)) hacc
  · exact seg52Blind_rung236 rho h bits[236]! (hbitAt 236 (by omega)) hacc
  · exact seg52Blind_rung237 rho h bits[237]! (hbitAt 237 (by omega)) hacc
  · exact seg52Blind_rung238 rho h bits[238]! (hbitAt 238 (by omega)) hacc
  · exact seg52Blind_rung239 rho h bits[239]! (hbitAt 239 (by omega)) hacc
  · exact seg52Blind_rung240 rho h bits[240]! (hbitAt 240 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

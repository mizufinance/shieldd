import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows231 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6380 rho ∧ Seg52.relationRow7794 rho ∧ Seg52.relationRow7795 rho ∧ Seg52.relationRow7796 rho ∧ Seg52.relationRow7797 rho ∧ Seg52.relationRow7798 rho ∧ Seg52.relationRow7799 rho ∧ Seg52.relationRow7800 rho ∧ Seg52.relationRow7801 rho := by
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

    _, _, _, _, _, _, _, p97, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6380, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7794, r7795, r7796, r7797, r7798, r7799, r7800, r7801, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6380, r7794, r7795, r7796, r7797, r7798, r7799, r7800, r7801⟩

theorem seg52Blind_rung231 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50769 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 231)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      231 (Bool.toZMod bit) (seg52BlindAccState rho 231)
      (seg52BlindAccState rho 232) := by
  obtain ⟨r6380, r7794, r7795, r7796, r7797, r7798, r7799, r7800, r7801⟩ := seg52Blind_rows231 rho h
  unfold Seg52.relationRow6380 at r6380

  unfold Seg52.relationRow7794 at r7794

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7794

  unfold Seg52.relationRow7795 at r7795

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7795

  unfold Seg52.relationRow7796 at r7796

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7796

  unfold Seg52.relationRow7797 at r7797

  unfold Seg52.relationRow7798 at r7798

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7798

  unfold Seg52.relationRow7799 at r7799

  unfold Seg52.relationRow7800 at r7800

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7800

  unfold Seg52.relationRow7801 at r7801

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7801

  have hnextx : seg52BlindDeltaX231 rho =
      seg52BlindDeltaX230 rho + rho 52188 := by
    unfold seg52BlindDeltaX231 seg52BlindDeltaX230
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 81]

    ring

  have hnexty : seg52BlindDeltaY231 rho =
      seg52BlindDeltaY230 rho + rho 52189 := by
    unfold seg52BlindDeltaY231 seg52BlindDeltaY230
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 81]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 231
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX230 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY230 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX231 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY231 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY230 rho) (rho 52189)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 231)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3963348669445143823427405314053286362507305758458305350955318338551254885297 : Seg52.F) (2863905773352258312430188590311456228261990948132985882262740755286287811416 : Seg52.F)
    (6827254442797402135857593904364742590769296706591291233218059093837542696713 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4730509882521047420802994018605617450553735111988990510060762860448417509752 : Seg52.F) (868458302266357929784260556585626706789160668591807608447688166148445876163 : Seg52.F)
    (3372081631784657270900224132622969995639050554760602369398767258362887176631 : Seg52.F) (2637217354460130603026123934561744867851870030273039648730604825148676589411 : Seg52.F)
    (5580555976076112111818636348470090303113908387021077945672492700631121427625 : Seg52.F) (4481113079983226600821419624728260168868593576695758476979915117366154353744 : Seg52.F)
    (5807244394968239821222701004219801663524029304881024179204628630768732649630 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX230 rho) (seg52BlindDeltaY230 rho) (rho 50769)
    (rho 52182) (rho 52183) (rho 52184) (rho 52186)
    (rho 52185) (rho 52187) (rho 52188) (rho 52189) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 231)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L231]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX230 seg52BlindDeltaY230;
        first | linear_combination r7794 | linear_combination -r7794)
    (by unfold seg52BlindDeltaX230 seg52BlindDeltaY230;
        first | linear_combination r7795 | linear_combination -r7795)
    (by unfold seg52BlindDeltaX230 seg52BlindDeltaY230;
        first | linear_combination r7796 | linear_combination -r7796)
    (by first | linear_combination r7797 | linear_combination -r7797)
    (by unfold seg52BlindDeltaX230 seg52BlindDeltaY230;
        first | linear_combination r7798 | linear_combination -r7798)
    (by first | linear_combination r7799 | linear_combination -r7799)
    (by unfold seg52BlindDeltaX230; first | linear_combination r7800 | linear_combination -r7800)
    (by unfold seg52BlindDeltaY230; first | linear_combination r7801 | linear_combination -r7801)
    (by linear_combination r6380)

theorem seg52Blind_rows232 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6381 rho ∧ Seg52.relationRow7802 rho ∧ Seg52.relationRow7803 rho ∧ Seg52.relationRow7804 rho ∧ Seg52.relationRow7805 rho ∧ Seg52.relationRow7806 rho ∧ Seg52.relationRow7807 rho ∧ Seg52.relationRow7808 rho ∧ Seg52.relationRow7809 rho := by
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

    _, _, _, _, _, _, _, p97, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6381, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7802, r7803, r7804, r7805, r7806, r7807, r7808, r7809, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6381, r7802, r7803, r7804, r7805, r7806, r7807, r7808, r7809⟩

theorem seg52Blind_rung232 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50770 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 232)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      232 (Bool.toZMod bit) (seg52BlindAccState rho 232)
      (seg52BlindAccState rho 233) := by
  obtain ⟨r6381, r7802, r7803, r7804, r7805, r7806, r7807, r7808, r7809⟩ := seg52Blind_rows232 rho h
  unfold Seg52.relationRow6381 at r6381

  unfold Seg52.relationRow7802 at r7802

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7802

  unfold Seg52.relationRow7803 at r7803

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7803

  unfold Seg52.relationRow7804 at r7804

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7804

  unfold Seg52.relationRow7805 at r7805

  unfold Seg52.relationRow7806 at r7806

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7806

  unfold Seg52.relationRow7807 at r7807

  unfold Seg52.relationRow7808 at r7808

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7808

  unfold Seg52.relationRow7809 at r7809

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7809

  have hnextx : seg52BlindDeltaX232 rho =
      seg52BlindDeltaX231 rho + rho 52196 := by
    unfold seg52BlindDeltaX232 seg52BlindDeltaX231
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 82]

    ring

  have hnexty : seg52BlindDeltaY232 rho =
      seg52BlindDeltaY231 rho + rho 52197 := by
    unfold seg52BlindDeltaY232 seg52BlindDeltaY231
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 82]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 232
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX231 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY231 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX232 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY232 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY231 rho) (rho 52197)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 232)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7542159258655056281906946526991183720469363449441588561022715280995183175685 : Seg52.F) (7276169017201277557067500180669644779323290237593273653744197081836798281968 : Seg52.F)
    (6373866526427963414725621768879281968416754351880798386831678906914572218612 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (372667203011285581226730154631257164193838363251563845806698475951360601605 : Seg52.F) (1484768422242819297649949070658412404778643083822250195864189986665927258533 : Seg52.F)
    (2460794889423031563146389053437031986715280836810763609335733415507879232974 : Seg52.F) (3920408858845028312817205527159185479526600961284197428726020093421005201209 : Seg52.F)
    (1168292732227092867181324758111901752052609097560790174191036374080610957073 : Seg52.F) (902302490773314142341878411790362810906535885712475266912518174922226063356 : Seg52.F)
    (4524052890583342111431619411622361051849298373869866399209213362496404037832 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX231 rho) (seg52BlindDeltaY231 rho) (rho 50770)
    (rho 52190) (rho 52191) (rho 52192) (rho 52194)
    (rho 52193) (rho 52195) (rho 52196) (rho 52197) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 232)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L232]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX231 seg52BlindDeltaY231;
        first | linear_combination r7802 | linear_combination -r7802)
    (by unfold seg52BlindDeltaX231 seg52BlindDeltaY231;
        first | linear_combination r7803 | linear_combination -r7803)
    (by unfold seg52BlindDeltaX231 seg52BlindDeltaY231;
        first | linear_combination r7804 | linear_combination -r7804)
    (by first | linear_combination r7805 | linear_combination -r7805)
    (by unfold seg52BlindDeltaX231 seg52BlindDeltaY231;
        first | linear_combination r7806 | linear_combination -r7806)
    (by first | linear_combination r7807 | linear_combination -r7807)
    (by unfold seg52BlindDeltaX231; first | linear_combination r7808 | linear_combination -r7808)
    (by unfold seg52BlindDeltaY231; first | linear_combination r7809 | linear_combination -r7809)
    (by linear_combination r6381)

theorem seg52Blind_rows233 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6382 rho ∧ Seg52.relationRow7810 rho ∧ Seg52.relationRow7811 rho ∧ Seg52.relationRow7812 rho ∧ Seg52.relationRow7813 rho ∧ Seg52.relationRow7814 rho ∧ Seg52.relationRow7815 rho ∧ Seg52.relationRow7816 rho ∧ Seg52.relationRow7817 rho := by
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

    _, _, _, _, _, _, _, p97, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6382, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7810, r7811, r7812, r7813, r7814, r7815, r7816, r7817, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6382, r7810, r7811, r7812, r7813, r7814, r7815, r7816, r7817⟩

theorem seg52Blind_rung233 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50771 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 233)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      233 (Bool.toZMod bit) (seg52BlindAccState rho 233)
      (seg52BlindAccState rho 234) := by
  obtain ⟨r6382, r7810, r7811, r7812, r7813, r7814, r7815, r7816, r7817⟩ := seg52Blind_rows233 rho h
  unfold Seg52.relationRow6382 at r6382

  unfold Seg52.relationRow7810 at r7810

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7810

  unfold Seg52.relationRow7811 at r7811

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7811

  unfold Seg52.relationRow7812 at r7812

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7812

  unfold Seg52.relationRow7813 at r7813

  unfold Seg52.relationRow7814 at r7814

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7814

  unfold Seg52.relationRow7815 at r7815

  unfold Seg52.relationRow7816 at r7816

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7816

  unfold Seg52.relationRow7817 at r7817

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7817

  have hnextx : seg52BlindDeltaX233 rho =
      seg52BlindDeltaX232 rho + rho 52204 := by
    unfold seg52BlindDeltaX233 seg52BlindDeltaX232
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 83]

    ring

  have hnexty : seg52BlindDeltaY233 rho =
      seg52BlindDeltaY232 rho + rho 52205 := by
    unfold seg52BlindDeltaY233 seg52BlindDeltaY232
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 83]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 233
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX232 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY232 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX233 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY233 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY232 rho) (rho 52205)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 233)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3700573855116872232848760793370485896571534565608097032382980139794775125480 : Seg52.F) (7949343336988049666116721589765712339203085462761513234609986645779405119752 : Seg52.F)
    (3205455442676551474716657444354651704398720693215546439057733329656771006191 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (7361467416040925199206621726280188030839373159528018936900941726388400177229 : Seg52.F) (7445931393784576276737378554667587721373140734981652732523856263225507371632 : Seg52.F)
    (3545910700039114919128064864039007229187020896529801884530346241695575088004 : Seg52.F) (1345715424582057217032289732226630175561454681578984061398787119881707834448 : Seg52.F)
    (495118412440320758132103349015834192172813872392550593325246810138004119289 : Seg52.F) (4743887894311498191400064145411060634804364769545966795552253316122634113561 : Seg52.F)
    (7098746324846313207216535206554916355814444653575079766536446336035701404593 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX232 rho) (seg52BlindDeltaY232 rho) (rho 50771)
    (rho 52198) (rho 52199) (rho 52200) (rho 52202)
    (rho 52201) (rho 52203) (rho 52204) (rho 52205) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 233)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L233]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX232 seg52BlindDeltaY232;
        first | linear_combination r7810 | linear_combination -r7810)
    (by unfold seg52BlindDeltaX232 seg52BlindDeltaY232;
        first | linear_combination r7811 | linear_combination -r7811)
    (by unfold seg52BlindDeltaX232 seg52BlindDeltaY232;
        first | linear_combination r7812 | linear_combination -r7812)
    (by first | linear_combination r7813 | linear_combination -r7813)
    (by unfold seg52BlindDeltaX232 seg52BlindDeltaY232;
        first | linear_combination r7814 | linear_combination -r7814)
    (by first | linear_combination r7815 | linear_combination -r7815)
    (by unfold seg52BlindDeltaX232; first | linear_combination r7816 | linear_combination -r7816)
    (by unfold seg52BlindDeltaY232; first | linear_combination r7817 | linear_combination -r7817)
    (by linear_combination r6382)

theorem seg52Blind_rows234 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6383 rho ∧ Seg52.relationRow7818 rho ∧ Seg52.relationRow7819 rho ∧ Seg52.relationRow7820 rho ∧ Seg52.relationRow7821 rho ∧ Seg52.relationRow7822 rho ∧ Seg52.relationRow7823 rho ∧ Seg52.relationRow7824 rho ∧ Seg52.relationRow7825 rho := by
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

    _, _, _, _, _, _, _, p97, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6383, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7818, r7819, r7820, r7821, r7822, r7823, r7824, r7825, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6383, r7818, r7819, r7820, r7821, r7822, r7823, r7824, r7825⟩

theorem seg52Blind_rung234 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50772 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 234)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      234 (Bool.toZMod bit) (seg52BlindAccState rho 234)
      (seg52BlindAccState rho 235) := by
  obtain ⟨r6383, r7818, r7819, r7820, r7821, r7822, r7823, r7824, r7825⟩ := seg52Blind_rows234 rho h
  unfold Seg52.relationRow6383 at r6383

  unfold Seg52.relationRow7818 at r7818

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7818

  unfold Seg52.relationRow7819 at r7819

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7819

  unfold Seg52.relationRow7820 at r7820

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7820

  unfold Seg52.relationRow7821 at r7821

  unfold Seg52.relationRow7822 at r7822

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7822

  unfold Seg52.relationRow7823 at r7823

  unfold Seg52.relationRow7824 at r7824

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7824

  unfold Seg52.relationRow7825 at r7825

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7825

  have hnextx : seg52BlindDeltaX234 rho =
      seg52BlindDeltaX233 rho + rho 52212 := by
    unfold seg52BlindDeltaX234 seg52BlindDeltaX233
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 84]

    ring

  have hnexty : seg52BlindDeltaY234 rho =
      seg52BlindDeltaY233 rho + rho 52213 := by
    unfold seg52BlindDeltaY234 seg52BlindDeltaY233
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 84]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 234
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX233 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY233 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX234 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY234 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY233 rho) (rho 52213)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 234)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (742412909762870309151653278555509004656301434452011403419679029574579381010 : Seg52.F) (358292096637540168614819591002830864487969968231573466132784802098637371056 : Seg52.F)
    (1100705006400410477766472869558339869144271402683584869552463831673216752066 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (1509320015177435081520392255514085602042159127863271211433004782555115362928 : Seg52.F) (1954941239221989708870588011686156971598519976277569547495030964321718007090 : Seg52.F)
    (5768279013075187644924733978688735647347600761707644232655850030390902986330 : Seg52.F) (5836012221690051226484099217530987641298153593227000439679332530856424184524 : Seg52.F)
    (8086169652790830255634005347778715666887929366922490361802448653818771867985 : Seg52.F) (7702048839665500115097171660226037526719597900702052424515554426342829858031 : Seg52.F)
    (2608449527738319197764725721250558890077745741927063388255900925060985054517 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX233 rho) (seg52BlindDeltaY233 rho) (rho 50772)
    (rho 52206) (rho 52207) (rho 52208) (rho 52210)
    (rho 52209) (rho 52211) (rho 52212) (rho 52213) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 234)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L234]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX233 seg52BlindDeltaY233;
        first | linear_combination r7818 | linear_combination -r7818)
    (by unfold seg52BlindDeltaX233 seg52BlindDeltaY233;
        first | linear_combination r7819 | linear_combination -r7819)
    (by unfold seg52BlindDeltaX233 seg52BlindDeltaY233;
        first | linear_combination r7820 | linear_combination -r7820)
    (by first | linear_combination r7821 | linear_combination -r7821)
    (by unfold seg52BlindDeltaX233 seg52BlindDeltaY233;
        first | linear_combination r7822 | linear_combination -r7822)
    (by first | linear_combination r7823 | linear_combination -r7823)
    (by unfold seg52BlindDeltaX233; first | linear_combination r7824 | linear_combination -r7824)
    (by unfold seg52BlindDeltaY233; first | linear_combination r7825 | linear_combination -r7825)
    (by linear_combination r6383)

theorem seg52Blind_rows235 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6384 rho ∧ Seg52.relationRow7826 rho ∧ Seg52.relationRow7827 rho ∧ Seg52.relationRow7828 rho ∧ Seg52.relationRow7829 rho ∧ Seg52.relationRow7830 rho ∧ Seg52.relationRow7831 rho ∧ Seg52.relationRow7832 rho ∧ Seg52.relationRow7833 rho := by
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

    _, _, _, _, _, _, _, p97, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6384, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7826, r7827, r7828, r7829, r7830, r7831, r7832, r7833, _, _, _, _, _, _⟩

  exact ⟨r6384, r7826, r7827, r7828, r7829, r7830, r7831, r7832, r7833⟩

theorem seg52Blind_rung235 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50773 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 235)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      235 (Bool.toZMod bit) (seg52BlindAccState rho 235)
      (seg52BlindAccState rho 236) := by
  obtain ⟨r6384, r7826, r7827, r7828, r7829, r7830, r7831, r7832, r7833⟩ := seg52Blind_rows235 rho h
  unfold Seg52.relationRow6384 at r6384

  unfold Seg52.relationRow7826 at r7826

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7826

  unfold Seg52.relationRow7827 at r7827

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7827

  unfold Seg52.relationRow7828 at r7828

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7828

  unfold Seg52.relationRow7829 at r7829

  unfold Seg52.relationRow7830 at r7830

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7830

  unfold Seg52.relationRow7831 at r7831

  unfold Seg52.relationRow7832 at r7832

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7832

  unfold Seg52.relationRow7833 at r7833

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7833

  have hnextx : seg52BlindDeltaX235 rho =
      seg52BlindDeltaX234 rho + rho 52220 := by
    unfold seg52BlindDeltaX235 seg52BlindDeltaX234
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 85]

    ring

  have hnexty : seg52BlindDeltaY235 rho =
      seg52BlindDeltaY234 rho + rho 52221 := by
    unfold seg52BlindDeltaY235 seg52BlindDeltaY234
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 85]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 235
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX234 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY234 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX235 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY235 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY234 rho) (rho 52221)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 235)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3637692075207935518475653788840314043786526635757435574558977788505937226996 : Seg52.F) (3913977330483914039989194516719894102771613880155194243203923525953017090015 : Seg52.F)
    (7551669405691849558464848305560208146558140515912629817762901314458954317011 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (1879066192185720859001720716634940546786462733152449609726133619691694277915 : Seg52.F) (6678797658785789629961131819769428830156350543947805026451029553071902326858 : Seg52.F)
    (6492891130515857752177602999795412507306028350114051338297005871466924782430 : Seg52.F) (1550297937175903600947477152432027407943628623750730879312902278628518611779 : Seg52.F)
    (4530484418944456384259630422061652428604285454998869584731309929964392149026 : Seg52.F) (4806769674220434905773171149941232487589372699396628253376255667411472012045 : Seg52.F)
    (6894163812252466823301347786349519123432270711403332948622331177288890627262 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX234 rho) (seg52BlindDeltaY234 rho) (rho 50773)
    (rho 52214) (rho 52215) (rho 52216) (rho 52218)
    (rho 52217) (rho 52219) (rho 52220) (rho 52221) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 235)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L235]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX234 seg52BlindDeltaY234;
        first | linear_combination r7826 | linear_combination -r7826)
    (by unfold seg52BlindDeltaX234 seg52BlindDeltaY234;
        first | linear_combination r7827 | linear_combination -r7827)
    (by unfold seg52BlindDeltaX234 seg52BlindDeltaY234;
        first | linear_combination r7828 | linear_combination -r7828)
    (by first | linear_combination r7829 | linear_combination -r7829)
    (by unfold seg52BlindDeltaX234 seg52BlindDeltaY234;
        first | linear_combination r7830 | linear_combination -r7830)
    (by first | linear_combination r7831 | linear_combination -r7831)
    (by unfold seg52BlindDeltaX234; first | linear_combination r7832 | linear_combination -r7832)
    (by unfold seg52BlindDeltaY234; first | linear_combination r7833 | linear_combination -r7833)
    (by linear_combination r6384)

theorem seg52Blind_rows236 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6385 rho ∧ Seg52.relationRow7834 rho ∧ Seg52.relationRow7835 rho ∧ Seg52.relationRow7836 rho ∧ Seg52.relationRow7837 rho ∧ Seg52.relationRow7838 rho ∧ Seg52.relationRow7839 rho ∧ Seg52.relationRow7840 rho ∧ Seg52.relationRow7841 rho := by
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

    _, _, _, _, _, _, _, p97, p98, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6385, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7834, r7835, r7836, r7837, r7838, r7839⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨r7840, r7841, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6385, r7834, r7835, r7836, r7837, r7838, r7839, r7840, r7841⟩

theorem seg52Blind_rung236 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50774 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 236)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      236 (Bool.toZMod bit) (seg52BlindAccState rho 236)
      (seg52BlindAccState rho 237) := by
  obtain ⟨r6385, r7834, r7835, r7836, r7837, r7838, r7839, r7840, r7841⟩ := seg52Blind_rows236 rho h
  unfold Seg52.relationRow6385 at r6385

  unfold Seg52.relationRow7834 at r7834

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7834

  unfold Seg52.relationRow7835 at r7835

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7835

  unfold Seg52.relationRow7836 at r7836

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7836

  unfold Seg52.relationRow7837 at r7837

  unfold Seg52.relationRow7838 at r7838

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7838

  unfold Seg52.relationRow7839 at r7839

  unfold Seg52.relationRow7840 at r7840

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7840

  unfold Seg52.relationRow7841 at r7841

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7841

  have hnextx : seg52BlindDeltaX236 rho =
      seg52BlindDeltaX235 rho + rho 52228 := by
    unfold seg52BlindDeltaX236 seg52BlindDeltaX235
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 86]

    ring

  have hnexty : seg52BlindDeltaY236 rho =
      seg52BlindDeltaY235 rho + rho 52229 := by
    unfold seg52BlindDeltaY236 seg52BlindDeltaY235
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 86]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 236
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX235 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY235 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX236 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY236 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY235 rho) (rho 52229)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 236)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7965085853662374621200865913950031428037961369749284505893524603403732973633 : Seg52.F) (1474156925525896642705149136721457630929566882748203065144764536768299201448 : Seg52.F)
    (994781029759900839657190111889942527591628917343423743103055684254622936040 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (3196730064982544033124799297648481003122603156129822480465634308557218599801 : Seg52.F) (2458248034789353238519479193172323700487176766405978146033853497356239147455 : Seg52.F)
    (3187808541585373978812239057781774646112788788225209033943529774632173249982 : Seg52.F) (340258632736410023475915610769122017257590428160467205899845882516157435538 : Seg52.F)
    (6970304823902473781543675802060088900446332452405860762790468919149110037593 : Seg52.F) (479375895765995803047959024831515103337937965404779322041708852513676265408 : Seg52.F)
    (8104203116691960400772909328012424514118308906993596622035387573401251803503 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX235 rho) (seg52BlindDeltaY235 rho) (rho 50774)
    (rho 52222) (rho 52223) (rho 52224) (rho 52226)
    (rho 52225) (rho 52227) (rho 52228) (rho 52229) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 236)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L236]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX235 seg52BlindDeltaY235;
        first | linear_combination r7834 | linear_combination -r7834)
    (by unfold seg52BlindDeltaX235 seg52BlindDeltaY235;
        first | linear_combination r7835 | linear_combination -r7835)
    (by unfold seg52BlindDeltaX235 seg52BlindDeltaY235;
        first | linear_combination r7836 | linear_combination -r7836)
    (by first | linear_combination r7837 | linear_combination -r7837)
    (by unfold seg52BlindDeltaX235 seg52BlindDeltaY235;
        first | linear_combination r7838 | linear_combination -r7838)
    (by first | linear_combination r7839 | linear_combination -r7839)
    (by unfold seg52BlindDeltaX235; first | linear_combination r7840 | linear_combination -r7840)
    (by unfold seg52BlindDeltaY235; first | linear_combination r7841 | linear_combination -r7841)
    (by linear_combination r6385)

theorem seg52Blind_rows237 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6386 rho ∧ Seg52.relationRow7842 rho ∧ Seg52.relationRow7843 rho ∧ Seg52.relationRow7844 rho ∧ Seg52.relationRow7845 rho ∧ Seg52.relationRow7846 rho ∧ Seg52.relationRow7847 rho ∧ Seg52.relationRow7848 rho ∧ Seg52.relationRow7849 rho := by
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

    _, _, _, _, _, _, _, _, p98, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6386, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, r7842, r7843, r7844, r7845, r7846, r7847, r7848, r7849, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6386, r7842, r7843, r7844, r7845, r7846, r7847, r7848, r7849⟩

theorem seg52Blind_rung237 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50775 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 237)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      237 (Bool.toZMod bit) (seg52BlindAccState rho 237)
      (seg52BlindAccState rho 238) := by
  obtain ⟨r6386, r7842, r7843, r7844, r7845, r7846, r7847, r7848, r7849⟩ := seg52Blind_rows237 rho h
  unfold Seg52.relationRow6386 at r6386

  unfold Seg52.relationRow7842 at r7842

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7842

  unfold Seg52.relationRow7843 at r7843

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7843

  unfold Seg52.relationRow7844 at r7844

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7844

  unfold Seg52.relationRow7845 at r7845

  unfold Seg52.relationRow7846 at r7846

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7846

  unfold Seg52.relationRow7847 at r7847

  unfold Seg52.relationRow7848 at r7848

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7848

  unfold Seg52.relationRow7849 at r7849

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7849

  have hnextx : seg52BlindDeltaX237 rho =
      seg52BlindDeltaX236 rho + rho 52236 := by
    unfold seg52BlindDeltaX237 seg52BlindDeltaX236
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 87]

    ring

  have hnexty : seg52BlindDeltaY237 rho =
      seg52BlindDeltaY236 rho + rho 52237 := by
    unfold seg52BlindDeltaY237 seg52BlindDeltaY236
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 87]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 237
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX236 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY236 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX237 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY237 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY236 rho) (rho 52237)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 237)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (5223704154805626788824590874628175847479664026338309084875661743167402906190 : Seg52.F) (1369356659294285918173003827931848390669226440244888878142827715666229038664 : Seg52.F)
    (6593060814099912706997594702560024238148890466583197963018489458833631944854 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (7484672257564621342969169117937734368918301089472089009153369084064807912895 : Seg52.F) (2243051054702272080098422278286580301370479718239376175558435749547655338533 : Seg52.F)
    (5412226340998192128754120448899200289331961398841384281591755682960184101952 : Seg52.F) (3187946797307268399650523550854902222905663685811130911561670480987092377709 : Seg52.F)
    (7075105090134084506075821110849698140706672894909174949792405740251180200377 : Seg52.F) (3220757594622743635424234064153370683896235308815754743059571712750006332851 : Seg52.F)
    (5256514952121102024598301387926644308470235649342932916373562974930316861332 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX236 rho) (seg52BlindDeltaY236 rho) (rho 50775)
    (rho 52230) (rho 52231) (rho 52232) (rho 52234)
    (rho 52233) (rho 52235) (rho 52236) (rho 52237) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 237)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L237]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX236 seg52BlindDeltaY236;
        first | linear_combination r7842 | linear_combination -r7842)
    (by unfold seg52BlindDeltaX236 seg52BlindDeltaY236;
        first | linear_combination r7843 | linear_combination -r7843)
    (by unfold seg52BlindDeltaX236 seg52BlindDeltaY236;
        first | linear_combination r7844 | linear_combination -r7844)
    (by first | linear_combination r7845 | linear_combination -r7845)
    (by unfold seg52BlindDeltaX236 seg52BlindDeltaY236;
        first | linear_combination r7846 | linear_combination -r7846)
    (by first | linear_combination r7847 | linear_combination -r7847)
    (by unfold seg52BlindDeltaX236; first | linear_combination r7848 | linear_combination -r7848)
    (by unfold seg52BlindDeltaY236; first | linear_combination r7849 | linear_combination -r7849)
    (by linear_combination r6386)

theorem seg52Blind_rows238 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6387 rho ∧ Seg52.relationRow7850 rho ∧ Seg52.relationRow7851 rho ∧ Seg52.relationRow7852 rho ∧ Seg52.relationRow7853 rho ∧ Seg52.relationRow7854 rho ∧ Seg52.relationRow7855 rho ∧ Seg52.relationRow7856 rho ∧ Seg52.relationRow7857 rho := by
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

    _, _, _, _, _, _, _, _, p98, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6387, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, r7850, r7851, r7852, r7853, r7854, r7855, r7856, r7857, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6387, r7850, r7851, r7852, r7853, r7854, r7855, r7856, r7857⟩

theorem seg52Blind_rung238 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50776 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 238)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      238 (Bool.toZMod bit) (seg52BlindAccState rho 238)
      (seg52BlindAccState rho 239) := by
  obtain ⟨r6387, r7850, r7851, r7852, r7853, r7854, r7855, r7856, r7857⟩ := seg52Blind_rows238 rho h
  unfold Seg52.relationRow6387 at r6387

  unfold Seg52.relationRow7850 at r7850

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7850

  unfold Seg52.relationRow7851 at r7851

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7851

  unfold Seg52.relationRow7852 at r7852

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7852

  unfold Seg52.relationRow7853 at r7853

  unfold Seg52.relationRow7854 at r7854

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7854

  unfold Seg52.relationRow7855 at r7855

  unfold Seg52.relationRow7856 at r7856

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7856

  unfold Seg52.relationRow7857 at r7857

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7857

  have hnextx : seg52BlindDeltaX238 rho =
      seg52BlindDeltaX237 rho + rho 52244 := by
    unfold seg52BlindDeltaX238 seg52BlindDeltaX237
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 88]

    ring

  have hnexty : seg52BlindDeltaY238 rho =
      seg52BlindDeltaY237 rho + rho 52245 := by
    unfold seg52BlindDeltaY238 seg52BlindDeltaY237
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 88]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 238
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX237 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY237 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX238 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY238 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY237 rho) (rho 52245)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 238)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3415626854020561113337153381151782255963776484738683582312591551072053771997 : Seg52.F) (8214384480478989539622737878071026031914246760485956786249845457377996549620 : Seg52.F)
    (3185549585071180228711066320441261756502123910070576540627203552532641082576 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5826895706475092757243459512385933230547216745435924787067233253579232099562 : Seg52.F) (5432031083734210952568685556973047110028320066777387046666414780905740162675 : Seg52.F)
    (7139782703415344306931719791673397024107800243006857408208968492790013069723 : Seg52.F) (2848070947030623101803078143076415089290404328167445076973664893482421262042 : Seg52.F)
    (230077268949380884626087060710520499461652574668107041685387998539412689421 : Seg52.F) (5028834895407809310911671557629764275412122850415380245622641904845355467044 : Seg52.F)
    (5596390802397747322445746795705131442085495006986618750961568562434987976999 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX237 rho) (seg52BlindDeltaY237 rho) (rho 50776)
    (rho 52238) (rho 52239) (rho 52240) (rho 52242)
    (rho 52241) (rho 52243) (rho 52244) (rho 52245) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 238)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L238]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX237 seg52BlindDeltaY237;
        first | linear_combination r7850 | linear_combination -r7850)
    (by unfold seg52BlindDeltaX237 seg52BlindDeltaY237;
        first | linear_combination r7851 | linear_combination -r7851)
    (by unfold seg52BlindDeltaX237 seg52BlindDeltaY237;
        first | linear_combination r7852 | linear_combination -r7852)
    (by first | linear_combination r7853 | linear_combination -r7853)
    (by unfold seg52BlindDeltaX237 seg52BlindDeltaY237;
        first | linear_combination r7854 | linear_combination -r7854)
    (by first | linear_combination r7855 | linear_combination -r7855)
    (by unfold seg52BlindDeltaX237; first | linear_combination r7856 | linear_combination -r7856)
    (by unfold seg52BlindDeltaY237; first | linear_combination r7857 | linear_combination -r7857)
    (by linear_combination r6387)

theorem seg52Blind_rows239 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6388 rho ∧ Seg52.relationRow7858 rho ∧ Seg52.relationRow7859 rho ∧ Seg52.relationRow7860 rho ∧ Seg52.relationRow7861 rho ∧ Seg52.relationRow7862 rho ∧ Seg52.relationRow7863 rho ∧ Seg52.relationRow7864 rho ∧ Seg52.relationRow7865 rho := by
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

    _, _, _, _, _, _, _, _, p98, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6388, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7858, r7859, r7860, r7861, r7862, r7863, r7864, r7865, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6388, r7858, r7859, r7860, r7861, r7862, r7863, r7864, r7865⟩

theorem seg52Blind_rung239 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50777 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 239)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      239 (Bool.toZMod bit) (seg52BlindAccState rho 239)
      (seg52BlindAccState rho 240) := by
  obtain ⟨r6388, r7858, r7859, r7860, r7861, r7862, r7863, r7864, r7865⟩ := seg52Blind_rows239 rho h
  unfold Seg52.relationRow6388 at r6388

  unfold Seg52.relationRow7858 at r7858

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7858

  unfold Seg52.relationRow7859 at r7859

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7859

  unfold Seg52.relationRow7860 at r7860

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7860

  unfold Seg52.relationRow7861 at r7861

  unfold Seg52.relationRow7862 at r7862

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7862

  unfold Seg52.relationRow7863 at r7863

  unfold Seg52.relationRow7864 at r7864

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7864

  unfold Seg52.relationRow7865 at r7865

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7865

  have hnextx : seg52BlindDeltaX239 rho =
      seg52BlindDeltaX238 rho + rho 52252 := by
    unfold seg52BlindDeltaX239 seg52BlindDeltaX238
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 89]

    ring

  have hnexty : seg52BlindDeltaY239 rho =
      seg52BlindDeltaY238 rho + rho 52253 := by
    unfold seg52BlindDeltaY239 seg52BlindDeltaY238
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 89]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 239
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX238 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY238 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX239 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY239 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY238 rho) (rho 52253)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 239)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7329216008342562966261951251568013874576061931379146282997501345833022067484 : Seg52.F) (8337154768672408287029311071654393525536901156389457862162984876970229620941 : Seg52.F)
    (7221909027586600829042437384440860868737063752614540317225252766885842449384 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5159619363944830005552780021351084084046576023133866691511147781349334042499 : Seg52.F) (7989055757212577824469969974533327584189724790221135014605168378137458897111 : Seg52.F)
    (4267337997283225642471733632135753556093908436229989155369934660842742415056 : Seg52.F) (6444689965774614178681616377036970546823679838924488590374309635050581490485 : Seg52.F)
    (107306980755962137219513867127153005838998178764605965772248578947179618100 : Seg52.F) (1115245741085807457986873687213532656799837403774917544937732110084387171557 : Seg52.F)
    (1999771783653756245567208561744575984552219496229575237560923820866827748556 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX238 rho) (seg52BlindDeltaY238 rho) (rho 50777)
    (rho 52246) (rho 52247) (rho 52248) (rho 52250)
    (rho 52249) (rho 52251) (rho 52252) (rho 52253) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 239)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L239]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX238 seg52BlindDeltaY238;
        first | linear_combination r7858 | linear_combination -r7858)
    (by unfold seg52BlindDeltaX238 seg52BlindDeltaY238;
        first | linear_combination r7859 | linear_combination -r7859)
    (by unfold seg52BlindDeltaX238 seg52BlindDeltaY238;
        first | linear_combination r7860 | linear_combination -r7860)
    (by first | linear_combination r7861 | linear_combination -r7861)
    (by unfold seg52BlindDeltaX238 seg52BlindDeltaY238;
        first | linear_combination r7862 | linear_combination -r7862)
    (by first | linear_combination r7863 | linear_combination -r7863)
    (by unfold seg52BlindDeltaX238; first | linear_combination r7864 | linear_combination -r7864)
    (by unfold seg52BlindDeltaY238; first | linear_combination r7865 | linear_combination -r7865)
    (by linear_combination r6388)

theorem seg52Blind_rows240 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6389 rho ∧ Seg52.relationRow7866 rho ∧ Seg52.relationRow7867 rho ∧ Seg52.relationRow7868 rho ∧ Seg52.relationRow7869 rho ∧ Seg52.relationRow7870 rho ∧ Seg52.relationRow7871 rho ∧ Seg52.relationRow7872 rho ∧ Seg52.relationRow7873 rho := by
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

    _, _, _, _, _, _, _, _, p98, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6389, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7866, r7867, r7868, r7869, r7870, r7871, r7872, r7873, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6389, r7866, r7867, r7868, r7869, r7870, r7871, r7872, r7873⟩

theorem seg52Blind_rung240 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50778 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 240)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      240 (Bool.toZMod bit) (seg52BlindAccState rho 240)
      (seg52BlindAccState rho 241) := by
  obtain ⟨r6389, r7866, r7867, r7868, r7869, r7870, r7871, r7872, r7873⟩ := seg52Blind_rows240 rho h
  unfold Seg52.relationRow6389 at r6389

  unfold Seg52.relationRow7866 at r7866

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7866

  unfold Seg52.relationRow7867 at r7867

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7867

  unfold Seg52.relationRow7868 at r7868

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7868

  unfold Seg52.relationRow7869 at r7869

  unfold Seg52.relationRow7870 at r7870

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7870

  unfold Seg52.relationRow7871 at r7871

  unfold Seg52.relationRow7872 at r7872

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7872

  unfold Seg52.relationRow7873 at r7873

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7873

  have hnextx : seg52BlindDeltaX240 rho =
      seg52BlindDeltaX239 rho + rho 52260 := by
    unfold seg52BlindDeltaX240 seg52BlindDeltaX239
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 90]

    ring

  have hnexty : seg52BlindDeltaY240 rho =
      seg52BlindDeltaY239 rho + rho 52261 := by
    unfold seg52BlindDeltaY240 seg52BlindDeltaY239
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 90]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 240
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX239 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY239 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX240 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY240 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY239 rho) (rho 52261)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 240)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (5790688032707317684636175993482897077520959853438083706965602547854781804222 : Seg52.F) (3776492217524632224647919066434794131398200936402842013764212150674759307624 : Seg52.F)
    (1122718500803579485035270121136144677543261454686861892794581242612131872805 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (315165664185507501201007405643707065125027079845492041184508244027986387713 : Seg52.F) (2518794966706652762931428995801127820653344605275753054034923835216870230285 : Seg52.F)
    (3601892535133519944405285361176328391158836036835157603494002969734130044426 : Seg52.F) (4712442058301268938509792123735770662187265490877342010228303733002725985548 : Seg52.F)
    (4667969531903738199600905872346752399977698398751221814171021305242649931417 : Seg52.F) (2653773716721052739612648945298649453854939481715980120969630908062627434819 : Seg52.F)
    (3732019691127101485739032815045775869188633844276721817706929722914683253493 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX239 rho) (seg52BlindDeltaY239 rho) (rho 50778)
    (rho 52254) (rho 52255) (rho 52256) (rho 52258)
    (rho 52257) (rho 52259) (rho 52260) (rho 52261) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 240)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L240]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX239 seg52BlindDeltaY239;
        first | linear_combination r7866 | linear_combination -r7866)
    (by unfold seg52BlindDeltaX239 seg52BlindDeltaY239;
        first | linear_combination r7867 | linear_combination -r7867)
    (by unfold seg52BlindDeltaX239 seg52BlindDeltaY239;
        first | linear_combination r7868 | linear_combination -r7868)
    (by first | linear_combination r7869 | linear_combination -r7869)
    (by unfold seg52BlindDeltaX239 seg52BlindDeltaY239;
        first | linear_combination r7870 | linear_combination -r7870)
    (by first | linear_combination r7871 | linear_combination -r7871)
    (by unfold seg52BlindDeltaX239; first | linear_combination r7872 | linear_combination -r7872)
    (by unfold seg52BlindDeltaY239; first | linear_combination r7873 | linear_combination -r7873)
    (by linear_combination r6389)

theorem seg52Blind_hstep_c23 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
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

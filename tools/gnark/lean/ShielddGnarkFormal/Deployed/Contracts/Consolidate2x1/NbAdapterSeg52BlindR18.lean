import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows181 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6970 rho ∧ Seg52.relationRow8034 rho ∧ Seg52.relationRow8035 rho ∧ Seg52.relationRow8036 rho ∧ Seg52.relationRow8037 rho ∧ Seg52.relationRow8038 rho ∧ Seg52.relationRow8039 rho ∧ Seg52.relationRow8040 rho ∧ Seg52.relationRow8041 rho := by
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

    p100, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, r6970, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart100 at p100

  rcases p100 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8034, r8035, r8036, r8037, r8038, r8039, r8040, r8041, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6970, r8034, r8035, r8036, r8037, r8038, r8039, r8040, r8041⟩

theorem seg52Blind_rung181 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51359 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 181)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      181 (Bool.toZMod bit) (seg52BlindAccState rho 181)
      (seg52BlindAccState rho 182) := by
  obtain ⟨r6970, r8034, r8035, r8036, r8037, r8038, r8039, r8040, r8041⟩ := seg52Blind_rows181 rho h
  unfold Seg52.relationRow6970 at r6970

  unfold Seg52.relationRow8034 at r8034

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8034

  unfold Seg52.relationRow8035 at r8035

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8035

  unfold Seg52.relationRow8036 at r8036

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8036

  unfold Seg52.relationRow8037 at r8037

  unfold Seg52.relationRow8038 at r8038

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8038

  unfold Seg52.relationRow8039 at r8039

  unfold Seg52.relationRow8040 at r8040

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8040

  unfold Seg52.relationRow8041 at r8041

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8041

  have hnextx : seg52BlindDeltaX181 rho =
      seg52BlindDeltaX180 rho + rho 52428 := by
    unfold seg52BlindDeltaX181 seg52BlindDeltaX180
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 31]

    ring

  have hnexty : seg52BlindDeltaY181 rho =
      seg52BlindDeltaY180 rho + rho 52429 := by
    unfold seg52BlindDeltaY181 seg52BlindDeltaY180
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 31]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 181
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX180 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY180 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX181 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY181 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY180 rho) (rho 52429)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 181)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (5450362568005965995137715720743602359950351483618969119969701489607880727354 : Seg52.F) (7863356838019432405003655557591687605593454363760040053244927156863618264247 : Seg52.F)
    (4869257656597027975892546339553743434167906512224945345279395190554089752560 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (930106514699292104098886691997863737420803130699452871113229389318586867854 : Seg52.F) (1253059424289635349379570659365335954028514234507196113617158335561908180886 : Seg52.F)
    (1575016505422756477411102303246794318989971918617923936142043927069825021556 : Seg52.F) (6673974231467654620138423143695952282970001346474765915045547065742091277826 : Seg52.F)
    (581104911408938019245169381189858925782444971394023774690306299053790974794 : Seg52.F) (2994099181422404429111109218037944171425547851535094707965531966309528511687 : Seg52.F)
    (1770487517960715804110401795085594248405897988679297912889686390175317961215 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX180 rho) (seg52BlindDeltaY180 rho) (rho 51359)
    (rho 52422) (rho 52423) (rho 52424) (rho 52426)
    (rho 52425) (rho 52427) (rho 52428) (rho 52429) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 181)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L181]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX180 seg52BlindDeltaY180;
        first | linear_combination r8034 | linear_combination -r8034)
    (by unfold seg52BlindDeltaX180 seg52BlindDeltaY180;
        first | linear_combination r8035 | linear_combination -r8035)
    (by unfold seg52BlindDeltaX180 seg52BlindDeltaY180;
        first | linear_combination r8036 | linear_combination -r8036)
    (by first | linear_combination r8037 | linear_combination -r8037)
    (by unfold seg52BlindDeltaX180 seg52BlindDeltaY180;
        first | linear_combination r8038 | linear_combination -r8038)
    (by first | linear_combination r8039 | linear_combination -r8039)
    (by unfold seg52BlindDeltaX180; first | linear_combination r8040 | linear_combination -r8040)
    (by unfold seg52BlindDeltaY180; first | linear_combination r8041 | linear_combination -r8041)
    (by linear_combination r6970)

theorem seg52Blind_rows182 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6971 rho ∧ Seg52.relationRow8042 rho ∧ Seg52.relationRow8043 rho ∧ Seg52.relationRow8044 rho ∧ Seg52.relationRow8045 rho ∧ Seg52.relationRow8046 rho ∧ Seg52.relationRow8047 rho ∧ Seg52.relationRow8048 rho ∧ Seg52.relationRow8049 rho := by
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

    p100, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6971, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart100 at p100

  rcases p100 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8042, r8043, r8044, r8045, r8046, r8047, r8048, r8049, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6971, r8042, r8043, r8044, r8045, r8046, r8047, r8048, r8049⟩

theorem seg52Blind_rung182 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51360 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 182)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      182 (Bool.toZMod bit) (seg52BlindAccState rho 182)
      (seg52BlindAccState rho 183) := by
  obtain ⟨r6971, r8042, r8043, r8044, r8045, r8046, r8047, r8048, r8049⟩ := seg52Blind_rows182 rho h
  unfold Seg52.relationRow6971 at r6971

  unfold Seg52.relationRow8042 at r8042

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8042

  unfold Seg52.relationRow8043 at r8043

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8043

  unfold Seg52.relationRow8044 at r8044

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8044

  unfold Seg52.relationRow8045 at r8045

  unfold Seg52.relationRow8046 at r8046

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8046

  unfold Seg52.relationRow8047 at r8047

  unfold Seg52.relationRow8048 at r8048

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8048

  unfold Seg52.relationRow8049 at r8049

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8049

  have hnextx : seg52BlindDeltaX182 rho =
      seg52BlindDeltaX181 rho + rho 52436 := by
    unfold seg52BlindDeltaX182 seg52BlindDeltaX181
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 32]

    ring

  have hnexty : seg52BlindDeltaY182 rho =
      seg52BlindDeltaY181 rho + rho 52437 := by
    unfold seg52BlindDeltaY182 seg52BlindDeltaY181
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 32]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 182
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX181 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY181 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX182 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY182 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY181 rho) (rho 52437)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 182)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3726626880727964336139318661652673543979097185776260883037520700210038994276 : Seg52.F) (5205186407645200117319233413673572085155429358570388400635137111210339859483 : Seg52.F)
    (487351538944794029209727136544699097758627209192585455737424355502969614718 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (1280360060523824470092106696621627832627530184276510703344518048220712403801 : Seg52.F) (8287987664941402397117653789786020645287437279613880328591813012593442627238 : Seg52.F)
    (121575702908755372201135340724619640361875339229139199078923729978452142890 : Seg52.F) (1133405785400838498831702522680900447535654583608560225961813862583145349749 : Seg52.F)
    (3239275341783170306929591525107974446220469976583675427300096344707069379558 : Seg52.F) (4717834868700406088109506277128872987396802149377802944897712755707370244765 : Seg52.F)
    (7311055964027531925417122416100646083840244751545503601973419593334263889292 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX181 rho) (seg52BlindDeltaY181 rho) (rho 51360)
    (rho 52430) (rho 52431) (rho 52432) (rho 52434)
    (rho 52433) (rho 52435) (rho 52436) (rho 52437) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 182)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L182]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX181 seg52BlindDeltaY181;
        first | linear_combination r8042 | linear_combination -r8042)
    (by unfold seg52BlindDeltaX181 seg52BlindDeltaY181;
        first | linear_combination r8043 | linear_combination -r8043)
    (by unfold seg52BlindDeltaX181 seg52BlindDeltaY181;
        first | linear_combination r8044 | linear_combination -r8044)
    (by first | linear_combination r8045 | linear_combination -r8045)
    (by unfold seg52BlindDeltaX181 seg52BlindDeltaY181;
        first | linear_combination r8046 | linear_combination -r8046)
    (by first | linear_combination r8047 | linear_combination -r8047)
    (by unfold seg52BlindDeltaX181; first | linear_combination r8048 | linear_combination -r8048)
    (by unfold seg52BlindDeltaY181; first | linear_combination r8049 | linear_combination -r8049)
    (by linear_combination r6971)

theorem seg52Blind_rows183 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6972 rho ∧ Seg52.relationRow8050 rho ∧ Seg52.relationRow8051 rho ∧ Seg52.relationRow8052 rho ∧ Seg52.relationRow8053 rho ∧ Seg52.relationRow8054 rho ∧ Seg52.relationRow8055 rho ∧ Seg52.relationRow8056 rho ∧ Seg52.relationRow8057 rho := by
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

    p100, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r6972, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart100 at p100

  rcases p100 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8050, r8051, r8052, r8053, r8054, r8055, r8056, r8057, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6972, r8050, r8051, r8052, r8053, r8054, r8055, r8056, r8057⟩

theorem seg52Blind_rung183 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51361 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 183)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      183 (Bool.toZMod bit) (seg52BlindAccState rho 183)
      (seg52BlindAccState rho 184) := by
  obtain ⟨r6972, r8050, r8051, r8052, r8053, r8054, r8055, r8056, r8057⟩ := seg52Blind_rows183 rho h
  unfold Seg52.relationRow6972 at r6972

  unfold Seg52.relationRow8050 at r8050

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8050

  unfold Seg52.relationRow8051 at r8051

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8051

  unfold Seg52.relationRow8052 at r8052

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8052

  unfold Seg52.relationRow8053 at r8053

  unfold Seg52.relationRow8054 at r8054

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8054

  unfold Seg52.relationRow8055 at r8055

  unfold Seg52.relationRow8056 at r8056

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8056

  unfold Seg52.relationRow8057 at r8057

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8057

  have hnextx : seg52BlindDeltaX183 rho =
      seg52BlindDeltaX182 rho + rho 52444 := by
    unfold seg52BlindDeltaX183 seg52BlindDeltaX182
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 33]

    ring

  have hnexty : seg52BlindDeltaY183 rho =
      seg52BlindDeltaY182 rho + rho 52445 := by
    unfold seg52BlindDeltaY183 seg52BlindDeltaY182
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 33]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 183
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX182 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY182 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX183 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY183 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY182 rho) (rho 52445)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 183)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (8353955466520487973218678342737144999196589440312072258568627139248891123780 : Seg52.F) (7062726124271134759240555526807379968434987263529066777136823631924421133508 : Seg52.F)
    (6972219841363252308210408930762978436255677368687075207770217315255903018247 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5785242367034416013186451122908346386574802522145504365944482396300506510102 : Seg52.F) (6008574523412711309216712713621102379598344939600408516050135086888331613703 : Seg52.F)
    (5874654758371365497412123582816759422899513431348348189538620132589470139504 : Seg52.F) (6695653059300172265242021768773930636429052276147997679807098629004792628300 : Seg52.F)
    (1381735625157235665008269411974166562940912071624997050798409823992988105533 : Seg52.F) (90506282907882451030146596044401532179309894841991569366606316668518115261 : Seg52.F)
    (1748808690128198159006803170007615894946847059006066148128134826912616610741 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX182 rho) (seg52BlindDeltaY182 rho) (rho 51361)
    (rho 52438) (rho 52439) (rho 52440) (rho 52442)
    (rho 52441) (rho 52443) (rho 52444) (rho 52445) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 183)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L183]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX182 seg52BlindDeltaY182;
        first | linear_combination r8050 | linear_combination -r8050)
    (by unfold seg52BlindDeltaX182 seg52BlindDeltaY182;
        first | linear_combination r8051 | linear_combination -r8051)
    (by unfold seg52BlindDeltaX182 seg52BlindDeltaY182;
        first | linear_combination r8052 | linear_combination -r8052)
    (by first | linear_combination r8053 | linear_combination -r8053)
    (by unfold seg52BlindDeltaX182 seg52BlindDeltaY182;
        first | linear_combination r8054 | linear_combination -r8054)
    (by first | linear_combination r8055 | linear_combination -r8055)
    (by unfold seg52BlindDeltaX182; first | linear_combination r8056 | linear_combination -r8056)
    (by unfold seg52BlindDeltaY182; first | linear_combination r8057 | linear_combination -r8057)
    (by linear_combination r6972)

theorem seg52Blind_rows184 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6973 rho ∧ Seg52.relationRow8058 rho ∧ Seg52.relationRow8059 rho ∧ Seg52.relationRow8060 rho ∧ Seg52.relationRow8061 rho ∧ Seg52.relationRow8062 rho ∧ Seg52.relationRow8063 rho ∧ Seg52.relationRow8064 rho ∧ Seg52.relationRow8065 rho := by
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

    p100, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r6973, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart100 at p100

  rcases p100 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8058, r8059, r8060, r8061, r8062, r8063, r8064, r8065, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6973, r8058, r8059, r8060, r8061, r8062, r8063, r8064, r8065⟩

theorem seg52Blind_rung184 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51362 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 184)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      184 (Bool.toZMod bit) (seg52BlindAccState rho 184)
      (seg52BlindAccState rho 185) := by
  obtain ⟨r6973, r8058, r8059, r8060, r8061, r8062, r8063, r8064, r8065⟩ := seg52Blind_rows184 rho h
  unfold Seg52.relationRow6973 at r6973

  unfold Seg52.relationRow8058 at r8058

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8058

  unfold Seg52.relationRow8059 at r8059

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8059

  unfold Seg52.relationRow8060 at r8060

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8060

  unfold Seg52.relationRow8061 at r8061

  unfold Seg52.relationRow8062 at r8062

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8062

  unfold Seg52.relationRow8063 at r8063

  unfold Seg52.relationRow8064 at r8064

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8064

  unfold Seg52.relationRow8065 at r8065

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8065

  have hnextx : seg52BlindDeltaX184 rho =
      seg52BlindDeltaX183 rho + rho 52452 := by
    unfold seg52BlindDeltaX184 seg52BlindDeltaX183
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 34]

    ring

  have hnexty : seg52BlindDeltaY184 rho =
      seg52BlindDeltaY183 rho + rho 52453 := by
    unfold seg52BlindDeltaY184 seg52BlindDeltaY183
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 34]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 184
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX183 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY183 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX184 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY184 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY183 rho) (rho 52453)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 184)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3724674640623000114298083742499641747004822778877862495636058446614146193033 : Seg52.F) (6801527367366504142825503791433485130925574120478914833354577634367861813428 : Seg52.F)
    (2081740258561133832874762595151580346554497564202713501055402625064598767420 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2038740454983773278455877865055869688596335536964418197756035178253859779235 : Seg52.F) (3964228108440662983730456674306077439109527380836288005702659201872255219019 : Seg52.F)
    (7190264019251508773585688967600396304021642644715000714830175014872546109716 : Seg52.F) (6906460354791643457369320319112673143226795837431029108592607602326467497613 : Seg52.F)
    (1642934382061866281423321147348061400450325214675148994580655821549547425613 : Seg52.F) (4719787108805370309950741196281904784371076556276201332299175009303263046008 : Seg52.F)
    (1538001394636726966879504619668873388149103497723034719342625853590941741428 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX183 rho) (seg52BlindDeltaY183 rho) (rho 51362)
    (rho 52446) (rho 52447) (rho 52448) (rho 52450)
    (rho 52449) (rho 52451) (rho 52452) (rho 52453) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 184)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L184]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX183 seg52BlindDeltaY183;
        first | linear_combination r8058 | linear_combination -r8058)
    (by unfold seg52BlindDeltaX183 seg52BlindDeltaY183;
        first | linear_combination r8059 | linear_combination -r8059)
    (by unfold seg52BlindDeltaX183 seg52BlindDeltaY183;
        first | linear_combination r8060 | linear_combination -r8060)
    (by first | linear_combination r8061 | linear_combination -r8061)
    (by unfold seg52BlindDeltaX183 seg52BlindDeltaY183;
        first | linear_combination r8062 | linear_combination -r8062)
    (by first | linear_combination r8063 | linear_combination -r8063)
    (by unfold seg52BlindDeltaX183; first | linear_combination r8064 | linear_combination -r8064)
    (by unfold seg52BlindDeltaY183; first | linear_combination r8065 | linear_combination -r8065)
    (by linear_combination r6973)

theorem seg52Blind_rows185 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6974 rho ∧ Seg52.relationRow8066 rho ∧ Seg52.relationRow8067 rho ∧ Seg52.relationRow8068 rho ∧ Seg52.relationRow8069 rho ∧ Seg52.relationRow8070 rho ∧ Seg52.relationRow8071 rho ∧ Seg52.relationRow8072 rho ∧ Seg52.relationRow8073 rho := by
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

    p100, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r6974, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart100 at p100

  rcases p100 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8066, r8067, r8068, r8069, r8070, r8071, r8072, r8073, _, _, _, _, _, _⟩

  exact ⟨r6974, r8066, r8067, r8068, r8069, r8070, r8071, r8072, r8073⟩

theorem seg52Blind_rung185 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51363 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 185)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      185 (Bool.toZMod bit) (seg52BlindAccState rho 185)
      (seg52BlindAccState rho 186) := by
  obtain ⟨r6974, r8066, r8067, r8068, r8069, r8070, r8071, r8072, r8073⟩ := seg52Blind_rows185 rho h
  unfold Seg52.relationRow6974 at r6974

  unfold Seg52.relationRow8066 at r8066

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8066

  unfold Seg52.relationRow8067 at r8067

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8067

  unfold Seg52.relationRow8068 at r8068

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8068

  unfold Seg52.relationRow8069 at r8069

  unfold Seg52.relationRow8070 at r8070

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8070

  unfold Seg52.relationRow8071 at r8071

  unfold Seg52.relationRow8072 at r8072

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8072

  unfold Seg52.relationRow8073 at r8073

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8073

  have hnextx : seg52BlindDeltaX185 rho =
      seg52BlindDeltaX184 rho + rho 52460 := by
    unfold seg52BlindDeltaX185 seg52BlindDeltaX184
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 35]

    ring

  have hnexty : seg52BlindDeltaY185 rho =
      seg52BlindDeltaY184 rho + rho 52461 := by
    unfold seg52BlindDeltaY185 seg52BlindDeltaY184
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 35]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 185
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX184 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY184 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX185 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY185 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY184 rho) (rho 52461)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 185)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1174905999653533080340603577798985944254266017567149823268548237973523533616 : Seg52.F) (1981360027689507858162018282694486419815914937840666141661060307222644187889 : Seg52.F)
    (3156266027343040938502621860493472364070180955407815964929608545196167721505 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (7009725054716979139289175362708530049742297927575223779917901330082350371641 : Seg52.F) (6776036120917260375633226519404125397597029156965838872277362955689951535768 : Seg52.F)
    (259358696893003353074462687268869567940158478483629250526726304218342690361 : Seg52.F) (3082012765510726960635766093343012095433001728509255282058976525991383363558 : Seg52.F)
    (6463101721738862566086806656087060111559984397313397686274173148694765051152 : Seg52.F) (7269555749774837343908221360982560587121633317586914004666685217943885705425 : Seg52.F)
    (5362448983917643463613058845438534435942897606644808545876256929926025875483 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX184 rho) (seg52BlindDeltaY184 rho) (rho 51363)
    (rho 52454) (rho 52455) (rho 52456) (rho 52458)
    (rho 52457) (rho 52459) (rho 52460) (rho 52461) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 185)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L185]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX184 seg52BlindDeltaY184;
        first | linear_combination r8066 | linear_combination -r8066)
    (by unfold seg52BlindDeltaX184 seg52BlindDeltaY184;
        first | linear_combination r8067 | linear_combination -r8067)
    (by unfold seg52BlindDeltaX184 seg52BlindDeltaY184;
        first | linear_combination r8068 | linear_combination -r8068)
    (by first | linear_combination r8069 | linear_combination -r8069)
    (by unfold seg52BlindDeltaX184 seg52BlindDeltaY184;
        first | linear_combination r8070 | linear_combination -r8070)
    (by first | linear_combination r8071 | linear_combination -r8071)
    (by unfold seg52BlindDeltaX184; first | linear_combination r8072 | linear_combination -r8072)
    (by unfold seg52BlindDeltaY184; first | linear_combination r8073 | linear_combination -r8073)
    (by linear_combination r6974)

theorem seg52Blind_rows186 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6975 rho ∧ Seg52.relationRow8074 rho ∧ Seg52.relationRow8075 rho ∧ Seg52.relationRow8076 rho ∧ Seg52.relationRow8077 rho ∧ Seg52.relationRow8078 rho ∧ Seg52.relationRow8079 rho ∧ Seg52.relationRow8080 rho ∧ Seg52.relationRow8081 rho := by
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

    p100, p101, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6975, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart100 at p100

  rcases p100 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8074, r8075, r8076, r8077, r8078, r8079⟩

  unfold Seg52.relationPart101 at p101

  rcases p101 with ⟨r8080, r8081, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6975, r8074, r8075, r8076, r8077, r8078, r8079, r8080, r8081⟩

theorem seg52Blind_rung186 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51364 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 186)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      186 (Bool.toZMod bit) (seg52BlindAccState rho 186)
      (seg52BlindAccState rho 187) := by
  obtain ⟨r6975, r8074, r8075, r8076, r8077, r8078, r8079, r8080, r8081⟩ := seg52Blind_rows186 rho h
  unfold Seg52.relationRow6975 at r6975

  unfold Seg52.relationRow8074 at r8074

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8074

  unfold Seg52.relationRow8075 at r8075

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8075

  unfold Seg52.relationRow8076 at r8076

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8076

  unfold Seg52.relationRow8077 at r8077

  unfold Seg52.relationRow8078 at r8078

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8078

  unfold Seg52.relationRow8079 at r8079

  unfold Seg52.relationRow8080 at r8080

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8080

  unfold Seg52.relationRow8081 at r8081

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8081

  have hnextx : seg52BlindDeltaX186 rho =
      seg52BlindDeltaX185 rho + rho 52468 := by
    unfold seg52BlindDeltaX186 seg52BlindDeltaX185
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 36]

    ring

  have hnexty : seg52BlindDeltaY186 rho =
      seg52BlindDeltaY185 rho + rho 52469 := by
    unfold seg52BlindDeltaY186 seg52BlindDeltaY185
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 36]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 186
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX185 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY185 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX186 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY186 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY185 rho) (rho 52469)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 186)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7787428424287560873464197071160094215955456615894628038324752536842263774777 : Seg52.F) (4985933094490275429668023278964753142752531367791546144483724375668070482941 : Seg52.F)
    (4328899769349465878883395411343300827332088648532110354873243456592925018677 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6028579224337606591443459905021778812168747518565097276810086992500255754658 : Seg52.F) (6381661940768385857326634826811761934878076726829780415823298289526390967490 : Seg52.F)
    (1452863053084963223896290692224473309609477121996708903053775524417059294317 : Seg52.F) (4784122770234899523511542971905252416131679765126573120030500563903044330618 : Seg52.F)
    (3458528654938094994580801659816793388623367967362517683451509080249338756100 : Seg52.F) (657033325140809550784627867621452315420442719259435789610480919075145464264 : Seg52.F)
    (3660338979193470900737281966876294115244219570027490707904732892014364908423 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX185 rho) (seg52BlindDeltaY185 rho) (rho 51364)
    (rho 52462) (rho 52463) (rho 52464) (rho 52466)
    (rho 52465) (rho 52467) (rho 52468) (rho 52469) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 186)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L186]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX185 seg52BlindDeltaY185;
        first | linear_combination r8074 | linear_combination -r8074)
    (by unfold seg52BlindDeltaX185 seg52BlindDeltaY185;
        first | linear_combination r8075 | linear_combination -r8075)
    (by unfold seg52BlindDeltaX185 seg52BlindDeltaY185;
        first | linear_combination r8076 | linear_combination -r8076)
    (by first | linear_combination r8077 | linear_combination -r8077)
    (by unfold seg52BlindDeltaX185 seg52BlindDeltaY185;
        first | linear_combination r8078 | linear_combination -r8078)
    (by first | linear_combination r8079 | linear_combination -r8079)
    (by unfold seg52BlindDeltaX185; first | linear_combination r8080 | linear_combination -r8080)
    (by unfold seg52BlindDeltaY185; first | linear_combination r8081 | linear_combination -r8081)
    (by linear_combination r6975)

theorem seg52Blind_rows187 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6976 rho ∧ Seg52.relationRow8082 rho ∧ Seg52.relationRow8083 rho ∧ Seg52.relationRow8084 rho ∧ Seg52.relationRow8085 rho ∧ Seg52.relationRow8086 rho ∧ Seg52.relationRow8087 rho ∧ Seg52.relationRow8088 rho ∧ Seg52.relationRow8089 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6976, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart101 at p101

  rcases p101 with ⟨_, _, r8082, r8083, r8084, r8085, r8086, r8087, r8088, r8089, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6976, r8082, r8083, r8084, r8085, r8086, r8087, r8088, r8089⟩

theorem seg52Blind_rung187 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51365 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 187)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      187 (Bool.toZMod bit) (seg52BlindAccState rho 187)
      (seg52BlindAccState rho 188) := by
  obtain ⟨r6976, r8082, r8083, r8084, r8085, r8086, r8087, r8088, r8089⟩ := seg52Blind_rows187 rho h
  unfold Seg52.relationRow6976 at r6976

  unfold Seg52.relationRow8082 at r8082

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8082

  unfold Seg52.relationRow8083 at r8083

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8083

  unfold Seg52.relationRow8084 at r8084

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8084

  unfold Seg52.relationRow8085 at r8085

  unfold Seg52.relationRow8086 at r8086

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8086

  unfold Seg52.relationRow8087 at r8087

  unfold Seg52.relationRow8088 at r8088

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8088

  unfold Seg52.relationRow8089 at r8089

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8089

  have hnextx : seg52BlindDeltaX187 rho =
      seg52BlindDeltaX186 rho + rho 52476 := by
    unfold seg52BlindDeltaX187 seg52BlindDeltaX186
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 37]

    ring

  have hnexty : seg52BlindDeltaY187 rho =
      seg52BlindDeltaY186 rho + rho 52477 := by
    unfold seg52BlindDeltaY187 seg52BlindDeltaY186
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 37]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 187
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX186 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY186 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX187 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY187 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY186 rho) (rho 52477)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 187)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (5664125921590636992117446648931742938698798873128837557369561776431000742593 : Seg52.F) (2587131426023031291835702890689105556190617884135030876471102330112524756020 : Seg52.F)
    (8251257347613668283953149539620848494889416757263868433840664106543525498613 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4596919794334890205495364398857343729149742954419236979109192546333741823495 : Seg52.F) (7826491336625565773713388100152299427331399470180970387061441917424441790953 : Seg52.F)
    (5918976997624896128603067142306423185695956680637276924820692671152121793628 : Seg52.F) (1625262592615038539626989504833041947927858077968751558005269837710336438244 : Seg52.F)
    (5857330323405339132413122048092440975185281451019032951464131125804884483021 : Seg52.F) (2780335827837733432131378289849803592677100462025226270565671679486408496448 : Seg52.F)
    (6819199156813331884621835433948504583448041257185312269929963618207072800797 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX186 rho) (seg52BlindDeltaY186 rho) (rho 51365)
    (rho 52470) (rho 52471) (rho 52472) (rho 52474)
    (rho 52473) (rho 52475) (rho 52476) (rho 52477) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 187)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L187]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX186 seg52BlindDeltaY186;
        first | linear_combination r8082 | linear_combination -r8082)
    (by unfold seg52BlindDeltaX186 seg52BlindDeltaY186;
        first | linear_combination r8083 | linear_combination -r8083)
    (by unfold seg52BlindDeltaX186 seg52BlindDeltaY186;
        first | linear_combination r8084 | linear_combination -r8084)
    (by first | linear_combination r8085 | linear_combination -r8085)
    (by unfold seg52BlindDeltaX186 seg52BlindDeltaY186;
        first | linear_combination r8086 | linear_combination -r8086)
    (by first | linear_combination r8087 | linear_combination -r8087)
    (by unfold seg52BlindDeltaX186; first | linear_combination r8088 | linear_combination -r8088)
    (by unfold seg52BlindDeltaY186; first | linear_combination r8089 | linear_combination -r8089)
    (by linear_combination r6976)

theorem seg52Blind_rows188 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6977 rho ∧ Seg52.relationRow8090 rho ∧ Seg52.relationRow8091 rho ∧ Seg52.relationRow8092 rho ∧ Seg52.relationRow8093 rho ∧ Seg52.relationRow8094 rho ∧ Seg52.relationRow8095 rho ∧ Seg52.relationRow8096 rho ∧ Seg52.relationRow8097 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6977, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart101 at p101

  rcases p101 with ⟨_, _, _, _, _, _, _, _, _, _, r8090, r8091, r8092, r8093, r8094, r8095, r8096, r8097, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6977, r8090, r8091, r8092, r8093, r8094, r8095, r8096, r8097⟩

theorem seg52Blind_rung188 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51366 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 188)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      188 (Bool.toZMod bit) (seg52BlindAccState rho 188)
      (seg52BlindAccState rho 189) := by
  obtain ⟨r6977, r8090, r8091, r8092, r8093, r8094, r8095, r8096, r8097⟩ := seg52Blind_rows188 rho h
  unfold Seg52.relationRow6977 at r6977

  unfold Seg52.relationRow8090 at r8090

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8090

  unfold Seg52.relationRow8091 at r8091

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8091

  unfold Seg52.relationRow8092 at r8092

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8092

  unfold Seg52.relationRow8093 at r8093

  unfold Seg52.relationRow8094 at r8094

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8094

  unfold Seg52.relationRow8095 at r8095

  unfold Seg52.relationRow8096 at r8096

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8096

  unfold Seg52.relationRow8097 at r8097

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8097

  have hnextx : seg52BlindDeltaX188 rho =
      seg52BlindDeltaX187 rho + rho 52484 := by
    unfold seg52BlindDeltaX188 seg52BlindDeltaX187
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 38]

    ring

  have hnexty : seg52BlindDeltaY188 rho =
      seg52BlindDeltaY187 rho + rho 52485 := by
    unfold seg52BlindDeltaY188 seg52BlindDeltaY187
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 38]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 188
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX187 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY187 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX188 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY188 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY187 rho) (rho 52485)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 188)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (4566659702402280241611209257404082758933800362364907704264911919510596352786 : Seg52.F) (6087559099472509237605849677509937766940350039658617799879838242099118097801 : Seg52.F)
    (2209757052446419054968233996132473994498251066869461676209516705692305211546 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6922811000887993217579984030095195121464617178287420021988095849235860064564 : Seg52.F) (14303776005448437087817101055051617761828693284628317724679631503107821478 : Seg52.F)
    (566254701759488235120972677527957762407484274840097124827533952264695348694 : Seg52.F) (7663408851238017846377131014723390299574372802032898411634975999337123407531 : Seg52.F)
    (2356902649955861186642975261271608764435549295495446028055395213818291141240 : Seg52.F) (3877802047026090182637615681377463772442098972789156123670321536406812886255 : Seg52.F)
    (781052898190352577871693924058156231801526533121165416300257456580285831510 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX187 rho) (seg52BlindDeltaY187 rho) (rho 51366)
    (rho 52478) (rho 52479) (rho 52480) (rho 52482)
    (rho 52481) (rho 52483) (rho 52484) (rho 52485) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 188)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L188]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX187 seg52BlindDeltaY187;
        first | linear_combination r8090 | linear_combination -r8090)
    (by unfold seg52BlindDeltaX187 seg52BlindDeltaY187;
        first | linear_combination r8091 | linear_combination -r8091)
    (by unfold seg52BlindDeltaX187 seg52BlindDeltaY187;
        first | linear_combination r8092 | linear_combination -r8092)
    (by first | linear_combination r8093 | linear_combination -r8093)
    (by unfold seg52BlindDeltaX187 seg52BlindDeltaY187;
        first | linear_combination r8094 | linear_combination -r8094)
    (by first | linear_combination r8095 | linear_combination -r8095)
    (by unfold seg52BlindDeltaX187; first | linear_combination r8096 | linear_combination -r8096)
    (by unfold seg52BlindDeltaY187; first | linear_combination r8097 | linear_combination -r8097)
    (by linear_combination r6977)

theorem seg52Blind_rows189 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6978 rho ∧ Seg52.relationRow8098 rho ∧ Seg52.relationRow8099 rho ∧ Seg52.relationRow8100 rho ∧ Seg52.relationRow8101 rho ∧ Seg52.relationRow8102 rho ∧ Seg52.relationRow8103 rho ∧ Seg52.relationRow8104 rho ∧ Seg52.relationRow8105 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6978, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart101 at p101

  rcases p101 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8098, r8099, r8100, r8101, r8102, r8103, r8104, r8105, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6978, r8098, r8099, r8100, r8101, r8102, r8103, r8104, r8105⟩

theorem seg52Blind_rung189 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51367 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 189)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      189 (Bool.toZMod bit) (seg52BlindAccState rho 189)
      (seg52BlindAccState rho 190) := by
  obtain ⟨r6978, r8098, r8099, r8100, r8101, r8102, r8103, r8104, r8105⟩ := seg52Blind_rows189 rho h
  unfold Seg52.relationRow6978 at r6978

  unfold Seg52.relationRow8098 at r8098

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8098

  unfold Seg52.relationRow8099 at r8099

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8099

  unfold Seg52.relationRow8100 at r8100

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8100

  unfold Seg52.relationRow8101 at r8101

  unfold Seg52.relationRow8102 at r8102

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8102

  unfold Seg52.relationRow8103 at r8103

  unfold Seg52.relationRow8104 at r8104

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8104

  unfold Seg52.relationRow8105 at r8105

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8105

  have hnextx : seg52BlindDeltaX189 rho =
      seg52BlindDeltaX188 rho + rho 52492 := by
    unfold seg52BlindDeltaX189 seg52BlindDeltaX188
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 39]

    ring

  have hnexty : seg52BlindDeltaY189 rho =
      seg52BlindDeltaY188 rho + rho 52493 := by
    unfold seg52BlindDeltaY189 seg52BlindDeltaY188
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 39]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 189
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX188 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY188 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX189 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY189 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY188 rho) (rho 52493)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 189)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3309409805907718488973225867968294079518603536308582507670435458888150009119 : Seg52.F) (6512305769415470139547207884734713722697427411635064641005880638813378494733 : Seg52.F)
    (1377253825894818204271608813921461270840131612789583320741082641784119264811 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6524314985460573496601737361348284694458658975715625217606691023570314861904 : Seg52.F) (3891133338582028720854362833555171518308555506521266766552101859987109084684 : Seg52.F)
    (1595464300149660764758530111730061010614402182284645456524319626499860751122 : Seg52.F) (654751795608522464774750025157460544028712172208379900997136053913240491449 : Seg52.F)
    (1932155980012900284701617054046832808678471923518999186929352817104030744308 : Seg52.F) (5135051943520651935275599070813252451857295798845481320264797997029259229922 : Seg52.F)
    (7789709953819847959474074913624085987347187162945683926938097402004168747592 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX188 rho) (seg52BlindDeltaY188 rho) (rho 51367)
    (rho 52486) (rho 52487) (rho 52488) (rho 52490)
    (rho 52489) (rho 52491) (rho 52492) (rho 52493) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 189)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L189]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX188 seg52BlindDeltaY188;
        first | linear_combination r8098 | linear_combination -r8098)
    (by unfold seg52BlindDeltaX188 seg52BlindDeltaY188;
        first | linear_combination r8099 | linear_combination -r8099)
    (by unfold seg52BlindDeltaX188 seg52BlindDeltaY188;
        first | linear_combination r8100 | linear_combination -r8100)
    (by first | linear_combination r8101 | linear_combination -r8101)
    (by unfold seg52BlindDeltaX188 seg52BlindDeltaY188;
        first | linear_combination r8102 | linear_combination -r8102)
    (by first | linear_combination r8103 | linear_combination -r8103)
    (by unfold seg52BlindDeltaX188; first | linear_combination r8104 | linear_combination -r8104)
    (by unfold seg52BlindDeltaY188; first | linear_combination r8105 | linear_combination -r8105)
    (by linear_combination r6978)

theorem seg52Blind_rows190 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6979 rho ∧ Seg52.relationRow8106 rho ∧ Seg52.relationRow8107 rho ∧ Seg52.relationRow8108 rho ∧ Seg52.relationRow8109 rho ∧ Seg52.relationRow8110 rho ∧ Seg52.relationRow8111 rho ∧ Seg52.relationRow8112 rho ∧ Seg52.relationRow8113 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6979, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart101 at p101

  rcases p101 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8106, r8107, r8108, r8109, r8110, r8111, r8112, r8113, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6979, r8106, r8107, r8108, r8109, r8110, r8111, r8112, r8113⟩

theorem seg52Blind_rung190 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51368 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 190)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      190 (Bool.toZMod bit) (seg52BlindAccState rho 190)
      (seg52BlindAccState rho 191) := by
  obtain ⟨r6979, r8106, r8107, r8108, r8109, r8110, r8111, r8112, r8113⟩ := seg52Blind_rows190 rho h
  unfold Seg52.relationRow6979 at r6979

  unfold Seg52.relationRow8106 at r8106

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8106

  unfold Seg52.relationRow8107 at r8107

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8107

  unfold Seg52.relationRow8108 at r8108

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8108

  unfold Seg52.relationRow8109 at r8109

  unfold Seg52.relationRow8110 at r8110

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8110

  unfold Seg52.relationRow8111 at r8111

  unfold Seg52.relationRow8112 at r8112

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8112

  unfold Seg52.relationRow8113 at r8113

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8113

  have hnextx : seg52BlindDeltaX190 rho =
      seg52BlindDeltaX189 rho + rho 52500 := by
    unfold seg52BlindDeltaX190 seg52BlindDeltaX189
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 40]

    ring

  have hnexty : seg52BlindDeltaY190 rho =
      seg52BlindDeltaY189 rho + rho 52501 := by
    unfold seg52BlindDeltaY190 seg52BlindDeltaY189
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 40]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 190
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX189 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY189 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX190 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY190 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY189 rho) (rho 52501)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 190)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1733147509875631577792697947482857006578485467535195501665039803780509949475 : Seg52.F) (222721597698465656115852974403902697694309243786041265918353118640839845057 : Seg52.F)
    (1955869107574097233908550921886759704272794711321236767583392922421349794532 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5729468442223483610334665510447873755812178000459621932461328396501842032958 : Seg52.F) (1112625066972103949522459514677280838014191752531931313897279597522496570843 : Seg52.F)
    (7981065069239516003763237396880700992551856433791312584204101158303106282225 : Seg52.F) (657868393160284488509215920517584596866043104975981469382381735957495653388 : Seg52.F)
    (8221740151729904768132971964377643833681590091368022562016880337276569393984 : Seg52.F) (6711314239552738846456126991298689524797413867618868326270193652136899289566 : Seg52.F)
    (7786593356268085935739609018263961934509856230178082358552851719959913585653 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX189 rho) (seg52BlindDeltaY189 rho) (rho 51368)
    (rho 52494) (rho 52495) (rho 52496) (rho 52498)
    (rho 52497) (rho 52499) (rho 52500) (rho 52501) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 190)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L190]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX189 seg52BlindDeltaY189;
        first | linear_combination r8106 | linear_combination -r8106)
    (by unfold seg52BlindDeltaX189 seg52BlindDeltaY189;
        first | linear_combination r8107 | linear_combination -r8107)
    (by unfold seg52BlindDeltaX189 seg52BlindDeltaY189;
        first | linear_combination r8108 | linear_combination -r8108)
    (by first | linear_combination r8109 | linear_combination -r8109)
    (by unfold seg52BlindDeltaX189 seg52BlindDeltaY189;
        first | linear_combination r8110 | linear_combination -r8110)
    (by first | linear_combination r8111 | linear_combination -r8111)
    (by unfold seg52BlindDeltaX189; first | linear_combination r8112 | linear_combination -r8112)
    (by unfold seg52BlindDeltaY189; first | linear_combination r8113 | linear_combination -r8113)
    (by linear_combination r6979)

theorem seg52Blind_hstep_c18 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 181 ≤ i → i < 191 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung181 rho h bits[181]! (hbitAt 181 (by omega)) hacc
  · exact seg52Blind_rung182 rho h bits[182]! (hbitAt 182 (by omega)) hacc
  · exact seg52Blind_rung183 rho h bits[183]! (hbitAt 183 (by omega)) hacc
  · exact seg52Blind_rung184 rho h bits[184]! (hbitAt 184 (by omega)) hacc
  · exact seg52Blind_rung185 rho h bits[185]! (hbitAt 185 (by omega)) hacc
  · exact seg52Blind_rung186 rho h bits[186]! (hbitAt 186 (by omega)) hacc
  · exact seg52Blind_rung187 rho h bits[187]! (hbitAt 187 (by omega)) hacc
  · exact seg52Blind_rung188 rho h bits[188]! (hbitAt 188 (by omega)) hacc
  · exact seg52Blind_rung189 rho h bits[189]! (hbitAt 189 (by omega)) hacc
  · exact seg52Blind_rung190 rho h bits[190]! (hbitAt 190 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

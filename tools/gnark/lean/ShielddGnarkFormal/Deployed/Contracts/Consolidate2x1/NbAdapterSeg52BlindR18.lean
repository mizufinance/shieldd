import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows181 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6330 rho ∧ Seg52.relationRow7394 rho ∧ Seg52.relationRow7395 rho ∧ Seg52.relationRow7396 rho ∧ Seg52.relationRow7397 rho ∧ Seg52.relationRow7398 rho ∧ Seg52.relationRow7399 rho ∧ Seg52.relationRow7400 rho ∧ Seg52.relationRow7401 rho := by
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

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, r6330, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7394, r7395, r7396, r7397, r7398, r7399, r7400, r7401, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6330, r7394, r7395, r7396, r7397, r7398, r7399, r7400, r7401⟩

theorem seg52Blind_rung181 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50719 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 181)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      181 (Bool.toZMod bit) (seg52BlindAccState rho 181)
      (seg52BlindAccState rho 182) := by
  obtain ⟨r6330, r7394, r7395, r7396, r7397, r7398, r7399, r7400, r7401⟩ := seg52Blind_rows181 rho h
  unfold Seg52.relationRow6330 at r6330

  unfold Seg52.relationRow7394 at r7394

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7394

  unfold Seg52.relationRow7395 at r7395

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7395

  unfold Seg52.relationRow7396 at r7396

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7396

  unfold Seg52.relationRow7397 at r7397

  unfold Seg52.relationRow7398 at r7398

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7398

  unfold Seg52.relationRow7399 at r7399

  unfold Seg52.relationRow7400 at r7400

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7400

  unfold Seg52.relationRow7401 at r7401

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7401

  have hnextx : seg52BlindDeltaX181 rho =
      seg52BlindDeltaX180 rho + rho 51788 := by
    unfold seg52BlindDeltaX181 seg52BlindDeltaX180
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 31]

    ring

  have hnexty : seg52BlindDeltaY181 rho =
      seg52BlindDeltaY180 rho + rho 51789 := by
    unfold seg52BlindDeltaY181 seg52BlindDeltaY180
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 31]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 181
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX180 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY180 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX181 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY181 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY180 rho) (rho 51789)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 181)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (5450362568005965995137715720743602359950351483618969119969701489607880727354 : Seg52.F) (7863356838019432405003655557591687605593454363760040053244927156863618264247 : Seg52.F)
    (4869257656597027975892546339553743434167906512224945345279395190554089752560 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (930106514699292104098886691997863737420803130699452871113229389318586867854 : Seg52.F) (1253059424289635349379570659365335954028514234507196113617158335561908180886 : Seg52.F)
    (1575016505422756477411102303246794318989971918617923936142043927069825021556 : Seg52.F) (6673974231467654620138423143695952282970001346474765915045547065742091277826 : Seg52.F)
    (581104911408938019245169381189858925782444971394023774690306299053790974794 : Seg52.F) (2994099181422404429111109218037944171425547851535094707965531966309528511687 : Seg52.F)
    (1770487517960715804110401795085594248405897988679297912889686390175317961215 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX180 rho) (seg52BlindDeltaY180 rho) (rho 50719)
    (rho 51782) (rho 51783) (rho 51784) (rho 51786)
    (rho 51785) (rho 51787) (rho 51788) (rho 51789) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 181)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L181]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX180 seg52BlindDeltaY180;
        first | linear_combination r7394 | linear_combination -r7394)
    (by unfold seg52BlindDeltaX180 seg52BlindDeltaY180;
        first | linear_combination r7395 | linear_combination -r7395)
    (by unfold seg52BlindDeltaX180 seg52BlindDeltaY180;
        first | linear_combination r7396 | linear_combination -r7396)
    (by first | linear_combination r7397 | linear_combination -r7397)
    (by unfold seg52BlindDeltaX180 seg52BlindDeltaY180;
        first | linear_combination r7398 | linear_combination -r7398)
    (by first | linear_combination r7399 | linear_combination -r7399)
    (by unfold seg52BlindDeltaX180; first | linear_combination r7400 | linear_combination -r7400)
    (by unfold seg52BlindDeltaY180; first | linear_combination r7401 | linear_combination -r7401)
    (by linear_combination r6330)

theorem seg52Blind_rows182 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6331 rho ∧ Seg52.relationRow7402 rho ∧ Seg52.relationRow7403 rho ∧ Seg52.relationRow7404 rho ∧ Seg52.relationRow7405 rho ∧ Seg52.relationRow7406 rho ∧ Seg52.relationRow7407 rho ∧ Seg52.relationRow7408 rho ∧ Seg52.relationRow7409 rho := by
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

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6331, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7402, r7403, r7404, r7405, r7406, r7407, r7408, r7409, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6331, r7402, r7403, r7404, r7405, r7406, r7407, r7408, r7409⟩

theorem seg52Blind_rung182 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50720 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 182)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      182 (Bool.toZMod bit) (seg52BlindAccState rho 182)
      (seg52BlindAccState rho 183) := by
  obtain ⟨r6331, r7402, r7403, r7404, r7405, r7406, r7407, r7408, r7409⟩ := seg52Blind_rows182 rho h
  unfold Seg52.relationRow6331 at r6331

  unfold Seg52.relationRow7402 at r7402

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7402

  unfold Seg52.relationRow7403 at r7403

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7403

  unfold Seg52.relationRow7404 at r7404

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7404

  unfold Seg52.relationRow7405 at r7405

  unfold Seg52.relationRow7406 at r7406

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7406

  unfold Seg52.relationRow7407 at r7407

  unfold Seg52.relationRow7408 at r7408

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7408

  unfold Seg52.relationRow7409 at r7409

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7409

  have hnextx : seg52BlindDeltaX182 rho =
      seg52BlindDeltaX181 rho + rho 51796 := by
    unfold seg52BlindDeltaX182 seg52BlindDeltaX181
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 32]

    ring

  have hnexty : seg52BlindDeltaY182 rho =
      seg52BlindDeltaY181 rho + rho 51797 := by
    unfold seg52BlindDeltaY182 seg52BlindDeltaY181
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 32]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 182
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX181 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY181 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX182 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY182 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY181 rho) (rho 51797)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 182)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3726626880727964336139318661652673543979097185776260883037520700210038994276 : Seg52.F) (5205186407645200117319233413673572085155429358570388400635137111210339859483 : Seg52.F)
    (487351538944794029209727136544699097758627209192585455737424355502969614718 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (1280360060523824470092106696621627832627530184276510703344518048220712403801 : Seg52.F) (8287987664941402397117653789786020645287437279613880328591813012593442627238 : Seg52.F)
    (121575702908755372201135340724619640361875339229139199078923729978452142890 : Seg52.F) (1133405785400838498831702522680900447535654583608560225961813862583145349749 : Seg52.F)
    (3239275341783170306929591525107974446220469976583675427300096344707069379558 : Seg52.F) (4717834868700406088109506277128872987396802149377802944897712755707370244765 : Seg52.F)
    (7311055964027531925417122416100646083840244751545503601973419593334263889292 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX181 rho) (seg52BlindDeltaY181 rho) (rho 50720)
    (rho 51790) (rho 51791) (rho 51792) (rho 51794)
    (rho 51793) (rho 51795) (rho 51796) (rho 51797) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 182)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L182]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX181 seg52BlindDeltaY181;
        first | linear_combination r7402 | linear_combination -r7402)
    (by unfold seg52BlindDeltaX181 seg52BlindDeltaY181;
        first | linear_combination r7403 | linear_combination -r7403)
    (by unfold seg52BlindDeltaX181 seg52BlindDeltaY181;
        first | linear_combination r7404 | linear_combination -r7404)
    (by first | linear_combination r7405 | linear_combination -r7405)
    (by unfold seg52BlindDeltaX181 seg52BlindDeltaY181;
        first | linear_combination r7406 | linear_combination -r7406)
    (by first | linear_combination r7407 | linear_combination -r7407)
    (by unfold seg52BlindDeltaX181; first | linear_combination r7408 | linear_combination -r7408)
    (by unfold seg52BlindDeltaY181; first | linear_combination r7409 | linear_combination -r7409)
    (by linear_combination r6331)

theorem seg52Blind_rows183 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6332 rho ∧ Seg52.relationRow7410 rho ∧ Seg52.relationRow7411 rho ∧ Seg52.relationRow7412 rho ∧ Seg52.relationRow7413 rho ∧ Seg52.relationRow7414 rho ∧ Seg52.relationRow7415 rho ∧ Seg52.relationRow7416 rho ∧ Seg52.relationRow7417 rho := by
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

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r6332, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7410, r7411, r7412, r7413, r7414, r7415, r7416, r7417, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6332, r7410, r7411, r7412, r7413, r7414, r7415, r7416, r7417⟩

theorem seg52Blind_rung183 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50721 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 183)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      183 (Bool.toZMod bit) (seg52BlindAccState rho 183)
      (seg52BlindAccState rho 184) := by
  obtain ⟨r6332, r7410, r7411, r7412, r7413, r7414, r7415, r7416, r7417⟩ := seg52Blind_rows183 rho h
  unfold Seg52.relationRow6332 at r6332

  unfold Seg52.relationRow7410 at r7410

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7410

  unfold Seg52.relationRow7411 at r7411

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7411

  unfold Seg52.relationRow7412 at r7412

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7412

  unfold Seg52.relationRow7413 at r7413

  unfold Seg52.relationRow7414 at r7414

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7414

  unfold Seg52.relationRow7415 at r7415

  unfold Seg52.relationRow7416 at r7416

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7416

  unfold Seg52.relationRow7417 at r7417

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7417

  have hnextx : seg52BlindDeltaX183 rho =
      seg52BlindDeltaX182 rho + rho 51804 := by
    unfold seg52BlindDeltaX183 seg52BlindDeltaX182
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 33]

    ring

  have hnexty : seg52BlindDeltaY183 rho =
      seg52BlindDeltaY182 rho + rho 51805 := by
    unfold seg52BlindDeltaY183 seg52BlindDeltaY182
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 33]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 183
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX182 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY182 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX183 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY183 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY182 rho) (rho 51805)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 183)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (8353955466520487973218678342737144999196589440312072258568627139248891123780 : Seg52.F) (7062726124271134759240555526807379968434987263529066777136823631924421133508 : Seg52.F)
    (6972219841363252308210408930762978436255677368687075207770217315255903018247 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5785242367034416013186451122908346386574802522145504365944482396300506510102 : Seg52.F) (6008574523412711309216712713621102379598344939600408516050135086888331613703 : Seg52.F)
    (5874654758371365497412123582816759422899513431348348189538620132589470139504 : Seg52.F) (6695653059300172265242021768773930636429052276147997679807098629004792628300 : Seg52.F)
    (1381735625157235665008269411974166562940912071624997050798409823992988105533 : Seg52.F) (90506282907882451030146596044401532179309894841991569366606316668518115261 : Seg52.F)
    (1748808690128198159006803170007615894946847059006066148128134826912616610741 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX182 rho) (seg52BlindDeltaY182 rho) (rho 50721)
    (rho 51798) (rho 51799) (rho 51800) (rho 51802)
    (rho 51801) (rho 51803) (rho 51804) (rho 51805) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 183)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L183]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX182 seg52BlindDeltaY182;
        first | linear_combination r7410 | linear_combination -r7410)
    (by unfold seg52BlindDeltaX182 seg52BlindDeltaY182;
        first | linear_combination r7411 | linear_combination -r7411)
    (by unfold seg52BlindDeltaX182 seg52BlindDeltaY182;
        first | linear_combination r7412 | linear_combination -r7412)
    (by first | linear_combination r7413 | linear_combination -r7413)
    (by unfold seg52BlindDeltaX182 seg52BlindDeltaY182;
        first | linear_combination r7414 | linear_combination -r7414)
    (by first | linear_combination r7415 | linear_combination -r7415)
    (by unfold seg52BlindDeltaX182; first | linear_combination r7416 | linear_combination -r7416)
    (by unfold seg52BlindDeltaY182; first | linear_combination r7417 | linear_combination -r7417)
    (by linear_combination r6332)

theorem seg52Blind_rows184 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6333 rho ∧ Seg52.relationRow7418 rho ∧ Seg52.relationRow7419 rho ∧ Seg52.relationRow7420 rho ∧ Seg52.relationRow7421 rho ∧ Seg52.relationRow7422 rho ∧ Seg52.relationRow7423 rho ∧ Seg52.relationRow7424 rho ∧ Seg52.relationRow7425 rho := by
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

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r6333, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7418, r7419, r7420, r7421, r7422, r7423, r7424, r7425, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6333, r7418, r7419, r7420, r7421, r7422, r7423, r7424, r7425⟩

theorem seg52Blind_rung184 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50722 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 184)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      184 (Bool.toZMod bit) (seg52BlindAccState rho 184)
      (seg52BlindAccState rho 185) := by
  obtain ⟨r6333, r7418, r7419, r7420, r7421, r7422, r7423, r7424, r7425⟩ := seg52Blind_rows184 rho h
  unfold Seg52.relationRow6333 at r6333

  unfold Seg52.relationRow7418 at r7418

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7418

  unfold Seg52.relationRow7419 at r7419

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7419

  unfold Seg52.relationRow7420 at r7420

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7420

  unfold Seg52.relationRow7421 at r7421

  unfold Seg52.relationRow7422 at r7422

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7422

  unfold Seg52.relationRow7423 at r7423

  unfold Seg52.relationRow7424 at r7424

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7424

  unfold Seg52.relationRow7425 at r7425

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7425

  have hnextx : seg52BlindDeltaX184 rho =
      seg52BlindDeltaX183 rho + rho 51812 := by
    unfold seg52BlindDeltaX184 seg52BlindDeltaX183
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 34]

    ring

  have hnexty : seg52BlindDeltaY184 rho =
      seg52BlindDeltaY183 rho + rho 51813 := by
    unfold seg52BlindDeltaY184 seg52BlindDeltaY183
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 34]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 184
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX183 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY183 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX184 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY184 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY183 rho) (rho 51813)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 184)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3724674640623000114298083742499641747004822778877862495636058446614146193033 : Seg52.F) (6801527367366504142825503791433485130925574120478914833354577634367861813428 : Seg52.F)
    (2081740258561133832874762595151580346554497564202713501055402625064598767420 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2038740454983773278455877865055869688596335536964418197756035178253859779235 : Seg52.F) (3964228108440662983730456674306077439109527380836288005702659201872255219019 : Seg52.F)
    (7190264019251508773585688967600396304021642644715000714830175014872546109716 : Seg52.F) (6906460354791643457369320319112673143226795837431029108592607602326467497613 : Seg52.F)
    (1642934382061866281423321147348061400450325214675148994580655821549547425613 : Seg52.F) (4719787108805370309950741196281904784371076556276201332299175009303263046008 : Seg52.F)
    (1538001394636726966879504619668873388149103497723034719342625853590941741428 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX183 rho) (seg52BlindDeltaY183 rho) (rho 50722)
    (rho 51806) (rho 51807) (rho 51808) (rho 51810)
    (rho 51809) (rho 51811) (rho 51812) (rho 51813) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 184)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L184]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX183 seg52BlindDeltaY183;
        first | linear_combination r7418 | linear_combination -r7418)
    (by unfold seg52BlindDeltaX183 seg52BlindDeltaY183;
        first | linear_combination r7419 | linear_combination -r7419)
    (by unfold seg52BlindDeltaX183 seg52BlindDeltaY183;
        first | linear_combination r7420 | linear_combination -r7420)
    (by first | linear_combination r7421 | linear_combination -r7421)
    (by unfold seg52BlindDeltaX183 seg52BlindDeltaY183;
        first | linear_combination r7422 | linear_combination -r7422)
    (by first | linear_combination r7423 | linear_combination -r7423)
    (by unfold seg52BlindDeltaX183; first | linear_combination r7424 | linear_combination -r7424)
    (by unfold seg52BlindDeltaY183; first | linear_combination r7425 | linear_combination -r7425)
    (by linear_combination r6333)

theorem seg52Blind_rows185 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6334 rho ∧ Seg52.relationRow7426 rho ∧ Seg52.relationRow7427 rho ∧ Seg52.relationRow7428 rho ∧ Seg52.relationRow7429 rho ∧ Seg52.relationRow7430 rho ∧ Seg52.relationRow7431 rho ∧ Seg52.relationRow7432 rho ∧ Seg52.relationRow7433 rho := by
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

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r6334, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7426, r7427, r7428, r7429, r7430, r7431, r7432, r7433, _, _, _, _, _, _⟩

  exact ⟨r6334, r7426, r7427, r7428, r7429, r7430, r7431, r7432, r7433⟩

theorem seg52Blind_rung185 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50723 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 185)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      185 (Bool.toZMod bit) (seg52BlindAccState rho 185)
      (seg52BlindAccState rho 186) := by
  obtain ⟨r6334, r7426, r7427, r7428, r7429, r7430, r7431, r7432, r7433⟩ := seg52Blind_rows185 rho h
  unfold Seg52.relationRow6334 at r6334

  unfold Seg52.relationRow7426 at r7426

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7426

  unfold Seg52.relationRow7427 at r7427

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7427

  unfold Seg52.relationRow7428 at r7428

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7428

  unfold Seg52.relationRow7429 at r7429

  unfold Seg52.relationRow7430 at r7430

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7430

  unfold Seg52.relationRow7431 at r7431

  unfold Seg52.relationRow7432 at r7432

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7432

  unfold Seg52.relationRow7433 at r7433

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7433

  have hnextx : seg52BlindDeltaX185 rho =
      seg52BlindDeltaX184 rho + rho 51820 := by
    unfold seg52BlindDeltaX185 seg52BlindDeltaX184
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 35]

    ring

  have hnexty : seg52BlindDeltaY185 rho =
      seg52BlindDeltaY184 rho + rho 51821 := by
    unfold seg52BlindDeltaY185 seg52BlindDeltaY184
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 35]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 185
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX184 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY184 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX185 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY185 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY184 rho) (rho 51821)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 185)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1174905999653533080340603577798985944254266017567149823268548237973523533616 : Seg52.F) (1981360027689507858162018282694486419815914937840666141661060307222644187889 : Seg52.F)
    (3156266027343040938502621860493472364070180955407815964929608545196167721505 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (7009725054716979139289175362708530049742297927575223779917901330082350371641 : Seg52.F) (6776036120917260375633226519404125397597029156965838872277362955689951535768 : Seg52.F)
    (259358696893003353074462687268869567940158478483629250526726304218342690361 : Seg52.F) (3082012765510726960635766093343012095433001728509255282058976525991383363558 : Seg52.F)
    (6463101721738862566086806656087060111559984397313397686274173148694765051152 : Seg52.F) (7269555749774837343908221360982560587121633317586914004666685217943885705425 : Seg52.F)
    (5362448983917643463613058845438534435942897606644808545876256929926025875483 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX184 rho) (seg52BlindDeltaY184 rho) (rho 50723)
    (rho 51814) (rho 51815) (rho 51816) (rho 51818)
    (rho 51817) (rho 51819) (rho 51820) (rho 51821) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 185)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L185]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX184 seg52BlindDeltaY184;
        first | linear_combination r7426 | linear_combination -r7426)
    (by unfold seg52BlindDeltaX184 seg52BlindDeltaY184;
        first | linear_combination r7427 | linear_combination -r7427)
    (by unfold seg52BlindDeltaX184 seg52BlindDeltaY184;
        first | linear_combination r7428 | linear_combination -r7428)
    (by first | linear_combination r7429 | linear_combination -r7429)
    (by unfold seg52BlindDeltaX184 seg52BlindDeltaY184;
        first | linear_combination r7430 | linear_combination -r7430)
    (by first | linear_combination r7431 | linear_combination -r7431)
    (by unfold seg52BlindDeltaX184; first | linear_combination r7432 | linear_combination -r7432)
    (by unfold seg52BlindDeltaY184; first | linear_combination r7433 | linear_combination -r7433)
    (by linear_combination r6334)

theorem seg52Blind_rows186 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6335 rho ∧ Seg52.relationRow7434 rho ∧ Seg52.relationRow7435 rho ∧ Seg52.relationRow7436 rho ∧ Seg52.relationRow7437 rho ∧ Seg52.relationRow7438 rho ∧ Seg52.relationRow7439 rho ∧ Seg52.relationRow7440 rho ∧ Seg52.relationRow7441 rho := by
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

    _, _, p92, p93, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6335, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7434, r7435, r7436, r7437, r7438, r7439⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨r7440, r7441, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6335, r7434, r7435, r7436, r7437, r7438, r7439, r7440, r7441⟩

theorem seg52Blind_rung186 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50724 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 186)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      186 (Bool.toZMod bit) (seg52BlindAccState rho 186)
      (seg52BlindAccState rho 187) := by
  obtain ⟨r6335, r7434, r7435, r7436, r7437, r7438, r7439, r7440, r7441⟩ := seg52Blind_rows186 rho h
  unfold Seg52.relationRow6335 at r6335

  unfold Seg52.relationRow7434 at r7434

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7434

  unfold Seg52.relationRow7435 at r7435

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7435

  unfold Seg52.relationRow7436 at r7436

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7436

  unfold Seg52.relationRow7437 at r7437

  unfold Seg52.relationRow7438 at r7438

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7438

  unfold Seg52.relationRow7439 at r7439

  unfold Seg52.relationRow7440 at r7440

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7440

  unfold Seg52.relationRow7441 at r7441

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7441

  have hnextx : seg52BlindDeltaX186 rho =
      seg52BlindDeltaX185 rho + rho 51828 := by
    unfold seg52BlindDeltaX186 seg52BlindDeltaX185
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 36]

    ring

  have hnexty : seg52BlindDeltaY186 rho =
      seg52BlindDeltaY185 rho + rho 51829 := by
    unfold seg52BlindDeltaY186 seg52BlindDeltaY185
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 36]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 186
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX185 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY185 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX186 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY186 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY185 rho) (rho 51829)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 186)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7787428424287560873464197071160094215955456615894628038324752536842263774777 : Seg52.F) (4985933094490275429668023278964753142752531367791546144483724375668070482941 : Seg52.F)
    (4328899769349465878883395411343300827332088648532110354873243456592925018677 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6028579224337606591443459905021778812168747518565097276810086992500255754658 : Seg52.F) (6381661940768385857326634826811761934878076726829780415823298289526390967490 : Seg52.F)
    (1452863053084963223896290692224473309609477121996708903053775524417059294317 : Seg52.F) (4784122770234899523511542971905252416131679765126573120030500563903044330618 : Seg52.F)
    (3458528654938094994580801659816793388623367967362517683451509080249338756100 : Seg52.F) (657033325140809550784627867621452315420442719259435789610480919075145464264 : Seg52.F)
    (3660338979193470900737281966876294115244219570027490707904732892014364908423 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX185 rho) (seg52BlindDeltaY185 rho) (rho 50724)
    (rho 51822) (rho 51823) (rho 51824) (rho 51826)
    (rho 51825) (rho 51827) (rho 51828) (rho 51829) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 186)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L186]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX185 seg52BlindDeltaY185;
        first | linear_combination r7434 | linear_combination -r7434)
    (by unfold seg52BlindDeltaX185 seg52BlindDeltaY185;
        first | linear_combination r7435 | linear_combination -r7435)
    (by unfold seg52BlindDeltaX185 seg52BlindDeltaY185;
        first | linear_combination r7436 | linear_combination -r7436)
    (by first | linear_combination r7437 | linear_combination -r7437)
    (by unfold seg52BlindDeltaX185 seg52BlindDeltaY185;
        first | linear_combination r7438 | linear_combination -r7438)
    (by first | linear_combination r7439 | linear_combination -r7439)
    (by unfold seg52BlindDeltaX185; first | linear_combination r7440 | linear_combination -r7440)
    (by unfold seg52BlindDeltaY185; first | linear_combination r7441 | linear_combination -r7441)
    (by linear_combination r6335)

theorem seg52Blind_rows187 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6336 rho ∧ Seg52.relationRow7442 rho ∧ Seg52.relationRow7443 rho ∧ Seg52.relationRow7444 rho ∧ Seg52.relationRow7445 rho ∧ Seg52.relationRow7446 rho ∧ Seg52.relationRow7447 rho ∧ Seg52.relationRow7448 rho ∧ Seg52.relationRow7449 rho := by
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

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6336, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, r7442, r7443, r7444, r7445, r7446, r7447, r7448, r7449, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6336, r7442, r7443, r7444, r7445, r7446, r7447, r7448, r7449⟩

theorem seg52Blind_rung187 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50725 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 187)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      187 (Bool.toZMod bit) (seg52BlindAccState rho 187)
      (seg52BlindAccState rho 188) := by
  obtain ⟨r6336, r7442, r7443, r7444, r7445, r7446, r7447, r7448, r7449⟩ := seg52Blind_rows187 rho h
  unfold Seg52.relationRow6336 at r6336

  unfold Seg52.relationRow7442 at r7442

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7442

  unfold Seg52.relationRow7443 at r7443

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7443

  unfold Seg52.relationRow7444 at r7444

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7444

  unfold Seg52.relationRow7445 at r7445

  unfold Seg52.relationRow7446 at r7446

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7446

  unfold Seg52.relationRow7447 at r7447

  unfold Seg52.relationRow7448 at r7448

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7448

  unfold Seg52.relationRow7449 at r7449

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7449

  have hnextx : seg52BlindDeltaX187 rho =
      seg52BlindDeltaX186 rho + rho 51836 := by
    unfold seg52BlindDeltaX187 seg52BlindDeltaX186
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 37]

    ring

  have hnexty : seg52BlindDeltaY187 rho =
      seg52BlindDeltaY186 rho + rho 51837 := by
    unfold seg52BlindDeltaY187 seg52BlindDeltaY186
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 37]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 187
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX186 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY186 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX187 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY187 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY186 rho) (rho 51837)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 187)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (5664125921590636992117446648931742938698798873128837557369561776431000742593 : Seg52.F) (2587131426023031291835702890689105556190617884135030876471102330112524756020 : Seg52.F)
    (8251257347613668283953149539620848494889416757263868433840664106543525498613 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4596919794334890205495364398857343729149742954419236979109192546333741823495 : Seg52.F) (7826491336625565773713388100152299427331399470180970387061441917424441790953 : Seg52.F)
    (5918976997624896128603067142306423185695956680637276924820692671152121793628 : Seg52.F) (1625262592615038539626989504833041947927858077968751558005269837710336438244 : Seg52.F)
    (5857330323405339132413122048092440975185281451019032951464131125804884483021 : Seg52.F) (2780335827837733432131378289849803592677100462025226270565671679486408496448 : Seg52.F)
    (6819199156813331884621835433948504583448041257185312269929963618207072800797 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX186 rho) (seg52BlindDeltaY186 rho) (rho 50725)
    (rho 51830) (rho 51831) (rho 51832) (rho 51834)
    (rho 51833) (rho 51835) (rho 51836) (rho 51837) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 187)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L187]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX186 seg52BlindDeltaY186;
        first | linear_combination r7442 | linear_combination -r7442)
    (by unfold seg52BlindDeltaX186 seg52BlindDeltaY186;
        first | linear_combination r7443 | linear_combination -r7443)
    (by unfold seg52BlindDeltaX186 seg52BlindDeltaY186;
        first | linear_combination r7444 | linear_combination -r7444)
    (by first | linear_combination r7445 | linear_combination -r7445)
    (by unfold seg52BlindDeltaX186 seg52BlindDeltaY186;
        first | linear_combination r7446 | linear_combination -r7446)
    (by first | linear_combination r7447 | linear_combination -r7447)
    (by unfold seg52BlindDeltaX186; first | linear_combination r7448 | linear_combination -r7448)
    (by unfold seg52BlindDeltaY186; first | linear_combination r7449 | linear_combination -r7449)
    (by linear_combination r6336)

theorem seg52Blind_rows188 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6337 rho ∧ Seg52.relationRow7450 rho ∧ Seg52.relationRow7451 rho ∧ Seg52.relationRow7452 rho ∧ Seg52.relationRow7453 rho ∧ Seg52.relationRow7454 rho ∧ Seg52.relationRow7455 rho ∧ Seg52.relationRow7456 rho ∧ Seg52.relationRow7457 rho := by
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

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6337, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, r7450, r7451, r7452, r7453, r7454, r7455, r7456, r7457, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6337, r7450, r7451, r7452, r7453, r7454, r7455, r7456, r7457⟩

theorem seg52Blind_rung188 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50726 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 188)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      188 (Bool.toZMod bit) (seg52BlindAccState rho 188)
      (seg52BlindAccState rho 189) := by
  obtain ⟨r6337, r7450, r7451, r7452, r7453, r7454, r7455, r7456, r7457⟩ := seg52Blind_rows188 rho h
  unfold Seg52.relationRow6337 at r6337

  unfold Seg52.relationRow7450 at r7450

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7450

  unfold Seg52.relationRow7451 at r7451

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7451

  unfold Seg52.relationRow7452 at r7452

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7452

  unfold Seg52.relationRow7453 at r7453

  unfold Seg52.relationRow7454 at r7454

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7454

  unfold Seg52.relationRow7455 at r7455

  unfold Seg52.relationRow7456 at r7456

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7456

  unfold Seg52.relationRow7457 at r7457

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7457

  have hnextx : seg52BlindDeltaX188 rho =
      seg52BlindDeltaX187 rho + rho 51844 := by
    unfold seg52BlindDeltaX188 seg52BlindDeltaX187
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 38]

    ring

  have hnexty : seg52BlindDeltaY188 rho =
      seg52BlindDeltaY187 rho + rho 51845 := by
    unfold seg52BlindDeltaY188 seg52BlindDeltaY187
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 38]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 188
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX187 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY187 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX188 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY188 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY187 rho) (rho 51845)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 188)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (4566659702402280241611209257404082758933800362364907704264911919510596352786 : Seg52.F) (6087559099472509237605849677509937766940350039658617799879838242099118097801 : Seg52.F)
    (2209757052446419054968233996132473994498251066869461676209516705692305211546 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6922811000887993217579984030095195121464617178287420021988095849235860064564 : Seg52.F) (14303776005448437087817101055051617761828693284628317724679631503107821478 : Seg52.F)
    (566254701759488235120972677527957762407484274840097124827533952264695348694 : Seg52.F) (7663408851238017846377131014723390299574372802032898411634975999337123407531 : Seg52.F)
    (2356902649955861186642975261271608764435549295495446028055395213818291141240 : Seg52.F) (3877802047026090182637615681377463772442098972789156123670321536406812886255 : Seg52.F)
    (781052898190352577871693924058156231801526533121165416300257456580285831510 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX187 rho) (seg52BlindDeltaY187 rho) (rho 50726)
    (rho 51838) (rho 51839) (rho 51840) (rho 51842)
    (rho 51841) (rho 51843) (rho 51844) (rho 51845) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 188)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L188]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX187 seg52BlindDeltaY187;
        first | linear_combination r7450 | linear_combination -r7450)
    (by unfold seg52BlindDeltaX187 seg52BlindDeltaY187;
        first | linear_combination r7451 | linear_combination -r7451)
    (by unfold seg52BlindDeltaX187 seg52BlindDeltaY187;
        first | linear_combination r7452 | linear_combination -r7452)
    (by first | linear_combination r7453 | linear_combination -r7453)
    (by unfold seg52BlindDeltaX187 seg52BlindDeltaY187;
        first | linear_combination r7454 | linear_combination -r7454)
    (by first | linear_combination r7455 | linear_combination -r7455)
    (by unfold seg52BlindDeltaX187; first | linear_combination r7456 | linear_combination -r7456)
    (by unfold seg52BlindDeltaY187; first | linear_combination r7457 | linear_combination -r7457)
    (by linear_combination r6337)

theorem seg52Blind_rows189 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6338 rho ∧ Seg52.relationRow7458 rho ∧ Seg52.relationRow7459 rho ∧ Seg52.relationRow7460 rho ∧ Seg52.relationRow7461 rho ∧ Seg52.relationRow7462 rho ∧ Seg52.relationRow7463 rho ∧ Seg52.relationRow7464 rho ∧ Seg52.relationRow7465 rho := by
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

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6338, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7458, r7459, r7460, r7461, r7462, r7463, r7464, r7465, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6338, r7458, r7459, r7460, r7461, r7462, r7463, r7464, r7465⟩

theorem seg52Blind_rung189 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50727 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 189)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      189 (Bool.toZMod bit) (seg52BlindAccState rho 189)
      (seg52BlindAccState rho 190) := by
  obtain ⟨r6338, r7458, r7459, r7460, r7461, r7462, r7463, r7464, r7465⟩ := seg52Blind_rows189 rho h
  unfold Seg52.relationRow6338 at r6338

  unfold Seg52.relationRow7458 at r7458

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7458

  unfold Seg52.relationRow7459 at r7459

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7459

  unfold Seg52.relationRow7460 at r7460

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7460

  unfold Seg52.relationRow7461 at r7461

  unfold Seg52.relationRow7462 at r7462

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7462

  unfold Seg52.relationRow7463 at r7463

  unfold Seg52.relationRow7464 at r7464

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7464

  unfold Seg52.relationRow7465 at r7465

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7465

  have hnextx : seg52BlindDeltaX189 rho =
      seg52BlindDeltaX188 rho + rho 51852 := by
    unfold seg52BlindDeltaX189 seg52BlindDeltaX188
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 39]

    ring

  have hnexty : seg52BlindDeltaY189 rho =
      seg52BlindDeltaY188 rho + rho 51853 := by
    unfold seg52BlindDeltaY189 seg52BlindDeltaY188
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 39]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 189
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX188 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY188 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX189 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY189 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY188 rho) (rho 51853)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 189)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3309409805907718488973225867968294079518603536308582507670435458888150009119 : Seg52.F) (6512305769415470139547207884734713722697427411635064641005880638813378494733 : Seg52.F)
    (1377253825894818204271608813921461270840131612789583320741082641784119264811 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6524314985460573496601737361348284694458658975715625217606691023570314861904 : Seg52.F) (3891133338582028720854362833555171518308555506521266766552101859987109084684 : Seg52.F)
    (1595464300149660764758530111730061010614402182284645456524319626499860751122 : Seg52.F) (654751795608522464774750025157460544028712172208379900997136053913240491449 : Seg52.F)
    (1932155980012900284701617054046832808678471923518999186929352817104030744308 : Seg52.F) (5135051943520651935275599070813252451857295798845481320264797997029259229922 : Seg52.F)
    (7789709953819847959474074913624085987347187162945683926938097402004168747592 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX188 rho) (seg52BlindDeltaY188 rho) (rho 50727)
    (rho 51846) (rho 51847) (rho 51848) (rho 51850)
    (rho 51849) (rho 51851) (rho 51852) (rho 51853) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 189)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L189]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX188 seg52BlindDeltaY188;
        first | linear_combination r7458 | linear_combination -r7458)
    (by unfold seg52BlindDeltaX188 seg52BlindDeltaY188;
        first | linear_combination r7459 | linear_combination -r7459)
    (by unfold seg52BlindDeltaX188 seg52BlindDeltaY188;
        first | linear_combination r7460 | linear_combination -r7460)
    (by first | linear_combination r7461 | linear_combination -r7461)
    (by unfold seg52BlindDeltaX188 seg52BlindDeltaY188;
        first | linear_combination r7462 | linear_combination -r7462)
    (by first | linear_combination r7463 | linear_combination -r7463)
    (by unfold seg52BlindDeltaX188; first | linear_combination r7464 | linear_combination -r7464)
    (by unfold seg52BlindDeltaY188; first | linear_combination r7465 | linear_combination -r7465)
    (by linear_combination r6338)

theorem seg52Blind_rows190 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6339 rho ∧ Seg52.relationRow7466 rho ∧ Seg52.relationRow7467 rho ∧ Seg52.relationRow7468 rho ∧ Seg52.relationRow7469 rho ∧ Seg52.relationRow7470 rho ∧ Seg52.relationRow7471 rho ∧ Seg52.relationRow7472 rho ∧ Seg52.relationRow7473 rho := by
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

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6339, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7466, r7467, r7468, r7469, r7470, r7471, r7472, r7473, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6339, r7466, r7467, r7468, r7469, r7470, r7471, r7472, r7473⟩

theorem seg52Blind_rung190 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50728 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 190)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      190 (Bool.toZMod bit) (seg52BlindAccState rho 190)
      (seg52BlindAccState rho 191) := by
  obtain ⟨r6339, r7466, r7467, r7468, r7469, r7470, r7471, r7472, r7473⟩ := seg52Blind_rows190 rho h
  unfold Seg52.relationRow6339 at r6339

  unfold Seg52.relationRow7466 at r7466

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7466

  unfold Seg52.relationRow7467 at r7467

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7467

  unfold Seg52.relationRow7468 at r7468

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7468

  unfold Seg52.relationRow7469 at r7469

  unfold Seg52.relationRow7470 at r7470

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7470

  unfold Seg52.relationRow7471 at r7471

  unfold Seg52.relationRow7472 at r7472

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7472

  unfold Seg52.relationRow7473 at r7473

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7473

  have hnextx : seg52BlindDeltaX190 rho =
      seg52BlindDeltaX189 rho + rho 51860 := by
    unfold seg52BlindDeltaX190 seg52BlindDeltaX189
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 40]

    ring

  have hnexty : seg52BlindDeltaY190 rho =
      seg52BlindDeltaY189 rho + rho 51861 := by
    unfold seg52BlindDeltaY190 seg52BlindDeltaY189
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 40]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 190
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX189 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY189 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX190 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY190 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY189 rho) (rho 51861)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 190)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1733147509875631577792697947482857006578485467535195501665039803780509949475 : Seg52.F) (222721597698465656115852974403902697694309243786041265918353118640839845057 : Seg52.F)
    (1955869107574097233908550921886759704272794711321236767583392922421349794532 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5729468442223483610334665510447873755812178000459621932461328396501842032958 : Seg52.F) (1112625066972103949522459514677280838014191752531931313897279597522496570843 : Seg52.F)
    (7981065069239516003763237396880700992551856433791312584204101158303106282225 : Seg52.F) (657868393160284488509215920517584596866043104975981469382381735957495653388 : Seg52.F)
    (8221740151729904768132971964377643833681590091368022562016880337276569393984 : Seg52.F) (6711314239552738846456126991298689524797413867618868326270193652136899289566 : Seg52.F)
    (7786593356268085935739609018263961934509856230178082358552851719959913585653 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX189 rho) (seg52BlindDeltaY189 rho) (rho 50728)
    (rho 51854) (rho 51855) (rho 51856) (rho 51858)
    (rho 51857) (rho 51859) (rho 51860) (rho 51861) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 190)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L190]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX189 seg52BlindDeltaY189;
        first | linear_combination r7466 | linear_combination -r7466)
    (by unfold seg52BlindDeltaX189 seg52BlindDeltaY189;
        first | linear_combination r7467 | linear_combination -r7467)
    (by unfold seg52BlindDeltaX189 seg52BlindDeltaY189;
        first | linear_combination r7468 | linear_combination -r7468)
    (by first | linear_combination r7469 | linear_combination -r7469)
    (by unfold seg52BlindDeltaX189 seg52BlindDeltaY189;
        first | linear_combination r7470 | linear_combination -r7470)
    (by first | linear_combination r7471 | linear_combination -r7471)
    (by unfold seg52BlindDeltaX189; first | linear_combination r7472 | linear_combination -r7472)
    (by unfold seg52BlindDeltaY189; first | linear_combination r7473 | linear_combination -r7473)
    (by linear_combination r6339)

theorem seg52Blind_hstep_c18 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
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

import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows161 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6310 rho ∧ Seg52.relationRow7234 rho ∧ Seg52.relationRow7235 rho ∧ Seg52.relationRow7236 rho ∧ Seg52.relationRow7237 rho ∧ Seg52.relationRow7238 rho ∧ Seg52.relationRow7239 rho ∧ Seg52.relationRow7240 rho ∧ Seg52.relationRow7241 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    p90, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6310, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7234, r7235, r7236, r7237, r7238, r7239, r7240, r7241, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6310, r7234, r7235, r7236, r7237, r7238, r7239, r7240, r7241⟩

theorem seg52Blind_rung161 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50699 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 161)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      161 (Bool.toZMod bit) (seg52BlindAccState rho 161)
      (seg52BlindAccState rho 162) := by
  obtain ⟨r6310, r7234, r7235, r7236, r7237, r7238, r7239, r7240, r7241⟩ := seg52Blind_rows161 rho h
  unfold Seg52.relationRow6310 at r6310

  unfold Seg52.relationRow7234 at r7234

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7234

  unfold Seg52.relationRow7235 at r7235

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7235

  unfold Seg52.relationRow7236 at r7236

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7236

  unfold Seg52.relationRow7237 at r7237

  unfold Seg52.relationRow7238 at r7238

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7238

  unfold Seg52.relationRow7239 at r7239

  unfold Seg52.relationRow7240 at r7240

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7240

  unfold Seg52.relationRow7241 at r7241

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7241

  have hnextx : seg52BlindDeltaX161 rho =
      seg52BlindDeltaX160 rho + rho 51628 := by
    unfold seg52BlindDeltaX161 seg52BlindDeltaX160
    ring

  have hnexty : seg52BlindDeltaY161 rho =
      seg52BlindDeltaY160 rho + rho 51629 := by
    unfold seg52BlindDeltaY161 seg52BlindDeltaY160
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 161
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX160 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY160 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX161 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY161 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY160 rho) (rho 51629)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 161)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7542973043425304557787298526624639482775147192320361978340217817707240027295 : Seg52.F) (4902900135996093054103909226317364356900159991348997775570192260208233100765 : Seg52.F)
    (4001411429993027187642382814160457308299407848515295925975176621998063889019 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (75402346835392315470830081925106162055900005094325799151336409936392133151 : Seg52.F) (6975075164126143068117625078799676184649982755043331804572340782965154092658 : Seg52.F)
    (1730782992719386564460290722013976810866631175052823702550694687768251364709 : Seg52.F) (7561196042279889205184195926396076842016382944848012849538292865977706319192 : Seg52.F)
    (3541561613432277370144915712464182174475739343805066052365041195709176138276 : Seg52.F) (901488706003065866461526412156907048600752142833701849595015638210169211746 : Seg52.F)
    (883265707148481219064629012385469689359516390306050978396940589939702919849 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX160 rho) (seg52BlindDeltaY160 rho) (rho 50699)
    (rho 51622) (rho 51623) (rho 51624) (rho 51626)
    (rho 51625) (rho 51627) (rho 51628) (rho 51629) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 161)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L161]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX160 seg52BlindDeltaY160;
        first | linear_combination r7234 | linear_combination -r7234)
    (by unfold seg52BlindDeltaX160 seg52BlindDeltaY160;
        first | linear_combination r7235 | linear_combination -r7235)
    (by unfold seg52BlindDeltaX160 seg52BlindDeltaY160;
        first | linear_combination r7236 | linear_combination -r7236)
    (by first | linear_combination r7237 | linear_combination -r7237)
    (by unfold seg52BlindDeltaX160 seg52BlindDeltaY160;
        first | linear_combination r7238 | linear_combination -r7238)
    (by first | linear_combination r7239 | linear_combination -r7239)
    (by unfold seg52BlindDeltaX160; first | linear_combination r7240 | linear_combination -r7240)
    (by unfold seg52BlindDeltaY160; first | linear_combination r7241 | linear_combination -r7241)
    (by linear_combination r6310)

theorem seg52Blind_rows162 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6311 rho ∧ Seg52.relationRow7242 rho ∧ Seg52.relationRow7243 rho ∧ Seg52.relationRow7244 rho ∧ Seg52.relationRow7245 rho ∧ Seg52.relationRow7246 rho ∧ Seg52.relationRow7247 rho ∧ Seg52.relationRow7248 rho ∧ Seg52.relationRow7249 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    p90, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6311, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7242, r7243, r7244, r7245, r7246, r7247, r7248, r7249, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6311, r7242, r7243, r7244, r7245, r7246, r7247, r7248, r7249⟩

theorem seg52Blind_rung162 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50700 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 162)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      162 (Bool.toZMod bit) (seg52BlindAccState rho 162)
      (seg52BlindAccState rho 163) := by
  obtain ⟨r6311, r7242, r7243, r7244, r7245, r7246, r7247, r7248, r7249⟩ := seg52Blind_rows162 rho h
  unfold Seg52.relationRow6311 at r6311

  unfold Seg52.relationRow7242 at r7242

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7242

  unfold Seg52.relationRow7243 at r7243

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7243

  unfold Seg52.relationRow7244 at r7244

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7244

  unfold Seg52.relationRow7245 at r7245

  unfold Seg52.relationRow7246 at r7246

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7246

  unfold Seg52.relationRow7247 at r7247

  unfold Seg52.relationRow7248 at r7248

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7248

  unfold Seg52.relationRow7249 at r7249

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7249

  have hnextx : seg52BlindDeltaX162 rho =
      seg52BlindDeltaX161 rho + rho 51636 := by
    unfold seg52BlindDeltaX162 seg52BlindDeltaX161
    ring

  have hnexty : seg52BlindDeltaY162 rho =
      seg52BlindDeltaY161 rho + rho 51637 := by
    unfold seg52BlindDeltaY162 seg52BlindDeltaY161
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 162
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX161 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY161 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX162 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY162 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY161 rho) (rho 51637)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 162)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3428003032113893286564484758928940695972477448115426499905845444589573610014 : Seg52.F) (7282192221865417647282033182081483211051136679636896117947487920487788994494 : Seg52.F)
    (2265733504550940509597693002228877375647714792598258789918099909159953365467 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (1679844994521757270833277542232066351266141106726900548077855128759484664569 : Seg52.F) (336437200278763058650757442567809210818762905857251500100463232154840797693 : Seg52.F)
    (717161087129884067696546025406226315970981733471385110908493653621228933967 : Seg52.F) (4348307147940123042922588512304537058595315397579622834836983796775439275679 : Seg52.F)
    (1162269527562952776966791756700063320324762655517167709987745535429620244547 : Seg52.F) (5016458717314477137684340179852605835403421887038637328029388011327835629027 : Seg52.F)
    (4096154601488247381326236426477009472780583937574440993098249659141969963362 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX161 rho) (seg52BlindDeltaY161 rho) (rho 50700)
    (rho 51630) (rho 51631) (rho 51632) (rho 51634)
    (rho 51633) (rho 51635) (rho 51636) (rho 51637) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 162)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L162]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX161 seg52BlindDeltaY161;
        first | linear_combination r7242 | linear_combination -r7242)
    (by unfold seg52BlindDeltaX161 seg52BlindDeltaY161;
        first | linear_combination r7243 | linear_combination -r7243)
    (by unfold seg52BlindDeltaX161 seg52BlindDeltaY161;
        first | linear_combination r7244 | linear_combination -r7244)
    (by first | linear_combination r7245 | linear_combination -r7245)
    (by unfold seg52BlindDeltaX161 seg52BlindDeltaY161;
        first | linear_combination r7246 | linear_combination -r7246)
    (by first | linear_combination r7247 | linear_combination -r7247)
    (by unfold seg52BlindDeltaX161; first | linear_combination r7248 | linear_combination -r7248)
    (by unfold seg52BlindDeltaY161; first | linear_combination r7249 | linear_combination -r7249)
    (by linear_combination r6311)

theorem seg52Blind_rows163 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6312 rho ∧ Seg52.relationRow7250 rho ∧ Seg52.relationRow7251 rho ∧ Seg52.relationRow7252 rho ∧ Seg52.relationRow7253 rho ∧ Seg52.relationRow7254 rho ∧ Seg52.relationRow7255 rho ∧ Seg52.relationRow7256 rho ∧ Seg52.relationRow7257 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    p90, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6312, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7250, r7251, r7252, r7253, r7254, r7255, r7256, r7257, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6312, r7250, r7251, r7252, r7253, r7254, r7255, r7256, r7257⟩

theorem seg52Blind_rung163 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50701 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 163)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      163 (Bool.toZMod bit) (seg52BlindAccState rho 163)
      (seg52BlindAccState rho 164) := by
  obtain ⟨r6312, r7250, r7251, r7252, r7253, r7254, r7255, r7256, r7257⟩ := seg52Blind_rows163 rho h
  unfold Seg52.relationRow6312 at r6312

  unfold Seg52.relationRow7250 at r7250

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7250

  unfold Seg52.relationRow7251 at r7251

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7251

  unfold Seg52.relationRow7252 at r7252

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7252

  unfold Seg52.relationRow7253 at r7253

  unfold Seg52.relationRow7254 at r7254

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7254

  unfold Seg52.relationRow7255 at r7255

  unfold Seg52.relationRow7256 at r7256

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7256

  unfold Seg52.relationRow7257 at r7257

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7257

  have hnextx : seg52BlindDeltaX163 rho =
      seg52BlindDeltaX162 rho + rho 51644 := by
    unfold seg52BlindDeltaX163 seg52BlindDeltaX162
    ring

  have hnexty : seg52BlindDeltaY163 rho =
      seg52BlindDeltaY162 rho + rho 51645 := by
    unfold seg52BlindDeltaY163 seg52BlindDeltaY162
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 163
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX162 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY162 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX163 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY163 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY162 rho) (rho 51645)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 163)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3319592170070649580163792492819249188458765963613933444607504510499280931216 : Seg52.F) (32739216755167053865224790521545409370186247927512415270018966439468367503 : Seg52.F)
    (3352331386825816634029017283340794597828952211541445859877523476938749298719 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6016094573647595060107017838991669862197762302320304423439729598542436597112 : Seg52.F) (808727820100326903494963827718719247215656080730809825600195832257007060686 : Seg52.F)
    (8359187689176916007375617881098332220162573106008601502999536521788487600689 : Seg52.F) (8127449325263491837130944757599110226499221901527616237228922757800110255512 : Seg52.F)
    (8411722532673203370383600148260001122005713087226551412665214489477940871538 : Seg52.F) (5124869579357720844085032445962297342917133371540130383327728945418128307825 : Seg52.F)
    (317012424164878587117880181182436304876677433626447590706310698117298983529 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX162 rho) (seg52BlindDeltaY162 rho) (rho 50701)
    (rho 51638) (rho 51639) (rho 51640) (rho 51642)
    (rho 51641) (rho 51643) (rho 51644) (rho 51645) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 163)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L163]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX162 seg52BlindDeltaY162;
        first | linear_combination r7250 | linear_combination -r7250)
    (by unfold seg52BlindDeltaX162 seg52BlindDeltaY162;
        first | linear_combination r7251 | linear_combination -r7251)
    (by unfold seg52BlindDeltaX162 seg52BlindDeltaY162;
        first | linear_combination r7252 | linear_combination -r7252)
    (by first | linear_combination r7253 | linear_combination -r7253)
    (by unfold seg52BlindDeltaX162 seg52BlindDeltaY162;
        first | linear_combination r7254 | linear_combination -r7254)
    (by first | linear_combination r7255 | linear_combination -r7255)
    (by unfold seg52BlindDeltaX162; first | linear_combination r7256 | linear_combination -r7256)
    (by unfold seg52BlindDeltaY162; first | linear_combination r7257 | linear_combination -r7257)
    (by linear_combination r6312)

theorem seg52Blind_rows164 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6313 rho ∧ Seg52.relationRow7258 rho ∧ Seg52.relationRow7259 rho ∧ Seg52.relationRow7260 rho ∧ Seg52.relationRow7261 rho ∧ Seg52.relationRow7262 rho ∧ Seg52.relationRow7263 rho ∧ Seg52.relationRow7264 rho ∧ Seg52.relationRow7265 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    p90, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6313, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7258, r7259, r7260, r7261, r7262, r7263, r7264, r7265, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6313, r7258, r7259, r7260, r7261, r7262, r7263, r7264, r7265⟩

theorem seg52Blind_rung164 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50702 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 164)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      164 (Bool.toZMod bit) (seg52BlindAccState rho 164)
      (seg52BlindAccState rho 165) := by
  obtain ⟨r6313, r7258, r7259, r7260, r7261, r7262, r7263, r7264, r7265⟩ := seg52Blind_rows164 rho h
  unfold Seg52.relationRow6313 at r6313

  unfold Seg52.relationRow7258 at r7258

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7258

  unfold Seg52.relationRow7259 at r7259

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7259

  unfold Seg52.relationRow7260 at r7260

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7260

  unfold Seg52.relationRow7261 at r7261

  unfold Seg52.relationRow7262 at r7262

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7262

  unfold Seg52.relationRow7263 at r7263

  unfold Seg52.relationRow7264 at r7264

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7264

  unfold Seg52.relationRow7265 at r7265

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7265

  have hnextx : seg52BlindDeltaX164 rho =
      seg52BlindDeltaX163 rho + rho 51652 := by
    unfold seg52BlindDeltaX164 seg52BlindDeltaX163
    ring

  have hnexty : seg52BlindDeltaY164 rho =
      seg52BlindDeltaY163 rho + rho 51653 := by
    unfold seg52BlindDeltaY164 seg52BlindDeltaY163
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 164
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX163 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY163 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX164 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY164 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY163 rho) (rho 51653)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 164)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (4435852466459101811998773958235812273366837241570394295879450459491557638160 : Seg52.F) (4268577363973246176867491830814180686504034856137913396841598280640100583475 : Seg52.F)
    (259968081003977564617440850268446428494972762554243864785815284214248982594 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (679125186055062488737139370218300517691015612380906601366918627859954662368 : Seg52.F) (6528007956281233758184597455537327114041835348422589894824599455091608331695 : Seg52.F)
    (7476412575129757290800612800718728139397432189620919113217493696515319162617 : Seg52.F) (551934519145904037728648682597200506946112521576116870341398395519540120574 : Seg52.F)
    (4175884385455124247381333107967365844871864479016150431093635175277308655566 : Seg52.F) (4008609282969268612250050980545734258009062093583669532055782996425851600881 : Seg52.F)
    (7892527230282466386520176256184346024429786813577946957593835060397869118467 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX163 rho) (seg52BlindDeltaY163 rho) (rho 50702)
    (rho 51646) (rho 51647) (rho 51648) (rho 51650)
    (rho 51649) (rho 51651) (rho 51652) (rho 51653) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 164)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L164]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX163 seg52BlindDeltaY163;
        first | linear_combination r7258 | linear_combination -r7258)
    (by unfold seg52BlindDeltaX163 seg52BlindDeltaY163;
        first | linear_combination r7259 | linear_combination -r7259)
    (by unfold seg52BlindDeltaX163 seg52BlindDeltaY163;
        first | linear_combination r7260 | linear_combination -r7260)
    (by first | linear_combination r7261 | linear_combination -r7261)
    (by unfold seg52BlindDeltaX163 seg52BlindDeltaY163;
        first | linear_combination r7262 | linear_combination -r7262)
    (by first | linear_combination r7263 | linear_combination -r7263)
    (by unfold seg52BlindDeltaX163; first | linear_combination r7264 | linear_combination -r7264)
    (by unfold seg52BlindDeltaY163; first | linear_combination r7265 | linear_combination -r7265)
    (by linear_combination r6313)

theorem seg52Blind_rows165 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6314 rho ∧ Seg52.relationRow7266 rho ∧ Seg52.relationRow7267 rho ∧ Seg52.relationRow7268 rho ∧ Seg52.relationRow7269 rho ∧ Seg52.relationRow7270 rho ∧ Seg52.relationRow7271 rho ∧ Seg52.relationRow7272 rho ∧ Seg52.relationRow7273 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    p90, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6314, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7266, r7267, r7268, r7269, r7270, r7271, r7272, r7273, _, _, _, _, _, _⟩

  exact ⟨r6314, r7266, r7267, r7268, r7269, r7270, r7271, r7272, r7273⟩

theorem seg52Blind_rung165 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50703 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 165)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      165 (Bool.toZMod bit) (seg52BlindAccState rho 165)
      (seg52BlindAccState rho 166) := by
  obtain ⟨r6314, r7266, r7267, r7268, r7269, r7270, r7271, r7272, r7273⟩ := seg52Blind_rows165 rho h
  unfold Seg52.relationRow6314 at r6314

  unfold Seg52.relationRow7266 at r7266

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7266

  unfold Seg52.relationRow7267 at r7267

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7267

  unfold Seg52.relationRow7268 at r7268

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7268

  unfold Seg52.relationRow7269 at r7269

  unfold Seg52.relationRow7270 at r7270

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7270

  unfold Seg52.relationRow7271 at r7271

  unfold Seg52.relationRow7272 at r7272

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7272

  unfold Seg52.relationRow7273 at r7273

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7273

  have hnextx : seg52BlindDeltaX165 rho =
      seg52BlindDeltaX164 rho + rho 51660 := by
    unfold seg52BlindDeltaX165 seg52BlindDeltaX164
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 51540 8]

    ring

  have hnexty : seg52BlindDeltaY165 rho =
      seg52BlindDeltaY164 rho + rho 51661 := by
    unfold seg52BlindDeltaY165 seg52BlindDeltaY164
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 51541 8]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 165
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX164 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY164 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX165 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY165 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY164 rho) (rho 51661)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 165)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (285447995986048848795735635779787303483030189576572810093747090807388041447 : Seg52.F) (2219756219546393792135700802976427321358734454684517582262921574902647147987 : Seg52.F)
    (2505204215532442640931436438756214624841764644261090392356668665710035189434 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (980910203529529188385124399238991912272715489600936635710713782474098270173 : Seg52.F) (8079974796317486692084740348835642267934804620961579470048285488791619929672 : Seg52.F)
    (3785944822226201681924408828863425267430218166404983920577593671037419348674 : Seg52.F) (6508401378661197348752012736769178467462222422520795136748077099735344144939 : Seg52.F)
    (6224705529881976632113124135805119210017164880469546245672311881014762091054 : Seg52.F) (8159013753442321575453089303001759227892869145577491017841486365110021197594 : Seg52.F)
    (1936060370767173075496812202012368063913676912633268691187156356182065094102 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX164 rho) (seg52BlindDeltaY164 rho) (rho 50703)
    (rho 51654) (rho 51655) (rho 51656) (rho 51658)
    (rho 51657) (rho 51659) (rho 51660) (rho 51661) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 165)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L165]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX164 seg52BlindDeltaY164;
        first | linear_combination r7266 | linear_combination -r7266)
    (by unfold seg52BlindDeltaX164 seg52BlindDeltaY164;
        first | linear_combination r7267 | linear_combination -r7267)
    (by unfold seg52BlindDeltaX164 seg52BlindDeltaY164;
        first | linear_combination r7268 | linear_combination -r7268)
    (by first | linear_combination r7269 | linear_combination -r7269)
    (by unfold seg52BlindDeltaX164 seg52BlindDeltaY164;
        first | linear_combination r7270 | linear_combination -r7270)
    (by first | linear_combination r7271 | linear_combination -r7271)
    (by unfold seg52BlindDeltaX164; first | linear_combination r7272 | linear_combination -r7272)
    (by unfold seg52BlindDeltaY164; first | linear_combination r7273 | linear_combination -r7273)
    (by linear_combination r6314)

theorem seg52Blind_rows166 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6315 rho ∧ Seg52.relationRow7274 rho ∧ Seg52.relationRow7275 rho ∧ Seg52.relationRow7276 rho ∧ Seg52.relationRow7277 rho ∧ Seg52.relationRow7278 rho ∧ Seg52.relationRow7279 rho ∧ Seg52.relationRow7280 rho ∧ Seg52.relationRow7281 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    p90, p91, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6315, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7274, r7275, r7276, r7277, r7278, r7279⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨r7280, r7281, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6315, r7274, r7275, r7276, r7277, r7278, r7279, r7280, r7281⟩

theorem seg52Blind_rung166 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50704 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 166)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      166 (Bool.toZMod bit) (seg52BlindAccState rho 166)
      (seg52BlindAccState rho 167) := by
  obtain ⟨r6315, r7274, r7275, r7276, r7277, r7278, r7279, r7280, r7281⟩ := seg52Blind_rows166 rho h
  unfold Seg52.relationRow6315 at r6315

  unfold Seg52.relationRow7274 at r7274

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7274

  unfold Seg52.relationRow7275 at r7275

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7275

  unfold Seg52.relationRow7276 at r7276

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7276

  unfold Seg52.relationRow7277 at r7277

  unfold Seg52.relationRow7278 at r7278

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7278

  unfold Seg52.relationRow7279 at r7279

  unfold Seg52.relationRow7280 at r7280

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7280

  unfold Seg52.relationRow7281 at r7281

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7281

  have hnextx : seg52BlindDeltaX166 rho =
      seg52BlindDeltaX165 rho + rho 51668 := by
    unfold seg52BlindDeltaX166 seg52BlindDeltaX165
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 16]

    ring

  have hnexty : seg52BlindDeltaY166 rho =
      seg52BlindDeltaY165 rho + rho 51669 := by
    unfold seg52BlindDeltaY166 seg52BlindDeltaY165
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 16]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 166
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX165 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY165 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX166 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY166 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY165 rho) (rho 51669)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 166)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (2156277848635068232427762528343749770532075962258470576409646311435229701269 : Seg52.F) (6232016371209813488808722651953407519476571859448596956528805996090774584558 : Seg52.F)
    (8388294219844881721236485180297157290008647821707067532938452307526004285827 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4216217949008874040520343007176897901843969335803133205887540950324826127329 : Seg52.F) (6708904022991781730463731876876371419940587451459017512750467455879957831906 : Seg52.F)
    (5208133706710327476396722005768514910243517737860840078158265782782695728883 : Seg52.F) (6501761721360740888423673628937647935372814685988161000375686611677009871971 : Seg52.F)
    (2212445378218556935440102286828139011899327475705466871406427459826634654483 : Seg52.F) (6288183900793302191821062410437796760843823372895593251525587144482179537772 : Seg52.F)
    (1942700028067629535825151309843898596003084649165902827559546844240399367070 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX165 rho) (seg52BlindDeltaY165 rho) (rho 50704)
    (rho 51662) (rho 51663) (rho 51664) (rho 51666)
    (rho 51665) (rho 51667) (rho 51668) (rho 51669) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 166)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L166]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX165 seg52BlindDeltaY165;
        first | linear_combination r7274 | linear_combination -r7274)
    (by unfold seg52BlindDeltaX165 seg52BlindDeltaY165;
        first | linear_combination r7275 | linear_combination -r7275)
    (by unfold seg52BlindDeltaX165 seg52BlindDeltaY165;
        first | linear_combination r7276 | linear_combination -r7276)
    (by first | linear_combination r7277 | linear_combination -r7277)
    (by unfold seg52BlindDeltaX165 seg52BlindDeltaY165;
        first | linear_combination r7278 | linear_combination -r7278)
    (by first | linear_combination r7279 | linear_combination -r7279)
    (by unfold seg52BlindDeltaX165; first | linear_combination r7280 | linear_combination -r7280)
    (by unfold seg52BlindDeltaY165; first | linear_combination r7281 | linear_combination -r7281)
    (by linear_combination r6315)

theorem seg52Blind_rows167 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6316 rho ∧ Seg52.relationRow7282 rho ∧ Seg52.relationRow7283 rho ∧ Seg52.relationRow7284 rho ∧ Seg52.relationRow7285 rho ∧ Seg52.relationRow7286 rho ∧ Seg52.relationRow7287 rho ∧ Seg52.relationRow7288 rho ∧ Seg52.relationRow7289 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p91, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6316, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, r7282, r7283, r7284, r7285, r7286, r7287, r7288, r7289, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6316, r7282, r7283, r7284, r7285, r7286, r7287, r7288, r7289⟩

theorem seg52Blind_rung167 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50705 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 167)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      167 (Bool.toZMod bit) (seg52BlindAccState rho 167)
      (seg52BlindAccState rho 168) := by
  obtain ⟨r6316, r7282, r7283, r7284, r7285, r7286, r7287, r7288, r7289⟩ := seg52Blind_rows167 rho h
  unfold Seg52.relationRow6316 at r6316

  unfold Seg52.relationRow7282 at r7282

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7282

  unfold Seg52.relationRow7283 at r7283

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7283

  unfold Seg52.relationRow7284 at r7284

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7284

  unfold Seg52.relationRow7285 at r7285

  unfold Seg52.relationRow7286 at r7286

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7286

  unfold Seg52.relationRow7287 at r7287

  unfold Seg52.relationRow7288 at r7288

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7288

  unfold Seg52.relationRow7289 at r7289

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7289

  have hnextx : seg52BlindDeltaX167 rho =
      seg52BlindDeltaX166 rho + rho 51676 := by
    unfold seg52BlindDeltaX167 seg52BlindDeltaX166
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 17]

    ring

  have hnexty : seg52BlindDeltaY167 rho =
      seg52BlindDeltaY166 rho + rho 51677 := by
    unfold seg52BlindDeltaY167 seg52BlindDeltaY166
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 17]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 167
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX166 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY166 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX167 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY167 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY166 rho) (rho 51677)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 167)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1422471966303374964272597731160731388119507421775473697730591412640640313527 : Seg52.F) (8016018521363910988060116889796183279665700505835162102706223981049640769083 : Seg52.F)
    (994028738238915528083889682175368136409308592456571972501581937772871843569 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6120117429237088608232024587575782415377834241323717585188328635752475069196 : Seg52.F) (6720019885177399554579686267055452133421878157488823619755914786864870808834 : Seg52.F)
    (5073870204141983728015716995378373060831107315064608854149081957566256688877 : Seg52.F) (7480012913309006556353541932028219293574137869976884165517521774473187114691 : Seg52.F)
    (428443228064459436188708048985363251710198829318901725229009474867768469958 : Seg52.F) (7021989783124995459976227207620815143256391913378590130204642043276768925514 : Seg52.F)
    (964448836119363867895283006753327237801761465177179662417711681444222124350 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX166 rho) (seg52BlindDeltaY166 rho) (rho 50705)
    (rho 51670) (rho 51671) (rho 51672) (rho 51674)
    (rho 51673) (rho 51675) (rho 51676) (rho 51677) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 167)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L167]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX166 seg52BlindDeltaY166;
        first | linear_combination r7282 | linear_combination -r7282)
    (by unfold seg52BlindDeltaX166 seg52BlindDeltaY166;
        first | linear_combination r7283 | linear_combination -r7283)
    (by unfold seg52BlindDeltaX166 seg52BlindDeltaY166;
        first | linear_combination r7284 | linear_combination -r7284)
    (by first | linear_combination r7285 | linear_combination -r7285)
    (by unfold seg52BlindDeltaX166 seg52BlindDeltaY166;
        first | linear_combination r7286 | linear_combination -r7286)
    (by first | linear_combination r7287 | linear_combination -r7287)
    (by unfold seg52BlindDeltaX166; first | linear_combination r7288 | linear_combination -r7288)
    (by unfold seg52BlindDeltaY166; first | linear_combination r7289 | linear_combination -r7289)
    (by linear_combination r6316)

theorem seg52Blind_rows168 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6317 rho ∧ Seg52.relationRow7290 rho ∧ Seg52.relationRow7291 rho ∧ Seg52.relationRow7292 rho ∧ Seg52.relationRow7293 rho ∧ Seg52.relationRow7294 rho ∧ Seg52.relationRow7295 rho ∧ Seg52.relationRow7296 rho ∧ Seg52.relationRow7297 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p91, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6317, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, r7290, r7291, r7292, r7293, r7294, r7295, r7296, r7297, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6317, r7290, r7291, r7292, r7293, r7294, r7295, r7296, r7297⟩

theorem seg52Blind_rung168 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50706 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 168)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      168 (Bool.toZMod bit) (seg52BlindAccState rho 168)
      (seg52BlindAccState rho 169) := by
  obtain ⟨r6317, r7290, r7291, r7292, r7293, r7294, r7295, r7296, r7297⟩ := seg52Blind_rows168 rho h
  unfold Seg52.relationRow6317 at r6317

  unfold Seg52.relationRow7290 at r7290

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7290

  unfold Seg52.relationRow7291 at r7291

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7291

  unfold Seg52.relationRow7292 at r7292

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7292

  unfold Seg52.relationRow7293 at r7293

  unfold Seg52.relationRow7294 at r7294

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7294

  unfold Seg52.relationRow7295 at r7295

  unfold Seg52.relationRow7296 at r7296

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7296

  unfold Seg52.relationRow7297 at r7297

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7297

  have hnextx : seg52BlindDeltaX168 rho =
      seg52BlindDeltaX167 rho + rho 51684 := by
    unfold seg52BlindDeltaX168 seg52BlindDeltaX167
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 18]

    ring

  have hnexty : seg52BlindDeltaY168 rho =
      seg52BlindDeltaY167 rho + rho 51685 := by
    unfold seg52BlindDeltaY168 seg52BlindDeltaY167
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 18]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 168
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX167 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY167 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX168 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY168 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY167 rho) (rho 51685)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 168)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (2836503453781894255067546199096983725022406545406429752779674453186544369879 : Seg52.F) (241965697581147870203353095733835730867230080792906756836964844889695693296 : Seg52.F)
    (3078469151363042125270899294830819455889636626199336509616639298076240063175 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4754661941807859398930757476704741251574731252121823202040719202873494889690 : Seg52.F) (8163040791851246590117760473641216585125047082690728565069379386233620581167 : Seg52.F)
    (816642964898674276423258287913745654035415865305908106814261201544169097258 : Seg52.F) (6569182143768587950461639836919797435440695567224014701527218698468480393282 : Seg52.F)
    (8202496051847222554045471843047710800508669254361157071098268611027713545745 : Seg52.F) (5607958295646476169181278739684562806353492789747634075155559002730864869162 : Seg52.F)
    (1875279605659782473787185101861749095935203767930049126408014757448928845759 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX167 rho) (seg52BlindDeltaY167 rho) (rho 50706)
    (rho 51678) (rho 51679) (rho 51680) (rho 51682)
    (rho 51681) (rho 51683) (rho 51684) (rho 51685) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 168)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L168]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX167 seg52BlindDeltaY167;
        first | linear_combination r7290 | linear_combination -r7290)
    (by unfold seg52BlindDeltaX167 seg52BlindDeltaY167;
        first | linear_combination r7291 | linear_combination -r7291)
    (by unfold seg52BlindDeltaX167 seg52BlindDeltaY167;
        first | linear_combination r7292 | linear_combination -r7292)
    (by first | linear_combination r7293 | linear_combination -r7293)
    (by unfold seg52BlindDeltaX167 seg52BlindDeltaY167;
        first | linear_combination r7294 | linear_combination -r7294)
    (by first | linear_combination r7295 | linear_combination -r7295)
    (by unfold seg52BlindDeltaX167; first | linear_combination r7296 | linear_combination -r7296)
    (by unfold seg52BlindDeltaY167; first | linear_combination r7297 | linear_combination -r7297)
    (by linear_combination r6317)

theorem seg52Blind_rows169 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6318 rho ∧ Seg52.relationRow7298 rho ∧ Seg52.relationRow7299 rho ∧ Seg52.relationRow7300 rho ∧ Seg52.relationRow7301 rho ∧ Seg52.relationRow7302 rho ∧ Seg52.relationRow7303 rho ∧ Seg52.relationRow7304 rho ∧ Seg52.relationRow7305 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p91, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6318, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7298, r7299, r7300, r7301, r7302, r7303, r7304, r7305, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6318, r7298, r7299, r7300, r7301, r7302, r7303, r7304, r7305⟩

theorem seg52Blind_rung169 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50707 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 169)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      169 (Bool.toZMod bit) (seg52BlindAccState rho 169)
      (seg52BlindAccState rho 170) := by
  obtain ⟨r6318, r7298, r7299, r7300, r7301, r7302, r7303, r7304, r7305⟩ := seg52Blind_rows169 rho h
  unfold Seg52.relationRow6318 at r6318

  unfold Seg52.relationRow7298 at r7298

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7298

  unfold Seg52.relationRow7299 at r7299

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7299

  unfold Seg52.relationRow7300 at r7300

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7300

  unfold Seg52.relationRow7301 at r7301

  unfold Seg52.relationRow7302 at r7302

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7302

  unfold Seg52.relationRow7303 at r7303

  unfold Seg52.relationRow7304 at r7304

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7304

  unfold Seg52.relationRow7305 at r7305

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7305

  have hnextx : seg52BlindDeltaX169 rho =
      seg52BlindDeltaX168 rho + rho 51692 := by
    unfold seg52BlindDeltaX169 seg52BlindDeltaX168
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 19]

    ring

  have hnexty : seg52BlindDeltaY169 rho =
      seg52BlindDeltaY168 rho + rho 51693 := by
    unfold seg52BlindDeltaY169 seg52BlindDeltaY168
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 19]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 169
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX168 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY168 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX169 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY169 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY168 rho) (rho 51693)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 169)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3688844968080895629712784332341446792801256746385234990750523093971521074510 : Seg52.F) (3549298525577506742776259135186706200036512115892118974843337934003521571629 : Seg52.F)
    (7238143493658402372489043467528152992837768862277353965593861027975042646139 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6408885745045801555320000085256881994286845799584425351912643065446343548180 : Seg52.F) (2836310663492769406639713848302725402464337115246140804629532361090041645307 : Seg52.F)
    (647523183386879337064708574349774122058580462968921747535777808928057165661 : Seg52.F) (276693291956730215244631115558101509258007714057884227406431063719210629035 : Seg52.F)
    (4895163223850863681472565803594840331339387219261944853091895521913887667412 : Seg52.F) (4755616781347474794536040606440099738574642588768828837184710361945888164531 : Seg52.F)
    (8167768457471640209004193823223445022117891621096179600528802392198198610006 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX168 rho) (seg52BlindDeltaY168 rho) (rho 50707)
    (rho 51686) (rho 51687) (rho 51688) (rho 51690)
    (rho 51689) (rho 51691) (rho 51692) (rho 51693) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 169)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L169]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX168 seg52BlindDeltaY168;
        first | linear_combination r7298 | linear_combination -r7298)
    (by unfold seg52BlindDeltaX168 seg52BlindDeltaY168;
        first | linear_combination r7299 | linear_combination -r7299)
    (by unfold seg52BlindDeltaX168 seg52BlindDeltaY168;
        first | linear_combination r7300 | linear_combination -r7300)
    (by first | linear_combination r7301 | linear_combination -r7301)
    (by unfold seg52BlindDeltaX168 seg52BlindDeltaY168;
        first | linear_combination r7302 | linear_combination -r7302)
    (by first | linear_combination r7303 | linear_combination -r7303)
    (by unfold seg52BlindDeltaX168; first | linear_combination r7304 | linear_combination -r7304)
    (by unfold seg52BlindDeltaY168; first | linear_combination r7305 | linear_combination -r7305)
    (by linear_combination r6318)

theorem seg52Blind_rows170 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6319 rho ∧ Seg52.relationRow7306 rho ∧ Seg52.relationRow7307 rho ∧ Seg52.relationRow7308 rho ∧ Seg52.relationRow7309 rho ∧ Seg52.relationRow7310 rho ∧ Seg52.relationRow7311 rho ∧ Seg52.relationRow7312 rho ∧ Seg52.relationRow7313 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p91, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6319⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7306, r7307, r7308, r7309, r7310, r7311, r7312, r7313, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6319, r7306, r7307, r7308, r7309, r7310, r7311, r7312, r7313⟩

theorem seg52Blind_rung170 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50708 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 170)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      170 (Bool.toZMod bit) (seg52BlindAccState rho 170)
      (seg52BlindAccState rho 171) := by
  obtain ⟨r6319, r7306, r7307, r7308, r7309, r7310, r7311, r7312, r7313⟩ := seg52Blind_rows170 rho h
  unfold Seg52.relationRow6319 at r6319

  unfold Seg52.relationRow7306 at r7306

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7306

  unfold Seg52.relationRow7307 at r7307

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7307

  unfold Seg52.relationRow7308 at r7308

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7308

  unfold Seg52.relationRow7309 at r7309

  unfold Seg52.relationRow7310 at r7310

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7310

  unfold Seg52.relationRow7311 at r7311

  unfold Seg52.relationRow7312 at r7312

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7312

  unfold Seg52.relationRow7313 at r7313

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7313

  have hnextx : seg52BlindDeltaX170 rho =
      seg52BlindDeltaX169 rho + rho 51700 := by
    unfold seg52BlindDeltaX170 seg52BlindDeltaX169
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 20]

    ring

  have hnexty : seg52BlindDeltaY170 rho =
      seg52BlindDeltaY169 rho + rho 51701 := by
    unfold seg52BlindDeltaY170 seg52BlindDeltaY169
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 20]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 170
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX169 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY169 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX170 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY170 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY169 rho) (rho 51701)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 170)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (14615198357844142493633676529185613307937073000081044855882952481351169849 : Seg52.F) (4453736726882436070381815817683846788913384475401420570593429621138334460266 : Seg52.F)
    (4468351925240280212875449494213032402221321548401501615449312573619685630115 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2711085072445282795087457743897524825526859287267865861923990182475486671273 : Seg52.F) (2815337370501420512367345064868368945741396836244984675210978293144578630164 : Seg52.F)
    (8337230938626305099367911797941917241220481641091522792192706609686119681774 : Seg52.F) (1542900857365177300348869732032261084706390318045086452889382692757262587607 : Seg52.F)
    (3990725022545934353867009121097699742462514859752643257341803834779074778775 : Seg52.F) (8429846551070526281755191262252360918067962262153982783079350503436058069192 : Seg52.F)
    (6901560892063193123899955206749285446669509017108977375045850763160146651434 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX169 rho) (seg52BlindDeltaY169 rho) (rho 50708)
    (rho 51694) (rho 51695) (rho 51696) (rho 51698)
    (rho 51697) (rho 51699) (rho 51700) (rho 51701) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 170)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L170]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX169 seg52BlindDeltaY169;
        first | linear_combination r7306 | linear_combination -r7306)
    (by unfold seg52BlindDeltaX169 seg52BlindDeltaY169;
        first | linear_combination r7307 | linear_combination -r7307)
    (by unfold seg52BlindDeltaX169 seg52BlindDeltaY169;
        first | linear_combination r7308 | linear_combination -r7308)
    (by first | linear_combination r7309 | linear_combination -r7309)
    (by unfold seg52BlindDeltaX169 seg52BlindDeltaY169;
        first | linear_combination r7310 | linear_combination -r7310)
    (by first | linear_combination r7311 | linear_combination -r7311)
    (by unfold seg52BlindDeltaX169; first | linear_combination r7312 | linear_combination -r7312)
    (by unfold seg52BlindDeltaY169; first | linear_combination r7313 | linear_combination -r7313)
    (by linear_combination r6319)

theorem seg52Blind_hstep_c16 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 161 ≤ i → i < 171 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung161 rho h bits[161]! (hbitAt 161 (by omega)) hacc
  · exact seg52Blind_rung162 rho h bits[162]! (hbitAt 162 (by omega)) hacc
  · exact seg52Blind_rung163 rho h bits[163]! (hbitAt 163 (by omega)) hacc
  · exact seg52Blind_rung164 rho h bits[164]! (hbitAt 164 (by omega)) hacc
  · exact seg52Blind_rung165 rho h bits[165]! (hbitAt 165 (by omega)) hacc
  · exact seg52Blind_rung166 rho h bits[166]! (hbitAt 166 (by omega)) hacc
  · exact seg52Blind_rung167 rho h bits[167]! (hbitAt 167 (by omega)) hacc
  · exact seg52Blind_rung168 rho h bits[168]! (hbitAt 168 (by omega)) hacc
  · exact seg52Blind_rung169 rho h bits[169]! (hbitAt 169 (by omega)) hacc
  · exact seg52Blind_rung170 rho h bits[170]! (hbitAt 170 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

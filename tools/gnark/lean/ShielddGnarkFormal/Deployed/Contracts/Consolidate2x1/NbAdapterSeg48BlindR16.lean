import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows161 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6310 rho ∧ Seg48.relationRow7234 rho ∧ Seg48.relationRow7235 rho ∧ Seg48.relationRow7236 rho ∧ Seg48.relationRow7237 rho ∧ Seg48.relationRow7238 rho ∧ Seg48.relationRow7239 rho ∧ Seg48.relationRow7240 rho ∧ Seg48.relationRow7241 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6310, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7234, r7235, r7236, r7237, r7238, r7239, r7240, r7241, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6310, r7234, r7235, r7236, r7237, r7238, r7239, r7240, r7241⟩

theorem seg48Blind_rung161 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39067 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 161)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      161 (Bool.toZMod bit) (seg48BlindAccState rho 161)
      (seg48BlindAccState rho 162) := by
  obtain ⟨r6310, r7234, r7235, r7236, r7237, r7238, r7239, r7240, r7241⟩ := seg48Blind_rows161 rho h
  unfold Seg48.relationRow6310 at r6310

  unfold Seg48.relationRow7234 at r7234

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7234

  unfold Seg48.relationRow7235 at r7235

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7235

  unfold Seg48.relationRow7236 at r7236

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7236

  unfold Seg48.relationRow7237 at r7237

  unfold Seg48.relationRow7238 at r7238

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7238

  unfold Seg48.relationRow7239 at r7239

  unfold Seg48.relationRow7240 at r7240

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7240

  unfold Seg48.relationRow7241 at r7241

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7241

  have hnextx : seg48BlindDeltaX161 rho =
      seg48BlindDeltaX160 rho + rho 39996 := by
    unfold seg48BlindDeltaX161 seg48BlindDeltaX160
    ring

  have hnexty : seg48BlindDeltaY161 rho =
      seg48BlindDeltaY160 rho + rho 39997 := by
    unfold seg48BlindDeltaY161 seg48BlindDeltaY160
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 161
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX160 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY160 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX161 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY161 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY160 rho) (rho 39997)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 161)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (7542973043425304557787298526624639482775147192320361978340217817707240027295 : Seg48.F) (4902900135996093054103909226317364356900159991348997775570192260208233100765 : Seg48.F)
    (4001411429993027187642382814160457308299407848515295925975176621998063889019 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (75402346835392315470830081925106162055900005094325799151336409936392133151 : Seg48.F) (6975075164126143068117625078799676184649982755043331804572340782965154092658 : Seg48.F)
    (1730782992719386564460290722013976810866631175052823702550694687768251364709 : Seg48.F) (7561196042279889205184195926396076842016382944848012849538292865977706319192 : Seg48.F)
    (3541561613432277370144915712464182174475739343805066052365041195709176138276 : Seg48.F) (901488706003065866461526412156907048600752142833701849595015638210169211746 : Seg48.F)
    (883265707148481219064629012385469689359516390306050978396940589939702919849 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX160 rho) (seg48BlindDeltaY160 rho) (rho 39067)
    (rho 39990) (rho 39991) (rho 39992) (rho 39994)
    (rho 39993) (rho 39995) (rho 39996) (rho 39997) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 161)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L161]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX160 seg48BlindDeltaY160;
        first | linear_combination r7234 | linear_combination -r7234)
    (by unfold seg48BlindDeltaX160 seg48BlindDeltaY160;
        first | linear_combination r7235 | linear_combination -r7235)
    (by unfold seg48BlindDeltaX160 seg48BlindDeltaY160;
        first | linear_combination r7236 | linear_combination -r7236)
    (by first | linear_combination r7237 | linear_combination -r7237)
    (by unfold seg48BlindDeltaX160 seg48BlindDeltaY160;
        first | linear_combination r7238 | linear_combination -r7238)
    (by first | linear_combination r7239 | linear_combination -r7239)
    (by unfold seg48BlindDeltaX160; first | linear_combination r7240 | linear_combination -r7240)
    (by unfold seg48BlindDeltaY160; first | linear_combination r7241 | linear_combination -r7241)
    (by linear_combination r6310)

theorem seg48Blind_rows162 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6311 rho ∧ Seg48.relationRow7242 rho ∧ Seg48.relationRow7243 rho ∧ Seg48.relationRow7244 rho ∧ Seg48.relationRow7245 rho ∧ Seg48.relationRow7246 rho ∧ Seg48.relationRow7247 rho ∧ Seg48.relationRow7248 rho ∧ Seg48.relationRow7249 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6311, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7242, r7243, r7244, r7245, r7246, r7247, r7248, r7249, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6311, r7242, r7243, r7244, r7245, r7246, r7247, r7248, r7249⟩

theorem seg48Blind_rung162 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39068 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 162)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      162 (Bool.toZMod bit) (seg48BlindAccState rho 162)
      (seg48BlindAccState rho 163) := by
  obtain ⟨r6311, r7242, r7243, r7244, r7245, r7246, r7247, r7248, r7249⟩ := seg48Blind_rows162 rho h
  unfold Seg48.relationRow6311 at r6311

  unfold Seg48.relationRow7242 at r7242

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7242

  unfold Seg48.relationRow7243 at r7243

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7243

  unfold Seg48.relationRow7244 at r7244

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7244

  unfold Seg48.relationRow7245 at r7245

  unfold Seg48.relationRow7246 at r7246

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7246

  unfold Seg48.relationRow7247 at r7247

  unfold Seg48.relationRow7248 at r7248

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7248

  unfold Seg48.relationRow7249 at r7249

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7249

  have hnextx : seg48BlindDeltaX162 rho =
      seg48BlindDeltaX161 rho + rho 40004 := by
    unfold seg48BlindDeltaX162 seg48BlindDeltaX161
    ring

  have hnexty : seg48BlindDeltaY162 rho =
      seg48BlindDeltaY161 rho + rho 40005 := by
    unfold seg48BlindDeltaY162 seg48BlindDeltaY161
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 162
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX161 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY161 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX162 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY162 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY161 rho) (rho 40005)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 162)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (3428003032113893286564484758928940695972477448115426499905845444589573610014 : Seg48.F) (7282192221865417647282033182081483211051136679636896117947487920487788994494 : Seg48.F)
    (2265733504550940509597693002228877375647714792598258789918099909159953365467 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (1679844994521757270833277542232066351266141106726900548077855128759484664569 : Seg48.F) (336437200278763058650757442567809210818762905857251500100463232154840797693 : Seg48.F)
    (717161087129884067696546025406226315970981733471385110908493653621228933967 : Seg48.F) (4348307147940123042922588512304537058595315397579622834836983796775439275679 : Seg48.F)
    (1162269527562952776966791756700063320324762655517167709987745535429620244547 : Seg48.F) (5016458717314477137684340179852605835403421887038637328029388011327835629027 : Seg48.F)
    (4096154601488247381326236426477009472780583937574440993098249659141969963362 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX161 rho) (seg48BlindDeltaY161 rho) (rho 39068)
    (rho 39998) (rho 39999) (rho 40000) (rho 40002)
    (rho 40001) (rho 40003) (rho 40004) (rho 40005) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 162)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L162]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX161 seg48BlindDeltaY161;
        first | linear_combination r7242 | linear_combination -r7242)
    (by unfold seg48BlindDeltaX161 seg48BlindDeltaY161;
        first | linear_combination r7243 | linear_combination -r7243)
    (by unfold seg48BlindDeltaX161 seg48BlindDeltaY161;
        first | linear_combination r7244 | linear_combination -r7244)
    (by first | linear_combination r7245 | linear_combination -r7245)
    (by unfold seg48BlindDeltaX161 seg48BlindDeltaY161;
        first | linear_combination r7246 | linear_combination -r7246)
    (by first | linear_combination r7247 | linear_combination -r7247)
    (by unfold seg48BlindDeltaX161; first | linear_combination r7248 | linear_combination -r7248)
    (by unfold seg48BlindDeltaY161; first | linear_combination r7249 | linear_combination -r7249)
    (by linear_combination r6311)

theorem seg48Blind_rows163 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6312 rho ∧ Seg48.relationRow7250 rho ∧ Seg48.relationRow7251 rho ∧ Seg48.relationRow7252 rho ∧ Seg48.relationRow7253 rho ∧ Seg48.relationRow7254 rho ∧ Seg48.relationRow7255 rho ∧ Seg48.relationRow7256 rho ∧ Seg48.relationRow7257 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6312, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7250, r7251, r7252, r7253, r7254, r7255, r7256, r7257, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6312, r7250, r7251, r7252, r7253, r7254, r7255, r7256, r7257⟩

theorem seg48Blind_rung163 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39069 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 163)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      163 (Bool.toZMod bit) (seg48BlindAccState rho 163)
      (seg48BlindAccState rho 164) := by
  obtain ⟨r6312, r7250, r7251, r7252, r7253, r7254, r7255, r7256, r7257⟩ := seg48Blind_rows163 rho h
  unfold Seg48.relationRow6312 at r6312

  unfold Seg48.relationRow7250 at r7250

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7250

  unfold Seg48.relationRow7251 at r7251

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7251

  unfold Seg48.relationRow7252 at r7252

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7252

  unfold Seg48.relationRow7253 at r7253

  unfold Seg48.relationRow7254 at r7254

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7254

  unfold Seg48.relationRow7255 at r7255

  unfold Seg48.relationRow7256 at r7256

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7256

  unfold Seg48.relationRow7257 at r7257

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7257

  have hnextx : seg48BlindDeltaX163 rho =
      seg48BlindDeltaX162 rho + rho 40012 := by
    unfold seg48BlindDeltaX163 seg48BlindDeltaX162
    ring

  have hnexty : seg48BlindDeltaY163 rho =
      seg48BlindDeltaY162 rho + rho 40013 := by
    unfold seg48BlindDeltaY163 seg48BlindDeltaY162
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 163
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX162 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY162 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX163 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY163 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY162 rho) (rho 40013)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 163)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (3319592170070649580163792492819249188458765963613933444607504510499280931216 : Seg48.F) (32739216755167053865224790521545409370186247927512415270018966439468367503 : Seg48.F)
    (3352331386825816634029017283340794597828952211541445859877523476938749298719 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (6016094573647595060107017838991669862197762302320304423439729598542436597112 : Seg48.F) (808727820100326903494963827718719247215656080730809825600195832257007060686 : Seg48.F)
    (8359187689176916007375617881098332220162573106008601502999536521788487600689 : Seg48.F) (8127449325263491837130944757599110226499221901527616237228922757800110255512 : Seg48.F)
    (8411722532673203370383600148260001122005713087226551412665214489477940871538 : Seg48.F) (5124869579357720844085032445962297342917133371540130383327728945418128307825 : Seg48.F)
    (317012424164878587117880181182436304876677433626447590706310698117298983529 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX162 rho) (seg48BlindDeltaY162 rho) (rho 39069)
    (rho 40006) (rho 40007) (rho 40008) (rho 40010)
    (rho 40009) (rho 40011) (rho 40012) (rho 40013) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 163)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L163]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX162 seg48BlindDeltaY162;
        first | linear_combination r7250 | linear_combination -r7250)
    (by unfold seg48BlindDeltaX162 seg48BlindDeltaY162;
        first | linear_combination r7251 | linear_combination -r7251)
    (by unfold seg48BlindDeltaX162 seg48BlindDeltaY162;
        first | linear_combination r7252 | linear_combination -r7252)
    (by first | linear_combination r7253 | linear_combination -r7253)
    (by unfold seg48BlindDeltaX162 seg48BlindDeltaY162;
        first | linear_combination r7254 | linear_combination -r7254)
    (by first | linear_combination r7255 | linear_combination -r7255)
    (by unfold seg48BlindDeltaX162; first | linear_combination r7256 | linear_combination -r7256)
    (by unfold seg48BlindDeltaY162; first | linear_combination r7257 | linear_combination -r7257)
    (by linear_combination r6312)

theorem seg48Blind_rows164 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6313 rho ∧ Seg48.relationRow7258 rho ∧ Seg48.relationRow7259 rho ∧ Seg48.relationRow7260 rho ∧ Seg48.relationRow7261 rho ∧ Seg48.relationRow7262 rho ∧ Seg48.relationRow7263 rho ∧ Seg48.relationRow7264 rho ∧ Seg48.relationRow7265 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6313, _, _, _, _, _, _⟩

  unfold Seg48.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7258, r7259, r7260, r7261, r7262, r7263, r7264, r7265, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6313, r7258, r7259, r7260, r7261, r7262, r7263, r7264, r7265⟩

theorem seg48Blind_rung164 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39070 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 164)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      164 (Bool.toZMod bit) (seg48BlindAccState rho 164)
      (seg48BlindAccState rho 165) := by
  obtain ⟨r6313, r7258, r7259, r7260, r7261, r7262, r7263, r7264, r7265⟩ := seg48Blind_rows164 rho h
  unfold Seg48.relationRow6313 at r6313

  unfold Seg48.relationRow7258 at r7258

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7258

  unfold Seg48.relationRow7259 at r7259

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7259

  unfold Seg48.relationRow7260 at r7260

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7260

  unfold Seg48.relationRow7261 at r7261

  unfold Seg48.relationRow7262 at r7262

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7262

  unfold Seg48.relationRow7263 at r7263

  unfold Seg48.relationRow7264 at r7264

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7264

  unfold Seg48.relationRow7265 at r7265

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7265

  have hnextx : seg48BlindDeltaX164 rho =
      seg48BlindDeltaX163 rho + rho 40020 := by
    unfold seg48BlindDeltaX164 seg48BlindDeltaX163
    ring

  have hnexty : seg48BlindDeltaY164 rho =
      seg48BlindDeltaY163 rho + rho 40021 := by
    unfold seg48BlindDeltaY164 seg48BlindDeltaY163
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 164
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX163 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY163 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX164 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY164 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY163 rho) (rho 40021)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 164)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (4435852466459101811998773958235812273366837241570394295879450459491557638160 : Seg48.F) (4268577363973246176867491830814180686504034856137913396841598280640100583475 : Seg48.F)
    (259968081003977564617440850268446428494972762554243864785815284214248982594 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (679125186055062488737139370218300517691015612380906601366918627859954662368 : Seg48.F) (6528007956281233758184597455537327114041835348422589894824599455091608331695 : Seg48.F)
    (7476412575129757290800612800718728139397432189620919113217493696515319162617 : Seg48.F) (551934519145904037728648682597200506946112521576116870341398395519540120574 : Seg48.F)
    (4175884385455124247381333107967365844871864479016150431093635175277308655566 : Seg48.F) (4008609282969268612250050980545734258009062093583669532055782996425851600881 : Seg48.F)
    (7892527230282466386520176256184346024429786813577946957593835060397869118467 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX163 rho) (seg48BlindDeltaY163 rho) (rho 39070)
    (rho 40014) (rho 40015) (rho 40016) (rho 40018)
    (rho 40017) (rho 40019) (rho 40020) (rho 40021) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 164)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L164]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX163 seg48BlindDeltaY163;
        first | linear_combination r7258 | linear_combination -r7258)
    (by unfold seg48BlindDeltaX163 seg48BlindDeltaY163;
        first | linear_combination r7259 | linear_combination -r7259)
    (by unfold seg48BlindDeltaX163 seg48BlindDeltaY163;
        first | linear_combination r7260 | linear_combination -r7260)
    (by first | linear_combination r7261 | linear_combination -r7261)
    (by unfold seg48BlindDeltaX163 seg48BlindDeltaY163;
        first | linear_combination r7262 | linear_combination -r7262)
    (by first | linear_combination r7263 | linear_combination -r7263)
    (by unfold seg48BlindDeltaX163; first | linear_combination r7264 | linear_combination -r7264)
    (by unfold seg48BlindDeltaY163; first | linear_combination r7265 | linear_combination -r7265)
    (by linear_combination r6313)

theorem seg48Blind_rows165 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6314 rho ∧ Seg48.relationRow7266 rho ∧ Seg48.relationRow7267 rho ∧ Seg48.relationRow7268 rho ∧ Seg48.relationRow7269 rho ∧ Seg48.relationRow7270 rho ∧ Seg48.relationRow7271 rho ∧ Seg48.relationRow7272 rho ∧ Seg48.relationRow7273 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6314, _, _, _, _, _⟩

  unfold Seg48.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7266, r7267, r7268, r7269, r7270, r7271, r7272, r7273, _, _, _, _, _, _⟩

  exact ⟨r6314, r7266, r7267, r7268, r7269, r7270, r7271, r7272, r7273⟩

theorem seg48Blind_rung165 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39071 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 165)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      165 (Bool.toZMod bit) (seg48BlindAccState rho 165)
      (seg48BlindAccState rho 166) := by
  obtain ⟨r6314, r7266, r7267, r7268, r7269, r7270, r7271, r7272, r7273⟩ := seg48Blind_rows165 rho h
  unfold Seg48.relationRow6314 at r6314

  unfold Seg48.relationRow7266 at r7266

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7266

  unfold Seg48.relationRow7267 at r7267

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7267

  unfold Seg48.relationRow7268 at r7268

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7268

  unfold Seg48.relationRow7269 at r7269

  unfold Seg48.relationRow7270 at r7270

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7270

  unfold Seg48.relationRow7271 at r7271

  unfold Seg48.relationRow7272 at r7272

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7272

  unfold Seg48.relationRow7273 at r7273

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7273

  have hnextx : seg48BlindDeltaX165 rho =
      seg48BlindDeltaX164 rho + rho 40028 := by
    unfold seg48BlindDeltaX165 seg48BlindDeltaX164
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 39908 8]

    ring

  have hnexty : seg48BlindDeltaY165 rho =
      seg48BlindDeltaY164 rho + rho 40029 := by
    unfold seg48BlindDeltaY165 seg48BlindDeltaY164
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 39909 8]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 165
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX164 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY164 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX165 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY165 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY164 rho) (rho 40029)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 165)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (285447995986048848795735635779787303483030189576572810093747090807388041447 : Seg48.F) (2219756219546393792135700802976427321358734454684517582262921574902647147987 : Seg48.F)
    (2505204215532442640931436438756214624841764644261090392356668665710035189434 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (980910203529529188385124399238991912272715489600936635710713782474098270173 : Seg48.F) (8079974796317486692084740348835642267934804620961579470048285488791619929672 : Seg48.F)
    (3785944822226201681924408828863425267430218166404983920577593671037419348674 : Seg48.F) (6508401378661197348752012736769178467462222422520795136748077099735344144939 : Seg48.F)
    (6224705529881976632113124135805119210017164880469546245672311881014762091054 : Seg48.F) (8159013753442321575453089303001759227892869145577491017841486365110021197594 : Seg48.F)
    (1936060370767173075496812202012368063913676912633268691187156356182065094102 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX164 rho) (seg48BlindDeltaY164 rho) (rho 39071)
    (rho 40022) (rho 40023) (rho 40024) (rho 40026)
    (rho 40025) (rho 40027) (rho 40028) (rho 40029) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 165)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L165]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX164 seg48BlindDeltaY164;
        first | linear_combination r7266 | linear_combination -r7266)
    (by unfold seg48BlindDeltaX164 seg48BlindDeltaY164;
        first | linear_combination r7267 | linear_combination -r7267)
    (by unfold seg48BlindDeltaX164 seg48BlindDeltaY164;
        first | linear_combination r7268 | linear_combination -r7268)
    (by first | linear_combination r7269 | linear_combination -r7269)
    (by unfold seg48BlindDeltaX164 seg48BlindDeltaY164;
        first | linear_combination r7270 | linear_combination -r7270)
    (by first | linear_combination r7271 | linear_combination -r7271)
    (by unfold seg48BlindDeltaX164; first | linear_combination r7272 | linear_combination -r7272)
    (by unfold seg48BlindDeltaY164; first | linear_combination r7273 | linear_combination -r7273)
    (by linear_combination r6314)

theorem seg48Blind_rows166 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6315 rho ∧ Seg48.relationRow7274 rho ∧ Seg48.relationRow7275 rho ∧ Seg48.relationRow7276 rho ∧ Seg48.relationRow7277 rho ∧ Seg48.relationRow7278 rho ∧ Seg48.relationRow7279 rho ∧ Seg48.relationRow7280 rho ∧ Seg48.relationRow7281 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6315, _, _, _, _⟩

  unfold Seg48.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7274, r7275, r7276, r7277, r7278, r7279⟩

  unfold Seg48.relationPart91 at p91

  rcases p91 with ⟨r7280, r7281, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6315, r7274, r7275, r7276, r7277, r7278, r7279, r7280, r7281⟩

theorem seg48Blind_rung166 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39072 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 166)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      166 (Bool.toZMod bit) (seg48BlindAccState rho 166)
      (seg48BlindAccState rho 167) := by
  obtain ⟨r6315, r7274, r7275, r7276, r7277, r7278, r7279, r7280, r7281⟩ := seg48Blind_rows166 rho h
  unfold Seg48.relationRow6315 at r6315

  unfold Seg48.relationRow7274 at r7274

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7274

  unfold Seg48.relationRow7275 at r7275

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7275

  unfold Seg48.relationRow7276 at r7276

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7276

  unfold Seg48.relationRow7277 at r7277

  unfold Seg48.relationRow7278 at r7278

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7278

  unfold Seg48.relationRow7279 at r7279

  unfold Seg48.relationRow7280 at r7280

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7280

  unfold Seg48.relationRow7281 at r7281

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7281

  have hnextx : seg48BlindDeltaX166 rho =
      seg48BlindDeltaX165 rho + rho 40036 := by
    unfold seg48BlindDeltaX166 seg48BlindDeltaX165
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 16]

    ring

  have hnexty : seg48BlindDeltaY166 rho =
      seg48BlindDeltaY165 rho + rho 40037 := by
    unfold seg48BlindDeltaY166 seg48BlindDeltaY165
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 16]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 166
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX165 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY165 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX166 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY166 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY165 rho) (rho 40037)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 166)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (2156277848635068232427762528343749770532075962258470576409646311435229701269 : Seg48.F) (6232016371209813488808722651953407519476571859448596956528805996090774584558 : Seg48.F)
    (8388294219844881721236485180297157290008647821707067532938452307526004285827 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (4216217949008874040520343007176897901843969335803133205887540950324826127329 : Seg48.F) (6708904022991781730463731876876371419940587451459017512750467455879957831906 : Seg48.F)
    (5208133706710327476396722005768514910243517737860840078158265782782695728883 : Seg48.F) (6501761721360740888423673628937647935372814685988161000375686611677009871971 : Seg48.F)
    (2212445378218556935440102286828139011899327475705466871406427459826634654483 : Seg48.F) (6288183900793302191821062410437796760843823372895593251525587144482179537772 : Seg48.F)
    (1942700028067629535825151309843898596003084649165902827559546844240399367070 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX165 rho) (seg48BlindDeltaY165 rho) (rho 39072)
    (rho 40030) (rho 40031) (rho 40032) (rho 40034)
    (rho 40033) (rho 40035) (rho 40036) (rho 40037) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 166)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L166]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX165 seg48BlindDeltaY165;
        first | linear_combination r7274 | linear_combination -r7274)
    (by unfold seg48BlindDeltaX165 seg48BlindDeltaY165;
        first | linear_combination r7275 | linear_combination -r7275)
    (by unfold seg48BlindDeltaX165 seg48BlindDeltaY165;
        first | linear_combination r7276 | linear_combination -r7276)
    (by first | linear_combination r7277 | linear_combination -r7277)
    (by unfold seg48BlindDeltaX165 seg48BlindDeltaY165;
        first | linear_combination r7278 | linear_combination -r7278)
    (by first | linear_combination r7279 | linear_combination -r7279)
    (by unfold seg48BlindDeltaX165; first | linear_combination r7280 | linear_combination -r7280)
    (by unfold seg48BlindDeltaY165; first | linear_combination r7281 | linear_combination -r7281)
    (by linear_combination r6315)

theorem seg48Blind_rows167 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6316 rho ∧ Seg48.relationRow7282 rho ∧ Seg48.relationRow7283 rho ∧ Seg48.relationRow7284 rho ∧ Seg48.relationRow7285 rho ∧ Seg48.relationRow7286 rho ∧ Seg48.relationRow7287 rho ∧ Seg48.relationRow7288 rho ∧ Seg48.relationRow7289 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6316, _, _, _⟩

  unfold Seg48.relationPart91 at p91

  rcases p91 with ⟨_, _, r7282, r7283, r7284, r7285, r7286, r7287, r7288, r7289, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6316, r7282, r7283, r7284, r7285, r7286, r7287, r7288, r7289⟩

theorem seg48Blind_rung167 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39073 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 167)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      167 (Bool.toZMod bit) (seg48BlindAccState rho 167)
      (seg48BlindAccState rho 168) := by
  obtain ⟨r6316, r7282, r7283, r7284, r7285, r7286, r7287, r7288, r7289⟩ := seg48Blind_rows167 rho h
  unfold Seg48.relationRow6316 at r6316

  unfold Seg48.relationRow7282 at r7282

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7282

  unfold Seg48.relationRow7283 at r7283

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7283

  unfold Seg48.relationRow7284 at r7284

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7284

  unfold Seg48.relationRow7285 at r7285

  unfold Seg48.relationRow7286 at r7286

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7286

  unfold Seg48.relationRow7287 at r7287

  unfold Seg48.relationRow7288 at r7288

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7288

  unfold Seg48.relationRow7289 at r7289

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7289

  have hnextx : seg48BlindDeltaX167 rho =
      seg48BlindDeltaX166 rho + rho 40044 := by
    unfold seg48BlindDeltaX167 seg48BlindDeltaX166
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 17]

    ring

  have hnexty : seg48BlindDeltaY167 rho =
      seg48BlindDeltaY166 rho + rho 40045 := by
    unfold seg48BlindDeltaY167 seg48BlindDeltaY166
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 17]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 167
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX166 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY166 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX167 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY167 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY166 rho) (rho 40045)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 167)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (1422471966303374964272597731160731388119507421775473697730591412640640313527 : Seg48.F) (8016018521363910988060116889796183279665700505835162102706223981049640769083 : Seg48.F)
    (994028738238915528083889682175368136409308592456571972501581937772871843569 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (6120117429237088608232024587575782415377834241323717585188328635752475069196 : Seg48.F) (6720019885177399554579686267055452133421878157488823619755914786864870808834 : Seg48.F)
    (5073870204141983728015716995378373060831107315064608854149081957566256688877 : Seg48.F) (7480012913309006556353541932028219293574137869976884165517521774473187114691 : Seg48.F)
    (428443228064459436188708048985363251710198829318901725229009474867768469958 : Seg48.F) (7021989783124995459976227207620815143256391913378590130204642043276768925514 : Seg48.F)
    (964448836119363867895283006753327237801761465177179662417711681444222124350 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX166 rho) (seg48BlindDeltaY166 rho) (rho 39073)
    (rho 40038) (rho 40039) (rho 40040) (rho 40042)
    (rho 40041) (rho 40043) (rho 40044) (rho 40045) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 167)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L167]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX166 seg48BlindDeltaY166;
        first | linear_combination r7282 | linear_combination -r7282)
    (by unfold seg48BlindDeltaX166 seg48BlindDeltaY166;
        first | linear_combination r7283 | linear_combination -r7283)
    (by unfold seg48BlindDeltaX166 seg48BlindDeltaY166;
        first | linear_combination r7284 | linear_combination -r7284)
    (by first | linear_combination r7285 | linear_combination -r7285)
    (by unfold seg48BlindDeltaX166 seg48BlindDeltaY166;
        first | linear_combination r7286 | linear_combination -r7286)
    (by first | linear_combination r7287 | linear_combination -r7287)
    (by unfold seg48BlindDeltaX166; first | linear_combination r7288 | linear_combination -r7288)
    (by unfold seg48BlindDeltaY166; first | linear_combination r7289 | linear_combination -r7289)
    (by linear_combination r6316)

theorem seg48Blind_rows168 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6317 rho ∧ Seg48.relationRow7290 rho ∧ Seg48.relationRow7291 rho ∧ Seg48.relationRow7292 rho ∧ Seg48.relationRow7293 rho ∧ Seg48.relationRow7294 rho ∧ Seg48.relationRow7295 rho ∧ Seg48.relationRow7296 rho ∧ Seg48.relationRow7297 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6317, _, _⟩

  unfold Seg48.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, r7290, r7291, r7292, r7293, r7294, r7295, r7296, r7297, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6317, r7290, r7291, r7292, r7293, r7294, r7295, r7296, r7297⟩

theorem seg48Blind_rung168 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39074 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 168)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      168 (Bool.toZMod bit) (seg48BlindAccState rho 168)
      (seg48BlindAccState rho 169) := by
  obtain ⟨r6317, r7290, r7291, r7292, r7293, r7294, r7295, r7296, r7297⟩ := seg48Blind_rows168 rho h
  unfold Seg48.relationRow6317 at r6317

  unfold Seg48.relationRow7290 at r7290

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7290

  unfold Seg48.relationRow7291 at r7291

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7291

  unfold Seg48.relationRow7292 at r7292

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7292

  unfold Seg48.relationRow7293 at r7293

  unfold Seg48.relationRow7294 at r7294

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7294

  unfold Seg48.relationRow7295 at r7295

  unfold Seg48.relationRow7296 at r7296

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7296

  unfold Seg48.relationRow7297 at r7297

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7297

  have hnextx : seg48BlindDeltaX168 rho =
      seg48BlindDeltaX167 rho + rho 40052 := by
    unfold seg48BlindDeltaX168 seg48BlindDeltaX167
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 18]

    ring

  have hnexty : seg48BlindDeltaY168 rho =
      seg48BlindDeltaY167 rho + rho 40053 := by
    unfold seg48BlindDeltaY168 seg48BlindDeltaY167
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 18]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 168
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX167 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY167 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX168 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY168 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY167 rho) (rho 40053)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 168)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (2836503453781894255067546199096983725022406545406429752779674453186544369879 : Seg48.F) (241965697581147870203353095733835730867230080792906756836964844889695693296 : Seg48.F)
    (3078469151363042125270899294830819455889636626199336509616639298076240063175 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (4754661941807859398930757476704741251574731252121823202040719202873494889690 : Seg48.F) (8163040791851246590117760473641216585125047082690728565069379386233620581167 : Seg48.F)
    (816642964898674276423258287913745654035415865305908106814261201544169097258 : Seg48.F) (6569182143768587950461639836919797435440695567224014701527218698468480393282 : Seg48.F)
    (8202496051847222554045471843047710800508669254361157071098268611027713545745 : Seg48.F) (5607958295646476169181278739684562806353492789747634075155559002730864869162 : Seg48.F)
    (1875279605659782473787185101861749095935203767930049126408014757448928845759 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX167 rho) (seg48BlindDeltaY167 rho) (rho 39074)
    (rho 40046) (rho 40047) (rho 40048) (rho 40050)
    (rho 40049) (rho 40051) (rho 40052) (rho 40053) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 168)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L168]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX167 seg48BlindDeltaY167;
        first | linear_combination r7290 | linear_combination -r7290)
    (by unfold seg48BlindDeltaX167 seg48BlindDeltaY167;
        first | linear_combination r7291 | linear_combination -r7291)
    (by unfold seg48BlindDeltaX167 seg48BlindDeltaY167;
        first | linear_combination r7292 | linear_combination -r7292)
    (by first | linear_combination r7293 | linear_combination -r7293)
    (by unfold seg48BlindDeltaX167 seg48BlindDeltaY167;
        first | linear_combination r7294 | linear_combination -r7294)
    (by first | linear_combination r7295 | linear_combination -r7295)
    (by unfold seg48BlindDeltaX167; first | linear_combination r7296 | linear_combination -r7296)
    (by unfold seg48BlindDeltaY167; first | linear_combination r7297 | linear_combination -r7297)
    (by linear_combination r6317)

theorem seg48Blind_rows169 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6318 rho ∧ Seg48.relationRow7298 rho ∧ Seg48.relationRow7299 rho ∧ Seg48.relationRow7300 rho ∧ Seg48.relationRow7301 rho ∧ Seg48.relationRow7302 rho ∧ Seg48.relationRow7303 rho ∧ Seg48.relationRow7304 rho ∧ Seg48.relationRow7305 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6318, _⟩

  unfold Seg48.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7298, r7299, r7300, r7301, r7302, r7303, r7304, r7305, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6318, r7298, r7299, r7300, r7301, r7302, r7303, r7304, r7305⟩

theorem seg48Blind_rung169 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39075 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 169)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      169 (Bool.toZMod bit) (seg48BlindAccState rho 169)
      (seg48BlindAccState rho 170) := by
  obtain ⟨r6318, r7298, r7299, r7300, r7301, r7302, r7303, r7304, r7305⟩ := seg48Blind_rows169 rho h
  unfold Seg48.relationRow6318 at r6318

  unfold Seg48.relationRow7298 at r7298

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7298

  unfold Seg48.relationRow7299 at r7299

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7299

  unfold Seg48.relationRow7300 at r7300

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7300

  unfold Seg48.relationRow7301 at r7301

  unfold Seg48.relationRow7302 at r7302

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7302

  unfold Seg48.relationRow7303 at r7303

  unfold Seg48.relationRow7304 at r7304

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7304

  unfold Seg48.relationRow7305 at r7305

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7305

  have hnextx : seg48BlindDeltaX169 rho =
      seg48BlindDeltaX168 rho + rho 40060 := by
    unfold seg48BlindDeltaX169 seg48BlindDeltaX168
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 19]

    ring

  have hnexty : seg48BlindDeltaY169 rho =
      seg48BlindDeltaY168 rho + rho 40061 := by
    unfold seg48BlindDeltaY169 seg48BlindDeltaY168
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 19]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 169
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX168 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY168 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX169 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY169 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY168 rho) (rho 40061)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 169)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (3688844968080895629712784332341446792801256746385234990750523093971521074510 : Seg48.F) (3549298525577506742776259135186706200036512115892118974843337934003521571629 : Seg48.F)
    (7238143493658402372489043467528152992837768862277353965593861027975042646139 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (6408885745045801555320000085256881994286845799584425351912643065446343548180 : Seg48.F) (2836310663492769406639713848302725402464337115246140804629532361090041645307 : Seg48.F)
    (647523183386879337064708574349774122058580462968921747535777808928057165661 : Seg48.F) (276693291956730215244631115558101509258007714057884227406431063719210629035 : Seg48.F)
    (4895163223850863681472565803594840331339387219261944853091895521913887667412 : Seg48.F) (4755616781347474794536040606440099738574642588768828837184710361945888164531 : Seg48.F)
    (8167768457471640209004193823223445022117891621096179600528802392198198610006 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX168 rho) (seg48BlindDeltaY168 rho) (rho 39075)
    (rho 40054) (rho 40055) (rho 40056) (rho 40058)
    (rho 40057) (rho 40059) (rho 40060) (rho 40061) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 169)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L169]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX168 seg48BlindDeltaY168;
        first | linear_combination r7298 | linear_combination -r7298)
    (by unfold seg48BlindDeltaX168 seg48BlindDeltaY168;
        first | linear_combination r7299 | linear_combination -r7299)
    (by unfold seg48BlindDeltaX168 seg48BlindDeltaY168;
        first | linear_combination r7300 | linear_combination -r7300)
    (by first | linear_combination r7301 | linear_combination -r7301)
    (by unfold seg48BlindDeltaX168 seg48BlindDeltaY168;
        first | linear_combination r7302 | linear_combination -r7302)
    (by first | linear_combination r7303 | linear_combination -r7303)
    (by unfold seg48BlindDeltaX168; first | linear_combination r7304 | linear_combination -r7304)
    (by unfold seg48BlindDeltaY168; first | linear_combination r7305 | linear_combination -r7305)
    (by linear_combination r6318)

theorem seg48Blind_rows170 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6319 rho ∧ Seg48.relationRow7306 rho ∧ Seg48.relationRow7307 rho ∧ Seg48.relationRow7308 rho ∧ Seg48.relationRow7309 rho ∧ Seg48.relationRow7310 rho ∧ Seg48.relationRow7311 rho ∧ Seg48.relationRow7312 rho ∧ Seg48.relationRow7313 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6319⟩

  unfold Seg48.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7306, r7307, r7308, r7309, r7310, r7311, r7312, r7313, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6319, r7306, r7307, r7308, r7309, r7310, r7311, r7312, r7313⟩

theorem seg48Blind_rung170 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39076 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 170)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      170 (Bool.toZMod bit) (seg48BlindAccState rho 170)
      (seg48BlindAccState rho 171) := by
  obtain ⟨r6319, r7306, r7307, r7308, r7309, r7310, r7311, r7312, r7313⟩ := seg48Blind_rows170 rho h
  unfold Seg48.relationRow6319 at r6319

  unfold Seg48.relationRow7306 at r7306

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7306

  unfold Seg48.relationRow7307 at r7307

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7307

  unfold Seg48.relationRow7308 at r7308

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7308

  unfold Seg48.relationRow7309 at r7309

  unfold Seg48.relationRow7310 at r7310

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7310

  unfold Seg48.relationRow7311 at r7311

  unfold Seg48.relationRow7312 at r7312

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7312

  unfold Seg48.relationRow7313 at r7313

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7313

  have hnextx : seg48BlindDeltaX170 rho =
      seg48BlindDeltaX169 rho + rho 40068 := by
    unfold seg48BlindDeltaX170 seg48BlindDeltaX169
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 20]

    ring

  have hnexty : seg48BlindDeltaY170 rho =
      seg48BlindDeltaY169 rho + rho 40069 := by
    unfold seg48BlindDeltaY170 seg48BlindDeltaY169
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 20]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 170
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX169 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY169 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX170 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY170 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY169 rho) (rho 40069)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 170)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (14615198357844142493633676529185613307937073000081044855882952481351169849 : Seg48.F) (4453736726882436070381815817683846788913384475401420570593429621138334460266 : Seg48.F)
    (4468351925240280212875449494213032402221321548401501615449312573619685630115 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (2711085072445282795087457743897524825526859287267865861923990182475486671273 : Seg48.F) (2815337370501420512367345064868368945741396836244984675210978293144578630164 : Seg48.F)
    (8337230938626305099367911797941917241220481641091522792192706609686119681774 : Seg48.F) (1542900857365177300348869732032261084706390318045086452889382692757262587607 : Seg48.F)
    (3990725022545934353867009121097699742462514859752643257341803834779074778775 : Seg48.F) (8429846551070526281755191262252360918067962262153982783079350503436058069192 : Seg48.F)
    (6901560892063193123899955206749285446669509017108977375045850763160146651434 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX169 rho) (seg48BlindDeltaY169 rho) (rho 39076)
    (rho 40062) (rho 40063) (rho 40064) (rho 40066)
    (rho 40065) (rho 40067) (rho 40068) (rho 40069) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 170)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L170]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX169 seg48BlindDeltaY169;
        first | linear_combination r7306 | linear_combination -r7306)
    (by unfold seg48BlindDeltaX169 seg48BlindDeltaY169;
        first | linear_combination r7307 | linear_combination -r7307)
    (by unfold seg48BlindDeltaX169 seg48BlindDeltaY169;
        first | linear_combination r7308 | linear_combination -r7308)
    (by first | linear_combination r7309 | linear_combination -r7309)
    (by unfold seg48BlindDeltaX169 seg48BlindDeltaY169;
        first | linear_combination r7310 | linear_combination -r7310)
    (by first | linear_combination r7311 | linear_combination -r7311)
    (by unfold seg48BlindDeltaX169; first | linear_combination r7312 | linear_combination -r7312)
    (by unfold seg48BlindDeltaY169; first | linear_combination r7313 | linear_combination -r7313)
    (by linear_combination r6319)

theorem seg48Blind_hstep_c16 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 161 ≤ i → i < 171 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung161 rho h bits[161]! (hbitAt 161 (by omega)) hacc
  · exact seg48Blind_rung162 rho h bits[162]! (hbitAt 162 (by omega)) hacc
  · exact seg48Blind_rung163 rho h bits[163]! (hbitAt 163 (by omega)) hacc
  · exact seg48Blind_rung164 rho h bits[164]! (hbitAt 164 (by omega)) hacc
  · exact seg48Blind_rung165 rho h bits[165]! (hbitAt 165 (by omega)) hacc
  · exact seg48Blind_rung166 rho h bits[166]! (hbitAt 166 (by omega)) hacc
  · exact seg48Blind_rung167 rho h bits[167]! (hbitAt 167 (by omega)) hacc
  · exact seg48Blind_rung168 rho h bits[168]! (hbitAt 168 (by omega)) hacc
  · exact seg48Blind_rung169 rho h bits[169]! (hbitAt 169 (by omega)) hacc
  · exact seg48Blind_rung170 rho h bits[170]! (hbitAt 170 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

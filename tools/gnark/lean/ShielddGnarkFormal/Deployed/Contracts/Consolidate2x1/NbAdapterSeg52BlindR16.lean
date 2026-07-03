import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows161 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6950 rho ∧ Seg52.relationRow7874 rho ∧ Seg52.relationRow7875 rho ∧ Seg52.relationRow7876 rho ∧ Seg52.relationRow7877 rho ∧ Seg52.relationRow7878 rho ∧ Seg52.relationRow7879 rho ∧ Seg52.relationRow7880 rho ∧ Seg52.relationRow7881 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, p98, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6950, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7874, r7875, r7876, r7877, r7878, r7879, r7880, r7881, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6950, r7874, r7875, r7876, r7877, r7878, r7879, r7880, r7881⟩

theorem seg52Blind_rung161 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51339 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 161)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      161 (Bool.toZMod bit) (seg52BlindAccState rho 161)
      (seg52BlindAccState rho 162) := by
  obtain ⟨r6950, r7874, r7875, r7876, r7877, r7878, r7879, r7880, r7881⟩ := seg52Blind_rows161 rho h
  unfold Seg52.relationRow6950 at r6950

  unfold Seg52.relationRow7874 at r7874

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7874

  unfold Seg52.relationRow7875 at r7875

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7875

  unfold Seg52.relationRow7876 at r7876

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7876

  unfold Seg52.relationRow7877 at r7877

  unfold Seg52.relationRow7878 at r7878

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7878

  unfold Seg52.relationRow7879 at r7879

  unfold Seg52.relationRow7880 at r7880

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7880

  unfold Seg52.relationRow7881 at r7881

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7881

  have hnextx : seg52BlindDeltaX161 rho =
      seg52BlindDeltaX160 rho + rho 52268 := by
    unfold seg52BlindDeltaX161 seg52BlindDeltaX160
    ring

  have hnexty : seg52BlindDeltaY161 rho =
      seg52BlindDeltaY160 rho + rho 52269 := by
    unfold seg52BlindDeltaY161 seg52BlindDeltaY160
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 161
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX160 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY160 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX161 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY161 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY160 rho) (rho 52269)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 161)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7542973043425304557787298526624639482775147192320361978340217817707240027295 : Seg52.F) (4902900135996093054103909226317364356900159991348997775570192260208233100765 : Seg52.F)
    (4001411429993027187642382814160457308299407848515295925975176621998063889019 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (75402346835392315470830081925106162055900005094325799151336409936392133151 : Seg52.F) (6975075164126143068117625078799676184649982755043331804572340782965154092658 : Seg52.F)
    (1730782992719386564460290722013976810866631175052823702550694687768251364709 : Seg52.F) (7561196042279889205184195926396076842016382944848012849538292865977706319192 : Seg52.F)
    (3541561613432277370144915712464182174475739343805066052365041195709176138276 : Seg52.F) (901488706003065866461526412156907048600752142833701849595015638210169211746 : Seg52.F)
    (883265707148481219064629012385469689359516390306050978396940589939702919849 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX160 rho) (seg52BlindDeltaY160 rho) (rho 51339)
    (rho 52262) (rho 52263) (rho 52264) (rho 52266)
    (rho 52265) (rho 52267) (rho 52268) (rho 52269) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 161)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L161]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX160 seg52BlindDeltaY160;
        first | linear_combination r7874 | linear_combination -r7874)
    (by unfold seg52BlindDeltaX160 seg52BlindDeltaY160;
        first | linear_combination r7875 | linear_combination -r7875)
    (by unfold seg52BlindDeltaX160 seg52BlindDeltaY160;
        first | linear_combination r7876 | linear_combination -r7876)
    (by first | linear_combination r7877 | linear_combination -r7877)
    (by unfold seg52BlindDeltaX160 seg52BlindDeltaY160;
        first | linear_combination r7878 | linear_combination -r7878)
    (by first | linear_combination r7879 | linear_combination -r7879)
    (by unfold seg52BlindDeltaX160; first | linear_combination r7880 | linear_combination -r7880)
    (by unfold seg52BlindDeltaY160; first | linear_combination r7881 | linear_combination -r7881)
    (by linear_combination r6950)

theorem seg52Blind_rows162 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6951 rho ∧ Seg52.relationRow7882 rho ∧ Seg52.relationRow7883 rho ∧ Seg52.relationRow7884 rho ∧ Seg52.relationRow7885 rho ∧ Seg52.relationRow7886 rho ∧ Seg52.relationRow7887 rho ∧ Seg52.relationRow7888 rho ∧ Seg52.relationRow7889 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, p98, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6951, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7882, r7883, r7884, r7885, r7886, r7887, r7888, r7889, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6951, r7882, r7883, r7884, r7885, r7886, r7887, r7888, r7889⟩

theorem seg52Blind_rung162 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51340 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 162)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      162 (Bool.toZMod bit) (seg52BlindAccState rho 162)
      (seg52BlindAccState rho 163) := by
  obtain ⟨r6951, r7882, r7883, r7884, r7885, r7886, r7887, r7888, r7889⟩ := seg52Blind_rows162 rho h
  unfold Seg52.relationRow6951 at r6951

  unfold Seg52.relationRow7882 at r7882

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7882

  unfold Seg52.relationRow7883 at r7883

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7883

  unfold Seg52.relationRow7884 at r7884

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7884

  unfold Seg52.relationRow7885 at r7885

  unfold Seg52.relationRow7886 at r7886

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7886

  unfold Seg52.relationRow7887 at r7887

  unfold Seg52.relationRow7888 at r7888

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7888

  unfold Seg52.relationRow7889 at r7889

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7889

  have hnextx : seg52BlindDeltaX162 rho =
      seg52BlindDeltaX161 rho + rho 52276 := by
    unfold seg52BlindDeltaX162 seg52BlindDeltaX161
    ring

  have hnexty : seg52BlindDeltaY162 rho =
      seg52BlindDeltaY161 rho + rho 52277 := by
    unfold seg52BlindDeltaY162 seg52BlindDeltaY161
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 162
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX161 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY161 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX162 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY162 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY161 rho) (rho 52277)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 162)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3428003032113893286564484758928940695972477448115426499905845444589573610014 : Seg52.F) (7282192221865417647282033182081483211051136679636896117947487920487788994494 : Seg52.F)
    (2265733504550940509597693002228877375647714792598258789918099909159953365467 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (1679844994521757270833277542232066351266141106726900548077855128759484664569 : Seg52.F) (336437200278763058650757442567809210818762905857251500100463232154840797693 : Seg52.F)
    (717161087129884067696546025406226315970981733471385110908493653621228933967 : Seg52.F) (4348307147940123042922588512304537058595315397579622834836983796775439275679 : Seg52.F)
    (1162269527562952776966791756700063320324762655517167709987745535429620244547 : Seg52.F) (5016458717314477137684340179852605835403421887038637328029388011327835629027 : Seg52.F)
    (4096154601488247381326236426477009472780583937574440993098249659141969963362 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX161 rho) (seg52BlindDeltaY161 rho) (rho 51340)
    (rho 52270) (rho 52271) (rho 52272) (rho 52274)
    (rho 52273) (rho 52275) (rho 52276) (rho 52277) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 162)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L162]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX161 seg52BlindDeltaY161;
        first | linear_combination r7882 | linear_combination -r7882)
    (by unfold seg52BlindDeltaX161 seg52BlindDeltaY161;
        first | linear_combination r7883 | linear_combination -r7883)
    (by unfold seg52BlindDeltaX161 seg52BlindDeltaY161;
        first | linear_combination r7884 | linear_combination -r7884)
    (by first | linear_combination r7885 | linear_combination -r7885)
    (by unfold seg52BlindDeltaX161 seg52BlindDeltaY161;
        first | linear_combination r7886 | linear_combination -r7886)
    (by first | linear_combination r7887 | linear_combination -r7887)
    (by unfold seg52BlindDeltaX161; first | linear_combination r7888 | linear_combination -r7888)
    (by unfold seg52BlindDeltaY161; first | linear_combination r7889 | linear_combination -r7889)
    (by linear_combination r6951)

theorem seg52Blind_rows163 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6952 rho ∧ Seg52.relationRow7890 rho ∧ Seg52.relationRow7891 rho ∧ Seg52.relationRow7892 rho ∧ Seg52.relationRow7893 rho ∧ Seg52.relationRow7894 rho ∧ Seg52.relationRow7895 rho ∧ Seg52.relationRow7896 rho ∧ Seg52.relationRow7897 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, p98, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6952, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7890, r7891, r7892, r7893, r7894, r7895, r7896, r7897, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6952, r7890, r7891, r7892, r7893, r7894, r7895, r7896, r7897⟩

theorem seg52Blind_rung163 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51341 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 163)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      163 (Bool.toZMod bit) (seg52BlindAccState rho 163)
      (seg52BlindAccState rho 164) := by
  obtain ⟨r6952, r7890, r7891, r7892, r7893, r7894, r7895, r7896, r7897⟩ := seg52Blind_rows163 rho h
  unfold Seg52.relationRow6952 at r6952

  unfold Seg52.relationRow7890 at r7890

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7890

  unfold Seg52.relationRow7891 at r7891

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7891

  unfold Seg52.relationRow7892 at r7892

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7892

  unfold Seg52.relationRow7893 at r7893

  unfold Seg52.relationRow7894 at r7894

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7894

  unfold Seg52.relationRow7895 at r7895

  unfold Seg52.relationRow7896 at r7896

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7896

  unfold Seg52.relationRow7897 at r7897

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7897

  have hnextx : seg52BlindDeltaX163 rho =
      seg52BlindDeltaX162 rho + rho 52284 := by
    unfold seg52BlindDeltaX163 seg52BlindDeltaX162
    ring

  have hnexty : seg52BlindDeltaY163 rho =
      seg52BlindDeltaY162 rho + rho 52285 := by
    unfold seg52BlindDeltaY163 seg52BlindDeltaY162
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 163
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX162 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY162 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX163 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY163 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY162 rho) (rho 52285)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 163)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3319592170070649580163792492819249188458765963613933444607504510499280931216 : Seg52.F) (32739216755167053865224790521545409370186247927512415270018966439468367503 : Seg52.F)
    (3352331386825816634029017283340794597828952211541445859877523476938749298719 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6016094573647595060107017838991669862197762302320304423439729598542436597112 : Seg52.F) (808727820100326903494963827718719247215656080730809825600195832257007060686 : Seg52.F)
    (8359187689176916007375617881098332220162573106008601502999536521788487600689 : Seg52.F) (8127449325263491837130944757599110226499221901527616237228922757800110255512 : Seg52.F)
    (8411722532673203370383600148260001122005713087226551412665214489477940871538 : Seg52.F) (5124869579357720844085032445962297342917133371540130383327728945418128307825 : Seg52.F)
    (317012424164878587117880181182436304876677433626447590706310698117298983529 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX162 rho) (seg52BlindDeltaY162 rho) (rho 51341)
    (rho 52278) (rho 52279) (rho 52280) (rho 52282)
    (rho 52281) (rho 52283) (rho 52284) (rho 52285) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 163)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L163]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX162 seg52BlindDeltaY162;
        first | linear_combination r7890 | linear_combination -r7890)
    (by unfold seg52BlindDeltaX162 seg52BlindDeltaY162;
        first | linear_combination r7891 | linear_combination -r7891)
    (by unfold seg52BlindDeltaX162 seg52BlindDeltaY162;
        first | linear_combination r7892 | linear_combination -r7892)
    (by first | linear_combination r7893 | linear_combination -r7893)
    (by unfold seg52BlindDeltaX162 seg52BlindDeltaY162;
        first | linear_combination r7894 | linear_combination -r7894)
    (by first | linear_combination r7895 | linear_combination -r7895)
    (by unfold seg52BlindDeltaX162; first | linear_combination r7896 | linear_combination -r7896)
    (by unfold seg52BlindDeltaY162; first | linear_combination r7897 | linear_combination -r7897)
    (by linear_combination r6952)

theorem seg52Blind_rows164 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6953 rho ∧ Seg52.relationRow7898 rho ∧ Seg52.relationRow7899 rho ∧ Seg52.relationRow7900 rho ∧ Seg52.relationRow7901 rho ∧ Seg52.relationRow7902 rho ∧ Seg52.relationRow7903 rho ∧ Seg52.relationRow7904 rho ∧ Seg52.relationRow7905 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, p98, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6953, _, _, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7898, r7899, r7900, r7901, r7902, r7903, r7904, r7905, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6953, r7898, r7899, r7900, r7901, r7902, r7903, r7904, r7905⟩

theorem seg52Blind_rung164 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51342 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 164)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      164 (Bool.toZMod bit) (seg52BlindAccState rho 164)
      (seg52BlindAccState rho 165) := by
  obtain ⟨r6953, r7898, r7899, r7900, r7901, r7902, r7903, r7904, r7905⟩ := seg52Blind_rows164 rho h
  unfold Seg52.relationRow6953 at r6953

  unfold Seg52.relationRow7898 at r7898

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7898

  unfold Seg52.relationRow7899 at r7899

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7899

  unfold Seg52.relationRow7900 at r7900

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7900

  unfold Seg52.relationRow7901 at r7901

  unfold Seg52.relationRow7902 at r7902

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7902

  unfold Seg52.relationRow7903 at r7903

  unfold Seg52.relationRow7904 at r7904

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7904

  unfold Seg52.relationRow7905 at r7905

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7905

  have hnextx : seg52BlindDeltaX164 rho =
      seg52BlindDeltaX163 rho + rho 52292 := by
    unfold seg52BlindDeltaX164 seg52BlindDeltaX163
    ring

  have hnexty : seg52BlindDeltaY164 rho =
      seg52BlindDeltaY163 rho + rho 52293 := by
    unfold seg52BlindDeltaY164 seg52BlindDeltaY163
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 164
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX163 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY163 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX164 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY164 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY163 rho) (rho 52293)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 164)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (4435852466459101811998773958235812273366837241570394295879450459491557638160 : Seg52.F) (4268577363973246176867491830814180686504034856137913396841598280640100583475 : Seg52.F)
    (259968081003977564617440850268446428494972762554243864785815284214248982594 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (679125186055062488737139370218300517691015612380906601366918627859954662368 : Seg52.F) (6528007956281233758184597455537327114041835348422589894824599455091608331695 : Seg52.F)
    (7476412575129757290800612800718728139397432189620919113217493696515319162617 : Seg52.F) (551934519145904037728648682597200506946112521576116870341398395519540120574 : Seg52.F)
    (4175884385455124247381333107967365844871864479016150431093635175277308655566 : Seg52.F) (4008609282969268612250050980545734258009062093583669532055782996425851600881 : Seg52.F)
    (7892527230282466386520176256184346024429786813577946957593835060397869118467 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX163 rho) (seg52BlindDeltaY163 rho) (rho 51342)
    (rho 52286) (rho 52287) (rho 52288) (rho 52290)
    (rho 52289) (rho 52291) (rho 52292) (rho 52293) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 164)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L164]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX163 seg52BlindDeltaY163;
        first | linear_combination r7898 | linear_combination -r7898)
    (by unfold seg52BlindDeltaX163 seg52BlindDeltaY163;
        first | linear_combination r7899 | linear_combination -r7899)
    (by unfold seg52BlindDeltaX163 seg52BlindDeltaY163;
        first | linear_combination r7900 | linear_combination -r7900)
    (by first | linear_combination r7901 | linear_combination -r7901)
    (by unfold seg52BlindDeltaX163 seg52BlindDeltaY163;
        first | linear_combination r7902 | linear_combination -r7902)
    (by first | linear_combination r7903 | linear_combination -r7903)
    (by unfold seg52BlindDeltaX163; first | linear_combination r7904 | linear_combination -r7904)
    (by unfold seg52BlindDeltaY163; first | linear_combination r7905 | linear_combination -r7905)
    (by linear_combination r6953)

theorem seg52Blind_rows165 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6954 rho ∧ Seg52.relationRow7906 rho ∧ Seg52.relationRow7907 rho ∧ Seg52.relationRow7908 rho ∧ Seg52.relationRow7909 rho ∧ Seg52.relationRow7910 rho ∧ Seg52.relationRow7911 rho ∧ Seg52.relationRow7912 rho ∧ Seg52.relationRow7913 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, p98, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6954, _, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7906, r7907, r7908, r7909, r7910, r7911, r7912, r7913, _, _, _, _, _, _⟩

  exact ⟨r6954, r7906, r7907, r7908, r7909, r7910, r7911, r7912, r7913⟩

theorem seg52Blind_rung165 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51343 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 165)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      165 (Bool.toZMod bit) (seg52BlindAccState rho 165)
      (seg52BlindAccState rho 166) := by
  obtain ⟨r6954, r7906, r7907, r7908, r7909, r7910, r7911, r7912, r7913⟩ := seg52Blind_rows165 rho h
  unfold Seg52.relationRow6954 at r6954

  unfold Seg52.relationRow7906 at r7906

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7906

  unfold Seg52.relationRow7907 at r7907

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7907

  unfold Seg52.relationRow7908 at r7908

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7908

  unfold Seg52.relationRow7909 at r7909

  unfold Seg52.relationRow7910 at r7910

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7910

  unfold Seg52.relationRow7911 at r7911

  unfold Seg52.relationRow7912 at r7912

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7912

  unfold Seg52.relationRow7913 at r7913

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7913

  have hnextx : seg52BlindDeltaX165 rho =
      seg52BlindDeltaX164 rho + rho 52300 := by
    unfold seg52BlindDeltaX165 seg52BlindDeltaX164
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 52180 8]

    ring

  have hnexty : seg52BlindDeltaY165 rho =
      seg52BlindDeltaY164 rho + rho 52301 := by
    unfold seg52BlindDeltaY165 seg52BlindDeltaY164
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 52181 8]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 165
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX164 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY164 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX165 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY165 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY164 rho) (rho 52301)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 165)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (285447995986048848795735635779787303483030189576572810093747090807388041447 : Seg52.F) (2219756219546393792135700802976427321358734454684517582262921574902647147987 : Seg52.F)
    (2505204215532442640931436438756214624841764644261090392356668665710035189434 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (980910203529529188385124399238991912272715489600936635710713782474098270173 : Seg52.F) (8079974796317486692084740348835642267934804620961579470048285488791619929672 : Seg52.F)
    (3785944822226201681924408828863425267430218166404983920577593671037419348674 : Seg52.F) (6508401378661197348752012736769178467462222422520795136748077099735344144939 : Seg52.F)
    (6224705529881976632113124135805119210017164880469546245672311881014762091054 : Seg52.F) (8159013753442321575453089303001759227892869145577491017841486365110021197594 : Seg52.F)
    (1936060370767173075496812202012368063913676912633268691187156356182065094102 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX164 rho) (seg52BlindDeltaY164 rho) (rho 51343)
    (rho 52294) (rho 52295) (rho 52296) (rho 52298)
    (rho 52297) (rho 52299) (rho 52300) (rho 52301) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 165)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L165]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX164 seg52BlindDeltaY164;
        first | linear_combination r7906 | linear_combination -r7906)
    (by unfold seg52BlindDeltaX164 seg52BlindDeltaY164;
        first | linear_combination r7907 | linear_combination -r7907)
    (by unfold seg52BlindDeltaX164 seg52BlindDeltaY164;
        first | linear_combination r7908 | linear_combination -r7908)
    (by first | linear_combination r7909 | linear_combination -r7909)
    (by unfold seg52BlindDeltaX164 seg52BlindDeltaY164;
        first | linear_combination r7910 | linear_combination -r7910)
    (by first | linear_combination r7911 | linear_combination -r7911)
    (by unfold seg52BlindDeltaX164; first | linear_combination r7912 | linear_combination -r7912)
    (by unfold seg52BlindDeltaY164; first | linear_combination r7913 | linear_combination -r7913)
    (by linear_combination r6954)

theorem seg52Blind_rows166 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6955 rho ∧ Seg52.relationRow7914 rho ∧ Seg52.relationRow7915 rho ∧ Seg52.relationRow7916 rho ∧ Seg52.relationRow7917 rho ∧ Seg52.relationRow7918 rho ∧ Seg52.relationRow7919 rho ∧ Seg52.relationRow7920 rho ∧ Seg52.relationRow7921 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, p98, p99,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6955, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7914, r7915, r7916, r7917, r7918, r7919⟩

  unfold Seg52.relationPart99 at p99

  rcases p99 with ⟨r7920, r7921, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6955, r7914, r7915, r7916, r7917, r7918, r7919, r7920, r7921⟩

theorem seg52Blind_rung166 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51344 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 166)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      166 (Bool.toZMod bit) (seg52BlindAccState rho 166)
      (seg52BlindAccState rho 167) := by
  obtain ⟨r6955, r7914, r7915, r7916, r7917, r7918, r7919, r7920, r7921⟩ := seg52Blind_rows166 rho h
  unfold Seg52.relationRow6955 at r6955

  unfold Seg52.relationRow7914 at r7914

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7914

  unfold Seg52.relationRow7915 at r7915

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7915

  unfold Seg52.relationRow7916 at r7916

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7916

  unfold Seg52.relationRow7917 at r7917

  unfold Seg52.relationRow7918 at r7918

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7918

  unfold Seg52.relationRow7919 at r7919

  unfold Seg52.relationRow7920 at r7920

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7920

  unfold Seg52.relationRow7921 at r7921

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7921

  have hnextx : seg52BlindDeltaX166 rho =
      seg52BlindDeltaX165 rho + rho 52308 := by
    unfold seg52BlindDeltaX166 seg52BlindDeltaX165
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 16]

    ring

  have hnexty : seg52BlindDeltaY166 rho =
      seg52BlindDeltaY165 rho + rho 52309 := by
    unfold seg52BlindDeltaY166 seg52BlindDeltaY165
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 16]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 166
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX165 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY165 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX166 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY166 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY165 rho) (rho 52309)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 166)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (2156277848635068232427762528343749770532075962258470576409646311435229701269 : Seg52.F) (6232016371209813488808722651953407519476571859448596956528805996090774584558 : Seg52.F)
    (8388294219844881721236485180297157290008647821707067532938452307526004285827 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4216217949008874040520343007176897901843969335803133205887540950324826127329 : Seg52.F) (6708904022991781730463731876876371419940587451459017512750467455879957831906 : Seg52.F)
    (5208133706710327476396722005768514910243517737860840078158265782782695728883 : Seg52.F) (6501761721360740888423673628937647935372814685988161000375686611677009871971 : Seg52.F)
    (2212445378218556935440102286828139011899327475705466871406427459826634654483 : Seg52.F) (6288183900793302191821062410437796760843823372895593251525587144482179537772 : Seg52.F)
    (1942700028067629535825151309843898596003084649165902827559546844240399367070 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX165 rho) (seg52BlindDeltaY165 rho) (rho 51344)
    (rho 52302) (rho 52303) (rho 52304) (rho 52306)
    (rho 52305) (rho 52307) (rho 52308) (rho 52309) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 166)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L166]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX165 seg52BlindDeltaY165;
        first | linear_combination r7914 | linear_combination -r7914)
    (by unfold seg52BlindDeltaX165 seg52BlindDeltaY165;
        first | linear_combination r7915 | linear_combination -r7915)
    (by unfold seg52BlindDeltaX165 seg52BlindDeltaY165;
        first | linear_combination r7916 | linear_combination -r7916)
    (by first | linear_combination r7917 | linear_combination -r7917)
    (by unfold seg52BlindDeltaX165 seg52BlindDeltaY165;
        first | linear_combination r7918 | linear_combination -r7918)
    (by first | linear_combination r7919 | linear_combination -r7919)
    (by unfold seg52BlindDeltaX165; first | linear_combination r7920 | linear_combination -r7920)
    (by unfold seg52BlindDeltaY165; first | linear_combination r7921 | linear_combination -r7921)
    (by linear_combination r6955)

theorem seg52Blind_rows167 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6956 rho ∧ Seg52.relationRow7922 rho ∧ Seg52.relationRow7923 rho ∧ Seg52.relationRow7924 rho ∧ Seg52.relationRow7925 rho ∧ Seg52.relationRow7926 rho ∧ Seg52.relationRow7927 rho ∧ Seg52.relationRow7928 rho ∧ Seg52.relationRow7929 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, _, p99,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6956, _, _, _⟩

  unfold Seg52.relationPart99 at p99

  rcases p99 with ⟨_, _, r7922, r7923, r7924, r7925, r7926, r7927, r7928, r7929, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6956, r7922, r7923, r7924, r7925, r7926, r7927, r7928, r7929⟩

theorem seg52Blind_rung167 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51345 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 167)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      167 (Bool.toZMod bit) (seg52BlindAccState rho 167)
      (seg52BlindAccState rho 168) := by
  obtain ⟨r6956, r7922, r7923, r7924, r7925, r7926, r7927, r7928, r7929⟩ := seg52Blind_rows167 rho h
  unfold Seg52.relationRow6956 at r6956

  unfold Seg52.relationRow7922 at r7922

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7922

  unfold Seg52.relationRow7923 at r7923

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7923

  unfold Seg52.relationRow7924 at r7924

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7924

  unfold Seg52.relationRow7925 at r7925

  unfold Seg52.relationRow7926 at r7926

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7926

  unfold Seg52.relationRow7927 at r7927

  unfold Seg52.relationRow7928 at r7928

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7928

  unfold Seg52.relationRow7929 at r7929

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7929

  have hnextx : seg52BlindDeltaX167 rho =
      seg52BlindDeltaX166 rho + rho 52316 := by
    unfold seg52BlindDeltaX167 seg52BlindDeltaX166
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 17]

    ring

  have hnexty : seg52BlindDeltaY167 rho =
      seg52BlindDeltaY166 rho + rho 52317 := by
    unfold seg52BlindDeltaY167 seg52BlindDeltaY166
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 17]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 167
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX166 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY166 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX167 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY167 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY166 rho) (rho 52317)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 167)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1422471966303374964272597731160731388119507421775473697730591412640640313527 : Seg52.F) (8016018521363910988060116889796183279665700505835162102706223981049640769083 : Seg52.F)
    (994028738238915528083889682175368136409308592456571972501581937772871843569 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6120117429237088608232024587575782415377834241323717585188328635752475069196 : Seg52.F) (6720019885177399554579686267055452133421878157488823619755914786864870808834 : Seg52.F)
    (5073870204141983728015716995378373060831107315064608854149081957566256688877 : Seg52.F) (7480012913309006556353541932028219293574137869976884165517521774473187114691 : Seg52.F)
    (428443228064459436188708048985363251710198829318901725229009474867768469958 : Seg52.F) (7021989783124995459976227207620815143256391913378590130204642043276768925514 : Seg52.F)
    (964448836119363867895283006753327237801761465177179662417711681444222124350 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX166 rho) (seg52BlindDeltaY166 rho) (rho 51345)
    (rho 52310) (rho 52311) (rho 52312) (rho 52314)
    (rho 52313) (rho 52315) (rho 52316) (rho 52317) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 167)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L167]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX166 seg52BlindDeltaY166;
        first | linear_combination r7922 | linear_combination -r7922)
    (by unfold seg52BlindDeltaX166 seg52BlindDeltaY166;
        first | linear_combination r7923 | linear_combination -r7923)
    (by unfold seg52BlindDeltaX166 seg52BlindDeltaY166;
        first | linear_combination r7924 | linear_combination -r7924)
    (by first | linear_combination r7925 | linear_combination -r7925)
    (by unfold seg52BlindDeltaX166 seg52BlindDeltaY166;
        first | linear_combination r7926 | linear_combination -r7926)
    (by first | linear_combination r7927 | linear_combination -r7927)
    (by unfold seg52BlindDeltaX166; first | linear_combination r7928 | linear_combination -r7928)
    (by unfold seg52BlindDeltaY166; first | linear_combination r7929 | linear_combination -r7929)
    (by linear_combination r6956)

theorem seg52Blind_rows168 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6957 rho ∧ Seg52.relationRow7930 rho ∧ Seg52.relationRow7931 rho ∧ Seg52.relationRow7932 rho ∧ Seg52.relationRow7933 rho ∧ Seg52.relationRow7934 rho ∧ Seg52.relationRow7935 rho ∧ Seg52.relationRow7936 rho ∧ Seg52.relationRow7937 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, _, p99,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6957, _, _⟩

  unfold Seg52.relationPart99 at p99

  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, r7930, r7931, r7932, r7933, r7934, r7935, r7936, r7937, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6957, r7930, r7931, r7932, r7933, r7934, r7935, r7936, r7937⟩

theorem seg52Blind_rung168 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51346 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 168)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      168 (Bool.toZMod bit) (seg52BlindAccState rho 168)
      (seg52BlindAccState rho 169) := by
  obtain ⟨r6957, r7930, r7931, r7932, r7933, r7934, r7935, r7936, r7937⟩ := seg52Blind_rows168 rho h
  unfold Seg52.relationRow6957 at r6957

  unfold Seg52.relationRow7930 at r7930

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7930

  unfold Seg52.relationRow7931 at r7931

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7931

  unfold Seg52.relationRow7932 at r7932

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7932

  unfold Seg52.relationRow7933 at r7933

  unfold Seg52.relationRow7934 at r7934

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7934

  unfold Seg52.relationRow7935 at r7935

  unfold Seg52.relationRow7936 at r7936

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7936

  unfold Seg52.relationRow7937 at r7937

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7937

  have hnextx : seg52BlindDeltaX168 rho =
      seg52BlindDeltaX167 rho + rho 52324 := by
    unfold seg52BlindDeltaX168 seg52BlindDeltaX167
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 18]

    ring

  have hnexty : seg52BlindDeltaY168 rho =
      seg52BlindDeltaY167 rho + rho 52325 := by
    unfold seg52BlindDeltaY168 seg52BlindDeltaY167
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 18]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 168
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX167 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY167 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX168 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY168 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY167 rho) (rho 52325)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 168)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (2836503453781894255067546199096983725022406545406429752779674453186544369879 : Seg52.F) (241965697581147870203353095733835730867230080792906756836964844889695693296 : Seg52.F)
    (3078469151363042125270899294830819455889636626199336509616639298076240063175 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4754661941807859398930757476704741251574731252121823202040719202873494889690 : Seg52.F) (8163040791851246590117760473641216585125047082690728565069379386233620581167 : Seg52.F)
    (816642964898674276423258287913745654035415865305908106814261201544169097258 : Seg52.F) (6569182143768587950461639836919797435440695567224014701527218698468480393282 : Seg52.F)
    (8202496051847222554045471843047710800508669254361157071098268611027713545745 : Seg52.F) (5607958295646476169181278739684562806353492789747634075155559002730864869162 : Seg52.F)
    (1875279605659782473787185101861749095935203767930049126408014757448928845759 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX167 rho) (seg52BlindDeltaY167 rho) (rho 51346)
    (rho 52318) (rho 52319) (rho 52320) (rho 52322)
    (rho 52321) (rho 52323) (rho 52324) (rho 52325) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 168)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L168]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX167 seg52BlindDeltaY167;
        first | linear_combination r7930 | linear_combination -r7930)
    (by unfold seg52BlindDeltaX167 seg52BlindDeltaY167;
        first | linear_combination r7931 | linear_combination -r7931)
    (by unfold seg52BlindDeltaX167 seg52BlindDeltaY167;
        first | linear_combination r7932 | linear_combination -r7932)
    (by first | linear_combination r7933 | linear_combination -r7933)
    (by unfold seg52BlindDeltaX167 seg52BlindDeltaY167;
        first | linear_combination r7934 | linear_combination -r7934)
    (by first | linear_combination r7935 | linear_combination -r7935)
    (by unfold seg52BlindDeltaX167; first | linear_combination r7936 | linear_combination -r7936)
    (by unfold seg52BlindDeltaY167; first | linear_combination r7937 | linear_combination -r7937)
    (by linear_combination r6957)

theorem seg52Blind_rows169 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6958 rho ∧ Seg52.relationRow7938 rho ∧ Seg52.relationRow7939 rho ∧ Seg52.relationRow7940 rho ∧ Seg52.relationRow7941 rho ∧ Seg52.relationRow7942 rho ∧ Seg52.relationRow7943 rho ∧ Seg52.relationRow7944 rho ∧ Seg52.relationRow7945 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, _, p99,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6958, _⟩

  unfold Seg52.relationPart99 at p99

  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7938, r7939, r7940, r7941, r7942, r7943, r7944, r7945, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6958, r7938, r7939, r7940, r7941, r7942, r7943, r7944, r7945⟩

theorem seg52Blind_rung169 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51347 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 169)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      169 (Bool.toZMod bit) (seg52BlindAccState rho 169)
      (seg52BlindAccState rho 170) := by
  obtain ⟨r6958, r7938, r7939, r7940, r7941, r7942, r7943, r7944, r7945⟩ := seg52Blind_rows169 rho h
  unfold Seg52.relationRow6958 at r6958

  unfold Seg52.relationRow7938 at r7938

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7938

  unfold Seg52.relationRow7939 at r7939

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7939

  unfold Seg52.relationRow7940 at r7940

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7940

  unfold Seg52.relationRow7941 at r7941

  unfold Seg52.relationRow7942 at r7942

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7942

  unfold Seg52.relationRow7943 at r7943

  unfold Seg52.relationRow7944 at r7944

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7944

  unfold Seg52.relationRow7945 at r7945

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7945

  have hnextx : seg52BlindDeltaX169 rho =
      seg52BlindDeltaX168 rho + rho 52332 := by
    unfold seg52BlindDeltaX169 seg52BlindDeltaX168
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 19]

    ring

  have hnexty : seg52BlindDeltaY169 rho =
      seg52BlindDeltaY168 rho + rho 52333 := by
    unfold seg52BlindDeltaY169 seg52BlindDeltaY168
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 19]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 169
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX168 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY168 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX169 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY169 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY168 rho) (rho 52333)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 169)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3688844968080895629712784332341446792801256746385234990750523093971521074510 : Seg52.F) (3549298525577506742776259135186706200036512115892118974843337934003521571629 : Seg52.F)
    (7238143493658402372489043467528152992837768862277353965593861027975042646139 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6408885745045801555320000085256881994286845799584425351912643065446343548180 : Seg52.F) (2836310663492769406639713848302725402464337115246140804629532361090041645307 : Seg52.F)
    (647523183386879337064708574349774122058580462968921747535777808928057165661 : Seg52.F) (276693291956730215244631115558101509258007714057884227406431063719210629035 : Seg52.F)
    (4895163223850863681472565803594840331339387219261944853091895521913887667412 : Seg52.F) (4755616781347474794536040606440099738574642588768828837184710361945888164531 : Seg52.F)
    (8167768457471640209004193823223445022117891621096179600528802392198198610006 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX168 rho) (seg52BlindDeltaY168 rho) (rho 51347)
    (rho 52326) (rho 52327) (rho 52328) (rho 52330)
    (rho 52329) (rho 52331) (rho 52332) (rho 52333) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 169)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L169]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX168 seg52BlindDeltaY168;
        first | linear_combination r7938 | linear_combination -r7938)
    (by unfold seg52BlindDeltaX168 seg52BlindDeltaY168;
        first | linear_combination r7939 | linear_combination -r7939)
    (by unfold seg52BlindDeltaX168 seg52BlindDeltaY168;
        first | linear_combination r7940 | linear_combination -r7940)
    (by first | linear_combination r7941 | linear_combination -r7941)
    (by unfold seg52BlindDeltaX168 seg52BlindDeltaY168;
        first | linear_combination r7942 | linear_combination -r7942)
    (by first | linear_combination r7943 | linear_combination -r7943)
    (by unfold seg52BlindDeltaX168; first | linear_combination r7944 | linear_combination -r7944)
    (by unfold seg52BlindDeltaY168; first | linear_combination r7945 | linear_combination -r7945)
    (by linear_combination r6958)

theorem seg52Blind_rows170 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6959 rho ∧ Seg52.relationRow7946 rho ∧ Seg52.relationRow7947 rho ∧ Seg52.relationRow7948 rho ∧ Seg52.relationRow7949 rho ∧ Seg52.relationRow7950 rho ∧ Seg52.relationRow7951 rho ∧ Seg52.relationRow7952 rho ∧ Seg52.relationRow7953 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, _, p99,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6959⟩

  unfold Seg52.relationPart99 at p99

  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7946, r7947, r7948, r7949, r7950, r7951, r7952, r7953, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6959, r7946, r7947, r7948, r7949, r7950, r7951, r7952, r7953⟩

theorem seg52Blind_rung170 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51348 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 170)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      170 (Bool.toZMod bit) (seg52BlindAccState rho 170)
      (seg52BlindAccState rho 171) := by
  obtain ⟨r6959, r7946, r7947, r7948, r7949, r7950, r7951, r7952, r7953⟩ := seg52Blind_rows170 rho h
  unfold Seg52.relationRow6959 at r6959

  unfold Seg52.relationRow7946 at r7946

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7946

  unfold Seg52.relationRow7947 at r7947

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7947

  unfold Seg52.relationRow7948 at r7948

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7948

  unfold Seg52.relationRow7949 at r7949

  unfold Seg52.relationRow7950 at r7950

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7950

  unfold Seg52.relationRow7951 at r7951

  unfold Seg52.relationRow7952 at r7952

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7952

  unfold Seg52.relationRow7953 at r7953

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7953

  have hnextx : seg52BlindDeltaX170 rho =
      seg52BlindDeltaX169 rho + rho 52340 := by
    unfold seg52BlindDeltaX170 seg52BlindDeltaX169
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 20]

    ring

  have hnexty : seg52BlindDeltaY170 rho =
      seg52BlindDeltaY169 rho + rho 52341 := by
    unfold seg52BlindDeltaY170 seg52BlindDeltaY169
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 20]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 170
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX169 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY169 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX170 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY170 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY169 rho) (rho 52341)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 170)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (14615198357844142493633676529185613307937073000081044855882952481351169849 : Seg52.F) (4453736726882436070381815817683846788913384475401420570593429621138334460266 : Seg52.F)
    (4468351925240280212875449494213032402221321548401501615449312573619685630115 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2711085072445282795087457743897524825526859287267865861923990182475486671273 : Seg52.F) (2815337370501420512367345064868368945741396836244984675210978293144578630164 : Seg52.F)
    (8337230938626305099367911797941917241220481641091522792192706609686119681774 : Seg52.F) (1542900857365177300348869732032261084706390318045086452889382692757262587607 : Seg52.F)
    (3990725022545934353867009121097699742462514859752643257341803834779074778775 : Seg52.F) (8429846551070526281755191262252360918067962262153982783079350503436058069192 : Seg52.F)
    (6901560892063193123899955206749285446669509017108977375045850763160146651434 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX169 rho) (seg52BlindDeltaY169 rho) (rho 51348)
    (rho 52334) (rho 52335) (rho 52336) (rho 52338)
    (rho 52337) (rho 52339) (rho 52340) (rho 52341) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 170)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L170]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX169 seg52BlindDeltaY169;
        first | linear_combination r7946 | linear_combination -r7946)
    (by unfold seg52BlindDeltaX169 seg52BlindDeltaY169;
        first | linear_combination r7947 | linear_combination -r7947)
    (by unfold seg52BlindDeltaX169 seg52BlindDeltaY169;
        first | linear_combination r7948 | linear_combination -r7948)
    (by first | linear_combination r7949 | linear_combination -r7949)
    (by unfold seg52BlindDeltaX169 seg52BlindDeltaY169;
        first | linear_combination r7950 | linear_combination -r7950)
    (by first | linear_combination r7951 | linear_combination -r7951)
    (by unfold seg52BlindDeltaX169; first | linear_combination r7952 | linear_combination -r7952)
    (by unfold seg52BlindDeltaY169; first | linear_combination r7953 | linear_combination -r7953)
    (by linear_combination r6959)

theorem seg52Blind_hstep_c16 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
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

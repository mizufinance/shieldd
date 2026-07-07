import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows241 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6390 rho ∧ Seg52.relationRow7874 rho ∧ Seg52.relationRow7875 rho ∧ Seg52.relationRow7876 rho ∧ Seg52.relationRow7877 rho ∧ Seg52.relationRow7878 rho ∧ Seg52.relationRow7879 rho ∧ Seg52.relationRow7880 rho ∧ Seg52.relationRow7881 rho := by
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

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6390, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7874, r7875, r7876, r7877, r7878, r7879, r7880, r7881, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6390, r7874, r7875, r7876, r7877, r7878, r7879, r7880, r7881⟩

theorem seg52Blind_rung241 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50779 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 241)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      241 (Bool.toZMod bit) (seg52BlindAccState rho 241)
      (seg52BlindAccState rho 242) := by
  obtain ⟨r6390, r7874, r7875, r7876, r7877, r7878, r7879, r7880, r7881⟩ := seg52Blind_rows241 rho h
  unfold Seg52.relationRow6390 at r6390

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

  have hnextx : seg52BlindDeltaX241 rho =
      seg52BlindDeltaX240 rho + rho 52268 := by
    unfold seg52BlindDeltaX241 seg52BlindDeltaX240
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 91]

    ring

  have hnexty : seg52BlindDeltaY241 rho =
      seg52BlindDeltaY240 rho + rho 52269 := by
    unfold seg52BlindDeltaY241 seg52BlindDeltaY240
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 91]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 241
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX240 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY240 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX241 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY241 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY240 rho) (rho 52269)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 241)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (5513923410512906536181717766244606058613026157505942978262642991579256481779 : Seg52.F) (4019392668560449309488260267251635682877589049350116880541979459658764265975 : Seg52.F)
    (1088854329644985421421153094714695210114715871701996030869388995320611508713 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (7893717792549064318472830338109032386029173470313375374389471475809771008558 : Seg52.F) (4374296518096528526619005251611994626052244170889537534720848003928046783174 : Seg52.F)
    (6602569734421699621514347941938542364431913392460043182359308603865112578723 : Seg52.F) (4096675033091295205087808066124098390907209830903503719888873793552637225980 : Seg52.F)
    (4425069080867921114760564671529910848498310285803946947393253996258644973066 : Seg52.F) (2930538338915463888067107172536940472762873177648120849672590464338152757262 : Seg52.F)
    (4347786716337075219161016872657448140468689504250560108046359662364772013061 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX240 rho) (seg52BlindDeltaY240 rho) (rho 50779)
    (rho 52262) (rho 52263) (rho 52264) (rho 52266)
    (rho 52265) (rho 52267) (rho 52268) (rho 52269) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 241)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L241]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX240 seg52BlindDeltaY240;
        first | linear_combination r7874 | linear_combination -r7874)
    (by unfold seg52BlindDeltaX240 seg52BlindDeltaY240;
        first | linear_combination r7875 | linear_combination -r7875)
    (by unfold seg52BlindDeltaX240 seg52BlindDeltaY240;
        first | linear_combination r7876 | linear_combination -r7876)
    (by first | linear_combination r7877 | linear_combination -r7877)
    (by unfold seg52BlindDeltaX240 seg52BlindDeltaY240;
        first | linear_combination r7878 | linear_combination -r7878)
    (by first | linear_combination r7879 | linear_combination -r7879)
    (by unfold seg52BlindDeltaX240; first | linear_combination r7880 | linear_combination -r7880)
    (by unfold seg52BlindDeltaY240; first | linear_combination r7881 | linear_combination -r7881)
    (by linear_combination r6390)

theorem seg52Blind_rows242 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6391 rho ∧ Seg52.relationRow7882 rho ∧ Seg52.relationRow7883 rho ∧ Seg52.relationRow7884 rho ∧ Seg52.relationRow7885 rho ∧ Seg52.relationRow7886 rho ∧ Seg52.relationRow7887 rho ∧ Seg52.relationRow7888 rho ∧ Seg52.relationRow7889 rho := by
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

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6391, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7882, r7883, r7884, r7885, r7886, r7887, r7888, r7889, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6391, r7882, r7883, r7884, r7885, r7886, r7887, r7888, r7889⟩

theorem seg52Blind_rung242 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50780 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 242)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      242 (Bool.toZMod bit) (seg52BlindAccState rho 242)
      (seg52BlindAccState rho 243) := by
  obtain ⟨r6391, r7882, r7883, r7884, r7885, r7886, r7887, r7888, r7889⟩ := seg52Blind_rows242 rho h
  unfold Seg52.relationRow6391 at r6391

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

  have hnextx : seg52BlindDeltaX242 rho =
      seg52BlindDeltaX241 rho + rho 52276 := by
    unfold seg52BlindDeltaX242 seg52BlindDeltaX241
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 92]

    ring

  have hnexty : seg52BlindDeltaY242 rho =
      seg52BlindDeltaY241 rho + rho 52277 := by
    unfold seg52BlindDeltaY242 seg52BlindDeltaY241
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 92]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 242
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX241 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY241 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX242 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY242 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY241 rho) (rho 52277)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 242)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (2203407895172835048751996239651722897202444515700048382087296164906444292884 : Seg52.F) (3448466306987922263614383402131330016976447875891964797858321066322296943384 : Seg52.F)
    (5651874202160757312366379641783052914178892391592013179945617231228741236268 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5795376365332425280251108321101108099365152824664954485845090213493474225511 : Seg52.F) (2804388294726016125662420118254808533838138442815855271791669649881650081475 : Seg52.F)
    (2902823778148234976100277600948068094267423525193951070508650400515105641806 : Seg52.F) (5671053344592727771906963833821946238787773899323490641818704286979229043571 : Seg52.F)
    (4995995442440448160634441536650216514399451459262099030076912389595112295657 : Seg52.F) (6241053854255535375496828699129823634173454819454015445847937291010964946157 : Seg52.F)
    (2773408404835642652341861104959600292588125435830573186116529168938180195470 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX241 rho) (seg52BlindDeltaY241 rho) (rho 50780)
    (rho 52270) (rho 52271) (rho 52272) (rho 52274)
    (rho 52273) (rho 52275) (rho 52276) (rho 52277) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 242)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L242]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX241 seg52BlindDeltaY241;
        first | linear_combination r7882 | linear_combination -r7882)
    (by unfold seg52BlindDeltaX241 seg52BlindDeltaY241;
        first | linear_combination r7883 | linear_combination -r7883)
    (by unfold seg52BlindDeltaX241 seg52BlindDeltaY241;
        first | linear_combination r7884 | linear_combination -r7884)
    (by first | linear_combination r7885 | linear_combination -r7885)
    (by unfold seg52BlindDeltaX241 seg52BlindDeltaY241;
        first | linear_combination r7886 | linear_combination -r7886)
    (by first | linear_combination r7887 | linear_combination -r7887)
    (by unfold seg52BlindDeltaX241; first | linear_combination r7888 | linear_combination -r7888)
    (by unfold seg52BlindDeltaY241; first | linear_combination r7889 | linear_combination -r7889)
    (by linear_combination r6391)

theorem seg52Blind_rows243 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6392 rho ∧ Seg52.relationRow7890 rho ∧ Seg52.relationRow7891 rho ∧ Seg52.relationRow7892 rho ∧ Seg52.relationRow7893 rho ∧ Seg52.relationRow7894 rho ∧ Seg52.relationRow7895 rho ∧ Seg52.relationRow7896 rho ∧ Seg52.relationRow7897 rho := by
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

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6392, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7890, r7891, r7892, r7893, r7894, r7895, r7896, r7897, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6392, r7890, r7891, r7892, r7893, r7894, r7895, r7896, r7897⟩

theorem seg52Blind_rung243 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50781 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 243)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      243 (Bool.toZMod bit) (seg52BlindAccState rho 243)
      (seg52BlindAccState rho 244) := by
  obtain ⟨r6392, r7890, r7891, r7892, r7893, r7894, r7895, r7896, r7897⟩ := seg52Blind_rows243 rho h
  unfold Seg52.relationRow6392 at r6392

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

  have hnextx : seg52BlindDeltaX243 rho =
      seg52BlindDeltaX242 rho + rho 52284 := by
    unfold seg52BlindDeltaX243 seg52BlindDeltaX242
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 93]

    ring

  have hnexty : seg52BlindDeltaY243 rho =
      seg52BlindDeltaY242 rho + rho 52285 := by
    unfold seg52BlindDeltaY243 seg52BlindDeltaY242
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 93]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 243
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX242 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY242 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX243 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY243 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY242 rho) (rho 52285)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 243)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (2579576461021703843062238166306385538971946073339432738818486279193087908325 : Seg52.F) (2416772477807176936961022868245741931807687643073911419383531377235193867027 : Seg52.F)
    (4996348938828880780023261034552127470779633716413344158202017656428281775352 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5054703949369480008265337863130172882247344153175250621606584714879089757143 : Seg52.F) (5601485619389641128729184567002420572067936942603615555204830633048519319217 : Seg52.F)
    (8201628241980808648367014804422567103406614700569427414153625827007033516096 : Seg52.F) (1978452197506266677604550734876224268318213547823483511718485120057340746806 : Seg52.F)
    (6027689271621193487287802070535804599568211692080152408551702078682215372014 : Seg52.F) (5864885288406666581186586772475160992403953261814631089116747176724321330716 : Seg52.F)
    (6466009551922103746644274203905322263057685787330580316216748335860068492235 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX242 rho) (seg52BlindDeltaY242 rho) (rho 50781)
    (rho 52278) (rho 52279) (rho 52280) (rho 52282)
    (rho 52281) (rho 52283) (rho 52284) (rho 52285) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 243)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L243]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX242 seg52BlindDeltaY242;
        first | linear_combination r7890 | linear_combination -r7890)
    (by unfold seg52BlindDeltaX242 seg52BlindDeltaY242;
        first | linear_combination r7891 | linear_combination -r7891)
    (by unfold seg52BlindDeltaX242 seg52BlindDeltaY242;
        first | linear_combination r7892 | linear_combination -r7892)
    (by first | linear_combination r7893 | linear_combination -r7893)
    (by unfold seg52BlindDeltaX242 seg52BlindDeltaY242;
        first | linear_combination r7894 | linear_combination -r7894)
    (by first | linear_combination r7895 | linear_combination -r7895)
    (by unfold seg52BlindDeltaX242; first | linear_combination r7896 | linear_combination -r7896)
    (by unfold seg52BlindDeltaY242; first | linear_combination r7897 | linear_combination -r7897)
    (by linear_combination r6392)

theorem seg52Blind_rows244 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6393 rho ∧ Seg52.relationRow7898 rho ∧ Seg52.relationRow7899 rho ∧ Seg52.relationRow7900 rho ∧ Seg52.relationRow7901 rho ∧ Seg52.relationRow7902 rho ∧ Seg52.relationRow7903 rho ∧ Seg52.relationRow7904 rho ∧ Seg52.relationRow7905 rho := by
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

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6393, _, _, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7898, r7899, r7900, r7901, r7902, r7903, r7904, r7905, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6393, r7898, r7899, r7900, r7901, r7902, r7903, r7904, r7905⟩

theorem seg52Blind_rung244 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50782 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 244)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      244 (Bool.toZMod bit) (seg52BlindAccState rho 244)
      (seg52BlindAccState rho 245) := by
  obtain ⟨r6393, r7898, r7899, r7900, r7901, r7902, r7903, r7904, r7905⟩ := seg52Blind_rows244 rho h
  unfold Seg52.relationRow6393 at r6393

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

  have hnextx : seg52BlindDeltaX244 rho =
      seg52BlindDeltaX243 rho + rho 52292 := by
    unfold seg52BlindDeltaX244 seg52BlindDeltaX243
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 94]

    ring

  have hnexty : seg52BlindDeltaY244 rho =
      seg52BlindDeltaY243 rho + rho 52293 := by
    unfold seg52BlindDeltaY244 seg52BlindDeltaY243
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 94]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 244
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX243 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY243 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX244 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY244 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY243 rho) (rho 52293)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 244)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (2514857472370197755194646005525823698508853960596342289202109878754445993616 : Seg52.F) (754628652708249502357400135309921781955918134996983597452135724766179961977 : Seg52.F)
    (3269486125078447257552046140835745480464772095593325886654245603520625955593 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (8172949235390102498771900239037686348711764669444278188324224876846579830488 : Seg52.F) (2291848306146904448449527014905496286647056653699481663383632137549226627925 : Seg52.F)
    (6378915408891041453484610792489999331570369577930014658719925711199666616324 : Seg52.F) (4677364479696824080456115307318514279825491842592336608554691172134405775560 : Seg52.F)
    (7689833096720120921891424803471624749419981200157080230483097731151229277064 : Seg52.F) (5929604277058172669054178933255722832867045374557721538733123577162963245425 : Seg52.F)
    (3767097269731546343792709631463032251550407492561727219380542283783003463481 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX243 rho) (seg52BlindDeltaY243 rho) (rho 50782)
    (rho 52286) (rho 52287) (rho 52288) (rho 52290)
    (rho 52289) (rho 52291) (rho 52292) (rho 52293) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 244)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L244]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX243 seg52BlindDeltaY243;
        first | linear_combination r7898 | linear_combination -r7898)
    (by unfold seg52BlindDeltaX243 seg52BlindDeltaY243;
        first | linear_combination r7899 | linear_combination -r7899)
    (by unfold seg52BlindDeltaX243 seg52BlindDeltaY243;
        first | linear_combination r7900 | linear_combination -r7900)
    (by first | linear_combination r7901 | linear_combination -r7901)
    (by unfold seg52BlindDeltaX243 seg52BlindDeltaY243;
        first | linear_combination r7902 | linear_combination -r7902)
    (by first | linear_combination r7903 | linear_combination -r7903)
    (by unfold seg52BlindDeltaX243; first | linear_combination r7904 | linear_combination -r7904)
    (by unfold seg52BlindDeltaY243; first | linear_combination r7905 | linear_combination -r7905)
    (by linear_combination r6393)

theorem seg52Blind_rows245 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6394 rho ∧ Seg52.relationRow7906 rho ∧ Seg52.relationRow7907 rho ∧ Seg52.relationRow7908 rho ∧ Seg52.relationRow7909 rho ∧ Seg52.relationRow7910 rho ∧ Seg52.relationRow7911 rho ∧ Seg52.relationRow7912 rho ∧ Seg52.relationRow7913 rho := by
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

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6394, _, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7906, r7907, r7908, r7909, r7910, r7911, r7912, r7913, _, _, _, _, _, _⟩

  exact ⟨r6394, r7906, r7907, r7908, r7909, r7910, r7911, r7912, r7913⟩

theorem seg52Blind_rung245 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50783 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 245)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      245 (Bool.toZMod bit) (seg52BlindAccState rho 245)
      (seg52BlindAccState rho 246) := by
  obtain ⟨r6394, r7906, r7907, r7908, r7909, r7910, r7911, r7912, r7913⟩ := seg52Blind_rows245 rho h
  unfold Seg52.relationRow6394 at r6394

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

  have hnextx : seg52BlindDeltaX245 rho =
      seg52BlindDeltaX244 rho + rho 52300 := by
    unfold seg52BlindDeltaX245 seg52BlindDeltaX244
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 95]

    ring

  have hnexty : seg52BlindDeltaY245 rho =
      seg52BlindDeltaY244 rho + rho 52301 := by
    unfold seg52BlindDeltaY245 seg52BlindDeltaY244
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 95]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 245
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX244 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY244 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX245 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY245 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY244 rho) (rho 52301)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 245)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (4875653010124723802105271487582443021807143081825221610768106802677393137478 : Seg52.F) (837830745026968237423835190512321529772325628897387301638787230114395216226 : Seg52.F)
    (5713483755151692039529106678094764551579468710722608912406894032791788353704 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6192617647388288407007453842040928560801823687941953698141418856282585745487 : Seg52.F) (5531294256398319965953230848414062600628135281356110451193038651571188380940 : Seg52.F)
    (2570807001276145449324531511902523303421864657760087009493837657773969935704 : Seg52.F) (6119815029836556037983158482495769450696490408038757353122107864397857228893 : Seg52.F)
    (7606631004401402186824989748269225001603573706256676526296446225803014022815 : Seg52.F) (3568808739303646622143553451199103509568756253328842217167126653240016101563 : Seg52.F)
    (2324646719591814386265666456285777080679408927115306474813125591519552010148 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX244 rho) (seg52BlindDeltaY244 rho) (rho 50783)
    (rho 52294) (rho 52295) (rho 52296) (rho 52298)
    (rho 52297) (rho 52299) (rho 52300) (rho 52301) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 245)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L245]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX244 seg52BlindDeltaY244;
        first | linear_combination r7906 | linear_combination -r7906)
    (by unfold seg52BlindDeltaX244 seg52BlindDeltaY244;
        first | linear_combination r7907 | linear_combination -r7907)
    (by unfold seg52BlindDeltaX244 seg52BlindDeltaY244;
        first | linear_combination r7908 | linear_combination -r7908)
    (by first | linear_combination r7909 | linear_combination -r7909)
    (by unfold seg52BlindDeltaX244 seg52BlindDeltaY244;
        first | linear_combination r7910 | linear_combination -r7910)
    (by first | linear_combination r7911 | linear_combination -r7911)
    (by unfold seg52BlindDeltaX244; first | linear_combination r7912 | linear_combination -r7912)
    (by unfold seg52BlindDeltaY244; first | linear_combination r7913 | linear_combination -r7913)
    (by linear_combination r6394)

theorem seg52Blind_rows246 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6395 rho ∧ Seg52.relationRow7914 rho ∧ Seg52.relationRow7915 rho ∧ Seg52.relationRow7916 rho ∧ Seg52.relationRow7917 rho ∧ Seg52.relationRow7918 rho ∧ Seg52.relationRow7919 rho ∧ Seg52.relationRow7920 rho ∧ Seg52.relationRow7921 rho := by
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

    _, _, _, _, _, _, _, _, p98, p99

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6395, _, _, _, _⟩

  unfold Seg52.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7914, r7915, r7916, r7917, r7918, r7919⟩

  unfold Seg52.relationPart99 at p99

  rcases p99 with ⟨r7920, r7921, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6395, r7914, r7915, r7916, r7917, r7918, r7919, r7920, r7921⟩

theorem seg52Blind_rung246 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50784 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 246)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      246 (Bool.toZMod bit) (seg52BlindAccState rho 246)
      (seg52BlindAccState rho 247) := by
  obtain ⟨r6395, r7914, r7915, r7916, r7917, r7918, r7919, r7920, r7921⟩ := seg52Blind_rows246 rho h
  unfold Seg52.relationRow6395 at r6395

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

  have hnextx : seg52BlindDeltaX246 rho =
      seg52BlindDeltaX245 rho + rho 52308 := by
    unfold seg52BlindDeltaX246 seg52BlindDeltaX245
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 96]

    ring

  have hnexty : seg52BlindDeltaY246 rho =
      seg52BlindDeltaY245 rho + rho 52309 := by
    unfold seg52BlindDeltaY246 seg52BlindDeltaY245
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 96]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 246
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX245 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY245 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX246 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY246 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY245 rho) (rho 52309)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 246)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7179761945373182665345787383507852275205996006885247412066571252852218245855 : Seg52.F) (4762005878824215829825631321512654478131353721275819073046772322870151862794 : Seg52.F)
    (3497306074769028070922593766238960221961450393007002657178110119804960869608 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5101400651441189407483351544755435501663024206878720700596611963380843413851 : Seg52.F) (7981528139320114171798714864559238512156499148515537947774068280127163008260 : Seg52.F)
    (6137069378560425525105402465535383648320524364227647625661240755946255236748 : Seg52.F) (2972688831071837780483714302418888123151130968801947930493135679059695321215 : Seg52.F)
    (3682455870604154594423193617268892053244545613878244754888461133047257376247 : Seg52.F) (1264699804055187758903037555273694256169903328268816415868662203065190993186 : Seg52.F)
    (5471772918356532643765110636362658408224768366352115897442097776857713917826 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX245 rho) (seg52BlindDeltaY245 rho) (rho 50784)
    (rho 52302) (rho 52303) (rho 52304) (rho 52306)
    (rho 52305) (rho 52307) (rho 52308) (rho 52309) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 246)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L246]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX245 seg52BlindDeltaY245;
        first | linear_combination r7914 | linear_combination -r7914)
    (by unfold seg52BlindDeltaX245 seg52BlindDeltaY245;
        first | linear_combination r7915 | linear_combination -r7915)
    (by unfold seg52BlindDeltaX245 seg52BlindDeltaY245;
        first | linear_combination r7916 | linear_combination -r7916)
    (by first | linear_combination r7917 | linear_combination -r7917)
    (by unfold seg52BlindDeltaX245 seg52BlindDeltaY245;
        first | linear_combination r7918 | linear_combination -r7918)
    (by first | linear_combination r7919 | linear_combination -r7919)
    (by unfold seg52BlindDeltaX245; first | linear_combination r7920 | linear_combination -r7920)
    (by unfold seg52BlindDeltaY245; first | linear_combination r7921 | linear_combination -r7921)
    (by linear_combination r6395)

theorem seg52Blind_rows247 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6396 rho ∧ Seg52.relationRow7922 rho ∧ Seg52.relationRow7923 rho ∧ Seg52.relationRow7924 rho ∧ Seg52.relationRow7925 rho ∧ Seg52.relationRow7926 rho ∧ Seg52.relationRow7927 rho ∧ Seg52.relationRow7928 rho ∧ Seg52.relationRow7929 rho := by
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

    _, _, _, _, _, _, _, _, _, p99

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6396, _, _, _⟩

  unfold Seg52.relationPart99 at p99

  rcases p99 with ⟨_, _, r7922, r7923, r7924, r7925, r7926, r7927, r7928, r7929, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6396, r7922, r7923, r7924, r7925, r7926, r7927, r7928, r7929⟩

theorem seg52Blind_rung247 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50785 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 247)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      247 (Bool.toZMod bit) (seg52BlindAccState rho 247)
      (seg52BlindAccState rho 248) := by
  obtain ⟨r6396, r7922, r7923, r7924, r7925, r7926, r7927, r7928, r7929⟩ := seg52Blind_rows247 rho h
  unfold Seg52.relationRow6396 at r6396

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

  have hnextx : seg52BlindDeltaX247 rho =
      seg52BlindDeltaX246 rho + rho 52316 := by
    unfold seg52BlindDeltaX247 seg52BlindDeltaX246
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 97]

    ring

  have hnexty : seg52BlindDeltaY247 rho =
      seg52BlindDeltaY246 rho + rho 52317 := by
    unfold seg52BlindDeltaY247 seg52BlindDeltaY246
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 97]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 247
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX246 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY246 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX247 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY247 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY246 rho) (rho 52317)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 247)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3205778446841165504107412647422570446185838532302611287722449995897633519006 : Seg52.F) (6161368615757064578468735830384419737443415875146445724866075505601369212342 : Seg52.F)
    (922685313169859658327323539025443652253355072294993184653292045581593492307 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (1900892461963676509640778516803471664077224137855858051159565579766427638818 : Seg52.F) (4287670697339900789370947690166861455441816137951612202103027632982100060505 : Seg52.F)
    (4136388419679310950960951468679232432376196009946805418881652989243827062098 : Seg52.F) (3394270195696985021778291261454563608844071744136467992192255746065724196317 : Seg52.F)
    (2283093133671305845780089108397126793932483460007618103069157950316040026699 : Seg52.F) (5238683302587204920141412291358976085190060802851452540212783460019775720035 : Seg52.F)
    (5050191553731385402470533677326982922531827591017595835742977709851685042724 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX246 rho) (seg52BlindDeltaY246 rho) (rho 50785)
    (rho 52310) (rho 52311) (rho 52312) (rho 52314)
    (rho 52313) (rho 52315) (rho 52316) (rho 52317) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 247)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L247]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX246 seg52BlindDeltaY246;
        first | linear_combination r7922 | linear_combination -r7922)
    (by unfold seg52BlindDeltaX246 seg52BlindDeltaY246;
        first | linear_combination r7923 | linear_combination -r7923)
    (by unfold seg52BlindDeltaX246 seg52BlindDeltaY246;
        first | linear_combination r7924 | linear_combination -r7924)
    (by first | linear_combination r7925 | linear_combination -r7925)
    (by unfold seg52BlindDeltaX246 seg52BlindDeltaY246;
        first | linear_combination r7926 | linear_combination -r7926)
    (by first | linear_combination r7927 | linear_combination -r7927)
    (by unfold seg52BlindDeltaX246; first | linear_combination r7928 | linear_combination -r7928)
    (by unfold seg52BlindDeltaY246; first | linear_combination r7929 | linear_combination -r7929)
    (by linear_combination r6396)

theorem seg52Blind_rows248 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6397 rho ∧ Seg52.relationRow7930 rho ∧ Seg52.relationRow7931 rho ∧ Seg52.relationRow7932 rho ∧ Seg52.relationRow7933 rho ∧ Seg52.relationRow7934 rho ∧ Seg52.relationRow7935 rho ∧ Seg52.relationRow7936 rho ∧ Seg52.relationRow7937 rho := by
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

    _, _, _, _, _, _, _, _, _, p99

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6397, _, _⟩

  unfold Seg52.relationPart99 at p99

  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, r7930, r7931, r7932, r7933, r7934, r7935, r7936, r7937, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6397, r7930, r7931, r7932, r7933, r7934, r7935, r7936, r7937⟩

theorem seg52Blind_rung248 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50786 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 248)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      248 (Bool.toZMod bit) (seg52BlindAccState rho 248)
      (seg52BlindAccState rho 249) := by
  obtain ⟨r6397, r7930, r7931, r7932, r7933, r7934, r7935, r7936, r7937⟩ := seg52Blind_rows248 rho h
  unfold Seg52.relationRow6397 at r6397

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

  have hnextx : seg52BlindDeltaX248 rho =
      seg52BlindDeltaX247 rho + rho 52324 := by
    unfold seg52BlindDeltaX248 seg52BlindDeltaX247
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 98]

    ring

  have hnexty : seg52BlindDeltaY248 rho =
      seg52BlindDeltaY247 rho + rho 52325 := by
    unfold seg52BlindDeltaY248 seg52BlindDeltaY247
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 98]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 248
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX247 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY247 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX248 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY248 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY247 rho) (rho 52325)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 248)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3637295467543686737834382267987615682687332247363798918988631490872682703987 : Seg52.F) (2391382174518060191774241777672417365203178192287378483687464476900478563037 : Seg52.F)
    (6028677642061746929608624045660033047890510439651177402676095967773161267024 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4350753457803126617239087690150575952407387343445826335205579906960839554722 : Seg52.F) (7744348585832122768075044097357239165124010007619404673097934308000867538251 : Seg52.F)
    (4744066201361012552590713371123910662718173171646119997147627113007781772154 : Seg52.F) (7986328868085048780486265555216982383681361301222809630133404507816215461524 : Seg52.F)
    (6053079574910310232474583161109129166172721142866685344247768979016930676004 : Seg52.F) (4807166281884683686414442670793930848688567087790264908946601965044726535054 : Seg52.F)
    (458132881343321643762559383564564147694538033931254197801828948101193777517 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX247 rho) (seg52BlindDeltaY247 rho) (rho 50786)
    (rho 52318) (rho 52319) (rho 52320) (rho 52322)
    (rho 52321) (rho 52323) (rho 52324) (rho 52325) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 248)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L248]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX247 seg52BlindDeltaY247;
        first | linear_combination r7930 | linear_combination -r7930)
    (by unfold seg52BlindDeltaX247 seg52BlindDeltaY247;
        first | linear_combination r7931 | linear_combination -r7931)
    (by unfold seg52BlindDeltaX247 seg52BlindDeltaY247;
        first | linear_combination r7932 | linear_combination -r7932)
    (by first | linear_combination r7933 | linear_combination -r7933)
    (by unfold seg52BlindDeltaX247 seg52BlindDeltaY247;
        first | linear_combination r7934 | linear_combination -r7934)
    (by first | linear_combination r7935 | linear_combination -r7935)
    (by unfold seg52BlindDeltaX247; first | linear_combination r7936 | linear_combination -r7936)
    (by unfold seg52BlindDeltaY247; first | linear_combination r7937 | linear_combination -r7937)
    (by linear_combination r6397)

theorem seg52Blind_rows249 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6398 rho ∧ Seg52.relationRow7938 rho ∧ Seg52.relationRow7939 rho ∧ Seg52.relationRow7940 rho ∧ Seg52.relationRow7941 rho ∧ Seg52.relationRow7942 rho ∧ Seg52.relationRow7943 rho ∧ Seg52.relationRow7944 rho ∧ Seg52.relationRow7945 rho := by
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

    _, _, _, _, _, _, _, _, _, p99

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6398, _⟩

  unfold Seg52.relationPart99 at p99

  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7938, r7939, r7940, r7941, r7942, r7943, r7944, r7945, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6398, r7938, r7939, r7940, r7941, r7942, r7943, r7944, r7945⟩

theorem seg52Blind_rung249 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50787 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 249)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      249 (Bool.toZMod bit) (seg52BlindAccState rho 249)
      (seg52BlindAccState rho 250) := by
  obtain ⟨r6398, r7938, r7939, r7940, r7941, r7942, r7943, r7944, r7945⟩ := seg52Blind_rows249 rho h
  unfold Seg52.relationRow6398 at r6398

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

  have hnextx : seg52BlindDeltaX249 rho =
      seg52BlindDeltaX248 rho + rho 52332 := by
    unfold seg52BlindDeltaX249 seg52BlindDeltaX248
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 99]

    ring

  have hnexty : seg52BlindDeltaY249 rho =
      seg52BlindDeltaY248 rho + rho 52333 := by
    unfold seg52BlindDeltaY249 seg52BlindDeltaY248
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 99]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 249
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX248 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY248 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX249 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY249 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY248 rho) (rho 52333)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 249)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (6040287128678729511763090676601340065858477829358795237452282720529066134675 : Seg52.F) (211065313773697690845714574818954595516654490806675894571851535063540139993 : Seg52.F)
    (6251352442452427202608805251420294661375132320165471132024134255592606274668 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4293681703212942226241860119445843202620766590413090406420978233149069990778 : Seg52.F) (1305409244711178263509137317536703823855434028379551891190204949390309402401 : Seg52.F)
    (7669045227694257730776453443358451663824146133794592849966096451796486309872 : Seg52.F) (1687634193423485956652330228636514267822633673284391909916374707104706944713 : Seg52.F)
    (8233396435654672733403110363962591935859244844347387933363381920853869099048 : Seg52.F) (2404174620749640912485734262180206465517421505795268590482950735388343104366 : Seg52.F)
    (6756827556004884467596494710145032263553265661869671918018858748812702294328 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX248 rho) (seg52BlindDeltaY248 rho) (rho 50787)
    (rho 52326) (rho 52327) (rho 52328) (rho 52330)
    (rho 52329) (rho 52331) (rho 52332) (rho 52333) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 249)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L249]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX248 seg52BlindDeltaY248;
        first | linear_combination r7938 | linear_combination -r7938)
    (by unfold seg52BlindDeltaX248 seg52BlindDeltaY248;
        first | linear_combination r7939 | linear_combination -r7939)
    (by unfold seg52BlindDeltaX248 seg52BlindDeltaY248;
        first | linear_combination r7940 | linear_combination -r7940)
    (by first | linear_combination r7941 | linear_combination -r7941)
    (by unfold seg52BlindDeltaX248 seg52BlindDeltaY248;
        first | linear_combination r7942 | linear_combination -r7942)
    (by first | linear_combination r7943 | linear_combination -r7943)
    (by unfold seg52BlindDeltaX248; first | linear_combination r7944 | linear_combination -r7944)
    (by unfold seg52BlindDeltaY248; first | linear_combination r7945 | linear_combination -r7945)
    (by linear_combination r6398)

theorem seg52Blind_rows250 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6399 rho ∧ Seg52.relationRow7946 rho ∧ Seg52.relationRow7947 rho ∧ Seg52.relationRow7948 rho ∧ Seg52.relationRow7949 rho ∧ Seg52.relationRow7950 rho ∧ Seg52.relationRow7951 rho ∧ Seg52.relationRow7952 rho ∧ Seg52.relationRow7953 rho := by
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

    _, _, _, _, _, _, _, _, _, p99

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6399⟩

  unfold Seg52.relationPart99 at p99

  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7946, r7947, r7948, r7949, r7950, r7951, r7952, r7953, _, _, _, _, _, _, _⟩

  exact ⟨r6399, r7946, r7947, r7948, r7949, r7950, r7951, r7952, r7953⟩

theorem seg52Blind_rung250 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50788 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 250)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      250 (Bool.toZMod bit) (seg52BlindAccState rho 250)
      (seg52BlindAccState rho 251) := by
  obtain ⟨r6399, r7946, r7947, r7948, r7949, r7950, r7951, r7952, r7953⟩ := seg52Blind_rows250 rho h
  unfold Seg52.relationRow6399 at r6399

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

  have hnextx : seg52BlindDeltaX250 rho =
      seg52BlindDeltaX249 rho + rho 52340 := by
    unfold seg52BlindDeltaX250 seg52BlindDeltaX249
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51540 8 100]

    ring

  have hnexty : seg52BlindDeltaY250 rho =
      seg52BlindDeltaY249 rho + rho 52341 := by
    unfold seg52BlindDeltaY250 seg52BlindDeltaY249
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51541 8 100]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 250
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX249 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY249 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX250 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY250 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY249 rho) (rho 52341)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 250)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3423249253909403246139040301463916746144409278219181153258610840910387912442 : Seg52.F) (6135780641178353956297679987905829122804967566789579500471565046427035547949 : Seg52.F)
    (1114568145659386778187895350588199337573477509854696825794942431420014221350 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (599777004534220749120502838015143623707978608149568606760569517361110658934 : Seg52.F) (5525282322157049009926327647925022509614376580291064601095875967132583903437 : Seg52.F)
    (4492593394048688590737191085005912262920230107213966480357334310224790308748 : Seg52.F) (5140125981417146259393730273521788552644641601090457645155128022334705607696 : Seg52.F)
    (2308681108250016467951144950875717408570931768364484327463668409490373691092 : Seg52.F) (5021212495518967178109784637317629785231490056934882674676622615007021326599 : Seg52.F)
    (3304335768011224164855094665259757978731257734063606182780105433582703631345 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX249 rho) (seg52BlindDeltaY249 rho) (rho 50788)
    (rho 52334) (rho 52335) (rho 52336) (rho 52338)
    (rho 52337) (rho 52339) (rho 52340) (rho 52341) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 250)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L250]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX249 seg52BlindDeltaY249;
        first | linear_combination r7946 | linear_combination -r7946)
    (by unfold seg52BlindDeltaX249 seg52BlindDeltaY249;
        first | linear_combination r7947 | linear_combination -r7947)
    (by unfold seg52BlindDeltaX249 seg52BlindDeltaY249;
        first | linear_combination r7948 | linear_combination -r7948)
    (by first | linear_combination r7949 | linear_combination -r7949)
    (by unfold seg52BlindDeltaX249 seg52BlindDeltaY249;
        first | linear_combination r7950 | linear_combination -r7950)
    (by first | linear_combination r7951 | linear_combination -r7951)
    (by unfold seg52BlindDeltaX249; first | linear_combination r7952 | linear_combination -r7952)
    (by unfold seg52BlindDeltaY249; first | linear_combination r7953 | linear_combination -r7953)
    (by linear_combination r6399)

theorem seg52Blind_hstep_c24 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
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

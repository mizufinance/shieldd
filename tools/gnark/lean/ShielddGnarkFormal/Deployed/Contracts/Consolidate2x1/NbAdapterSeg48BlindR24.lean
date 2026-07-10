import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows241 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6390 rho ∧ Seg48.relationRow7874 rho ∧ Seg48.relationRow7875 rho ∧ Seg48.relationRow7876 rho ∧ Seg48.relationRow7877 rho ∧ Seg48.relationRow7878 rho ∧ Seg48.relationRow7879 rho ∧ Seg48.relationRow7880 rho ∧ Seg48.relationRow7881 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6390, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7874, r7875, r7876, r7877, r7878, r7879, r7880, r7881, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6390, r7874, r7875, r7876, r7877, r7878, r7879, r7880, r7881⟩

theorem seg48Blind_rung241 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39147 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 241)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      241 (Bool.toZMod bit) (seg48BlindAccState rho 241)
      (seg48BlindAccState rho 242) := by
  obtain ⟨r6390, r7874, r7875, r7876, r7877, r7878, r7879, r7880, r7881⟩ := seg48Blind_rows241 rho h
  unfold Seg48.relationRow6390 at r6390

  unfold Seg48.relationRow7874 at r7874

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7874

  unfold Seg48.relationRow7875 at r7875

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7875

  unfold Seg48.relationRow7876 at r7876

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7876

  unfold Seg48.relationRow7877 at r7877

  unfold Seg48.relationRow7878 at r7878

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7878

  unfold Seg48.relationRow7879 at r7879

  unfold Seg48.relationRow7880 at r7880

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7880

  unfold Seg48.relationRow7881 at r7881

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7881

  have hnextx : seg48BlindDeltaX241 rho =
      seg48BlindDeltaX240 rho + rho 40636 := by
    unfold seg48BlindDeltaX241 seg48BlindDeltaX240
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 91]

    ring

  have hnexty : seg48BlindDeltaY241 rho =
      seg48BlindDeltaY240 rho + rho 40637 := by
    unfold seg48BlindDeltaY241 seg48BlindDeltaY240
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 91]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 241
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX240 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY240 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX241 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY241 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY240 rho) (rho 40637)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 241)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (5513923410512906536181717766244606058613026157505942978262642991579256481779 : Seg48.F) (4019392668560449309488260267251635682877589049350116880541979459658764265975 : Seg48.F)
    (1088854329644985421421153094714695210114715871701996030869388995320611508713 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (7893717792549064318472830338109032386029173470313375374389471475809771008558 : Seg48.F) (4374296518096528526619005251611994626052244170889537534720848003928046783174 : Seg48.F)
    (6602569734421699621514347941938542364431913392460043182359308603865112578723 : Seg48.F) (4096675033091295205087808066124098390907209830903503719888873793552637225980 : Seg48.F)
    (4425069080867921114760564671529910848498310285803946947393253996258644973066 : Seg48.F) (2930538338915463888067107172536940472762873177648120849672590464338152757262 : Seg48.F)
    (4347786716337075219161016872657448140468689504250560108046359662364772013061 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX240 rho) (seg48BlindDeltaY240 rho) (rho 39147)
    (rho 40630) (rho 40631) (rho 40632) (rho 40634)
    (rho 40633) (rho 40635) (rho 40636) (rho 40637) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 241)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L241]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX240 seg48BlindDeltaY240;
        first | linear_combination r7874 | linear_combination -r7874)
    (by unfold seg48BlindDeltaX240 seg48BlindDeltaY240;
        first | linear_combination r7875 | linear_combination -r7875)
    (by unfold seg48BlindDeltaX240 seg48BlindDeltaY240;
        first | linear_combination r7876 | linear_combination -r7876)
    (by first | linear_combination r7877 | linear_combination -r7877)
    (by unfold seg48BlindDeltaX240 seg48BlindDeltaY240;
        first | linear_combination r7878 | linear_combination -r7878)
    (by first | linear_combination r7879 | linear_combination -r7879)
    (by unfold seg48BlindDeltaX240; first | linear_combination r7880 | linear_combination -r7880)
    (by unfold seg48BlindDeltaY240; first | linear_combination r7881 | linear_combination -r7881)
    (by linear_combination r6390)

theorem seg48Blind_rows242 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6391 rho ∧ Seg48.relationRow7882 rho ∧ Seg48.relationRow7883 rho ∧ Seg48.relationRow7884 rho ∧ Seg48.relationRow7885 rho ∧ Seg48.relationRow7886 rho ∧ Seg48.relationRow7887 rho ∧ Seg48.relationRow7888 rho ∧ Seg48.relationRow7889 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6391, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7882, r7883, r7884, r7885, r7886, r7887, r7888, r7889, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6391, r7882, r7883, r7884, r7885, r7886, r7887, r7888, r7889⟩

theorem seg48Blind_rung242 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39148 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 242)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      242 (Bool.toZMod bit) (seg48BlindAccState rho 242)
      (seg48BlindAccState rho 243) := by
  obtain ⟨r6391, r7882, r7883, r7884, r7885, r7886, r7887, r7888, r7889⟩ := seg48Blind_rows242 rho h
  unfold Seg48.relationRow6391 at r6391

  unfold Seg48.relationRow7882 at r7882

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7882

  unfold Seg48.relationRow7883 at r7883

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7883

  unfold Seg48.relationRow7884 at r7884

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7884

  unfold Seg48.relationRow7885 at r7885

  unfold Seg48.relationRow7886 at r7886

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7886

  unfold Seg48.relationRow7887 at r7887

  unfold Seg48.relationRow7888 at r7888

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7888

  unfold Seg48.relationRow7889 at r7889

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7889

  have hnextx : seg48BlindDeltaX242 rho =
      seg48BlindDeltaX241 rho + rho 40644 := by
    unfold seg48BlindDeltaX242 seg48BlindDeltaX241
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 92]

    ring

  have hnexty : seg48BlindDeltaY242 rho =
      seg48BlindDeltaY241 rho + rho 40645 := by
    unfold seg48BlindDeltaY242 seg48BlindDeltaY241
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 92]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 242
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX241 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY241 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX242 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY242 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY241 rho) (rho 40645)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 242)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (2203407895172835048751996239651722897202444515700048382087296164906444292884 : Seg48.F) (3448466306987922263614383402131330016976447875891964797858321066322296943384 : Seg48.F)
    (5651874202160757312366379641783052914178892391592013179945617231228741236268 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (5795376365332425280251108321101108099365152824664954485845090213493474225511 : Seg48.F) (2804388294726016125662420118254808533838138442815855271791669649881650081475 : Seg48.F)
    (2902823778148234976100277600948068094267423525193951070508650400515105641806 : Seg48.F) (5671053344592727771906963833821946238787773899323490641818704286979229043571 : Seg48.F)
    (4995995442440448160634441536650216514399451459262099030076912389595112295657 : Seg48.F) (6241053854255535375496828699129823634173454819454015445847937291010964946157 : Seg48.F)
    (2773408404835642652341861104959600292588125435830573186116529168938180195470 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX241 rho) (seg48BlindDeltaY241 rho) (rho 39148)
    (rho 40638) (rho 40639) (rho 40640) (rho 40642)
    (rho 40641) (rho 40643) (rho 40644) (rho 40645) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 242)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L242]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX241 seg48BlindDeltaY241;
        first | linear_combination r7882 | linear_combination -r7882)
    (by unfold seg48BlindDeltaX241 seg48BlindDeltaY241;
        first | linear_combination r7883 | linear_combination -r7883)
    (by unfold seg48BlindDeltaX241 seg48BlindDeltaY241;
        first | linear_combination r7884 | linear_combination -r7884)
    (by first | linear_combination r7885 | linear_combination -r7885)
    (by unfold seg48BlindDeltaX241 seg48BlindDeltaY241;
        first | linear_combination r7886 | linear_combination -r7886)
    (by first | linear_combination r7887 | linear_combination -r7887)
    (by unfold seg48BlindDeltaX241; first | linear_combination r7888 | linear_combination -r7888)
    (by unfold seg48BlindDeltaY241; first | linear_combination r7889 | linear_combination -r7889)
    (by linear_combination r6391)

theorem seg48Blind_rows243 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6392 rho ∧ Seg48.relationRow7890 rho ∧ Seg48.relationRow7891 rho ∧ Seg48.relationRow7892 rho ∧ Seg48.relationRow7893 rho ∧ Seg48.relationRow7894 rho ∧ Seg48.relationRow7895 rho ∧ Seg48.relationRow7896 rho ∧ Seg48.relationRow7897 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6392, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7890, r7891, r7892, r7893, r7894, r7895, r7896, r7897, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6392, r7890, r7891, r7892, r7893, r7894, r7895, r7896, r7897⟩

theorem seg48Blind_rung243 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39149 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 243)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      243 (Bool.toZMod bit) (seg48BlindAccState rho 243)
      (seg48BlindAccState rho 244) := by
  obtain ⟨r6392, r7890, r7891, r7892, r7893, r7894, r7895, r7896, r7897⟩ := seg48Blind_rows243 rho h
  unfold Seg48.relationRow6392 at r6392

  unfold Seg48.relationRow7890 at r7890

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7890

  unfold Seg48.relationRow7891 at r7891

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7891

  unfold Seg48.relationRow7892 at r7892

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7892

  unfold Seg48.relationRow7893 at r7893

  unfold Seg48.relationRow7894 at r7894

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7894

  unfold Seg48.relationRow7895 at r7895

  unfold Seg48.relationRow7896 at r7896

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7896

  unfold Seg48.relationRow7897 at r7897

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7897

  have hnextx : seg48BlindDeltaX243 rho =
      seg48BlindDeltaX242 rho + rho 40652 := by
    unfold seg48BlindDeltaX243 seg48BlindDeltaX242
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 93]

    ring

  have hnexty : seg48BlindDeltaY243 rho =
      seg48BlindDeltaY242 rho + rho 40653 := by
    unfold seg48BlindDeltaY243 seg48BlindDeltaY242
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 93]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 243
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX242 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY242 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX243 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY243 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY242 rho) (rho 40653)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 243)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (2579576461021703843062238166306385538971946073339432738818486279193087908325 : Seg48.F) (2416772477807176936961022868245741931807687643073911419383531377235193867027 : Seg48.F)
    (4996348938828880780023261034552127470779633716413344158202017656428281775352 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (5054703949369480008265337863130172882247344153175250621606584714879089757143 : Seg48.F) (5601485619389641128729184567002420572067936942603615555204830633048519319217 : Seg48.F)
    (8201628241980808648367014804422567103406614700569427414153625827007033516096 : Seg48.F) (1978452197506266677604550734876224268318213547823483511718485120057340746806 : Seg48.F)
    (6027689271621193487287802070535804599568211692080152408551702078682215372014 : Seg48.F) (5864885288406666581186586772475160992403953261814631089116747176724321330716 : Seg48.F)
    (6466009551922103746644274203905322263057685787330580316216748335860068492235 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX242 rho) (seg48BlindDeltaY242 rho) (rho 39149)
    (rho 40646) (rho 40647) (rho 40648) (rho 40650)
    (rho 40649) (rho 40651) (rho 40652) (rho 40653) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 243)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L243]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX242 seg48BlindDeltaY242;
        first | linear_combination r7890 | linear_combination -r7890)
    (by unfold seg48BlindDeltaX242 seg48BlindDeltaY242;
        first | linear_combination r7891 | linear_combination -r7891)
    (by unfold seg48BlindDeltaX242 seg48BlindDeltaY242;
        first | linear_combination r7892 | linear_combination -r7892)
    (by first | linear_combination r7893 | linear_combination -r7893)
    (by unfold seg48BlindDeltaX242 seg48BlindDeltaY242;
        first | linear_combination r7894 | linear_combination -r7894)
    (by first | linear_combination r7895 | linear_combination -r7895)
    (by unfold seg48BlindDeltaX242; first | linear_combination r7896 | linear_combination -r7896)
    (by unfold seg48BlindDeltaY242; first | linear_combination r7897 | linear_combination -r7897)
    (by linear_combination r6392)

theorem seg48Blind_rows244 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6393 rho ∧ Seg48.relationRow7898 rho ∧ Seg48.relationRow7899 rho ∧ Seg48.relationRow7900 rho ∧ Seg48.relationRow7901 rho ∧ Seg48.relationRow7902 rho ∧ Seg48.relationRow7903 rho ∧ Seg48.relationRow7904 rho ∧ Seg48.relationRow7905 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6393, _, _, _, _, _, _⟩

  unfold Seg48.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7898, r7899, r7900, r7901, r7902, r7903, r7904, r7905, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6393, r7898, r7899, r7900, r7901, r7902, r7903, r7904, r7905⟩

theorem seg48Blind_rung244 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39150 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 244)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      244 (Bool.toZMod bit) (seg48BlindAccState rho 244)
      (seg48BlindAccState rho 245) := by
  obtain ⟨r6393, r7898, r7899, r7900, r7901, r7902, r7903, r7904, r7905⟩ := seg48Blind_rows244 rho h
  unfold Seg48.relationRow6393 at r6393

  unfold Seg48.relationRow7898 at r7898

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7898

  unfold Seg48.relationRow7899 at r7899

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7899

  unfold Seg48.relationRow7900 at r7900

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7900

  unfold Seg48.relationRow7901 at r7901

  unfold Seg48.relationRow7902 at r7902

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7902

  unfold Seg48.relationRow7903 at r7903

  unfold Seg48.relationRow7904 at r7904

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7904

  unfold Seg48.relationRow7905 at r7905

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7905

  have hnextx : seg48BlindDeltaX244 rho =
      seg48BlindDeltaX243 rho + rho 40660 := by
    unfold seg48BlindDeltaX244 seg48BlindDeltaX243
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 94]

    ring

  have hnexty : seg48BlindDeltaY244 rho =
      seg48BlindDeltaY243 rho + rho 40661 := by
    unfold seg48BlindDeltaY244 seg48BlindDeltaY243
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 94]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 244
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX243 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY243 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX244 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY244 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY243 rho) (rho 40661)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 244)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (2514857472370197755194646005525823698508853960596342289202109878754445993616 : Seg48.F) (754628652708249502357400135309921781955918134996983597452135724766179961977 : Seg48.F)
    (3269486125078447257552046140835745480464772095593325886654245603520625955593 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (8172949235390102498771900239037686348711764669444278188324224876846579830488 : Seg48.F) (2291848306146904448449527014905496286647056653699481663383632137549226627925 : Seg48.F)
    (6378915408891041453484610792489999331570369577930014658719925711199666616324 : Seg48.F) (4677364479696824080456115307318514279825491842592336608554691172134405775560 : Seg48.F)
    (7689833096720120921891424803471624749419981200157080230483097731151229277064 : Seg48.F) (5929604277058172669054178933255722832867045374557721538733123577162963245425 : Seg48.F)
    (3767097269731546343792709631463032251550407492561727219380542283783003463481 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX243 rho) (seg48BlindDeltaY243 rho) (rho 39150)
    (rho 40654) (rho 40655) (rho 40656) (rho 40658)
    (rho 40657) (rho 40659) (rho 40660) (rho 40661) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 244)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L244]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX243 seg48BlindDeltaY243;
        first | linear_combination r7898 | linear_combination -r7898)
    (by unfold seg48BlindDeltaX243 seg48BlindDeltaY243;
        first | linear_combination r7899 | linear_combination -r7899)
    (by unfold seg48BlindDeltaX243 seg48BlindDeltaY243;
        first | linear_combination r7900 | linear_combination -r7900)
    (by first | linear_combination r7901 | linear_combination -r7901)
    (by unfold seg48BlindDeltaX243 seg48BlindDeltaY243;
        first | linear_combination r7902 | linear_combination -r7902)
    (by first | linear_combination r7903 | linear_combination -r7903)
    (by unfold seg48BlindDeltaX243; first | linear_combination r7904 | linear_combination -r7904)
    (by unfold seg48BlindDeltaY243; first | linear_combination r7905 | linear_combination -r7905)
    (by linear_combination r6393)

theorem seg48Blind_rows245 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6394 rho ∧ Seg48.relationRow7906 rho ∧ Seg48.relationRow7907 rho ∧ Seg48.relationRow7908 rho ∧ Seg48.relationRow7909 rho ∧ Seg48.relationRow7910 rho ∧ Seg48.relationRow7911 rho ∧ Seg48.relationRow7912 rho ∧ Seg48.relationRow7913 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6394, _, _, _, _, _⟩

  unfold Seg48.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7906, r7907, r7908, r7909, r7910, r7911, r7912, r7913, _, _, _, _, _, _⟩

  exact ⟨r6394, r7906, r7907, r7908, r7909, r7910, r7911, r7912, r7913⟩

theorem seg48Blind_rung245 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39151 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 245)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      245 (Bool.toZMod bit) (seg48BlindAccState rho 245)
      (seg48BlindAccState rho 246) := by
  obtain ⟨r6394, r7906, r7907, r7908, r7909, r7910, r7911, r7912, r7913⟩ := seg48Blind_rows245 rho h
  unfold Seg48.relationRow6394 at r6394

  unfold Seg48.relationRow7906 at r7906

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7906

  unfold Seg48.relationRow7907 at r7907

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7907

  unfold Seg48.relationRow7908 at r7908

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7908

  unfold Seg48.relationRow7909 at r7909

  unfold Seg48.relationRow7910 at r7910

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7910

  unfold Seg48.relationRow7911 at r7911

  unfold Seg48.relationRow7912 at r7912

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7912

  unfold Seg48.relationRow7913 at r7913

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7913

  have hnextx : seg48BlindDeltaX245 rho =
      seg48BlindDeltaX244 rho + rho 40668 := by
    unfold seg48BlindDeltaX245 seg48BlindDeltaX244
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 95]

    ring

  have hnexty : seg48BlindDeltaY245 rho =
      seg48BlindDeltaY244 rho + rho 40669 := by
    unfold seg48BlindDeltaY245 seg48BlindDeltaY244
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 95]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 245
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX244 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY244 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX245 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY245 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY244 rho) (rho 40669)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 245)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (4875653010124723802105271487582443021807143081825221610768106802677393137478 : Seg48.F) (837830745026968237423835190512321529772325628897387301638787230114395216226 : Seg48.F)
    (5713483755151692039529106678094764551579468710722608912406894032791788353704 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (6192617647388288407007453842040928560801823687941953698141418856282585745487 : Seg48.F) (5531294256398319965953230848414062600628135281356110451193038651571188380940 : Seg48.F)
    (2570807001276145449324531511902523303421864657760087009493837657773969935704 : Seg48.F) (6119815029836556037983158482495769450696490408038757353122107864397857228893 : Seg48.F)
    (7606631004401402186824989748269225001603573706256676526296446225803014022815 : Seg48.F) (3568808739303646622143553451199103509568756253328842217167126653240016101563 : Seg48.F)
    (2324646719591814386265666456285777080679408927115306474813125591519552010148 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX244 rho) (seg48BlindDeltaY244 rho) (rho 39151)
    (rho 40662) (rho 40663) (rho 40664) (rho 40666)
    (rho 40665) (rho 40667) (rho 40668) (rho 40669) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 245)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L245]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX244 seg48BlindDeltaY244;
        first | linear_combination r7906 | linear_combination -r7906)
    (by unfold seg48BlindDeltaX244 seg48BlindDeltaY244;
        first | linear_combination r7907 | linear_combination -r7907)
    (by unfold seg48BlindDeltaX244 seg48BlindDeltaY244;
        first | linear_combination r7908 | linear_combination -r7908)
    (by first | linear_combination r7909 | linear_combination -r7909)
    (by unfold seg48BlindDeltaX244 seg48BlindDeltaY244;
        first | linear_combination r7910 | linear_combination -r7910)
    (by first | linear_combination r7911 | linear_combination -r7911)
    (by unfold seg48BlindDeltaX244; first | linear_combination r7912 | linear_combination -r7912)
    (by unfold seg48BlindDeltaY244; first | linear_combination r7913 | linear_combination -r7913)
    (by linear_combination r6394)

theorem seg48Blind_rows246 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6395 rho ∧ Seg48.relationRow7914 rho ∧ Seg48.relationRow7915 rho ∧ Seg48.relationRow7916 rho ∧ Seg48.relationRow7917 rho ∧ Seg48.relationRow7918 rho ∧ Seg48.relationRow7919 rho ∧ Seg48.relationRow7920 rho ∧ Seg48.relationRow7921 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6395, _, _, _, _⟩

  unfold Seg48.relationPart98 at p98

  rcases p98 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7914, r7915, r7916, r7917, r7918, r7919⟩

  unfold Seg48.relationPart99 at p99

  rcases p99 with ⟨r7920, r7921, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6395, r7914, r7915, r7916, r7917, r7918, r7919, r7920, r7921⟩

theorem seg48Blind_rung246 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39152 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 246)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      246 (Bool.toZMod bit) (seg48BlindAccState rho 246)
      (seg48BlindAccState rho 247) := by
  obtain ⟨r6395, r7914, r7915, r7916, r7917, r7918, r7919, r7920, r7921⟩ := seg48Blind_rows246 rho h
  unfold Seg48.relationRow6395 at r6395

  unfold Seg48.relationRow7914 at r7914

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7914

  unfold Seg48.relationRow7915 at r7915

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7915

  unfold Seg48.relationRow7916 at r7916

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7916

  unfold Seg48.relationRow7917 at r7917

  unfold Seg48.relationRow7918 at r7918

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7918

  unfold Seg48.relationRow7919 at r7919

  unfold Seg48.relationRow7920 at r7920

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7920

  unfold Seg48.relationRow7921 at r7921

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7921

  have hnextx : seg48BlindDeltaX246 rho =
      seg48BlindDeltaX245 rho + rho 40676 := by
    unfold seg48BlindDeltaX246 seg48BlindDeltaX245
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 96]

    ring

  have hnexty : seg48BlindDeltaY246 rho =
      seg48BlindDeltaY245 rho + rho 40677 := by
    unfold seg48BlindDeltaY246 seg48BlindDeltaY245
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 96]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 246
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX245 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY245 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX246 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY246 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY245 rho) (rho 40677)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 246)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (7179761945373182665345787383507852275205996006885247412066571252852218245855 : Seg48.F) (4762005878824215829825631321512654478131353721275819073046772322870151862794 : Seg48.F)
    (3497306074769028070922593766238960221961450393007002657178110119804960869608 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (5101400651441189407483351544755435501663024206878720700596611963380843413851 : Seg48.F) (7981528139320114171798714864559238512156499148515537947774068280127163008260 : Seg48.F)
    (6137069378560425525105402465535383648320524364227647625661240755946255236748 : Seg48.F) (2972688831071837780483714302418888123151130968801947930493135679059695321215 : Seg48.F)
    (3682455870604154594423193617268892053244545613878244754888461133047257376247 : Seg48.F) (1264699804055187758903037555273694256169903328268816415868662203065190993186 : Seg48.F)
    (5471772918356532643765110636362658408224768366352115897442097776857713917826 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX245 rho) (seg48BlindDeltaY245 rho) (rho 39152)
    (rho 40670) (rho 40671) (rho 40672) (rho 40674)
    (rho 40673) (rho 40675) (rho 40676) (rho 40677) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 246)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L246]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX245 seg48BlindDeltaY245;
        first | linear_combination r7914 | linear_combination -r7914)
    (by unfold seg48BlindDeltaX245 seg48BlindDeltaY245;
        first | linear_combination r7915 | linear_combination -r7915)
    (by unfold seg48BlindDeltaX245 seg48BlindDeltaY245;
        first | linear_combination r7916 | linear_combination -r7916)
    (by first | linear_combination r7917 | linear_combination -r7917)
    (by unfold seg48BlindDeltaX245 seg48BlindDeltaY245;
        first | linear_combination r7918 | linear_combination -r7918)
    (by first | linear_combination r7919 | linear_combination -r7919)
    (by unfold seg48BlindDeltaX245; first | linear_combination r7920 | linear_combination -r7920)
    (by unfold seg48BlindDeltaY245; first | linear_combination r7921 | linear_combination -r7921)
    (by linear_combination r6395)

theorem seg48Blind_rows247 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6396 rho ∧ Seg48.relationRow7922 rho ∧ Seg48.relationRow7923 rho ∧ Seg48.relationRow7924 rho ∧ Seg48.relationRow7925 rho ∧ Seg48.relationRow7926 rho ∧ Seg48.relationRow7927 rho ∧ Seg48.relationRow7928 rho ∧ Seg48.relationRow7929 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6396, _, _, _⟩

  unfold Seg48.relationPart99 at p99

  rcases p99 with ⟨_, _, r7922, r7923, r7924, r7925, r7926, r7927, r7928, r7929, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6396, r7922, r7923, r7924, r7925, r7926, r7927, r7928, r7929⟩

theorem seg48Blind_rung247 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39153 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 247)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      247 (Bool.toZMod bit) (seg48BlindAccState rho 247)
      (seg48BlindAccState rho 248) := by
  obtain ⟨r6396, r7922, r7923, r7924, r7925, r7926, r7927, r7928, r7929⟩ := seg48Blind_rows247 rho h
  unfold Seg48.relationRow6396 at r6396

  unfold Seg48.relationRow7922 at r7922

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7922

  unfold Seg48.relationRow7923 at r7923

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7923

  unfold Seg48.relationRow7924 at r7924

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7924

  unfold Seg48.relationRow7925 at r7925

  unfold Seg48.relationRow7926 at r7926

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7926

  unfold Seg48.relationRow7927 at r7927

  unfold Seg48.relationRow7928 at r7928

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7928

  unfold Seg48.relationRow7929 at r7929

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7929

  have hnextx : seg48BlindDeltaX247 rho =
      seg48BlindDeltaX246 rho + rho 40684 := by
    unfold seg48BlindDeltaX247 seg48BlindDeltaX246
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 97]

    ring

  have hnexty : seg48BlindDeltaY247 rho =
      seg48BlindDeltaY246 rho + rho 40685 := by
    unfold seg48BlindDeltaY247 seg48BlindDeltaY246
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 97]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 247
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX246 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY246 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX247 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY247 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY246 rho) (rho 40685)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 247)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (3205778446841165504107412647422570446185838532302611287722449995897633519006 : Seg48.F) (6161368615757064578468735830384419737443415875146445724866075505601369212342 : Seg48.F)
    (922685313169859658327323539025443652253355072294993184653292045581593492307 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (1900892461963676509640778516803471664077224137855858051159565579766427638818 : Seg48.F) (4287670697339900789370947690166861455441816137951612202103027632982100060505 : Seg48.F)
    (4136388419679310950960951468679232432376196009946805418881652989243827062098 : Seg48.F) (3394270195696985021778291261454563608844071744136467992192255746065724196317 : Seg48.F)
    (2283093133671305845780089108397126793932483460007618103069157950316040026699 : Seg48.F) (5238683302587204920141412291358976085190060802851452540212783460019775720035 : Seg48.F)
    (5050191553731385402470533677326982922531827591017595835742977709851685042724 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX246 rho) (seg48BlindDeltaY246 rho) (rho 39153)
    (rho 40678) (rho 40679) (rho 40680) (rho 40682)
    (rho 40681) (rho 40683) (rho 40684) (rho 40685) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 247)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L247]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX246 seg48BlindDeltaY246;
        first | linear_combination r7922 | linear_combination -r7922)
    (by unfold seg48BlindDeltaX246 seg48BlindDeltaY246;
        first | linear_combination r7923 | linear_combination -r7923)
    (by unfold seg48BlindDeltaX246 seg48BlindDeltaY246;
        first | linear_combination r7924 | linear_combination -r7924)
    (by first | linear_combination r7925 | linear_combination -r7925)
    (by unfold seg48BlindDeltaX246 seg48BlindDeltaY246;
        first | linear_combination r7926 | linear_combination -r7926)
    (by first | linear_combination r7927 | linear_combination -r7927)
    (by unfold seg48BlindDeltaX246; first | linear_combination r7928 | linear_combination -r7928)
    (by unfold seg48BlindDeltaY246; first | linear_combination r7929 | linear_combination -r7929)
    (by linear_combination r6396)

theorem seg48Blind_rows248 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6397 rho ∧ Seg48.relationRow7930 rho ∧ Seg48.relationRow7931 rho ∧ Seg48.relationRow7932 rho ∧ Seg48.relationRow7933 rho ∧ Seg48.relationRow7934 rho ∧ Seg48.relationRow7935 rho ∧ Seg48.relationRow7936 rho ∧ Seg48.relationRow7937 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6397, _, _⟩

  unfold Seg48.relationPart99 at p99

  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, r7930, r7931, r7932, r7933, r7934, r7935, r7936, r7937, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6397, r7930, r7931, r7932, r7933, r7934, r7935, r7936, r7937⟩

theorem seg48Blind_rung248 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39154 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 248)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      248 (Bool.toZMod bit) (seg48BlindAccState rho 248)
      (seg48BlindAccState rho 249) := by
  obtain ⟨r6397, r7930, r7931, r7932, r7933, r7934, r7935, r7936, r7937⟩ := seg48Blind_rows248 rho h
  unfold Seg48.relationRow6397 at r6397

  unfold Seg48.relationRow7930 at r7930

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7930

  unfold Seg48.relationRow7931 at r7931

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7931

  unfold Seg48.relationRow7932 at r7932

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7932

  unfold Seg48.relationRow7933 at r7933

  unfold Seg48.relationRow7934 at r7934

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7934

  unfold Seg48.relationRow7935 at r7935

  unfold Seg48.relationRow7936 at r7936

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7936

  unfold Seg48.relationRow7937 at r7937

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7937

  have hnextx : seg48BlindDeltaX248 rho =
      seg48BlindDeltaX247 rho + rho 40692 := by
    unfold seg48BlindDeltaX248 seg48BlindDeltaX247
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 98]

    ring

  have hnexty : seg48BlindDeltaY248 rho =
      seg48BlindDeltaY247 rho + rho 40693 := by
    unfold seg48BlindDeltaY248 seg48BlindDeltaY247
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 98]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 248
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX247 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY247 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX248 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY248 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY247 rho) (rho 40693)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 248)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (3637295467543686737834382267987615682687332247363798918988631490872682703987 : Seg48.F) (2391382174518060191774241777672417365203178192287378483687464476900478563037 : Seg48.F)
    (6028677642061746929608624045660033047890510439651177402676095967773161267024 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (4350753457803126617239087690150575952407387343445826335205579906960839554722 : Seg48.F) (7744348585832122768075044097357239165124010007619404673097934308000867538251 : Seg48.F)
    (4744066201361012552590713371123910662718173171646119997147627113007781772154 : Seg48.F) (7986328868085048780486265555216982383681361301222809630133404507816215461524 : Seg48.F)
    (6053079574910310232474583161109129166172721142866685344247768979016930676004 : Seg48.F) (4807166281884683686414442670793930848688567087790264908946601965044726535054 : Seg48.F)
    (458132881343321643762559383564564147694538033931254197801828948101193777517 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX247 rho) (seg48BlindDeltaY247 rho) (rho 39154)
    (rho 40686) (rho 40687) (rho 40688) (rho 40690)
    (rho 40689) (rho 40691) (rho 40692) (rho 40693) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 248)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L248]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX247 seg48BlindDeltaY247;
        first | linear_combination r7930 | linear_combination -r7930)
    (by unfold seg48BlindDeltaX247 seg48BlindDeltaY247;
        first | linear_combination r7931 | linear_combination -r7931)
    (by unfold seg48BlindDeltaX247 seg48BlindDeltaY247;
        first | linear_combination r7932 | linear_combination -r7932)
    (by first | linear_combination r7933 | linear_combination -r7933)
    (by unfold seg48BlindDeltaX247 seg48BlindDeltaY247;
        first | linear_combination r7934 | linear_combination -r7934)
    (by first | linear_combination r7935 | linear_combination -r7935)
    (by unfold seg48BlindDeltaX247; first | linear_combination r7936 | linear_combination -r7936)
    (by unfold seg48BlindDeltaY247; first | linear_combination r7937 | linear_combination -r7937)
    (by linear_combination r6397)

theorem seg48Blind_rows249 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6398 rho ∧ Seg48.relationRow7938 rho ∧ Seg48.relationRow7939 rho ∧ Seg48.relationRow7940 rho ∧ Seg48.relationRow7941 rho ∧ Seg48.relationRow7942 rho ∧ Seg48.relationRow7943 rho ∧ Seg48.relationRow7944 rho ∧ Seg48.relationRow7945 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6398, _⟩

  unfold Seg48.relationPart99 at p99

  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7938, r7939, r7940, r7941, r7942, r7943, r7944, r7945, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6398, r7938, r7939, r7940, r7941, r7942, r7943, r7944, r7945⟩

theorem seg48Blind_rung249 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39155 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 249)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      249 (Bool.toZMod bit) (seg48BlindAccState rho 249)
      (seg48BlindAccState rho 250) := by
  obtain ⟨r6398, r7938, r7939, r7940, r7941, r7942, r7943, r7944, r7945⟩ := seg48Blind_rows249 rho h
  unfold Seg48.relationRow6398 at r6398

  unfold Seg48.relationRow7938 at r7938

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7938

  unfold Seg48.relationRow7939 at r7939

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7939

  unfold Seg48.relationRow7940 at r7940

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7940

  unfold Seg48.relationRow7941 at r7941

  unfold Seg48.relationRow7942 at r7942

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7942

  unfold Seg48.relationRow7943 at r7943

  unfold Seg48.relationRow7944 at r7944

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7944

  unfold Seg48.relationRow7945 at r7945

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7945

  have hnextx : seg48BlindDeltaX249 rho =
      seg48BlindDeltaX248 rho + rho 40700 := by
    unfold seg48BlindDeltaX249 seg48BlindDeltaX248
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 99]

    ring

  have hnexty : seg48BlindDeltaY249 rho =
      seg48BlindDeltaY248 rho + rho 40701 := by
    unfold seg48BlindDeltaY249 seg48BlindDeltaY248
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 99]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 249
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX248 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY248 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX249 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY249 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY248 rho) (rho 40701)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 249)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (6040287128678729511763090676601340065858477829358795237452282720529066134675 : Seg48.F) (211065313773697690845714574818954595516654490806675894571851535063540139993 : Seg48.F)
    (6251352442452427202608805251420294661375132320165471132024134255592606274668 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (4293681703212942226241860119445843202620766590413090406420978233149069990778 : Seg48.F) (1305409244711178263509137317536703823855434028379551891190204949390309402401 : Seg48.F)
    (7669045227694257730776453443358451663824146133794592849966096451796486309872 : Seg48.F) (1687634193423485956652330228636514267822633673284391909916374707104706944713 : Seg48.F)
    (8233396435654672733403110363962591935859244844347387933363381920853869099048 : Seg48.F) (2404174620749640912485734262180206465517421505795268590482950735388343104366 : Seg48.F)
    (6756827556004884467596494710145032263553265661869671918018858748812702294328 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX248 rho) (seg48BlindDeltaY248 rho) (rho 39155)
    (rho 40694) (rho 40695) (rho 40696) (rho 40698)
    (rho 40697) (rho 40699) (rho 40700) (rho 40701) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 249)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L249]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX248 seg48BlindDeltaY248;
        first | linear_combination r7938 | linear_combination -r7938)
    (by unfold seg48BlindDeltaX248 seg48BlindDeltaY248;
        first | linear_combination r7939 | linear_combination -r7939)
    (by unfold seg48BlindDeltaX248 seg48BlindDeltaY248;
        first | linear_combination r7940 | linear_combination -r7940)
    (by first | linear_combination r7941 | linear_combination -r7941)
    (by unfold seg48BlindDeltaX248 seg48BlindDeltaY248;
        first | linear_combination r7942 | linear_combination -r7942)
    (by first | linear_combination r7943 | linear_combination -r7943)
    (by unfold seg48BlindDeltaX248; first | linear_combination r7944 | linear_combination -r7944)
    (by unfold seg48BlindDeltaY248; first | linear_combination r7945 | linear_combination -r7945)
    (by linear_combination r6398)

theorem seg48Blind_rows250 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6399 rho ∧ Seg48.relationRow7946 rho ∧ Seg48.relationRow7947 rho ∧ Seg48.relationRow7948 rho ∧ Seg48.relationRow7949 rho ∧ Seg48.relationRow7950 rho ∧ Seg48.relationRow7951 rho ∧ Seg48.relationRow7952 rho ∧ Seg48.relationRow7953 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6399⟩

  unfold Seg48.relationPart99 at p99

  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7946, r7947, r7948, r7949, r7950, r7951, r7952, r7953, _, _, _, _, _, _, _⟩

  exact ⟨r6399, r7946, r7947, r7948, r7949, r7950, r7951, r7952, r7953⟩

theorem seg48Blind_rung250 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39156 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 250)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      250 (Bool.toZMod bit) (seg48BlindAccState rho 250)
      (seg48BlindAccState rho 251) := by
  obtain ⟨r6399, r7946, r7947, r7948, r7949, r7950, r7951, r7952, r7953⟩ := seg48Blind_rows250 rho h
  unfold Seg48.relationRow6399 at r6399

  unfold Seg48.relationRow7946 at r7946

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7946

  unfold Seg48.relationRow7947 at r7947

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7947

  unfold Seg48.relationRow7948 at r7948

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7948

  unfold Seg48.relationRow7949 at r7949

  unfold Seg48.relationRow7950 at r7950

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7950

  unfold Seg48.relationRow7951 at r7951

  unfold Seg48.relationRow7952 at r7952

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7952

  unfold Seg48.relationRow7953 at r7953

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7953

  have hnextx : seg48BlindDeltaX250 rho =
      seg48BlindDeltaX249 rho + rho 40708 := by
    unfold seg48BlindDeltaX250 seg48BlindDeltaX249
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 100]

    ring

  have hnexty : seg48BlindDeltaY250 rho =
      seg48BlindDeltaY249 rho + rho 40709 := by
    unfold seg48BlindDeltaY250 seg48BlindDeltaY249
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 100]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 250
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX249 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY249 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX250 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY250 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY249 rho) (rho 40709)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 250)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (3423249253909403246139040301463916746144409278219181153258610840910387912442 : Seg48.F) (6135780641178353956297679987905829122804967566789579500471565046427035547949 : Seg48.F)
    (1114568145659386778187895350588199337573477509854696825794942431420014221350 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (599777004534220749120502838015143623707978608149568606760569517361110658934 : Seg48.F) (5525282322157049009926327647925022509614376580291064601095875967132583903437 : Seg48.F)
    (4492593394048688590737191085005912262920230107213966480357334310224790308748 : Seg48.F) (5140125981417146259393730273521788552644641601090457645155128022334705607696 : Seg48.F)
    (2308681108250016467951144950875717408570931768364484327463668409490373691092 : Seg48.F) (5021212495518967178109784637317629785231490056934882674676622615007021326599 : Seg48.F)
    (3304335768011224164855094665259757978731257734063606182780105433582703631345 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX249 rho) (seg48BlindDeltaY249 rho) (rho 39156)
    (rho 40702) (rho 40703) (rho 40704) (rho 40706)
    (rho 40705) (rho 40707) (rho 40708) (rho 40709) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 250)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L250]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX249 seg48BlindDeltaY249;
        first | linear_combination r7946 | linear_combination -r7946)
    (by unfold seg48BlindDeltaX249 seg48BlindDeltaY249;
        first | linear_combination r7947 | linear_combination -r7947)
    (by unfold seg48BlindDeltaX249 seg48BlindDeltaY249;
        first | linear_combination r7948 | linear_combination -r7948)
    (by first | linear_combination r7949 | linear_combination -r7949)
    (by unfold seg48BlindDeltaX249 seg48BlindDeltaY249;
        first | linear_combination r7950 | linear_combination -r7950)
    (by first | linear_combination r7951 | linear_combination -r7951)
    (by unfold seg48BlindDeltaX249; first | linear_combination r7952 | linear_combination -r7952)
    (by unfold seg48BlindDeltaY249; first | linear_combination r7953 | linear_combination -r7953)
    (by linear_combination r6399)

theorem seg48Blind_hstep_c24 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 241 ≤ i → i < 251 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung241 rho h bits[241]! (hbitAt 241 (by omega)) hacc
  · exact seg48Blind_rung242 rho h bits[242]! (hbitAt 242 (by omega)) hacc
  · exact seg48Blind_rung243 rho h bits[243]! (hbitAt 243 (by omega)) hacc
  · exact seg48Blind_rung244 rho h bits[244]! (hbitAt 244 (by omega)) hacc
  · exact seg48Blind_rung245 rho h bits[245]! (hbitAt 245 (by omega)) hacc
  · exact seg48Blind_rung246 rho h bits[246]! (hbitAt 246 (by omega)) hacc
  · exact seg48Blind_rung247 rho h bits[247]! (hbitAt 247 (by omega)) hacc
  · exact seg48Blind_rung248 rho h bits[248]! (hbitAt 248 (by omega)) hacc
  · exact seg48Blind_rung249 rho h bits[249]! (hbitAt 249 (by omega)) hacc
  · exact seg48Blind_rung250 rho h bits[250]! (hbitAt 250 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows171 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6960 rho ∧ Seg52.relationRow7954 rho ∧ Seg52.relationRow7955 rho ∧ Seg52.relationRow7956 rho ∧ Seg52.relationRow7957 rho ∧ Seg52.relationRow7958 rho ∧ Seg52.relationRow7959 rho ∧ Seg52.relationRow7960 rho ∧ Seg52.relationRow7961 rho := by
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

    _, _, _, _, _, _, _, _, _, p99,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨r6960, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart99 at p99

  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7954, r7955, r7956, r7957, r7958, r7959, r7960, r7961, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6960, r7954, r7955, r7956, r7957, r7958, r7959, r7960, r7961⟩

theorem seg52Blind_rung171 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51349 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 171)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      171 (Bool.toZMod bit) (seg52BlindAccState rho 171)
      (seg52BlindAccState rho 172) := by
  obtain ⟨r6960, r7954, r7955, r7956, r7957, r7958, r7959, r7960, r7961⟩ := seg52Blind_rows171 rho h
  unfold Seg52.relationRow6960 at r6960

  unfold Seg52.relationRow7954 at r7954

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7954

  unfold Seg52.relationRow7955 at r7955

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7955

  unfold Seg52.relationRow7956 at r7956

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7956

  unfold Seg52.relationRow7957 at r7957

  unfold Seg52.relationRow7958 at r7958

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7958

  unfold Seg52.relationRow7959 at r7959

  unfold Seg52.relationRow7960 at r7960

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7960

  unfold Seg52.relationRow7961 at r7961

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7961

  have hnextx : seg52BlindDeltaX171 rho =
      seg52BlindDeltaX170 rho + rho 52348 := by
    unfold seg52BlindDeltaX171 seg52BlindDeltaX170
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 21]

    ring

  have hnexty : seg52BlindDeltaY171 rho =
      seg52BlindDeltaY170 rho + rho 52349 := by
    unfold seg52BlindDeltaY171 seg52BlindDeltaY170
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 21]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 171
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX170 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY170 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX171 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY171 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY170 rho) (rho 52349)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 171)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (4539074155643860541030658495777936422967191037167360927204655615187737478918 : Seg52.F) (6105392408192146457470872675139227921963547698642477078732445372055512856535 : Seg52.F)
    (2200004814407636574252706232135617813554839400655774178001867531325841096412 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (1686004396913441460072685296709927726913449622447854640167601256082561526691 : Seg52.F) (4104337676065758380785832857057132723398202689245960146757014008748361465404 : Seg52.F)
    (1217750448352328848459051523113928039998561399160614947061724317152803199570 : Seg52.F) (6901860039303650540242781060816656021134146156213729055747287584246097255987 : Seg52.F)
    (2339069341236223966777952263642318609412351636511586749202788083861896382506 : Seg52.F) (3905387593784509883218166443003610108408708297986702900730577840729671760123 : Seg52.F)
    (1542601710124719884006043877964890510241753178940334772187945871671311983054 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX170 rho) (seg52BlindDeltaY170 rho) (rho 51349)
    (rho 52342) (rho 52343) (rho 52344) (rho 52346)
    (rho 52345) (rho 52347) (rho 52348) (rho 52349) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 171)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L171]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX170 seg52BlindDeltaY170;
        first | linear_combination r7954 | linear_combination -r7954)
    (by unfold seg52BlindDeltaX170 seg52BlindDeltaY170;
        first | linear_combination r7955 | linear_combination -r7955)
    (by unfold seg52BlindDeltaX170 seg52BlindDeltaY170;
        first | linear_combination r7956 | linear_combination -r7956)
    (by first | linear_combination r7957 | linear_combination -r7957)
    (by unfold seg52BlindDeltaX170 seg52BlindDeltaY170;
        first | linear_combination r7958 | linear_combination -r7958)
    (by first | linear_combination r7959 | linear_combination -r7959)
    (by unfold seg52BlindDeltaX170; first | linear_combination r7960 | linear_combination -r7960)
    (by unfold seg52BlindDeltaY170; first | linear_combination r7961 | linear_combination -r7961)
    (by linear_combination r6960)

theorem seg52Blind_rows172 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6961 rho ∧ Seg52.relationRow7962 rho ∧ Seg52.relationRow7963 rho ∧ Seg52.relationRow7964 rho ∧ Seg52.relationRow7965 rho ∧ Seg52.relationRow7966 rho ∧ Seg52.relationRow7967 rho ∧ Seg52.relationRow7968 rho ∧ Seg52.relationRow7969 rho := by
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

    _, _, _, _, _, _, _, _, _, p99,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, r6961, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart99 at p99

  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7962, r7963, r7964, r7965, r7966, r7967, r7968, r7969, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6961, r7962, r7963, r7964, r7965, r7966, r7967, r7968, r7969⟩

theorem seg52Blind_rung172 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51350 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 172)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      172 (Bool.toZMod bit) (seg52BlindAccState rho 172)
      (seg52BlindAccState rho 173) := by
  obtain ⟨r6961, r7962, r7963, r7964, r7965, r7966, r7967, r7968, r7969⟩ := seg52Blind_rows172 rho h
  unfold Seg52.relationRow6961 at r6961

  unfold Seg52.relationRow7962 at r7962

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7962

  unfold Seg52.relationRow7963 at r7963

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7963

  unfold Seg52.relationRow7964 at r7964

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7964

  unfold Seg52.relationRow7965 at r7965

  unfold Seg52.relationRow7966 at r7966

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7966

  unfold Seg52.relationRow7967 at r7967

  unfold Seg52.relationRow7968 at r7968

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7968

  unfold Seg52.relationRow7969 at r7969

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7969

  have hnextx : seg52BlindDeltaX172 rho =
      seg52BlindDeltaX171 rho + rho 52356 := by
    unfold seg52BlindDeltaX172 seg52BlindDeltaX171
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 22]

    ring

  have hnexty : seg52BlindDeltaY172 rho =
      seg52BlindDeltaY171 rho + rho 52357 := by
    unfold seg52BlindDeltaY172 seg52BlindDeltaY171
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 22]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 172
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX171 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY171 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX172 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY172 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY171 rho) (rho 52357)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 172)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1189727039257417773146963891805468094277926358781282652259055735334905828690 : Seg52.F) (1368239371210898318989512428810871675633714899585151922875215904592739153663 : Seg52.F)
    (2557966410468316092136476320616339769911641258366434575134271639927644982353 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4109344957650684209641652373467078246637936756406747145698087831051865324874 : Seg52.F) (8185075041605189891702230811232664311135334879558914454024211833472237572350 : Seg52.F)
    (5633231909779173705243818096630389247657880760377004305002706642023381431345 : Seg52.F) (8294227672357123213139327778057891205833854147537240523082955310812169390266 : Seg52.F)
    (7076222378217472105259312509970674855742184435568911905060017551324670085378 : Seg52.F) (7254734710170952651101861046976078437097972976372781175676177720582503410351 : Seg52.F)
    (150234077071247211109497160723655325542045187616823304852278145105239848775 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX171 rho) (seg52BlindDeltaY171 rho) (rho 51350)
    (rho 52350) (rho 52351) (rho 52352) (rho 52354)
    (rho 52353) (rho 52355) (rho 52356) (rho 52357) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 172)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L172]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX171 seg52BlindDeltaY171;
        first | linear_combination r7962 | linear_combination -r7962)
    (by unfold seg52BlindDeltaX171 seg52BlindDeltaY171;
        first | linear_combination r7963 | linear_combination -r7963)
    (by unfold seg52BlindDeltaX171 seg52BlindDeltaY171;
        first | linear_combination r7964 | linear_combination -r7964)
    (by first | linear_combination r7965 | linear_combination -r7965)
    (by unfold seg52BlindDeltaX171 seg52BlindDeltaY171;
        first | linear_combination r7966 | linear_combination -r7966)
    (by first | linear_combination r7967 | linear_combination -r7967)
    (by unfold seg52BlindDeltaX171; first | linear_combination r7968 | linear_combination -r7968)
    (by unfold seg52BlindDeltaY171; first | linear_combination r7969 | linear_combination -r7969)
    (by linear_combination r6961)

theorem seg52Blind_rows173 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6962 rho ∧ Seg52.relationRow7970 rho ∧ Seg52.relationRow7971 rho ∧ Seg52.relationRow7972 rho ∧ Seg52.relationRow7973 rho ∧ Seg52.relationRow7974 rho ∧ Seg52.relationRow7975 rho ∧ Seg52.relationRow7976 rho ∧ Seg52.relationRow7977 rho := by
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

    _, _, _, _, _, _, _, _, _, p99,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, r6962, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart99 at p99

  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7970, r7971, r7972, r7973, r7974, r7975, r7976, r7977, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6962, r7970, r7971, r7972, r7973, r7974, r7975, r7976, r7977⟩

theorem seg52Blind_rung173 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51351 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 173)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      173 (Bool.toZMod bit) (seg52BlindAccState rho 173)
      (seg52BlindAccState rho 174) := by
  obtain ⟨r6962, r7970, r7971, r7972, r7973, r7974, r7975, r7976, r7977⟩ := seg52Blind_rows173 rho h
  unfold Seg52.relationRow6962 at r6962

  unfold Seg52.relationRow7970 at r7970

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7970

  unfold Seg52.relationRow7971 at r7971

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7971

  unfold Seg52.relationRow7972 at r7972

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7972

  unfold Seg52.relationRow7973 at r7973

  unfold Seg52.relationRow7974 at r7974

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7974

  unfold Seg52.relationRow7975 at r7975

  unfold Seg52.relationRow7976 at r7976

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7976

  unfold Seg52.relationRow7977 at r7977

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7977

  have hnextx : seg52BlindDeltaX173 rho =
      seg52BlindDeltaX172 rho + rho 52364 := by
    unfold seg52BlindDeltaX173 seg52BlindDeltaX172
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 23]

    ring

  have hnexty : seg52BlindDeltaY173 rho =
      seg52BlindDeltaY172 rho + rho 52365 := by
    unfold seg52BlindDeltaY173 seg52BlindDeltaY172
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 23]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 173
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX172 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY172 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX173 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY173 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY172 rho) (rho 52365)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 173)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (492187389477685739719883284483824738295496446159253906695099275432548304139 : Seg52.F) (2812324368576348763916819359102179322153357818117478445519694946026685745170 : Seg52.F)
    (3304511758054034503636702643586004060448854264276732352214794221459234049309 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (903397544208968998393395433447921661139237367914173012153575293703941683324 : Seg52.F) (5261268698174490817639752183640085875124473451973826038092695836296690717596 : Seg52.F)
    (3277399131366304628572171477952357502603016755363655206256944844257262755626 : Seg52.F) (1574035874678740422026609259987080012280549320410988834524935671045305474892 : Seg52.F)
    (5632137380852021660332005579679367209222541517036585382415538509890723493871 : Seg52.F) (7952274359950684684528941654297721793080402888994809921240134180484860934902 : Seg52.F)
    (6870425874749630002222215678794466519095350014743074993410297784872103764149 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX172 rho) (seg52BlindDeltaY172 rho) (rho 51351)
    (rho 52358) (rho 52359) (rho 52360) (rho 52362)
    (rho 52361) (rho 52363) (rho 52364) (rho 52365) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 173)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L173]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX172 seg52BlindDeltaY172;
        first | linear_combination r7970 | linear_combination -r7970)
    (by unfold seg52BlindDeltaX172 seg52BlindDeltaY172;
        first | linear_combination r7971 | linear_combination -r7971)
    (by unfold seg52BlindDeltaX172 seg52BlindDeltaY172;
        first | linear_combination r7972 | linear_combination -r7972)
    (by first | linear_combination r7973 | linear_combination -r7973)
    (by unfold seg52BlindDeltaX172 seg52BlindDeltaY172;
        first | linear_combination r7974 | linear_combination -r7974)
    (by first | linear_combination r7975 | linear_combination -r7975)
    (by unfold seg52BlindDeltaX172; first | linear_combination r7976 | linear_combination -r7976)
    (by unfold seg52BlindDeltaY172; first | linear_combination r7977 | linear_combination -r7977)
    (by linear_combination r6962)

theorem seg52Blind_rows174 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6963 rho ∧ Seg52.relationRow7978 rho ∧ Seg52.relationRow7979 rho ∧ Seg52.relationRow7980 rho ∧ Seg52.relationRow7981 rho ∧ Seg52.relationRow7982 rho ∧ Seg52.relationRow7983 rho ∧ Seg52.relationRow7984 rho ∧ Seg52.relationRow7985 rho := by
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

    _, _, _, _, _, _, _, _, _, p99,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, r6963, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart99 at p99

  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7978, r7979, r7980, r7981, r7982, r7983, r7984, r7985, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6963, r7978, r7979, r7980, r7981, r7982, r7983, r7984, r7985⟩

theorem seg52Blind_rung174 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51352 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 174)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      174 (Bool.toZMod bit) (seg52BlindAccState rho 174)
      (seg52BlindAccState rho 175) := by
  obtain ⟨r6963, r7978, r7979, r7980, r7981, r7982, r7983, r7984, r7985⟩ := seg52Blind_rows174 rho h
  unfold Seg52.relationRow6963 at r6963

  unfold Seg52.relationRow7978 at r7978

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7978

  unfold Seg52.relationRow7979 at r7979

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7979

  unfold Seg52.relationRow7980 at r7980

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7980

  unfold Seg52.relationRow7981 at r7981

  unfold Seg52.relationRow7982 at r7982

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7982

  unfold Seg52.relationRow7983 at r7983

  unfold Seg52.relationRow7984 at r7984

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7984

  unfold Seg52.relationRow7985 at r7985

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7985

  have hnextx : seg52BlindDeltaX174 rho =
      seg52BlindDeltaX173 rho + rho 52372 := by
    unfold seg52BlindDeltaX174 seg52BlindDeltaX173
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 24]

    ring

  have hnexty : seg52BlindDeltaY174 rho =
      seg52BlindDeltaY173 rho + rho 52373 := by
    unfold seg52BlindDeltaY174 seg52BlindDeltaY173
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 24]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 174
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX173 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY173 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX174 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY174 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY173 rho) (rho 52373)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 174)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1667175853442267745748346309550449676103037935549174577034155677584820160155 : Seg52.F) (6789018812520716971280761201352968868231178570886219064263086153797533754731 : Seg52.F)
    (11732916534614292780282572121872012958317171281329813362008375464944675845 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6472705013002580163032637925723972745706876893200818912036439654879840650803 : Seg52.F) (523168191152816093959112074180680068973676207798847251742382807098758110759 : Seg52.F)
    (7347986451293227228044865939853207470134533378182586591732454424103537980357 : Seg52.F) (765336914149016856309671097497576420375755073621175976857998149400327123081 : Seg52.F)
    (1655442936907653452968063737428577663144720764267844763672147302119875484310 : Seg52.F) (6777285895986102678500478629231096855272861399604889250901077778332589078886 : Seg52.F)
    (7679124835279353567939153841283970111000144261532887851077235306517082115960 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX173 rho) (seg52BlindDeltaY173 rho) (rho 51352)
    (rho 52366) (rho 52367) (rho 52368) (rho 52370)
    (rho 52369) (rho 52371) (rho 52372) (rho 52373) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 174)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L174]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX173 seg52BlindDeltaY173;
        first | linear_combination r7978 | linear_combination -r7978)
    (by unfold seg52BlindDeltaX173 seg52BlindDeltaY173;
        first | linear_combination r7979 | linear_combination -r7979)
    (by unfold seg52BlindDeltaX173 seg52BlindDeltaY173;
        first | linear_combination r7980 | linear_combination -r7980)
    (by first | linear_combination r7981 | linear_combination -r7981)
    (by unfold seg52BlindDeltaX173 seg52BlindDeltaY173;
        first | linear_combination r7982 | linear_combination -r7982)
    (by first | linear_combination r7983 | linear_combination -r7983)
    (by unfold seg52BlindDeltaX173; first | linear_combination r7984 | linear_combination -r7984)
    (by unfold seg52BlindDeltaY173; first | linear_combination r7985 | linear_combination -r7985)
    (by linear_combination r6963)

theorem seg52Blind_rows175 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6964 rho ∧ Seg52.relationRow7986 rho ∧ Seg52.relationRow7987 rho ∧ Seg52.relationRow7988 rho ∧ Seg52.relationRow7989 rho ∧ Seg52.relationRow7990 rho ∧ Seg52.relationRow7991 rho ∧ Seg52.relationRow7992 rho ∧ Seg52.relationRow7993 rho := by
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

    _, _, _, _, _, _, _, _, _, p99,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, r6964, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart99 at p99

  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7986, r7987, r7988, r7989, r7990, r7991, r7992, r7993, _, _, _, _, _, _⟩

  exact ⟨r6964, r7986, r7987, r7988, r7989, r7990, r7991, r7992, r7993⟩

theorem seg52Blind_rung175 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51353 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 175)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      175 (Bool.toZMod bit) (seg52BlindAccState rho 175)
      (seg52BlindAccState rho 176) := by
  obtain ⟨r6964, r7986, r7987, r7988, r7989, r7990, r7991, r7992, r7993⟩ := seg52Blind_rows175 rho h
  unfold Seg52.relationRow6964 at r6964

  unfold Seg52.relationRow7986 at r7986

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7986

  unfold Seg52.relationRow7987 at r7987

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7987

  unfold Seg52.relationRow7988 at r7988

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7988

  unfold Seg52.relationRow7989 at r7989

  unfold Seg52.relationRow7990 at r7990

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7990

  unfold Seg52.relationRow7991 at r7991

  unfold Seg52.relationRow7992 at r7992

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7992

  unfold Seg52.relationRow7993 at r7993

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7993

  have hnextx : seg52BlindDeltaX175 rho =
      seg52BlindDeltaX174 rho + rho 52380 := by
    unfold seg52BlindDeltaX175 seg52BlindDeltaX174
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 25]

    ring

  have hnexty : seg52BlindDeltaY175 rho =
      seg52BlindDeltaY174 rho + rho 52381 := by
    unfold seg52BlindDeltaY175 seg52BlindDeltaY174
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 25]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 175
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX174 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY174 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX175 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY175 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY174 rho) (rho 52381)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 175)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (6500295608575224403577725407255013509774739731695849381464071273603679024138 : Seg52.F) (2181990151873616184954560751152767413517952616988910761714693664778141881608 : Seg52.F)
    (237824011020470164283461219626234391916793013530696315243531482464411666705 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (5112084256065563833644576982904061764533374503329625350607465679187417885788 : Seg52.F) (7527861843569188002123817210029680959433138097825591352209755200104846047280 : Seg52.F)
    (1800696480843674362533975346651308872086511601015124632617255324139971244405 : Seg52.F) (6868188222587393792107293653927770969343235445237894989310685571515823739337 : Seg52.F)
    (6262471597554754239294264187628779117857946718165153066220539791139267357433 : Seg52.F) (1944166140853146020671099531526533021601159603458214446471162182313730214903 : Seg52.F)
    (1576273526840976632141531284853775562032663889916168838624547884401585499704 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX174 rho) (seg52BlindDeltaY174 rho) (rho 51353)
    (rho 52374) (rho 52375) (rho 52376) (rho 52378)
    (rho 52377) (rho 52379) (rho 52380) (rho 52381) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 175)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L175]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX174 seg52BlindDeltaY174;
        first | linear_combination r7986 | linear_combination -r7986)
    (by unfold seg52BlindDeltaX174 seg52BlindDeltaY174;
        first | linear_combination r7987 | linear_combination -r7987)
    (by unfold seg52BlindDeltaX174 seg52BlindDeltaY174;
        first | linear_combination r7988 | linear_combination -r7988)
    (by first | linear_combination r7989 | linear_combination -r7989)
    (by unfold seg52BlindDeltaX174 seg52BlindDeltaY174;
        first | linear_combination r7990 | linear_combination -r7990)
    (by first | linear_combination r7991 | linear_combination -r7991)
    (by unfold seg52BlindDeltaX174; first | linear_combination r7992 | linear_combination -r7992)
    (by unfold seg52BlindDeltaY174; first | linear_combination r7993 | linear_combination -r7993)
    (by linear_combination r6964)

theorem seg52Blind_rows176 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6965 rho ∧ Seg52.relationRow7994 rho ∧ Seg52.relationRow7995 rho ∧ Seg52.relationRow7996 rho ∧ Seg52.relationRow7997 rho ∧ Seg52.relationRow7998 rho ∧ Seg52.relationRow7999 rho ∧ Seg52.relationRow8000 rho ∧ Seg52.relationRow8001 rho := by
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

    _, _, _, _, _, _, _, _, _, p99,

    p100, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, r6965, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart99 at p99

  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7994, r7995, r7996, r7997, r7998, r7999⟩

  unfold Seg52.relationPart100 at p100

  rcases p100 with ⟨r8000, r8001, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6965, r7994, r7995, r7996, r7997, r7998, r7999, r8000, r8001⟩

theorem seg52Blind_rung176 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51354 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 176)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      176 (Bool.toZMod bit) (seg52BlindAccState rho 176)
      (seg52BlindAccState rho 177) := by
  obtain ⟨r6965, r7994, r7995, r7996, r7997, r7998, r7999, r8000, r8001⟩ := seg52Blind_rows176 rho h
  unfold Seg52.relationRow6965 at r6965

  unfold Seg52.relationRow7994 at r7994

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7994

  unfold Seg52.relationRow7995 at r7995

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7995

  unfold Seg52.relationRow7996 at r7996

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7996

  unfold Seg52.relationRow7997 at r7997

  unfold Seg52.relationRow7998 at r7998

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7998

  unfold Seg52.relationRow7999 at r7999

  unfold Seg52.relationRow8000 at r8000

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8000

  unfold Seg52.relationRow8001 at r8001

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8001

  have hnextx : seg52BlindDeltaX176 rho =
      seg52BlindDeltaX175 rho + rho 52388 := by
    unfold seg52BlindDeltaX176 seg52BlindDeltaX175
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 26]

    ring

  have hnexty : seg52BlindDeltaY176 rho =
      seg52BlindDeltaY175 rho + rho 52389 := by
    unfold seg52BlindDeltaY176 seg52BlindDeltaY175
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 26]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 176
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX175 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY175 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX176 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY176 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY175 rho) (rho 52389)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 176)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3686694172161452137307136928011842724124112916089468706551246464119678174556 : Seg52.F) (151041364896572449626002570432852781974197289804479422659975754287075105733 : Seg52.F)
    (3837735537058024586933139498444695506098310205893948129211222218406753280289 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (295028883413367410717218583444741649751448401012889147284147081713795511179 : Seg52.F) (997393638517673454837835612460204460707872237746252290258743549367452952391 : Seg52.F)
    (5447509693584985211681178921174715347732773873372327537382737402961313898781 : Seg52.F) (1447831649959205534870443849415717372910462030814327178069576088208435657101 : Seg52.F)
    (8293420384531797974622822368348693749401702045349584405275257701630334133308 : Seg52.F) (4757767577266918286941688010769703807251786419064595121383986991797731064485 : Seg52.F)
    (6996630099469164889378381089365829158465437304339736649865657367708973581940 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX175 rho) (seg52BlindDeltaY175 rho) (rho 51354)
    (rho 52382) (rho 52383) (rho 52384) (rho 52386)
    (rho 52385) (rho 52387) (rho 52388) (rho 52389) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 176)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L176]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX175 seg52BlindDeltaY175;
        first | linear_combination r7994 | linear_combination -r7994)
    (by unfold seg52BlindDeltaX175 seg52BlindDeltaY175;
        first | linear_combination r7995 | linear_combination -r7995)
    (by unfold seg52BlindDeltaX175 seg52BlindDeltaY175;
        first | linear_combination r7996 | linear_combination -r7996)
    (by first | linear_combination r7997 | linear_combination -r7997)
    (by unfold seg52BlindDeltaX175 seg52BlindDeltaY175;
        first | linear_combination r7998 | linear_combination -r7998)
    (by first | linear_combination r7999 | linear_combination -r7999)
    (by unfold seg52BlindDeltaX175; first | linear_combination r8000 | linear_combination -r8000)
    (by unfold seg52BlindDeltaY175; first | linear_combination r8001 | linear_combination -r8001)
    (by linear_combination r6965)

theorem seg52Blind_rows177 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6966 rho ∧ Seg52.relationRow8002 rho ∧ Seg52.relationRow8003 rho ∧ Seg52.relationRow8004 rho ∧ Seg52.relationRow8005 rho ∧ Seg52.relationRow8006 rho ∧ Seg52.relationRow8007 rho ∧ Seg52.relationRow8008 rho ∧ Seg52.relationRow8009 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, r6966, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart100 at p100

  rcases p100 with ⟨_, _, r8002, r8003, r8004, r8005, r8006, r8007, r8008, r8009, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6966, r8002, r8003, r8004, r8005, r8006, r8007, r8008, r8009⟩

theorem seg52Blind_rung177 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51355 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 177)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      177 (Bool.toZMod bit) (seg52BlindAccState rho 177)
      (seg52BlindAccState rho 178) := by
  obtain ⟨r6966, r8002, r8003, r8004, r8005, r8006, r8007, r8008, r8009⟩ := seg52Blind_rows177 rho h
  unfold Seg52.relationRow6966 at r6966

  unfold Seg52.relationRow8002 at r8002

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8002

  unfold Seg52.relationRow8003 at r8003

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8003

  unfold Seg52.relationRow8004 at r8004

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8004

  unfold Seg52.relationRow8005 at r8005

  unfold Seg52.relationRow8006 at r8006

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8006

  unfold Seg52.relationRow8007 at r8007

  unfold Seg52.relationRow8008 at r8008

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8008

  unfold Seg52.relationRow8009 at r8009

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8009

  have hnextx : seg52BlindDeltaX177 rho =
      seg52BlindDeltaX176 rho + rho 52396 := by
    unfold seg52BlindDeltaX177 seg52BlindDeltaX176
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 27]

    ring

  have hnexty : seg52BlindDeltaY177 rho =
      seg52BlindDeltaY176 rho + rho 52397 := by
    unfold seg52BlindDeltaY177 seg52BlindDeltaY176
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 27]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 177
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX176 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY176 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX177 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY177 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY176 rho) (rho 52397)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 177)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3636053712089879338690869825299855140209253247089434682864164838528816194568 : Seg52.F) (7618201096770730300139258388392980618443983707444169529391510297778595196843 : Seg52.F)
    (2809793059432239214581303274911289227277337619379540384320441680390002152370 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (3427246152066830642651633155480150319949091894012217168241442214195913275978 : Seg52.F) (2826500319246157779873389090194830972712374672212742612497212842223396009465 : Seg52.F)
    (5128864072279759294272138083283133430709790815935273100211408962448730416752 : Seg52.F) (4716102126369083139022567510012867275241098089377646915530204944364138172009 : Seg52.F)
    (826260652657640124109566550388565912931915627709894298543723158138814042198 : Seg52.F) (4808408037338491085557955113481691391166646088064629145071068617388593044473 : Seg52.F)
    (3728359623059287285226257428768679256134801245776416912405028511553271067032 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX176 rho) (seg52BlindDeltaY176 rho) (rho 51355)
    (rho 52390) (rho 52391) (rho 52392) (rho 52394)
    (rho 52393) (rho 52395) (rho 52396) (rho 52397) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 177)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L177]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX176 seg52BlindDeltaY176;
        first | linear_combination r8002 | linear_combination -r8002)
    (by unfold seg52BlindDeltaX176 seg52BlindDeltaY176;
        first | linear_combination r8003 | linear_combination -r8003)
    (by unfold seg52BlindDeltaX176 seg52BlindDeltaY176;
        first | linear_combination r8004 | linear_combination -r8004)
    (by first | linear_combination r8005 | linear_combination -r8005)
    (by unfold seg52BlindDeltaX176 seg52BlindDeltaY176;
        first | linear_combination r8006 | linear_combination -r8006)
    (by first | linear_combination r8007 | linear_combination -r8007)
    (by unfold seg52BlindDeltaX176; first | linear_combination r8008 | linear_combination -r8008)
    (by unfold seg52BlindDeltaY176; first | linear_combination r8009 | linear_combination -r8009)
    (by linear_combination r6966)

theorem seg52Blind_rows178 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6967 rho ∧ Seg52.relationRow8010 rho ∧ Seg52.relationRow8011 rho ∧ Seg52.relationRow8012 rho ∧ Seg52.relationRow8013 rho ∧ Seg52.relationRow8014 rho ∧ Seg52.relationRow8015 rho ∧ Seg52.relationRow8016 rho ∧ Seg52.relationRow8017 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, r6967, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart100 at p100

  rcases p100 with ⟨_, _, _, _, _, _, _, _, _, _, r8010, r8011, r8012, r8013, r8014, r8015, r8016, r8017, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6967, r8010, r8011, r8012, r8013, r8014, r8015, r8016, r8017⟩

theorem seg52Blind_rung178 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51356 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 178)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      178 (Bool.toZMod bit) (seg52BlindAccState rho 178)
      (seg52BlindAccState rho 179) := by
  obtain ⟨r6967, r8010, r8011, r8012, r8013, r8014, r8015, r8016, r8017⟩ := seg52Blind_rows178 rho h
  unfold Seg52.relationRow6967 at r6967

  unfold Seg52.relationRow8010 at r8010

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8010

  unfold Seg52.relationRow8011 at r8011

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8011

  unfold Seg52.relationRow8012 at r8012

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8012

  unfold Seg52.relationRow8013 at r8013

  unfold Seg52.relationRow8014 at r8014

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8014

  unfold Seg52.relationRow8015 at r8015

  unfold Seg52.relationRow8016 at r8016

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8016

  unfold Seg52.relationRow8017 at r8017

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8017

  have hnextx : seg52BlindDeltaX178 rho =
      seg52BlindDeltaX177 rho + rho 52404 := by
    unfold seg52BlindDeltaX178 seg52BlindDeltaX177
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 28]

    ring

  have hnexty : seg52BlindDeltaY178 rho =
      seg52BlindDeltaY177 rho + rho 52405 := by
    unfold seg52BlindDeltaY178 seg52BlindDeltaY177
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 28]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 178
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX177 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY177 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX178 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY178 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY177 rho) (rho 52405)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 178)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3208908907049162934313763394970265570586756908930088916345667543871796142882 : Seg52.F) (4573699048751469511521419616842993543719924256682280566279198317696462795534 : Seg52.F)
    (7782607955800632445835183011813259114306681165612369482624865861568258938416 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2005404213375380235131062636073370246919867125121168227416183880132590237138 : Seg52.F) (4784214778175042884149442557764463818562024273545516578202392105623304844875 : Seg52.F)
    (1376415166243034028495377564207046757430797731801850254468886873759465321306 : Seg52.F) (1920278057394069746862945085121109813010237154275678092667376672684854496155 : Seg52.F)
    (3870762700676900912727405321938552987655975078471783261656035138220946443507 : Seg52.F) (5235552842379207489935061543811280960789142426223974911589565912045613096159 : Seg52.F)
    (6524183692034300677385879853660436718365662180878385735267856783232554742886 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX177 rho) (seg52BlindDeltaY177 rho) (rho 51356)
    (rho 52398) (rho 52399) (rho 52400) (rho 52402)
    (rho 52401) (rho 52403) (rho 52404) (rho 52405) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 178)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L178]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX177 seg52BlindDeltaY177;
        first | linear_combination r8010 | linear_combination -r8010)
    (by unfold seg52BlindDeltaX177 seg52BlindDeltaY177;
        first | linear_combination r8011 | linear_combination -r8011)
    (by unfold seg52BlindDeltaX177 seg52BlindDeltaY177;
        first | linear_combination r8012 | linear_combination -r8012)
    (by first | linear_combination r8013 | linear_combination -r8013)
    (by unfold seg52BlindDeltaX177 seg52BlindDeltaY177;
        first | linear_combination r8014 | linear_combination -r8014)
    (by first | linear_combination r8015 | linear_combination -r8015)
    (by unfold seg52BlindDeltaX177; first | linear_combination r8016 | linear_combination -r8016)
    (by unfold seg52BlindDeltaY177; first | linear_combination r8017 | linear_combination -r8017)
    (by linear_combination r6967)

theorem seg52Blind_rows179 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6968 rho ∧ Seg52.relationRow8018 rho ∧ Seg52.relationRow8019 rho ∧ Seg52.relationRow8020 rho ∧ Seg52.relationRow8021 rho ∧ Seg52.relationRow8022 rho ∧ Seg52.relationRow8023 rho ∧ Seg52.relationRow8024 rho ∧ Seg52.relationRow8025 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, r6968, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart100 at p100

  rcases p100 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8018, r8019, r8020, r8021, r8022, r8023, r8024, r8025, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6968, r8018, r8019, r8020, r8021, r8022, r8023, r8024, r8025⟩

theorem seg52Blind_rung179 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51357 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 179)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      179 (Bool.toZMod bit) (seg52BlindAccState rho 179)
      (seg52BlindAccState rho 180) := by
  obtain ⟨r6968, r8018, r8019, r8020, r8021, r8022, r8023, r8024, r8025⟩ := seg52Blind_rows179 rho h
  unfold Seg52.relationRow6968 at r6968

  unfold Seg52.relationRow8018 at r8018

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8018

  unfold Seg52.relationRow8019 at r8019

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8019

  unfold Seg52.relationRow8020 at r8020

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8020

  unfold Seg52.relationRow8021 at r8021

  unfold Seg52.relationRow8022 at r8022

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8022

  unfold Seg52.relationRow8023 at r8023

  unfold Seg52.relationRow8024 at r8024

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8024

  unfold Seg52.relationRow8025 at r8025

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8025

  have hnextx : seg52BlindDeltaX179 rho =
      seg52BlindDeltaX178 rho + rho 52412 := by
    unfold seg52BlindDeltaX179 seg52BlindDeltaX178
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 29]

    ring

  have hnexty : seg52BlindDeltaY179 rho =
      seg52BlindDeltaY178 rho + rho 52413 := by
    unfold seg52BlindDeltaY179 seg52BlindDeltaY178
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 29]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 179
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX178 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY178 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX179 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY179 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY178 rho) (rho 52413)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 179)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (4795152947387177822651171193672527608619660283440788416206342939920742731776 : Seg52.F) (1614221379281109225873679279112349918714836479827408232335090736890828718752 : Seg52.F)
    (6409374326668287048524850472784877527334496763268196648541433676811571450528 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4108357388061236572813112521456755833627089174705441165679412082848428423135 : Seg52.F) (4123372059699344288277837313666126440828906553166339005009536672862144757468 : Seg52.F)
    (5807655721081984382075658649034336050204781834756902235012964053436416760975 : Seg52.F) (6122089050441692039078024167226060425562256059215830234924832866324735853835 : Seg52.F)
    (6830240370147261198375145659669196612661062855326655595600142719026580520289 : Seg52.F) (3649308802041192601597653745109018922756239051713275411728890515996666507265 : Seg52.F)
    (2322372698986678385170800771555486105813643275938233593010400589592673385206 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX178 rho) (seg52BlindDeltaY178 rho) (rho 51357)
    (rho 52406) (rho 52407) (rho 52408) (rho 52410)
    (rho 52409) (rho 52411) (rho 52412) (rho 52413) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 179)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L179]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX178 seg52BlindDeltaY178;
        first | linear_combination r8018 | linear_combination -r8018)
    (by unfold seg52BlindDeltaX178 seg52BlindDeltaY178;
        first | linear_combination r8019 | linear_combination -r8019)
    (by unfold seg52BlindDeltaX178 seg52BlindDeltaY178;
        first | linear_combination r8020 | linear_combination -r8020)
    (by first | linear_combination r8021 | linear_combination -r8021)
    (by unfold seg52BlindDeltaX178 seg52BlindDeltaY178;
        first | linear_combination r8022 | linear_combination -r8022)
    (by first | linear_combination r8023 | linear_combination -r8023)
    (by unfold seg52BlindDeltaX178; first | linear_combination r8024 | linear_combination -r8024)
    (by unfold seg52BlindDeltaY178; first | linear_combination r8025 | linear_combination -r8025)
    (by linear_combination r6968)

theorem seg52Blind_rows180 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6969 rho ∧ Seg52.relationRow8026 rho ∧ Seg52.relationRow8027 rho ∧ Seg52.relationRow8028 rho ∧ Seg52.relationRow8029 rho ∧ Seg52.relationRow8030 rho ∧ Seg52.relationRow8031 rho ∧ Seg52.relationRow8032 rho ∧ Seg52.relationRow8033 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, r6969, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart100 at p100

  rcases p100 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8026, r8027, r8028, r8029, r8030, r8031, r8032, r8033, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6969, r8026, r8027, r8028, r8029, r8030, r8031, r8032, r8033⟩

theorem seg52Blind_rung180 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51358 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 180)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      180 (Bool.toZMod bit) (seg52BlindAccState rho 180)
      (seg52BlindAccState rho 181) := by
  obtain ⟨r6969, r8026, r8027, r8028, r8029, r8030, r8031, r8032, r8033⟩ := seg52Blind_rows180 rho h
  unfold Seg52.relationRow6969 at r6969

  unfold Seg52.relationRow8026 at r8026

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8026

  unfold Seg52.relationRow8027 at r8027

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8027

  unfold Seg52.relationRow8028 at r8028

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8028

  unfold Seg52.relationRow8029 at r8029

  unfold Seg52.relationRow8030 at r8030

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8030

  unfold Seg52.relationRow8031 at r8031

  unfold Seg52.relationRow8032 at r8032

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8032

  unfold Seg52.relationRow8033 at r8033

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8033

  have hnextx : seg52BlindDeltaX180 rho =
      seg52BlindDeltaX179 rho + rho 52420 := by
    unfold seg52BlindDeltaX180 seg52BlindDeltaX179
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 30]

    ring

  have hnexty : seg52BlindDeltaY180 rho =
      seg52BlindDeltaY179 rho + rho 52421 := by
    unfold seg52BlindDeltaY180 seg52BlindDeltaY179
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 30]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 180
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX179 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY179 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX180 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY180 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY179 rho) (rho 52421)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 180)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1603279230062761644371699523018134843206550750153332960177912966805714289819 : Seg52.F) (6083144384519493791896324904071478793578622929786030430707294081222152755324 : Seg52.F)
    (7686423614582255436268024427089613636785173679939363390885207048027867045143 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2030418877256702153354468411292183127062917588355041579667419295840969680588 : Seg52.F) (1747355640068679147516328884857115463749624824253420006611042383112582562104 : Seg52.F)
    (7305892694301029992493071465213924921567977686636080727368555182846421408795 : Seg52.F) (4902552823771956875741508036393245377867373978126235817730127599362191232359 : Seg52.F)
    (2361317364908876632352500034710067737797276405368033397227939374695256483717 : Seg52.F) (6841182519365608779877125415763411688169348585000730867757320489111694949222 : Seg52.F)
    (3541908925656413548507316902388301153508525357027828010205105856555218006682 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX179 rho) (seg52BlindDeltaY179 rho) (rho 51358)
    (rho 52414) (rho 52415) (rho 52416) (rho 52418)
    (rho 52417) (rho 52419) (rho 52420) (rho 52421) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 180)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L180]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX179 seg52BlindDeltaY179;
        first | linear_combination r8026 | linear_combination -r8026)
    (by unfold seg52BlindDeltaX179 seg52BlindDeltaY179;
        first | linear_combination r8027 | linear_combination -r8027)
    (by unfold seg52BlindDeltaX179 seg52BlindDeltaY179;
        first | linear_combination r8028 | linear_combination -r8028)
    (by first | linear_combination r8029 | linear_combination -r8029)
    (by unfold seg52BlindDeltaX179 seg52BlindDeltaY179;
        first | linear_combination r8030 | linear_combination -r8030)
    (by first | linear_combination r8031 | linear_combination -r8031)
    (by unfold seg52BlindDeltaX179; first | linear_combination r8032 | linear_combination -r8032)
    (by unfold seg52BlindDeltaY179; first | linear_combination r8033 | linear_combination -r8033)
    (by linear_combination r6969)

theorem seg52Blind_hstep_c17 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 171 ≤ i → i < 181 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung171 rho h bits[171]! (hbitAt 171 (by omega)) hacc
  · exact seg52Blind_rung172 rho h bits[172]! (hbitAt 172 (by omega)) hacc
  · exact seg52Blind_rung173 rho h bits[173]! (hbitAt 173 (by omega)) hacc
  · exact seg52Blind_rung174 rho h bits[174]! (hbitAt 174 (by omega)) hacc
  · exact seg52Blind_rung175 rho h bits[175]! (hbitAt 175 (by omega)) hacc
  · exact seg52Blind_rung176 rho h bits[176]! (hbitAt 176 (by omega)) hacc
  · exact seg52Blind_rung177 rho h bits[177]! (hbitAt 177 (by omega)) hacc
  · exact seg52Blind_rung178 rho h bits[178]! (hbitAt 178 (by omega)) hacc
  · exact seg52Blind_rung179 rho h bits[179]! (hbitAt 179 (by omega)) hacc
  · exact seg52Blind_rung180 rho h bits[180]! (hbitAt 180 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

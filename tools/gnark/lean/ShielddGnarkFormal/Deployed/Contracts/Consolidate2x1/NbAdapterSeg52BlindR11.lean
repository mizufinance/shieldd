import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows111 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6260 rho ∧ Seg52.relationRow6951 rho ∧ Seg52.relationRow6952 rho ∧ Seg52.relationRow6953 rho ∧ Seg52.relationRow6954 rho ∧ Seg52.relationRow6955 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6260, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6951, r6952, r6953, r6954, r6955, _, _, _, _⟩

  exact ⟨r6260, r6951, r6952, r6953, r6954, r6955⟩

theorem seg52Blind_rung111 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50649 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 111)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      111 (Bool.toZMod bit) (seg52BlindAccState rho 111)
      (seg52BlindAccState rho 112) := by
  obtain ⟨r6260, r6951, r6952, r6953, r6954, r6955⟩ := seg52Blind_rows111 rho h
  unfold Seg52.relationRow6260 at r6260

  unfold Seg52.relationRow6951 at r6951

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6951

  unfold Seg52.relationRow6952 at r6952

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6952

  unfold Seg52.relationRow6953 at r6953

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6953

  unfold Seg52.relationRow6954 at r6954

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6954

  unfold Seg52.relationRow6955 at r6955

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6955

  have hnextx : seg52BlindDeltaX111 rho =
      seg52BlindDeltaX110 rho + rho 51342 := by
    unfold seg52BlindDeltaX111 seg52BlindDeltaX110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 110]

    ring

  have hnexty : seg52BlindDeltaY111 rho =
      seg52BlindDeltaY110 rho + rho 51343 := by
    unfold seg52BlindDeltaY111 seg52BlindDeltaY110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 110]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 111
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX110 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY110 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX111 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY111 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung111_wide (rho 50538) (rho 50649) (seg52BlindDeltaX110 rho) (seg52BlindDeltaY110 rho) (rho 51339) (rho 51340) (rho 51341) (rho 51342) (rho 51343) hacc
  · unfold seg52BlindDeltaX110 seg52BlindDeltaY110
    linear_combination r6951
  · unfold seg52BlindDeltaX110 seg52BlindDeltaY110
    linear_combination r6952
  · unfold seg52BlindDeltaX110 seg52BlindDeltaY110
    linear_combination r6953
  · unfold seg52BlindDeltaX110
    linear_combination r6954
  · unfold seg52BlindDeltaY110
    linear_combination r6955
  · linear_combination r6260

theorem seg52Blind_rows112 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6261 rho ∧ Seg52.relationRow6956 rho ∧ Seg52.relationRow6957 rho ∧ Seg52.relationRow6958 rho ∧ Seg52.relationRow6959 rho ∧ Seg52.relationRow6960 rho := by
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

    _, _, _, _, _, _, p86, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6261, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6956, r6957, r6958, r6959⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨r6960, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6261, r6956, r6957, r6958, r6959, r6960⟩

theorem seg52Blind_rung112 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50650 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 112)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      112 (Bool.toZMod bit) (seg52BlindAccState rho 112)
      (seg52BlindAccState rho 113) := by
  obtain ⟨r6261, r6956, r6957, r6958, r6959, r6960⟩ := seg52Blind_rows112 rho h
  unfold Seg52.relationRow6261 at r6261

  unfold Seg52.relationRow6956 at r6956

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6956

  unfold Seg52.relationRow6957 at r6957

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6957

  unfold Seg52.relationRow6958 at r6958

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6958

  unfold Seg52.relationRow6959 at r6959

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6959

  unfold Seg52.relationRow6960 at r6960

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6960

  have hnextx : seg52BlindDeltaX112 rho =
      seg52BlindDeltaX111 rho + rho 51347 := by
    unfold seg52BlindDeltaX112 seg52BlindDeltaX111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 111]

    ring

  have hnexty : seg52BlindDeltaY112 rho =
      seg52BlindDeltaY111 rho + rho 51348 := by
    unfold seg52BlindDeltaY112 seg52BlindDeltaY111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 111]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 112
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX111 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY111 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX112 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY112 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung112_wide (rho 50538) (rho 50650) (seg52BlindDeltaX111 rho) (seg52BlindDeltaY111 rho) (rho 51344) (rho 51345) (rho 51346) (rho 51347) (rho 51348) hacc
  · unfold seg52BlindDeltaX111 seg52BlindDeltaY111
    linear_combination r6956
  · unfold seg52BlindDeltaX111 seg52BlindDeltaY111
    linear_combination r6957
  · unfold seg52BlindDeltaX111 seg52BlindDeltaY111
    linear_combination r6958
  · unfold seg52BlindDeltaX111
    linear_combination r6959
  · unfold seg52BlindDeltaY111
    linear_combination r6960
  · linear_combination r6261

theorem seg52Blind_rows113 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6262 rho ∧ Seg52.relationRow6961 rho ∧ Seg52.relationRow6962 rho ∧ Seg52.relationRow6963 rho ∧ Seg52.relationRow6964 rho ∧ Seg52.relationRow6965 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6262, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, r6961, r6962, r6963, r6964, r6965, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6262, r6961, r6962, r6963, r6964, r6965⟩

theorem seg52Blind_rung113 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50651 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 113)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      113 (Bool.toZMod bit) (seg52BlindAccState rho 113)
      (seg52BlindAccState rho 114) := by
  obtain ⟨r6262, r6961, r6962, r6963, r6964, r6965⟩ := seg52Blind_rows113 rho h
  unfold Seg52.relationRow6262 at r6262

  unfold Seg52.relationRow6961 at r6961

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6961

  unfold Seg52.relationRow6962 at r6962

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6962

  unfold Seg52.relationRow6963 at r6963

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6963

  unfold Seg52.relationRow6964 at r6964

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6964

  unfold Seg52.relationRow6965 at r6965

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6965

  have hnextx : seg52BlindDeltaX113 rho =
      seg52BlindDeltaX112 rho + rho 51352 := by
    unfold seg52BlindDeltaX113 seg52BlindDeltaX112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 112]

    ring

  have hnexty : seg52BlindDeltaY113 rho =
      seg52BlindDeltaY112 rho + rho 51353 := by
    unfold seg52BlindDeltaY113 seg52BlindDeltaY112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 112]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 113
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX112 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY112 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX113 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY113 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung113_wide (rho 50538) (rho 50651) (seg52BlindDeltaX112 rho) (seg52BlindDeltaY112 rho) (rho 51349) (rho 51350) (rho 51351) (rho 51352) (rho 51353) hacc
  · unfold seg52BlindDeltaX112 seg52BlindDeltaY112
    linear_combination r6961
  · unfold seg52BlindDeltaX112 seg52BlindDeltaY112
    linear_combination r6962
  · unfold seg52BlindDeltaX112 seg52BlindDeltaY112
    linear_combination r6963
  · unfold seg52BlindDeltaX112
    linear_combination r6964
  · unfold seg52BlindDeltaY112
    linear_combination r6965
  · linear_combination r6262

theorem seg52Blind_rows114 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6263 rho ∧ Seg52.relationRow6966 rho ∧ Seg52.relationRow6967 rho ∧ Seg52.relationRow6968 rho ∧ Seg52.relationRow6969 rho ∧ Seg52.relationRow6970 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6263, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, r6966, r6967, r6968, r6969, r6970, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6263, r6966, r6967, r6968, r6969, r6970⟩

theorem seg52Blind_rung114 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50652 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 114)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      114 (Bool.toZMod bit) (seg52BlindAccState rho 114)
      (seg52BlindAccState rho 115) := by
  obtain ⟨r6263, r6966, r6967, r6968, r6969, r6970⟩ := seg52Blind_rows114 rho h
  unfold Seg52.relationRow6263 at r6263

  unfold Seg52.relationRow6966 at r6966

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6966

  unfold Seg52.relationRow6967 at r6967

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6967

  unfold Seg52.relationRow6968 at r6968

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6968

  unfold Seg52.relationRow6969 at r6969

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6969

  unfold Seg52.relationRow6970 at r6970

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6970

  have hnextx : seg52BlindDeltaX114 rho =
      seg52BlindDeltaX113 rho + rho 51357 := by
    unfold seg52BlindDeltaX114 seg52BlindDeltaX113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 113]

    ring

  have hnexty : seg52BlindDeltaY114 rho =
      seg52BlindDeltaY113 rho + rho 51358 := by
    unfold seg52BlindDeltaY114 seg52BlindDeltaY113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 113]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 114
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX113 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY113 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX114 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY114 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung114_wide (rho 50538) (rho 50652) (seg52BlindDeltaX113 rho) (seg52BlindDeltaY113 rho) (rho 51354) (rho 51355) (rho 51356) (rho 51357) (rho 51358) hacc
  · unfold seg52BlindDeltaX113 seg52BlindDeltaY113
    linear_combination r6966
  · unfold seg52BlindDeltaX113 seg52BlindDeltaY113
    linear_combination r6967
  · unfold seg52BlindDeltaX113 seg52BlindDeltaY113
    linear_combination r6968
  · unfold seg52BlindDeltaX113
    linear_combination r6969
  · unfold seg52BlindDeltaY113
    linear_combination r6970
  · linear_combination r6263

theorem seg52Blind_rows115 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6264 rho ∧ Seg52.relationRow6971 rho ∧ Seg52.relationRow6972 rho ∧ Seg52.relationRow6973 rho ∧ Seg52.relationRow6974 rho ∧ Seg52.relationRow6975 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6971, r6972, r6973, r6974, r6975, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6264, r6971, r6972, r6973, r6974, r6975⟩

theorem seg52Blind_rung115 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50653 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 115)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      115 (Bool.toZMod bit) (seg52BlindAccState rho 115)
      (seg52BlindAccState rho 116) := by
  obtain ⟨r6264, r6971, r6972, r6973, r6974, r6975⟩ := seg52Blind_rows115 rho h
  unfold Seg52.relationRow6264 at r6264

  unfold Seg52.relationRow6971 at r6971

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6971

  unfold Seg52.relationRow6972 at r6972

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6972

  unfold Seg52.relationRow6973 at r6973

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6973

  unfold Seg52.relationRow6974 at r6974

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6974

  unfold Seg52.relationRow6975 at r6975

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6975

  have hnextx : seg52BlindDeltaX115 rho =
      seg52BlindDeltaX114 rho + rho 51362 := by
    unfold seg52BlindDeltaX115 seg52BlindDeltaX114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 114]

    ring

  have hnexty : seg52BlindDeltaY115 rho =
      seg52BlindDeltaY114 rho + rho 51363 := by
    unfold seg52BlindDeltaY115 seg52BlindDeltaY114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 114]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 115
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX114 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY114 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX115 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY115 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung115_wide (rho 50538) (rho 50653) (seg52BlindDeltaX114 rho) (seg52BlindDeltaY114 rho) (rho 51359) (rho 51360) (rho 51361) (rho 51362) (rho 51363) hacc
  · unfold seg52BlindDeltaX114 seg52BlindDeltaY114
    linear_combination r6971
  · unfold seg52BlindDeltaX114 seg52BlindDeltaY114
    linear_combination r6972
  · unfold seg52BlindDeltaX114 seg52BlindDeltaY114
    linear_combination r6973
  · unfold seg52BlindDeltaX114
    linear_combination r6974
  · unfold seg52BlindDeltaY114
    linear_combination r6975
  · linear_combination r6264

theorem seg52Blind_rows116 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6265 rho ∧ Seg52.relationRow6976 rho ∧ Seg52.relationRow6977 rho ∧ Seg52.relationRow6978 rho ∧ Seg52.relationRow6979 rho ∧ Seg52.relationRow6980 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6265, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6976, r6977, r6978, r6979, r6980, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6265, r6976, r6977, r6978, r6979, r6980⟩

theorem seg52Blind_rung116 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50654 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 116)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      116 (Bool.toZMod bit) (seg52BlindAccState rho 116)
      (seg52BlindAccState rho 117) := by
  obtain ⟨r6265, r6976, r6977, r6978, r6979, r6980⟩ := seg52Blind_rows116 rho h
  unfold Seg52.relationRow6265 at r6265

  unfold Seg52.relationRow6976 at r6976

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6976

  unfold Seg52.relationRow6977 at r6977

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6977

  unfold Seg52.relationRow6978 at r6978

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6978

  unfold Seg52.relationRow6979 at r6979

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6979

  unfold Seg52.relationRow6980 at r6980

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6980

  have hnextx : seg52BlindDeltaX116 rho =
      seg52BlindDeltaX115 rho + rho 51367 := by
    unfold seg52BlindDeltaX116 seg52BlindDeltaX115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 115]

    ring

  have hnexty : seg52BlindDeltaY116 rho =
      seg52BlindDeltaY115 rho + rho 51368 := by
    unfold seg52BlindDeltaY116 seg52BlindDeltaY115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 115]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 116
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX115 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY115 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX116 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY116 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung116_wide (rho 50538) (rho 50654) (seg52BlindDeltaX115 rho) (seg52BlindDeltaY115 rho) (rho 51364) (rho 51365) (rho 51366) (rho 51367) (rho 51368) hacc
  · unfold seg52BlindDeltaX115 seg52BlindDeltaY115
    linear_combination r6976
  · unfold seg52BlindDeltaX115 seg52BlindDeltaY115
    linear_combination r6977
  · unfold seg52BlindDeltaX115 seg52BlindDeltaY115
    linear_combination r6978
  · unfold seg52BlindDeltaX115
    linear_combination r6979
  · unfold seg52BlindDeltaY115
    linear_combination r6980
  · linear_combination r6265

theorem seg52Blind_rows117 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6266 rho ∧ Seg52.relationRow6981 rho ∧ Seg52.relationRow6982 rho ∧ Seg52.relationRow6983 rho ∧ Seg52.relationRow6984 rho ∧ Seg52.relationRow6985 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6266, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6981, r6982, r6983, r6984, r6985, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6266, r6981, r6982, r6983, r6984, r6985⟩

theorem seg52Blind_rung117 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50655 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 117)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      117 (Bool.toZMod bit) (seg52BlindAccState rho 117)
      (seg52BlindAccState rho 118) := by
  obtain ⟨r6266, r6981, r6982, r6983, r6984, r6985⟩ := seg52Blind_rows117 rho h
  unfold Seg52.relationRow6266 at r6266

  unfold Seg52.relationRow6981 at r6981

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6981

  unfold Seg52.relationRow6982 at r6982

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6982

  unfold Seg52.relationRow6983 at r6983

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6983

  unfold Seg52.relationRow6984 at r6984

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6984

  unfold Seg52.relationRow6985 at r6985

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6985

  have hnextx : seg52BlindDeltaX117 rho =
      seg52BlindDeltaX116 rho + rho 51372 := by
    unfold seg52BlindDeltaX117 seg52BlindDeltaX116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 116]

    ring

  have hnexty : seg52BlindDeltaY117 rho =
      seg52BlindDeltaY116 rho + rho 51373 := by
    unfold seg52BlindDeltaY117 seg52BlindDeltaY116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 116]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 117
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX116 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY116 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX117 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY117 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung117_wide (rho 50538) (rho 50655) (seg52BlindDeltaX116 rho) (seg52BlindDeltaY116 rho) (rho 51369) (rho 51370) (rho 51371) (rho 51372) (rho 51373) hacc
  · unfold seg52BlindDeltaX116 seg52BlindDeltaY116
    linear_combination r6981
  · unfold seg52BlindDeltaX116 seg52BlindDeltaY116
    linear_combination r6982
  · unfold seg52BlindDeltaX116 seg52BlindDeltaY116
    linear_combination r6983
  · unfold seg52BlindDeltaX116
    linear_combination r6984
  · unfold seg52BlindDeltaY116
    linear_combination r6985
  · linear_combination r6266

theorem seg52Blind_rows118 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6267 rho ∧ Seg52.relationRow6986 rho ∧ Seg52.relationRow6987 rho ∧ Seg52.relationRow6988 rho ∧ Seg52.relationRow6989 rho ∧ Seg52.relationRow6990 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6267, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6986, r6987, r6988, r6989, r6990, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6267, r6986, r6987, r6988, r6989, r6990⟩

theorem seg52Blind_rung118 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50656 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 118)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      118 (Bool.toZMod bit) (seg52BlindAccState rho 118)
      (seg52BlindAccState rho 119) := by
  obtain ⟨r6267, r6986, r6987, r6988, r6989, r6990⟩ := seg52Blind_rows118 rho h
  unfold Seg52.relationRow6267 at r6267

  unfold Seg52.relationRow6986 at r6986

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6986

  unfold Seg52.relationRow6987 at r6987

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6987

  unfold Seg52.relationRow6988 at r6988

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6988

  unfold Seg52.relationRow6989 at r6989

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6989

  unfold Seg52.relationRow6990 at r6990

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6990

  have hnextx : seg52BlindDeltaX118 rho =
      seg52BlindDeltaX117 rho + rho 51377 := by
    unfold seg52BlindDeltaX118 seg52BlindDeltaX117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 117]

    ring

  have hnexty : seg52BlindDeltaY118 rho =
      seg52BlindDeltaY117 rho + rho 51378 := by
    unfold seg52BlindDeltaY118 seg52BlindDeltaY117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 117]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 118
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX117 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY117 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX118 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY118 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung118_wide (rho 50538) (rho 50656) (seg52BlindDeltaX117 rho) (seg52BlindDeltaY117 rho) (rho 51374) (rho 51375) (rho 51376) (rho 51377) (rho 51378) hacc
  · unfold seg52BlindDeltaX117 seg52BlindDeltaY117
    linear_combination r6986
  · unfold seg52BlindDeltaX117 seg52BlindDeltaY117
    linear_combination r6987
  · unfold seg52BlindDeltaX117 seg52BlindDeltaY117
    linear_combination r6988
  · unfold seg52BlindDeltaX117
    linear_combination r6989
  · unfold seg52BlindDeltaY117
    linear_combination r6990
  · linear_combination r6267

theorem seg52Blind_rows119 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6268 rho ∧ Seg52.relationRow6991 rho ∧ Seg52.relationRow6992 rho ∧ Seg52.relationRow6993 rho ∧ Seg52.relationRow6994 rho ∧ Seg52.relationRow6995 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6268, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6991, r6992, r6993, r6994, r6995, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6268, r6991, r6992, r6993, r6994, r6995⟩

theorem seg52Blind_rung119 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50657 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 119)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      119 (Bool.toZMod bit) (seg52BlindAccState rho 119)
      (seg52BlindAccState rho 120) := by
  obtain ⟨r6268, r6991, r6992, r6993, r6994, r6995⟩ := seg52Blind_rows119 rho h
  unfold Seg52.relationRow6268 at r6268

  unfold Seg52.relationRow6991 at r6991

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6991

  unfold Seg52.relationRow6992 at r6992

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6992

  unfold Seg52.relationRow6993 at r6993

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6993

  unfold Seg52.relationRow6994 at r6994

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6994

  unfold Seg52.relationRow6995 at r6995

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6995

  have hnextx : seg52BlindDeltaX119 rho =
      seg52BlindDeltaX118 rho + rho 51382 := by
    unfold seg52BlindDeltaX119 seg52BlindDeltaX118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 118]

    ring

  have hnexty : seg52BlindDeltaY119 rho =
      seg52BlindDeltaY118 rho + rho 51383 := by
    unfold seg52BlindDeltaY119 seg52BlindDeltaY118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 118]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 119
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX118 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY118 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX119 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY119 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung119_wide (rho 50538) (rho 50657) (seg52BlindDeltaX118 rho) (seg52BlindDeltaY118 rho) (rho 51379) (rho 51380) (rho 51381) (rho 51382) (rho 51383) hacc
  · unfold seg52BlindDeltaX118 seg52BlindDeltaY118
    linear_combination r6991
  · unfold seg52BlindDeltaX118 seg52BlindDeltaY118
    linear_combination r6992
  · unfold seg52BlindDeltaX118 seg52BlindDeltaY118
    linear_combination r6993
  · unfold seg52BlindDeltaX118
    linear_combination r6994
  · unfold seg52BlindDeltaY118
    linear_combination r6995
  · linear_combination r6268

theorem seg52Blind_rows120 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6269 rho ∧ Seg52.relationRow6996 rho ∧ Seg52.relationRow6997 rho ∧ Seg52.relationRow6998 rho ∧ Seg52.relationRow6999 rho ∧ Seg52.relationRow7000 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6269, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6996, r6997, r6998, r6999, r7000, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6269, r6996, r6997, r6998, r6999, r7000⟩

theorem seg52Blind_rung120 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50658 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 120)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      120 (Bool.toZMod bit) (seg52BlindAccState rho 120)
      (seg52BlindAccState rho 121) := by
  obtain ⟨r6269, r6996, r6997, r6998, r6999, r7000⟩ := seg52Blind_rows120 rho h
  unfold Seg52.relationRow6269 at r6269

  unfold Seg52.relationRow6996 at r6996

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6996

  unfold Seg52.relationRow6997 at r6997

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6997

  unfold Seg52.relationRow6998 at r6998

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6998

  unfold Seg52.relationRow6999 at r6999

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6999

  unfold Seg52.relationRow7000 at r7000

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7000

  have hnextx : seg52BlindDeltaX120 rho =
      seg52BlindDeltaX119 rho + rho 51387 := by
    unfold seg52BlindDeltaX120 seg52BlindDeltaX119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 119]

    ring

  have hnexty : seg52BlindDeltaY120 rho =
      seg52BlindDeltaY119 rho + rho 51388 := by
    unfold seg52BlindDeltaY120 seg52BlindDeltaY119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 119]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 120
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX119 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY119 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX120 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY120 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung120_wide (rho 50538) (rho 50658) (seg52BlindDeltaX119 rho) (seg52BlindDeltaY119 rho) (rho 51384) (rho 51385) (rho 51386) (rho 51387) (rho 51388) hacc
  · unfold seg52BlindDeltaX119 seg52BlindDeltaY119
    linear_combination r6996
  · unfold seg52BlindDeltaX119 seg52BlindDeltaY119
    linear_combination r6997
  · unfold seg52BlindDeltaX119 seg52BlindDeltaY119
    linear_combination r6998
  · unfold seg52BlindDeltaX119
    linear_combination r6999
  · unfold seg52BlindDeltaY119
    linear_combination r7000
  · linear_combination r6269

theorem seg52Blind_hstep_c11 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 111 ≤ i → i < 121 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc
  · exact seg52Blind_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc
  · exact seg52Blind_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc
  · exact seg52Blind_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc
  · exact seg52Blind_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc
  · exact seg52Blind_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc
  · exact seg52Blind_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc
  · exact seg52Blind_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc
  · exact seg52Blind_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc
  · exact seg52Blind_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

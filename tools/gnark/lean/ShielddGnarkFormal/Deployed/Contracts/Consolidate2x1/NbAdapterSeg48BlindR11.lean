import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows111 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6260 rho ∧ Seg48.relationRow6951 rho ∧ Seg48.relationRow6952 rho ∧ Seg48.relationRow6953 rho ∧ Seg48.relationRow6954 rho ∧ Seg48.relationRow6955 rho := by
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

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6260, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6951, r6952, r6953, r6954, r6955, _, _, _, _⟩

  exact ⟨r6260, r6951, r6952, r6953, r6954, r6955⟩

theorem seg48Blind_rung111 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39017 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 111)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      111 (Bool.toZMod bit) (seg48BlindAccState rho 111)
      (seg48BlindAccState rho 112) := by
  obtain ⟨r6260, r6951, r6952, r6953, r6954, r6955⟩ := seg48Blind_rows111 rho h
  unfold Seg48.relationRow6260 at r6260

  unfold Seg48.relationRow6951 at r6951

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6951

  unfold Seg48.relationRow6952 at r6952

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6952

  unfold Seg48.relationRow6953 at r6953

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6953

  unfold Seg48.relationRow6954 at r6954

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6954

  unfold Seg48.relationRow6955 at r6955

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6955

  have hnextx : seg48BlindDeltaX111 rho =
      seg48BlindDeltaX110 rho + rho 39710 := by
    unfold seg48BlindDeltaX111 seg48BlindDeltaX110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 110]

    ring

  have hnexty : seg48BlindDeltaY111 rho =
      seg48BlindDeltaY110 rho + rho 39711 := by
    unfold seg48BlindDeltaY111 seg48BlindDeltaY110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 110]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 111
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX110 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY110 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX111 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY111 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung111_wide (rho 38906) (rho 39017) (seg48BlindDeltaX110 rho) (seg48BlindDeltaY110 rho) (rho 39707) (rho 39708) (rho 39709) (rho 39710) (rho 39711) hacc
  · unfold seg48BlindDeltaX110 seg48BlindDeltaY110
    linear_combination r6951
  · unfold seg48BlindDeltaX110 seg48BlindDeltaY110
    linear_combination r6952
  · unfold seg48BlindDeltaX110 seg48BlindDeltaY110
    linear_combination r6953
  · unfold seg48BlindDeltaX110
    linear_combination r6954
  · unfold seg48BlindDeltaY110
    linear_combination r6955
  · linear_combination r6260

theorem seg48Blind_rows112 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6261 rho ∧ Seg48.relationRow6956 rho ∧ Seg48.relationRow6957 rho ∧ Seg48.relationRow6958 rho ∧ Seg48.relationRow6959 rho ∧ Seg48.relationRow6960 rho := by
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

    _, _, _, _, _, _, p86, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6261, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6956, r6957, r6958, r6959⟩

  unfold Seg48.relationPart87 at p87

  rcases p87 with ⟨r6960, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6261, r6956, r6957, r6958, r6959, r6960⟩

theorem seg48Blind_rung112 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39018 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 112)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      112 (Bool.toZMod bit) (seg48BlindAccState rho 112)
      (seg48BlindAccState rho 113) := by
  obtain ⟨r6261, r6956, r6957, r6958, r6959, r6960⟩ := seg48Blind_rows112 rho h
  unfold Seg48.relationRow6261 at r6261

  unfold Seg48.relationRow6956 at r6956

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6956

  unfold Seg48.relationRow6957 at r6957

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6957

  unfold Seg48.relationRow6958 at r6958

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6958

  unfold Seg48.relationRow6959 at r6959

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6959

  unfold Seg48.relationRow6960 at r6960

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6960

  have hnextx : seg48BlindDeltaX112 rho =
      seg48BlindDeltaX111 rho + rho 39715 := by
    unfold seg48BlindDeltaX112 seg48BlindDeltaX111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 111]

    ring

  have hnexty : seg48BlindDeltaY112 rho =
      seg48BlindDeltaY111 rho + rho 39716 := by
    unfold seg48BlindDeltaY112 seg48BlindDeltaY111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 111]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 112
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX111 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY111 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX112 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY112 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung112_wide (rho 38906) (rho 39018) (seg48BlindDeltaX111 rho) (seg48BlindDeltaY111 rho) (rho 39712) (rho 39713) (rho 39714) (rho 39715) (rho 39716) hacc
  · unfold seg48BlindDeltaX111 seg48BlindDeltaY111
    linear_combination r6956
  · unfold seg48BlindDeltaX111 seg48BlindDeltaY111
    linear_combination r6957
  · unfold seg48BlindDeltaX111 seg48BlindDeltaY111
    linear_combination r6958
  · unfold seg48BlindDeltaX111
    linear_combination r6959
  · unfold seg48BlindDeltaY111
    linear_combination r6960
  · linear_combination r6261

theorem seg48Blind_rows113 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6262 rho ∧ Seg48.relationRow6961 rho ∧ Seg48.relationRow6962 rho ∧ Seg48.relationRow6963 rho ∧ Seg48.relationRow6964 rho ∧ Seg48.relationRow6965 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6262, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart87 at p87

  rcases p87 with ⟨_, r6961, r6962, r6963, r6964, r6965, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6262, r6961, r6962, r6963, r6964, r6965⟩

theorem seg48Blind_rung113 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39019 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 113)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      113 (Bool.toZMod bit) (seg48BlindAccState rho 113)
      (seg48BlindAccState rho 114) := by
  obtain ⟨r6262, r6961, r6962, r6963, r6964, r6965⟩ := seg48Blind_rows113 rho h
  unfold Seg48.relationRow6262 at r6262

  unfold Seg48.relationRow6961 at r6961

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6961

  unfold Seg48.relationRow6962 at r6962

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6962

  unfold Seg48.relationRow6963 at r6963

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6963

  unfold Seg48.relationRow6964 at r6964

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6964

  unfold Seg48.relationRow6965 at r6965

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6965

  have hnextx : seg48BlindDeltaX113 rho =
      seg48BlindDeltaX112 rho + rho 39720 := by
    unfold seg48BlindDeltaX113 seg48BlindDeltaX112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 112]

    ring

  have hnexty : seg48BlindDeltaY113 rho =
      seg48BlindDeltaY112 rho + rho 39721 := by
    unfold seg48BlindDeltaY113 seg48BlindDeltaY112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 112]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 113
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX112 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY112 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX113 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY113 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung113_wide (rho 38906) (rho 39019) (seg48BlindDeltaX112 rho) (seg48BlindDeltaY112 rho) (rho 39717) (rho 39718) (rho 39719) (rho 39720) (rho 39721) hacc
  · unfold seg48BlindDeltaX112 seg48BlindDeltaY112
    linear_combination r6961
  · unfold seg48BlindDeltaX112 seg48BlindDeltaY112
    linear_combination r6962
  · unfold seg48BlindDeltaX112 seg48BlindDeltaY112
    linear_combination r6963
  · unfold seg48BlindDeltaX112
    linear_combination r6964
  · unfold seg48BlindDeltaY112
    linear_combination r6965
  · linear_combination r6262

theorem seg48Blind_rows114 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6263 rho ∧ Seg48.relationRow6966 rho ∧ Seg48.relationRow6967 rho ∧ Seg48.relationRow6968 rho ∧ Seg48.relationRow6969 rho ∧ Seg48.relationRow6970 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6263, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, r6966, r6967, r6968, r6969, r6970, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6263, r6966, r6967, r6968, r6969, r6970⟩

theorem seg48Blind_rung114 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39020 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 114)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      114 (Bool.toZMod bit) (seg48BlindAccState rho 114)
      (seg48BlindAccState rho 115) := by
  obtain ⟨r6263, r6966, r6967, r6968, r6969, r6970⟩ := seg48Blind_rows114 rho h
  unfold Seg48.relationRow6263 at r6263

  unfold Seg48.relationRow6966 at r6966

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6966

  unfold Seg48.relationRow6967 at r6967

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6967

  unfold Seg48.relationRow6968 at r6968

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6968

  unfold Seg48.relationRow6969 at r6969

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6969

  unfold Seg48.relationRow6970 at r6970

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6970

  have hnextx : seg48BlindDeltaX114 rho =
      seg48BlindDeltaX113 rho + rho 39725 := by
    unfold seg48BlindDeltaX114 seg48BlindDeltaX113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 113]

    ring

  have hnexty : seg48BlindDeltaY114 rho =
      seg48BlindDeltaY113 rho + rho 39726 := by
    unfold seg48BlindDeltaY114 seg48BlindDeltaY113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 113]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 114
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX113 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY113 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX114 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY114 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung114_wide (rho 38906) (rho 39020) (seg48BlindDeltaX113 rho) (seg48BlindDeltaY113 rho) (rho 39722) (rho 39723) (rho 39724) (rho 39725) (rho 39726) hacc
  · unfold seg48BlindDeltaX113 seg48BlindDeltaY113
    linear_combination r6966
  · unfold seg48BlindDeltaX113 seg48BlindDeltaY113
    linear_combination r6967
  · unfold seg48BlindDeltaX113 seg48BlindDeltaY113
    linear_combination r6968
  · unfold seg48BlindDeltaX113
    linear_combination r6969
  · unfold seg48BlindDeltaY113
    linear_combination r6970
  · linear_combination r6263

theorem seg48Blind_rows115 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6264 rho ∧ Seg48.relationRow6971 rho ∧ Seg48.relationRow6972 rho ∧ Seg48.relationRow6973 rho ∧ Seg48.relationRow6974 rho ∧ Seg48.relationRow6975 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6971, r6972, r6973, r6974, r6975, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6264, r6971, r6972, r6973, r6974, r6975⟩

theorem seg48Blind_rung115 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39021 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 115)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      115 (Bool.toZMod bit) (seg48BlindAccState rho 115)
      (seg48BlindAccState rho 116) := by
  obtain ⟨r6264, r6971, r6972, r6973, r6974, r6975⟩ := seg48Blind_rows115 rho h
  unfold Seg48.relationRow6264 at r6264

  unfold Seg48.relationRow6971 at r6971

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6971

  unfold Seg48.relationRow6972 at r6972

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6972

  unfold Seg48.relationRow6973 at r6973

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6973

  unfold Seg48.relationRow6974 at r6974

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6974

  unfold Seg48.relationRow6975 at r6975

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6975

  have hnextx : seg48BlindDeltaX115 rho =
      seg48BlindDeltaX114 rho + rho 39730 := by
    unfold seg48BlindDeltaX115 seg48BlindDeltaX114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 114]

    ring

  have hnexty : seg48BlindDeltaY115 rho =
      seg48BlindDeltaY114 rho + rho 39731 := by
    unfold seg48BlindDeltaY115 seg48BlindDeltaY114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 114]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 115
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX114 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY114 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX115 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY115 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung115_wide (rho 38906) (rho 39021) (seg48BlindDeltaX114 rho) (seg48BlindDeltaY114 rho) (rho 39727) (rho 39728) (rho 39729) (rho 39730) (rho 39731) hacc
  · unfold seg48BlindDeltaX114 seg48BlindDeltaY114
    linear_combination r6971
  · unfold seg48BlindDeltaX114 seg48BlindDeltaY114
    linear_combination r6972
  · unfold seg48BlindDeltaX114 seg48BlindDeltaY114
    linear_combination r6973
  · unfold seg48BlindDeltaX114
    linear_combination r6974
  · unfold seg48BlindDeltaY114
    linear_combination r6975
  · linear_combination r6264

theorem seg48Blind_rows116 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6265 rho ∧ Seg48.relationRow6976 rho ∧ Seg48.relationRow6977 rho ∧ Seg48.relationRow6978 rho ∧ Seg48.relationRow6979 rho ∧ Seg48.relationRow6980 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6265, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6976, r6977, r6978, r6979, r6980, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6265, r6976, r6977, r6978, r6979, r6980⟩

theorem seg48Blind_rung116 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39022 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 116)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      116 (Bool.toZMod bit) (seg48BlindAccState rho 116)
      (seg48BlindAccState rho 117) := by
  obtain ⟨r6265, r6976, r6977, r6978, r6979, r6980⟩ := seg48Blind_rows116 rho h
  unfold Seg48.relationRow6265 at r6265

  unfold Seg48.relationRow6976 at r6976

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6976

  unfold Seg48.relationRow6977 at r6977

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6977

  unfold Seg48.relationRow6978 at r6978

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6978

  unfold Seg48.relationRow6979 at r6979

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6979

  unfold Seg48.relationRow6980 at r6980

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6980

  have hnextx : seg48BlindDeltaX116 rho =
      seg48BlindDeltaX115 rho + rho 39735 := by
    unfold seg48BlindDeltaX116 seg48BlindDeltaX115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 115]

    ring

  have hnexty : seg48BlindDeltaY116 rho =
      seg48BlindDeltaY115 rho + rho 39736 := by
    unfold seg48BlindDeltaY116 seg48BlindDeltaY115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 115]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 116
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX115 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY115 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX116 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY116 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung116_wide (rho 38906) (rho 39022) (seg48BlindDeltaX115 rho) (seg48BlindDeltaY115 rho) (rho 39732) (rho 39733) (rho 39734) (rho 39735) (rho 39736) hacc
  · unfold seg48BlindDeltaX115 seg48BlindDeltaY115
    linear_combination r6976
  · unfold seg48BlindDeltaX115 seg48BlindDeltaY115
    linear_combination r6977
  · unfold seg48BlindDeltaX115 seg48BlindDeltaY115
    linear_combination r6978
  · unfold seg48BlindDeltaX115
    linear_combination r6979
  · unfold seg48BlindDeltaY115
    linear_combination r6980
  · linear_combination r6265

theorem seg48Blind_rows117 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6266 rho ∧ Seg48.relationRow6981 rho ∧ Seg48.relationRow6982 rho ∧ Seg48.relationRow6983 rho ∧ Seg48.relationRow6984 rho ∧ Seg48.relationRow6985 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6266, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6981, r6982, r6983, r6984, r6985, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6266, r6981, r6982, r6983, r6984, r6985⟩

theorem seg48Blind_rung117 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39023 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 117)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      117 (Bool.toZMod bit) (seg48BlindAccState rho 117)
      (seg48BlindAccState rho 118) := by
  obtain ⟨r6266, r6981, r6982, r6983, r6984, r6985⟩ := seg48Blind_rows117 rho h
  unfold Seg48.relationRow6266 at r6266

  unfold Seg48.relationRow6981 at r6981

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6981

  unfold Seg48.relationRow6982 at r6982

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6982

  unfold Seg48.relationRow6983 at r6983

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6983

  unfold Seg48.relationRow6984 at r6984

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6984

  unfold Seg48.relationRow6985 at r6985

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6985

  have hnextx : seg48BlindDeltaX117 rho =
      seg48BlindDeltaX116 rho + rho 39740 := by
    unfold seg48BlindDeltaX117 seg48BlindDeltaX116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 116]

    ring

  have hnexty : seg48BlindDeltaY117 rho =
      seg48BlindDeltaY116 rho + rho 39741 := by
    unfold seg48BlindDeltaY117 seg48BlindDeltaY116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 116]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 117
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX116 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY116 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX117 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY117 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung117_wide (rho 38906) (rho 39023) (seg48BlindDeltaX116 rho) (seg48BlindDeltaY116 rho) (rho 39737) (rho 39738) (rho 39739) (rho 39740) (rho 39741) hacc
  · unfold seg48BlindDeltaX116 seg48BlindDeltaY116
    linear_combination r6981
  · unfold seg48BlindDeltaX116 seg48BlindDeltaY116
    linear_combination r6982
  · unfold seg48BlindDeltaX116 seg48BlindDeltaY116
    linear_combination r6983
  · unfold seg48BlindDeltaX116
    linear_combination r6984
  · unfold seg48BlindDeltaY116
    linear_combination r6985
  · linear_combination r6266

theorem seg48Blind_rows118 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6267 rho ∧ Seg48.relationRow6986 rho ∧ Seg48.relationRow6987 rho ∧ Seg48.relationRow6988 rho ∧ Seg48.relationRow6989 rho ∧ Seg48.relationRow6990 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6267, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6986, r6987, r6988, r6989, r6990, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6267, r6986, r6987, r6988, r6989, r6990⟩

theorem seg48Blind_rung118 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39024 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 118)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      118 (Bool.toZMod bit) (seg48BlindAccState rho 118)
      (seg48BlindAccState rho 119) := by
  obtain ⟨r6267, r6986, r6987, r6988, r6989, r6990⟩ := seg48Blind_rows118 rho h
  unfold Seg48.relationRow6267 at r6267

  unfold Seg48.relationRow6986 at r6986

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6986

  unfold Seg48.relationRow6987 at r6987

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6987

  unfold Seg48.relationRow6988 at r6988

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6988

  unfold Seg48.relationRow6989 at r6989

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6989

  unfold Seg48.relationRow6990 at r6990

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6990

  have hnextx : seg48BlindDeltaX118 rho =
      seg48BlindDeltaX117 rho + rho 39745 := by
    unfold seg48BlindDeltaX118 seg48BlindDeltaX117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 117]

    ring

  have hnexty : seg48BlindDeltaY118 rho =
      seg48BlindDeltaY117 rho + rho 39746 := by
    unfold seg48BlindDeltaY118 seg48BlindDeltaY117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 117]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 118
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX117 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY117 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX118 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY118 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung118_wide (rho 38906) (rho 39024) (seg48BlindDeltaX117 rho) (seg48BlindDeltaY117 rho) (rho 39742) (rho 39743) (rho 39744) (rho 39745) (rho 39746) hacc
  · unfold seg48BlindDeltaX117 seg48BlindDeltaY117
    linear_combination r6986
  · unfold seg48BlindDeltaX117 seg48BlindDeltaY117
    linear_combination r6987
  · unfold seg48BlindDeltaX117 seg48BlindDeltaY117
    linear_combination r6988
  · unfold seg48BlindDeltaX117
    linear_combination r6989
  · unfold seg48BlindDeltaY117
    linear_combination r6990
  · linear_combination r6267

theorem seg48Blind_rows119 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6268 rho ∧ Seg48.relationRow6991 rho ∧ Seg48.relationRow6992 rho ∧ Seg48.relationRow6993 rho ∧ Seg48.relationRow6994 rho ∧ Seg48.relationRow6995 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6268, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6991, r6992, r6993, r6994, r6995, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6268, r6991, r6992, r6993, r6994, r6995⟩

theorem seg48Blind_rung119 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39025 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 119)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      119 (Bool.toZMod bit) (seg48BlindAccState rho 119)
      (seg48BlindAccState rho 120) := by
  obtain ⟨r6268, r6991, r6992, r6993, r6994, r6995⟩ := seg48Blind_rows119 rho h
  unfold Seg48.relationRow6268 at r6268

  unfold Seg48.relationRow6991 at r6991

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6991

  unfold Seg48.relationRow6992 at r6992

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6992

  unfold Seg48.relationRow6993 at r6993

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6993

  unfold Seg48.relationRow6994 at r6994

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6994

  unfold Seg48.relationRow6995 at r6995

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6995

  have hnextx : seg48BlindDeltaX119 rho =
      seg48BlindDeltaX118 rho + rho 39750 := by
    unfold seg48BlindDeltaX119 seg48BlindDeltaX118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 118]

    ring

  have hnexty : seg48BlindDeltaY119 rho =
      seg48BlindDeltaY118 rho + rho 39751 := by
    unfold seg48BlindDeltaY119 seg48BlindDeltaY118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 118]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 119
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX118 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY118 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX119 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY119 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung119_wide (rho 38906) (rho 39025) (seg48BlindDeltaX118 rho) (seg48BlindDeltaY118 rho) (rho 39747) (rho 39748) (rho 39749) (rho 39750) (rho 39751) hacc
  · unfold seg48BlindDeltaX118 seg48BlindDeltaY118
    linear_combination r6991
  · unfold seg48BlindDeltaX118 seg48BlindDeltaY118
    linear_combination r6992
  · unfold seg48BlindDeltaX118 seg48BlindDeltaY118
    linear_combination r6993
  · unfold seg48BlindDeltaX118
    linear_combination r6994
  · unfold seg48BlindDeltaY118
    linear_combination r6995
  · linear_combination r6268

theorem seg48Blind_rows120 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6269 rho ∧ Seg48.relationRow6996 rho ∧ Seg48.relationRow6997 rho ∧ Seg48.relationRow6998 rho ∧ Seg48.relationRow6999 rho ∧ Seg48.relationRow7000 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6269, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6996, r6997, r6998, r6999, r7000, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6269, r6996, r6997, r6998, r6999, r7000⟩

theorem seg48Blind_rung120 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39026 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 120)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      120 (Bool.toZMod bit) (seg48BlindAccState rho 120)
      (seg48BlindAccState rho 121) := by
  obtain ⟨r6269, r6996, r6997, r6998, r6999, r7000⟩ := seg48Blind_rows120 rho h
  unfold Seg48.relationRow6269 at r6269

  unfold Seg48.relationRow6996 at r6996

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6996

  unfold Seg48.relationRow6997 at r6997

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6997

  unfold Seg48.relationRow6998 at r6998

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6998

  unfold Seg48.relationRow6999 at r6999

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6999

  unfold Seg48.relationRow7000 at r7000

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7000

  have hnextx : seg48BlindDeltaX120 rho =
      seg48BlindDeltaX119 rho + rho 39755 := by
    unfold seg48BlindDeltaX120 seg48BlindDeltaX119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 119]

    ring

  have hnexty : seg48BlindDeltaY120 rho =
      seg48BlindDeltaY119 rho + rho 39756 := by
    unfold seg48BlindDeltaY120 seg48BlindDeltaY119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 119]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 120
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX119 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY119 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX120 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY120 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung120_wide (rho 38906) (rho 39026) (seg48BlindDeltaX119 rho) (seg48BlindDeltaY119 rho) (rho 39752) (rho 39753) (rho 39754) (rho 39755) (rho 39756) hacc
  · unfold seg48BlindDeltaX119 seg48BlindDeltaY119
    linear_combination r6996
  · unfold seg48BlindDeltaX119 seg48BlindDeltaY119
    linear_combination r6997
  · unfold seg48BlindDeltaX119 seg48BlindDeltaY119
    linear_combination r6998
  · unfold seg48BlindDeltaX119
    linear_combination r6999
  · unfold seg48BlindDeltaY119
    linear_combination r7000
  · linear_combination r6269

theorem seg48Blind_hstep_c11 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 111 ≤ i → i < 121 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc
  · exact seg48Blind_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc
  · exact seg48Blind_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc
  · exact seg48Blind_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc
  · exact seg48Blind_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc
  · exact seg48Blind_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc
  · exact seg48Blind_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc
  · exact seg48Blind_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc
  · exact seg48Blind_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc
  · exact seg48Blind_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

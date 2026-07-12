import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg46Blind_rows111 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow499 rho ∧ Seg46.relationRow1190 rho ∧ Seg46.relationRow1191 rho ∧ Seg46.relationRow1192 rho ∧ Seg46.relationRow1193 rho ∧ Seg46.relationRow1194 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, p6, _, _, _,

    _, _, _, _, p14, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart6 at p6

  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r499, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart14 at p14

  rcases p14 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1190, r1191, r1192, r1193, r1194, _, _, _, _, _⟩

  exact ⟨r499, r1190, r1191, r1192, r1193, r1194⟩

theorem seg46Blind_rung111 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31772 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 111)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      111 (Bool.toZMod bit) (seg46BlindAccState rho 111)
      (seg46BlindAccState rho 112) := by
  obtain ⟨r499, r1190, r1191, r1192, r1193, r1194⟩ := seg46Blind_rows111 rho h
  unfold Seg46.relationRow499 at r499

  unfold Seg46.relationRow1190 at r1190

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1190

  unfold Seg46.relationRow1191 at r1191

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1191

  unfold Seg46.relationRow1192 at r1192

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1192

  unfold Seg46.relationRow1193 at r1193

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1193

  unfold Seg46.relationRow1194 at r1194

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1194

  have hnextx : seg46BlindDeltaX111 rho =
      seg46BlindDeltaX110 rho + rho 32465 := by
    unfold seg46BlindDeltaX111 seg46BlindDeltaX110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 110]

    ring

  have hnexty : seg46BlindDeltaY111 rho =
      seg46BlindDeltaY110 rho + rho 32466 := by
    unfold seg46BlindDeltaY111 seg46BlindDeltaY110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 110]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 111
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX110 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY110 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX111 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY111 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung111_wide (rho 31661) (rho 31772) (seg46BlindDeltaX110 rho) (seg46BlindDeltaY110 rho) (rho 32462) (rho 32463) (rho 32464) (rho 32465) (rho 32466) hacc
  · unfold seg46BlindDeltaX110 seg46BlindDeltaY110
    linear_combination r1190
  · unfold seg46BlindDeltaX110 seg46BlindDeltaY110
    linear_combination r1191
  · unfold seg46BlindDeltaX110 seg46BlindDeltaY110
    linear_combination r1192
  · unfold seg46BlindDeltaX110
    linear_combination r1193
  · unfold seg46BlindDeltaY110
    linear_combination r1194
  · linear_combination r499

theorem seg46Blind_rows112 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow500 rho ∧ Seg46.relationRow1195 rho ∧ Seg46.relationRow1196 rho ∧ Seg46.relationRow1197 rho ∧ Seg46.relationRow1198 rho ∧ Seg46.relationRow1199 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, p6, _, _, _,

    _, _, _, _, p14, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart6 at p6

  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r500, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart14 at p14

  rcases p14 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1195, r1196, r1197, r1198, r1199⟩

  exact ⟨r500, r1195, r1196, r1197, r1198, r1199⟩

theorem seg46Blind_rung112 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31773 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 112)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      112 (Bool.toZMod bit) (seg46BlindAccState rho 112)
      (seg46BlindAccState rho 113) := by
  obtain ⟨r500, r1195, r1196, r1197, r1198, r1199⟩ := seg46Blind_rows112 rho h
  unfold Seg46.relationRow500 at r500

  unfold Seg46.relationRow1195 at r1195

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1195

  unfold Seg46.relationRow1196 at r1196

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1196

  unfold Seg46.relationRow1197 at r1197

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1197

  unfold Seg46.relationRow1198 at r1198

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1198

  unfold Seg46.relationRow1199 at r1199

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1199

  have hnextx : seg46BlindDeltaX112 rho =
      seg46BlindDeltaX111 rho + rho 32470 := by
    unfold seg46BlindDeltaX112 seg46BlindDeltaX111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 111]

    ring

  have hnexty : seg46BlindDeltaY112 rho =
      seg46BlindDeltaY111 rho + rho 32471 := by
    unfold seg46BlindDeltaY112 seg46BlindDeltaY111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 111]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 112
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX111 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY111 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX112 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY112 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung112_wide (rho 31661) (rho 31773) (seg46BlindDeltaX111 rho) (seg46BlindDeltaY111 rho) (rho 32467) (rho 32468) (rho 32469) (rho 32470) (rho 32471) hacc
  · unfold seg46BlindDeltaX111 seg46BlindDeltaY111
    linear_combination r1195
  · unfold seg46BlindDeltaX111 seg46BlindDeltaY111
    linear_combination r1196
  · unfold seg46BlindDeltaX111 seg46BlindDeltaY111
    linear_combination r1197
  · unfold seg46BlindDeltaX111
    linear_combination r1198
  · unfold seg46BlindDeltaY111
    linear_combination r1199
  · linear_combination r500

theorem seg46Blind_rows113 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow501 rho ∧ Seg46.relationRow1200 rho ∧ Seg46.relationRow1201 rho ∧ Seg46.relationRow1202 rho ∧ Seg46.relationRow1203 rho ∧ Seg46.relationRow1204 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, p6, _, _, _,

    _, _, _, _, _, p15, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart6 at p6

  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r501, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart15 at p15

  rcases p15 with ⟨r1200, r1201, r1202, r1203, r1204, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r501, r1200, r1201, r1202, r1203, r1204⟩

theorem seg46Blind_rung113 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31774 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 113)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      113 (Bool.toZMod bit) (seg46BlindAccState rho 113)
      (seg46BlindAccState rho 114) := by
  obtain ⟨r501, r1200, r1201, r1202, r1203, r1204⟩ := seg46Blind_rows113 rho h
  unfold Seg46.relationRow501 at r501

  unfold Seg46.relationRow1200 at r1200

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1200

  unfold Seg46.relationRow1201 at r1201

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1201

  unfold Seg46.relationRow1202 at r1202

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1202

  unfold Seg46.relationRow1203 at r1203

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1203

  unfold Seg46.relationRow1204 at r1204

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1204

  have hnextx : seg46BlindDeltaX113 rho =
      seg46BlindDeltaX112 rho + rho 32475 := by
    unfold seg46BlindDeltaX113 seg46BlindDeltaX112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 112]

    ring

  have hnexty : seg46BlindDeltaY113 rho =
      seg46BlindDeltaY112 rho + rho 32476 := by
    unfold seg46BlindDeltaY113 seg46BlindDeltaY112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 112]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 113
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX112 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY112 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX113 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY113 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung113_wide (rho 31661) (rho 31774) (seg46BlindDeltaX112 rho) (seg46BlindDeltaY112 rho) (rho 32472) (rho 32473) (rho 32474) (rho 32475) (rho 32476) hacc
  · unfold seg46BlindDeltaX112 seg46BlindDeltaY112
    linear_combination r1200
  · unfold seg46BlindDeltaX112 seg46BlindDeltaY112
    linear_combination r1201
  · unfold seg46BlindDeltaX112 seg46BlindDeltaY112
    linear_combination r1202
  · unfold seg46BlindDeltaX112
    linear_combination r1203
  · unfold seg46BlindDeltaY112
    linear_combination r1204
  · linear_combination r501

theorem seg46Blind_rows114 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow502 rho ∧ Seg46.relationRow1205 rho ∧ Seg46.relationRow1206 rho ∧ Seg46.relationRow1207 rho ∧ Seg46.relationRow1208 rho ∧ Seg46.relationRow1209 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, p6, _, _, _,

    _, _, _, _, _, p15, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart6 at p6

  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r502, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, r1205, r1206, r1207, r1208, r1209, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r502, r1205, r1206, r1207, r1208, r1209⟩

theorem seg46Blind_rung114 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31775 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 114)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      114 (Bool.toZMod bit) (seg46BlindAccState rho 114)
      (seg46BlindAccState rho 115) := by
  obtain ⟨r502, r1205, r1206, r1207, r1208, r1209⟩ := seg46Blind_rows114 rho h
  unfold Seg46.relationRow502 at r502

  unfold Seg46.relationRow1205 at r1205

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1205

  unfold Seg46.relationRow1206 at r1206

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1206

  unfold Seg46.relationRow1207 at r1207

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1207

  unfold Seg46.relationRow1208 at r1208

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1208

  unfold Seg46.relationRow1209 at r1209

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1209

  have hnextx : seg46BlindDeltaX114 rho =
      seg46BlindDeltaX113 rho + rho 32480 := by
    unfold seg46BlindDeltaX114 seg46BlindDeltaX113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 113]

    ring

  have hnexty : seg46BlindDeltaY114 rho =
      seg46BlindDeltaY113 rho + rho 32481 := by
    unfold seg46BlindDeltaY114 seg46BlindDeltaY113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 113]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 114
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX113 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY113 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX114 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY114 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung114_wide (rho 31661) (rho 31775) (seg46BlindDeltaX113 rho) (seg46BlindDeltaY113 rho) (rho 32477) (rho 32478) (rho 32479) (rho 32480) (rho 32481) hacc
  · unfold seg46BlindDeltaX113 seg46BlindDeltaY113
    linear_combination r1205
  · unfold seg46BlindDeltaX113 seg46BlindDeltaY113
    linear_combination r1206
  · unfold seg46BlindDeltaX113 seg46BlindDeltaY113
    linear_combination r1207
  · unfold seg46BlindDeltaX113
    linear_combination r1208
  · unfold seg46BlindDeltaY113
    linear_combination r1209
  · linear_combination r502

theorem seg46Blind_rows115 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow503 rho ∧ Seg46.relationRow1210 rho ∧ Seg46.relationRow1211 rho ∧ Seg46.relationRow1212 rho ∧ Seg46.relationRow1213 rho ∧ Seg46.relationRow1214 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, p6, _, _, _,

    _, _, _, _, _, p15, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart6 at p6

  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r503, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, r1210, r1211, r1212, r1213, r1214, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r503, r1210, r1211, r1212, r1213, r1214⟩

theorem seg46Blind_rung115 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31776 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 115)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      115 (Bool.toZMod bit) (seg46BlindAccState rho 115)
      (seg46BlindAccState rho 116) := by
  obtain ⟨r503, r1210, r1211, r1212, r1213, r1214⟩ := seg46Blind_rows115 rho h
  unfold Seg46.relationRow503 at r503

  unfold Seg46.relationRow1210 at r1210

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1210

  unfold Seg46.relationRow1211 at r1211

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1211

  unfold Seg46.relationRow1212 at r1212

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1212

  unfold Seg46.relationRow1213 at r1213

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1213

  unfold Seg46.relationRow1214 at r1214

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1214

  have hnextx : seg46BlindDeltaX115 rho =
      seg46BlindDeltaX114 rho + rho 32485 := by
    unfold seg46BlindDeltaX115 seg46BlindDeltaX114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 114]

    ring

  have hnexty : seg46BlindDeltaY115 rho =
      seg46BlindDeltaY114 rho + rho 32486 := by
    unfold seg46BlindDeltaY115 seg46BlindDeltaY114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 114]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 115
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX114 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY114 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX115 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY115 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung115_wide (rho 31661) (rho 31776) (seg46BlindDeltaX114 rho) (seg46BlindDeltaY114 rho) (rho 32482) (rho 32483) (rho 32484) (rho 32485) (rho 32486) hacc
  · unfold seg46BlindDeltaX114 seg46BlindDeltaY114
    linear_combination r1210
  · unfold seg46BlindDeltaX114 seg46BlindDeltaY114
    linear_combination r1211
  · unfold seg46BlindDeltaX114 seg46BlindDeltaY114
    linear_combination r1212
  · unfold seg46BlindDeltaX114
    linear_combination r1213
  · unfold seg46BlindDeltaY114
    linear_combination r1214
  · linear_combination r503

theorem seg46Blind_rows116 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow504 rho ∧ Seg46.relationRow1215 rho ∧ Seg46.relationRow1216 rho ∧ Seg46.relationRow1217 rho ∧ Seg46.relationRow1218 rho ∧ Seg46.relationRow1219 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, p6, _, _, _,

    _, _, _, _, _, p15, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart6 at p6

  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r504, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1215, r1216, r1217, r1218, r1219, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r504, r1215, r1216, r1217, r1218, r1219⟩

theorem seg46Blind_rung116 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31777 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 116)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      116 (Bool.toZMod bit) (seg46BlindAccState rho 116)
      (seg46BlindAccState rho 117) := by
  obtain ⟨r504, r1215, r1216, r1217, r1218, r1219⟩ := seg46Blind_rows116 rho h
  unfold Seg46.relationRow504 at r504

  unfold Seg46.relationRow1215 at r1215

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1215

  unfold Seg46.relationRow1216 at r1216

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1216

  unfold Seg46.relationRow1217 at r1217

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1217

  unfold Seg46.relationRow1218 at r1218

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1218

  unfold Seg46.relationRow1219 at r1219

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1219

  have hnextx : seg46BlindDeltaX116 rho =
      seg46BlindDeltaX115 rho + rho 32490 := by
    unfold seg46BlindDeltaX116 seg46BlindDeltaX115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 115]

    ring

  have hnexty : seg46BlindDeltaY116 rho =
      seg46BlindDeltaY115 rho + rho 32491 := by
    unfold seg46BlindDeltaY116 seg46BlindDeltaY115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 115]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 116
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX115 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY115 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX116 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY116 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung116_wide (rho 31661) (rho 31777) (seg46BlindDeltaX115 rho) (seg46BlindDeltaY115 rho) (rho 32487) (rho 32488) (rho 32489) (rho 32490) (rho 32491) hacc
  · unfold seg46BlindDeltaX115 seg46BlindDeltaY115
    linear_combination r1215
  · unfold seg46BlindDeltaX115 seg46BlindDeltaY115
    linear_combination r1216
  · unfold seg46BlindDeltaX115 seg46BlindDeltaY115
    linear_combination r1217
  · unfold seg46BlindDeltaX115
    linear_combination r1218
  · unfold seg46BlindDeltaY115
    linear_combination r1219
  · linear_combination r504

theorem seg46Blind_rows117 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow505 rho ∧ Seg46.relationRow1220 rho ∧ Seg46.relationRow1221 rho ∧ Seg46.relationRow1222 rho ∧ Seg46.relationRow1223 rho ∧ Seg46.relationRow1224 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, p6, _, _, _,

    _, _, _, _, _, p15, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart6 at p6

  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r505, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1220, r1221, r1222, r1223, r1224, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r505, r1220, r1221, r1222, r1223, r1224⟩

theorem seg46Blind_rung117 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31778 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 117)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      117 (Bool.toZMod bit) (seg46BlindAccState rho 117)
      (seg46BlindAccState rho 118) := by
  obtain ⟨r505, r1220, r1221, r1222, r1223, r1224⟩ := seg46Blind_rows117 rho h
  unfold Seg46.relationRow505 at r505

  unfold Seg46.relationRow1220 at r1220

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1220

  unfold Seg46.relationRow1221 at r1221

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1221

  unfold Seg46.relationRow1222 at r1222

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1222

  unfold Seg46.relationRow1223 at r1223

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1223

  unfold Seg46.relationRow1224 at r1224

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1224

  have hnextx : seg46BlindDeltaX117 rho =
      seg46BlindDeltaX116 rho + rho 32495 := by
    unfold seg46BlindDeltaX117 seg46BlindDeltaX116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 116]

    ring

  have hnexty : seg46BlindDeltaY117 rho =
      seg46BlindDeltaY116 rho + rho 32496 := by
    unfold seg46BlindDeltaY117 seg46BlindDeltaY116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 116]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 117
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX116 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY116 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX117 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY117 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung117_wide (rho 31661) (rho 31778) (seg46BlindDeltaX116 rho) (seg46BlindDeltaY116 rho) (rho 32492) (rho 32493) (rho 32494) (rho 32495) (rho 32496) hacc
  · unfold seg46BlindDeltaX116 seg46BlindDeltaY116
    linear_combination r1220
  · unfold seg46BlindDeltaX116 seg46BlindDeltaY116
    linear_combination r1221
  · unfold seg46BlindDeltaX116 seg46BlindDeltaY116
    linear_combination r1222
  · unfold seg46BlindDeltaX116
    linear_combination r1223
  · unfold seg46BlindDeltaY116
    linear_combination r1224
  · linear_combination r505

theorem seg46Blind_rows118 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow506 rho ∧ Seg46.relationRow1225 rho ∧ Seg46.relationRow1226 rho ∧ Seg46.relationRow1227 rho ∧ Seg46.relationRow1228 rho ∧ Seg46.relationRow1229 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, p6, _, _, _,

    _, _, _, _, _, p15, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart6 at p6

  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r506, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1225, r1226, r1227, r1228, r1229, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r506, r1225, r1226, r1227, r1228, r1229⟩

theorem seg46Blind_rung118 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31779 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 118)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      118 (Bool.toZMod bit) (seg46BlindAccState rho 118)
      (seg46BlindAccState rho 119) := by
  obtain ⟨r506, r1225, r1226, r1227, r1228, r1229⟩ := seg46Blind_rows118 rho h
  unfold Seg46.relationRow506 at r506

  unfold Seg46.relationRow1225 at r1225

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1225

  unfold Seg46.relationRow1226 at r1226

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1226

  unfold Seg46.relationRow1227 at r1227

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1227

  unfold Seg46.relationRow1228 at r1228

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1228

  unfold Seg46.relationRow1229 at r1229

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1229

  have hnextx : seg46BlindDeltaX118 rho =
      seg46BlindDeltaX117 rho + rho 32500 := by
    unfold seg46BlindDeltaX118 seg46BlindDeltaX117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 117]

    ring

  have hnexty : seg46BlindDeltaY118 rho =
      seg46BlindDeltaY117 rho + rho 32501 := by
    unfold seg46BlindDeltaY118 seg46BlindDeltaY117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 117]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 118
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX117 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY117 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX118 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY118 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung118_wide (rho 31661) (rho 31779) (seg46BlindDeltaX117 rho) (seg46BlindDeltaY117 rho) (rho 32497) (rho 32498) (rho 32499) (rho 32500) (rho 32501) hacc
  · unfold seg46BlindDeltaX117 seg46BlindDeltaY117
    linear_combination r1225
  · unfold seg46BlindDeltaX117 seg46BlindDeltaY117
    linear_combination r1226
  · unfold seg46BlindDeltaX117 seg46BlindDeltaY117
    linear_combination r1227
  · unfold seg46BlindDeltaX117
    linear_combination r1228
  · unfold seg46BlindDeltaY117
    linear_combination r1229
  · linear_combination r506

theorem seg46Blind_rows119 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow507 rho ∧ Seg46.relationRow1230 rho ∧ Seg46.relationRow1231 rho ∧ Seg46.relationRow1232 rho ∧ Seg46.relationRow1233 rho ∧ Seg46.relationRow1234 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, p6, _, _, _,

    _, _, _, _, _, p15, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart6 at p6

  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r507, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1230, r1231, r1232, r1233, r1234, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r507, r1230, r1231, r1232, r1233, r1234⟩

theorem seg46Blind_rung119 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31780 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 119)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      119 (Bool.toZMod bit) (seg46BlindAccState rho 119)
      (seg46BlindAccState rho 120) := by
  obtain ⟨r507, r1230, r1231, r1232, r1233, r1234⟩ := seg46Blind_rows119 rho h
  unfold Seg46.relationRow507 at r507

  unfold Seg46.relationRow1230 at r1230

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1230

  unfold Seg46.relationRow1231 at r1231

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1231

  unfold Seg46.relationRow1232 at r1232

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1232

  unfold Seg46.relationRow1233 at r1233

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1233

  unfold Seg46.relationRow1234 at r1234

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1234

  have hnextx : seg46BlindDeltaX119 rho =
      seg46BlindDeltaX118 rho + rho 32505 := by
    unfold seg46BlindDeltaX119 seg46BlindDeltaX118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 118]

    ring

  have hnexty : seg46BlindDeltaY119 rho =
      seg46BlindDeltaY118 rho + rho 32506 := by
    unfold seg46BlindDeltaY119 seg46BlindDeltaY118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 118]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 119
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX118 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY118 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX119 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY119 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung119_wide (rho 31661) (rho 31780) (seg46BlindDeltaX118 rho) (seg46BlindDeltaY118 rho) (rho 32502) (rho 32503) (rho 32504) (rho 32505) (rho 32506) hacc
  · unfold seg46BlindDeltaX118 seg46BlindDeltaY118
    linear_combination r1230
  · unfold seg46BlindDeltaX118 seg46BlindDeltaY118
    linear_combination r1231
  · unfold seg46BlindDeltaX118 seg46BlindDeltaY118
    linear_combination r1232
  · unfold seg46BlindDeltaX118
    linear_combination r1233
  · unfold seg46BlindDeltaY118
    linear_combination r1234
  · linear_combination r507

theorem seg46Blind_rows120 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow508 rho ∧ Seg46.relationRow1235 rho ∧ Seg46.relationRow1236 rho ∧ Seg46.relationRow1237 rho ∧ Seg46.relationRow1238 rho ∧ Seg46.relationRow1239 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, p6, _, _, _,

    _, _, _, _, _, p15, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart6 at p6

  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r508, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1235, r1236, r1237, r1238, r1239, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r508, r1235, r1236, r1237, r1238, r1239⟩

theorem seg46Blind_rung120 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31781 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 120)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      120 (Bool.toZMod bit) (seg46BlindAccState rho 120)
      (seg46BlindAccState rho 121) := by
  obtain ⟨r508, r1235, r1236, r1237, r1238, r1239⟩ := seg46Blind_rows120 rho h
  unfold Seg46.relationRow508 at r508

  unfold Seg46.relationRow1235 at r1235

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1235

  unfold Seg46.relationRow1236 at r1236

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1236

  unfold Seg46.relationRow1237 at r1237

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1237

  unfold Seg46.relationRow1238 at r1238

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1238

  unfold Seg46.relationRow1239 at r1239

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1239

  have hnextx : seg46BlindDeltaX120 rho =
      seg46BlindDeltaX119 rho + rho 32510 := by
    unfold seg46BlindDeltaX120 seg46BlindDeltaX119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 119]

    ring

  have hnexty : seg46BlindDeltaY120 rho =
      seg46BlindDeltaY119 rho + rho 32511 := by
    unfold seg46BlindDeltaY120 seg46BlindDeltaY119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 119]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 120
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX119 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY119 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX120 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY120 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung120_wide (rho 31661) (rho 31781) (seg46BlindDeltaX119 rho) (seg46BlindDeltaY119 rho) (rho 32507) (rho 32508) (rho 32509) (rho 32510) (rho 32511) hacc
  · unfold seg46BlindDeltaX119 seg46BlindDeltaY119
    linear_combination r1235
  · unfold seg46BlindDeltaX119 seg46BlindDeltaY119
    linear_combination r1236
  · unfold seg46BlindDeltaX119 seg46BlindDeltaY119
    linear_combination r1237
  · unfold seg46BlindDeltaX119
    linear_combination r1238
  · unfold seg46BlindDeltaY119
    linear_combination r1239
  · linear_combination r508

theorem seg46Blind_hstep_c11 (rho : Nat -> Seg46.F)
    (h : Seg46.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (31661 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 111 ≤ i → i < 121 →
      EdwardsBridge.onCurve (seg46BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg46BlindAccState rho i)
        (seg46BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg46Blind_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc
  · exact seg46Blind_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc
  · exact seg46Blind_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc
  · exact seg46Blind_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc
  · exact seg46Blind_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc
  · exact seg46Blind_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc
  · exact seg46Blind_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc
  · exact seg46Blind_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc
  · exact seg46Blind_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc
  · exact seg46Blind_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

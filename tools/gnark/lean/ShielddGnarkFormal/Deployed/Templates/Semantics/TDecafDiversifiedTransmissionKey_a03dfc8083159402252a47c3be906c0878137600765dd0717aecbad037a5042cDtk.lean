import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.IvkModRTruncation
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkCanon
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkLt
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkPoseidon
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Body
import ShielddGnarkFormal.AckBridge
import ShielddGnarkFormal.Deployed.NoteReshapeRefinement
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkBits
import ShielddGnarkFormal.Decaf377Assumptions
import ShielddGnarkFormal.DtkBridge.ActiveSupport
import ShielddGnarkFormal.CompressDeployedGadgets

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.DeployedGadgets

theorem onCurveAt_sub_eq
    (x y : F) (h : onCurveAt x y) :
    y * y - x * x = 1 + 3021 * (x * x) * (y * y) := by
  calc
    y * y - x * x = -(x * x) + y * y := by ring
    _ = 1 + 3021 * (x * x) * (y * y) := h

theorem scalar_toBinary
    (rho : Nat → F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) :
    GatesDef.to_binary (rho 977) 251
      (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport.scalarBits rho) := by
  have hIvkBinary := dtkIvk_toBinary rho h
  have hq4T := dtk_q4_ladder rho h True trivial
  have hrT := dtk_r_ladder rho h True hq4T
  have htailT := Shieldd.GnarkFormal.DtkBridge.dtkSeg1_build
    (dtkIvkBits rho) (rho 978) True hrT
  change Shieldd.GnarkFormal.DtkBridge.dtkTailK (dtkIvkBits rho) (rho 978) True at htailT
  have hladders := (Shieldd.GnarkFormal.DtkBridge.dtkTailK_laddersTail
    _ _ _ htailT).1
  have hScalarBinary : GatesDef.to_binary (rho 977) 251 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport.scalarBits rho) :=
    Shieldd.GnarkFormal.Extracted.IvkModR.Truncation.laddersTail_to_binary_251 (rho 978) (rho 977)
      (dtkIvkBits rho) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport.scalarBits rho) hIvkBinary hladders
      (by
        intro i
        simp only [Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport.scalarBits, dtkIvkBits, List.Vector.get_ofFn,
          List.Vector.getElem_def, List.Vector.toList_ofFn, List.getElem_ofFn])
  exact hScalarBinary

theorem dtk_prefix_seg0
    (rho : Nat → F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (hdiv : onCurveAt (rho 2211) (rho 2212)) :
    Shieldd.GnarkFormal.DtkBridge.dtkSeg0
      (rho 706)
      (rho 1) (rho 3)
      (rho 2211) (rho 2212)
      (rho 10) (rho 15)
      (rho 977) (rho 978)
      (fun ivkBits => Shieldd.GnarkFormal.DtkBridge.dtkTailK
        ivkBits (rho 978) True) := by
  have hIvkBinary := dtkIvk_toBinary rho h
  have hq4T := dtk_q4_ladder rho h True trivial
  have hrT := dtk_r_ladder rho h True hq4T
  have htailT := Shieldd.GnarkFormal.DtkBridge.dtkSeg1_build
    (dtkIvkBits rho) (rho 978) True hrT
  change Shieldd.GnarkFormal.DtkBridge.dtkTailK (dtkIvkBits rho) (rho 978) True at htailT
  have hposeidon := dtk_poseidon_eq rho h
  have hP0 : (8444461749428370424248824938781546531375899335154063827935233455917409239041 : F) = 0 := by decide
  have hcm : (5602780471396575806509277699913763570037463653793953144491313093258883571225 : F) = -2841681278031794617739547238867782961338435681360110683443920362658525667816 := by decide
  have hcanon1 := dtkCanon1_canonical rho h
  have hcanon2 := dtkCanon2_canonical rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    p0, _, _, _, _, _, p6, _, _, _,
    _, _, _, p13, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart0 at p0
  rcases p0 with ⟨r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart6 at p6
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r534, r535, r536, r537, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart13 at p13
  rcases p13 with ⟨_, _, _, _, r1044, r1045, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1317, r1318, r1319, r1320, r1321, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow0 at r0
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow1 at r1
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow2 at r2
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3 at r3
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4 at r4
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5 at r5
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow6 at r6
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow7 at r7
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow8 at r8
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow9 at r9
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow10 at r10
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow11 at r11
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow12 at r12
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow13 at r13
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow14 at r14
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow15 at r15
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow16 at r16
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow17 at r17
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow18 at r18
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow19 at r19
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow20 at r20
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow21 at r21
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow22 at r22
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow23 at r23
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow24 at r24
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow25 at r25
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow26 at r26
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow27 at r27
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow534 at r534
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow535 at r535
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow536 at r536
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow537 at r537
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow1044 at r1044
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow1045 at r1045
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow1317 at r1317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow1318 at r1318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow1319 at r1319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow1320 at r1320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow1321 at r1321
  have hws : GatesDef.is_bool (rho 10) :=
    is_bool_of_row _ (by linear_combination r8)
  have hz : GatesDef.is_zero (rho 9) (rho 12) := by
    refine is_zero_of_hint _ (rho 11) _ ?_ ?_
    · linear_combination -r9
    · linear_combination r10
  have hzBool : GatesDef.is_bool (rho 12) :=
    is_bool_of_row _ (by linear_combination r18)
  have hsel15 : GatesDef.select (rho 12) 1 (rho 9) (rho 9 + rho 13) := by
    refine select_of_row _ _ _ _ hzBool ?_
    linear_combination -r11
  have hinv : GatesDef.inv (rho 9 + rho 13) (rho 14) :=
    inv_of_mul _ _ (by linear_combination r12)
  have hnotWs : GatesDef.is_bool (1 - rho 10) := by
    unfold GatesDef.is_bool
    linear_combination r8
  have hnotZ : GatesDef.is_bool (1 - rho 12) := by
    unfold GatesDef.is_bool
    linear_combination r18
  have hand22 : GatesDef.and (1 - rho 10) (rho 12) (rho 18) := by
    refine and_of_row _ _ _ hnotWs hzBool ?_
    linear_combination -r17
  have hand23 : GatesDef.and (1 - rho 10) (1 - rho 12) (rho 19) := by
    refine and_of_row _ _ _ hnotWs hnotZ ?_
    linear_combination -r19
  unfold Shieldd.GnarkFormal.DtkBridge.dtkSeg0
  simp only [Shieldd.GnarkFormal.Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub, GatesDef.neg, GatesDef.eq]
  refine ⟨rho 2, (by first | linear_combination r0 | linear_combination -r0),
    rho 4, (by first | linear_combination r1 | linear_combination -r1),
    rho 4 - rho 2, rfl, (3021 : F) * rho 2, rfl,
    rho 5, (by first | linear_combination r2 | linear_combination -r2), (1 : F) + rho 5, rfl,
    (by first | linear_combination r3 | linear_combination -r3),
    rho 2211 * rho 2211, rfl,
    rho 2212 * rho 2212, rfl,
    rho 2212 * rho 2212 - rho 2211 * rho 2211, rfl,
    (3021 : F) * (rho 2211 * rho 2211), rfl,
    (3021 : F) * (rho 2211 * rho 2211) * (rho 2212 * rho 2212), rfl,
    (1 : F) + (3021 : F) * (rho 2211 * rho 2211) * (rho 2212 * rho 2212), rfl,
    onCurveAt_sub_eq _ _ hdiv,
    rho 8, (by first | linear_combination r6 | linear_combination -r6), rho 4, (by first | linear_combination r1 | linear_combination -r1),
    rho 4 - rho 8, rfl, (3021 : F) * rho 8, rfl,
    rho 5, (by first | linear_combination r2 + (3021 : F) * rho 4 * (r6 - r0) | linear_combination r2 - (3021 : F) * rho 4 * (r6 - r0) | linear_combination -r2 + (3021 : F) * rho 4 * (r6 - r0) | linear_combination -r2 - (3021 : F) * rho 4 * (r6 - r0)),
    (1 : F) + rho 5, rfl, (by first | linear_combination r3 + (r6 - r0) | linear_combination r3 - (r6 - r0) | linear_combination -r3 + (r6 - r0) | linear_combination -r3 - (r6 - r0)),
    rho 6, (by first | linear_combination r4 | linear_combination -r4),
    rho 1 + rho 6, rfl, rho 1 - rho 6, rfl,
    rho 7, (by first | linear_combination r5 | linear_combination -r5), (-3022 : F) * rho 7, (by first | rfl | (rw [show (8444461749428370424248824938781546531375899335154063827935233455917409236019 : F) = -3022 from by decide]; ring)),
    rho 9, (by first | linear_combination r7 | linear_combination -r7), hws, rho 12, hz,
    rho 9 + rho 13, hsel15, rho 14, hinv,
    rho 16, (by first | linear_combination r13 | linear_combination -r13), rho 17, (by first | linear_combination r14 | linear_combination -r14), (by first | linear_combination r15 | linear_combination -r15),
    (1 : F) - rho 10, rfl, (1 : F) - rho 12, rfl, rho 18, hand22,
    rho 19, hand23, rho 16 - rho 14, rfl,
    rho 20, (by first | linear_combination r20 | linear_combination -r20), (by first | linear_combination r21 | linear_combination -r21),
    rho 21, (by first | linear_combination r22 | linear_combination -r22), (by first | linear_combination r23 | linear_combination -r23),
    (2841681278031794617739547238867782961338435681360110683443920362658525667816 : F) * rho 14, rfl,
    rho 16 - (2841681278031794617739547238867782961338435681360110683443920362658525667816 : F) * rho 14, rfl,
    rho 22, (by simp only [hcm] at r24 ⊢; first | linear_combination r24 | linear_combination -r24 | linear_combination (2 : F) * r24 | linear_combination (-2 : F) * r24 | linear_combination (3 : F) * r24 | linear_combination (-3 : F) * r24 | linear_combination (4 : F) * r24 | linear_combination (-4 : F) * r24), (by first | linear_combination r25 | linear_combination -r25),
    rho 10 + rho 18, rfl, rho 10 + rho 18 + rho 19, rfl,
    (by first | linear_combination r26 | linear_combination -r26), rho 23, (by first | linear_combination r27 | linear_combination -r27), ?_⟩
  apply hcanon1
  have hb1 : (dtkCanon1Bits rho)[0]! = rho 24 :=
    dtkCanon1Bits_get rho 0 (by omega)
  have hb1Bool : GatesDef.is_bool (1 - rho 24) := by
    unfold GatesDef.is_bool
    first | linear_combination r534 | linear_combination -r534
  have hsel40 : GatesDef.select (1 - rho 24) (rho 23) (-rho 23) (rho 363 - rho 23) := by
    refine select_of_row _ _ _ _ hb1Bool ?_
    first | linear_combination r535 | linear_combination -r535
  refine ⟨(1 : F) - rho 24, (by simpa [hb1]), -rho 23, (by ring),
    rho 363 - rho 23, hsel40,
    rho 363 - rho 23 - rho 6, rfl,
    (-3022 : F) * rho 15, (by first | rfl | (rw [show (8444461749428370424248824938781546531375899335154063827935233455917409236019 : F) = -3022 from by decide]; ring)), rho 364, (by first | linear_combination r536 | linear_combination -r536),
    rho 365, (by first | linear_combination r537 | linear_combination -r537), ?_⟩
  apply hcanon2
  have hb2 : (dtkCanon2Bits rho)[0]! = rho 366 :=
    dtkCanon2Bits_get rho 0 (by omega)
  have hb2Bool : GatesDef.is_bool (1 - rho 366) := by
    unfold GatesDef.is_bool
    first | linear_combination r1044 | linear_combination -r1044
  have hsel48 : GatesDef.select (1 - rho 366) (rho 365) (-rho 365) (rho 705 - rho 365) := by
    refine select_of_row _ _ _ _ hb2Bool ?_
    first | linear_combination r1045 | linear_combination -r1045
  refine ⟨(1 : F) - rho 366, (by simpa [hb2]), -rho 365, (by ring),
    rho 705 - rho 365, hsel48, ?_⟩
  refine Shieldd.GnarkFormal.DtkBridge.perm2_intro ?_
  refine ⟨(2111115437357092606062206234695386632838870926408408195193685246394721360383 : F) * rho 978, rfl,
    (2111115437357092606062206234695386632838870926408408195193685246394721360383 : F) * rho 978 + rho 977, rfl,
    (by first | linear_combination hposeidon | linear_combination (2 : F) * hposeidon | linear_combination -hposeidon | linear_combination (-2 : F) * hposeidon), rho 978 - (1 : F), rfl,
    rho 979, (by first | linear_combination r1317 | linear_combination -r1317), rho 978 - (2 : F), rfl,
    rho 980, (by first | linear_combination r1318 | linear_combination -r1318), rho 978 - (3 : F), rfl,
    rho 981, (by first | linear_combination r1319 | linear_combination -r1319), rho 978 - (4 : F), rfl,
    rho 982, (by first | linear_combination r1320 | linear_combination -r1320), (by first | linear_combination r1321 | linear_combination -r1321),
    dtkIvkBits rho, hIvkBinary, ?_⟩
  simpa using htailT

theorem ivk_provenance
    (rho : Nat → F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (hdiv : onCurveAt (rho 2211) (rho 2212)) :
    Shieldd.GnarkFormal.Decaf377Assumptions.DiversifiedTransmissionKeyIvkProvenance
        (rho 706) ⟨rho 1, rho 3⟩
        (rho 977) (rho 978) := by
  have hseg := dtk_prefix_seg0 rho h hdiv
  exact (Shieldd.GnarkFormal.DtkBridge.dtkSeg0_provenance
    (rho 706) (rho 1) (rho 3)
    (rho 2211) (rho 2212)
    (rho 10) (rho 15) (rho 977) (rho 978) True hseg).2.1

theorem dtk_sound
    (rho : Nat → F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) : spec rho := by
  unfold spec
  intro hdiv
  have hdivEdwards : EdwardsBridge.onCurve
      ⟨rho 2211, rho 2212⟩ := by
    simpa only [onCurveAt, EdwardsBridge.onCurve, EdwardsBridge.d] using hdiv
  have hdivProtocol : Protocol.Common.Decaf.onCurve
      ⟨rho 2211, rho 2212⟩ := by
    simpa only [Protocol.Common.Decaf.onCurve,
      Protocol.Common.Decaf.curveD] using onCurveAt_sub_eq _ _ hdiv
  have hbinary := scalar_toBinary rho h
  rcases ChoiceFreeBinary.exists_bool_vector_of_to_binary
      ScalarMulBridge.pow251_lt_order hbinary with ⟨bits, hbits, -⟩
  have hbody := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport.body_relation
    rho h bits hbits hdivEdwards
  have hwindow := AckBridge.ack_window2_body_sound
    ⟨rho 2211, rho 2212⟩ (rho 977)
    ⟨(Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport.output rho).x, (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport.output rho).y⟩
    ⟨Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport.scalarBits rho, hbinary, hbody⟩ hdivProtocol
  rcases hwindow with ⟨-, -, houtputOn, houtput⟩
  refine ⟨?_, houtputOn⟩
  unfold Protocol.Common.Decaf.diversifiedTransmissionKey
  refine ⟨?_, ?_⟩
  · rcases ivk_provenance rho h hdiv with
      ⟨authorizationKeyEncoding, hcompress, hreduced, hquotient⟩
    refine ⟨authorizationKeyEncoding, ?_, ?_, ?_⟩
    · apply Shieldd.GnarkFormal.Deployed.NoteReshapeRefinement.compressesTo_of_circuitSpec
      simpa [Shieldd.GnarkFormal.NoteReshapeCanonical.toDecafPoint] using
        hcompress
    · simpa [
        Shieldd.GnarkFormal.Decaf377Assumptions.dtkIvkModQ,
        Protocol.Common.Decaf.dtkIvkModQ,
        Shieldd.GnarkFormal.Poseidon2Bridge.permSpec2,
        Shieldd.GnarkFormal.Extracted.IvkModR.rNat,
        Protocol.Common.Decaf.scalarOrder
      ] using hreduced
    · simpa [
        Shieldd.GnarkFormal.Decaf377Assumptions.dtkIvkModQ,
        Protocol.Common.Decaf.dtkIvkModQ,
        Shieldd.GnarkFormal.Poseidon2Bridge.permSpec2,
        Shieldd.GnarkFormal.Extracted.IvkModR.rNat,
        Protocol.Common.Decaf.scalarOrder
      ] using hquotient
  · simpa only [Protocol.Common.Decaf.dtk] using houtput

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31PrefixLemmas0
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrderAssumption

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg31_prefix_steps0 (rho : Nat -> Seg31.F)
    (r0 : Seg31.relationRow0 rho)
    (r1 : Seg31.relationRow1 rho)
    (r252 : Seg31.relationRow252 rho)
    (r253 : Seg31.relationRow253 rho)
    (r254 : Seg31.relationRow254 rho)
    (r255 : Seg31.relationRow255 rho)
    (r256 : Seg31.relationRow256 rho)
    (r2 : Seg31.relationRow2 rho)
    (r257 : Seg31.relationRow257 rho)
    (r258 : Seg31.relationRow258 rho)
    (r259 : Seg31.relationRow259 rho)
    (r260 : Seg31.relationRow260 rho)
    (r261 : Seg31.relationRow261 rho)
    (r3 : Seg31.relationRow3 rho)
    (r262 : Seg31.relationRow262 rho)
    (r263 : Seg31.relationRow263 rho)
    (r264 : Seg31.relationRow264 rho)
    (r265 : Seg31.relationRow265 rho)
    (r266 : Seg31.relationRow266 rho)
    (r4 : Seg31.relationRow4 rho)
    (r267 : Seg31.relationRow267 rho)
    (r268 : Seg31.relationRow268 rho)
    (r269 : Seg31.relationRow269 rho)
    (r270 : Seg31.relationRow270 rho)
    (r271 : Seg31.relationRow271 rho)
    (r5 : Seg31.relationRow5 rho)
    (r272 : Seg31.relationRow272 rho)
    (r273 : Seg31.relationRow273 rho)
    (r274 : Seg31.relationRow274 rho)
    (r275 : Seg31.relationRow275 rho)
    (r276 : Seg31.relationRow276 rho)
    (r6 : Seg31.relationRow6 rho)
    (r277 : Seg31.relationRow277 rho)
    (r278 : Seg31.relationRow278 rho)
    (r279 : Seg31.relationRow279 rho)
    (r280 : Seg31.relationRow280 rho)
    (r281 : Seg31.relationRow281 rho)
    (r7 : Seg31.relationRow7 rho)
    (r282 : Seg31.relationRow282 rho)
    (r283 : Seg31.relationRow283 rho)
    (r284 : Seg31.relationRow284 rho)
    (r285 : Seg31.relationRow285 rho)
    (r286 : Seg31.relationRow286 rho)
    (r8 : Seg31.relationRow8 rho)
    (r287 : Seg31.relationRow287 rho)
    (r288 : Seg31.relationRow288 rho)
    (r289 : Seg31.relationRow289 rho)
    (r290 : Seg31.relationRow290 rho)
    (r291 : Seg31.relationRow291 rho)
    (r9 : Seg31.relationRow9 rho)
    (r292 : Seg31.relationRow292 rho)
    (r293 : Seg31.relationRow293 rho)
    (r294 : Seg31.relationRow294 rho)
    (r295 : Seg31.relationRow295 rho)
    (r296 : Seg31.relationRow296 rho)
    (r10 : Seg31.relationRow10 rho)
    (r297 : Seg31.relationRow297 rho)
    (r298 : Seg31.relationRow298 rho)
    (r299 : Seg31.relationRow299 rho)
    (r300 : Seg31.relationRow300 rho)
    (r301 : Seg31.relationRow301 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX10 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY10 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
  have hbrow0 : (1*(rho 29271))*(1 + (-1)*(rho 29271)) = 0 := by
    simpa [Seg31.relationRow0] using r0
  have hseed : (rho 29271) * (rho 29271) = rho 29271 := by
    linear_combination -hbrow0
  have hpSeed : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc1 (rho 29271 : Seg31.F)) :=
    Shieldd.GnarkFormal.RvkFixedGenInst1.seed_onCurve (rho 29271 : Seg31.F) (by simpa using hseed)
  have hbrow1 : (1*(rho 29272))*(1 + (-1)*(rho 29272)) = 0 := by
    simpa [Seg31.relationRow1] using r1
  have hr1 : RvkFixedBaseLadder.FixedStepRel 1 (rho 29272)
      (Shieldd.GnarkFormal.RvkFixedGenInst1.acc1 (rho 29271 : Seg31.F)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX1 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY1 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc1, seg31AccX1, seg31AccY1, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung1 (rho 29271 : Seg31.F) (rho 29272 : Seg31.F) (rho 29522 : Seg31.F) (rho 29523 : Seg31.F) (rho 29524 : Seg31.F) (rho 29525 : Seg31.F) (rho 29526 : Seg31.F) hpSeed
        (by simpa using seg31_prefix_1_v2 rho r252)
        (by simpa using seg31_prefix_1_addX rho r253)
        (by simpa using seg31_prefix_1_addY rho r254)
        (by simpa using seg31_prefix_1_selX rho r255)
        (by simpa using seg31_prefix_1_selY rho r256)
        hbrow1
  obtain ⟨b1, hb1⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29272) hbrow1
  have hrb1 : RvkFixedBaseLadder.FixedStepRel 1 (toZMod b1)
      (Shieldd.GnarkFormal.RvkFixedGenInst1.acc1 (rho 29271 : Seg31.F)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX1 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY1 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb1]
    exact hr1
  have hp1 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX1 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY1 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 1 b1 _ _ hpSeed hrb1).2
  have hbrow2 : (1*(rho 29273))*(1 + (-1)*(rho 29273)) = 0 := by
    simpa [Seg31.relationRow2] using r2
  have hacc2 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc2 (rho 29271 : Seg31.F)
      (seg31AccX1 rho : Seg31.F) (seg31AccY1 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc2] using hp1
  have hr2 : RvkFixedBaseLadder.FixedStepRel 2 (rho 29273)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX1 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY1 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX2 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY2 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc2, seg31AccX2, seg31AccY2, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung2_wide (rho 29271 : Seg31.F) (rho 29273 : Seg31.F) (seg31AccX1 rho : Seg31.F) (seg31AccY1 rho : Seg31.F) (rho 29527 : Seg31.F) (rho 29528 : Seg31.F) (rho 29529 : Seg31.F) (rho 29530 : Seg31.F) (rho 29531 : Seg31.F) hacc2
        (by simpa using seg31_prefix_2_v2 rho r257)
        (by simpa using seg31_prefix_2_addX rho r258)
        (by simpa using seg31_prefix_2_addY rho r259)
        (by simpa using seg31_prefix_2_selX rho r260)
        (by simpa using seg31_prefix_2_selY rho r261)
        hbrow2
  obtain ⟨b2, hb2⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29273) hbrow2
  have hrb2 : RvkFixedBaseLadder.FixedStepRel 2 (toZMod b2)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX1 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY1 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX2 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY2 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb2]
    exact hr2
  have hp2 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX2 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY2 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 2 b2 _ _ hp1 hrb2).2
  have hbrow3 : (1*(rho 29274))*(1 + (-1)*(rho 29274)) = 0 := by
    simpa [Seg31.relationRow3] using r3
  have hacc3 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc3 (rho 29271 : Seg31.F)
      (seg31AccX2 rho : Seg31.F) (seg31AccY2 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc3] using hp2
  have hr3 : RvkFixedBaseLadder.FixedStepRel 3 (rho 29274)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX2 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY2 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX3 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY3 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc3, seg31AccX3, seg31AccY3, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung3_wide (rho 29271 : Seg31.F) (rho 29274 : Seg31.F) (seg31AccX2 rho : Seg31.F) (seg31AccY2 rho : Seg31.F) (rho 29532 : Seg31.F) (rho 29533 : Seg31.F) (rho 29534 : Seg31.F) (rho 29535 : Seg31.F) (rho 29536 : Seg31.F) hacc3
        (by simpa using seg31_prefix_3_v2 rho r262)
        (by simpa using seg31_prefix_3_addX rho r263)
        (by simpa using seg31_prefix_3_addY rho r264)
        (by simpa using seg31_prefix_3_selX rho r265)
        (by simpa using seg31_prefix_3_selY rho r266)
        hbrow3
  obtain ⟨b3, hb3⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29274) hbrow3
  have hrb3 : RvkFixedBaseLadder.FixedStepRel 3 (toZMod b3)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX2 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY2 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX3 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY3 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb3]
    exact hr3
  have hp3 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX3 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY3 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 3 b3 _ _ hp2 hrb3).2
  have hbrow4 : (1*(rho 29275))*(1 + (-1)*(rho 29275)) = 0 := by
    simpa [Seg31.relationRow4] using r4
  have hacc4 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc4 (rho 29271 : Seg31.F)
      (seg31AccX3 rho : Seg31.F) (seg31AccY3 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc4] using hp3
  have hr4 : RvkFixedBaseLadder.FixedStepRel 4 (rho 29275)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX3 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY3 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX4 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY4 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc4, seg31AccX4, seg31AccY4, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung4_wide (rho 29271 : Seg31.F) (rho 29275 : Seg31.F) (seg31AccX3 rho : Seg31.F) (seg31AccY3 rho : Seg31.F) (rho 29537 : Seg31.F) (rho 29538 : Seg31.F) (rho 29539 : Seg31.F) (rho 29540 : Seg31.F) (rho 29541 : Seg31.F) hacc4
        (by simpa using seg31_prefix_4_v2 rho r267)
        (by simpa using seg31_prefix_4_addX rho r268)
        (by simpa using seg31_prefix_4_addY rho r269)
        (by simpa using seg31_prefix_4_selX rho r270)
        (by simpa using seg31_prefix_4_selY rho r271)
        hbrow4
  obtain ⟨b4, hb4⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29275) hbrow4
  have hrb4 : RvkFixedBaseLadder.FixedStepRel 4 (toZMod b4)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX3 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY3 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX4 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY4 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb4]
    exact hr4
  have hp4 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX4 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY4 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 4 b4 _ _ hp3 hrb4).2
  have hbrow5 : (1*(rho 29276))*(1 + (-1)*(rho 29276)) = 0 := by
    simpa [Seg31.relationRow5] using r5
  have hacc5 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc5 (rho 29271 : Seg31.F)
      (seg31AccX4 rho : Seg31.F) (seg31AccY4 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc5] using hp4
  have hr5 : RvkFixedBaseLadder.FixedStepRel 5 (rho 29276)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX4 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY4 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX5 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY5 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc5, seg31AccX5, seg31AccY5, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung5_wide (rho 29271 : Seg31.F) (rho 29276 : Seg31.F) (seg31AccX4 rho : Seg31.F) (seg31AccY4 rho : Seg31.F) (rho 29542 : Seg31.F) (rho 29543 : Seg31.F) (rho 29544 : Seg31.F) (rho 29545 : Seg31.F) (rho 29546 : Seg31.F) hacc5
        (by simpa using seg31_prefix_5_v2 rho r272)
        (by simpa using seg31_prefix_5_addX rho r273)
        (by simpa using seg31_prefix_5_addY rho r274)
        (by simpa using seg31_prefix_5_selX rho r275)
        (by simpa using seg31_prefix_5_selY rho r276)
        hbrow5
  obtain ⟨b5, hb5⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29276) hbrow5
  have hrb5 : RvkFixedBaseLadder.FixedStepRel 5 (toZMod b5)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX4 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY4 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX5 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY5 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb5]
    exact hr5
  have hp5 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX5 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY5 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 5 b5 _ _ hp4 hrb5).2
  have hbrow6 : (1*(rho 29277))*(1 + (-1)*(rho 29277)) = 0 := by
    simpa [Seg31.relationRow6] using r6
  have hacc6 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc6 (rho 29271 : Seg31.F)
      (seg31AccX5 rho : Seg31.F) (seg31AccY5 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc6] using hp5
  have hr6 : RvkFixedBaseLadder.FixedStepRel 6 (rho 29277)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX5 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY5 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX6 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY6 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc6, seg31AccX6, seg31AccY6, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung6_wide (rho 29271 : Seg31.F) (rho 29277 : Seg31.F) (seg31AccX5 rho : Seg31.F) (seg31AccY5 rho : Seg31.F) (rho 29547 : Seg31.F) (rho 29548 : Seg31.F) (rho 29549 : Seg31.F) (rho 29550 : Seg31.F) (rho 29551 : Seg31.F) hacc6
        (by simpa using seg31_prefix_6_v2 rho r277)
        (by simpa using seg31_prefix_6_addX rho r278)
        (by simpa using seg31_prefix_6_addY rho r279)
        (by simpa using seg31_prefix_6_selX rho r280)
        (by simpa using seg31_prefix_6_selY rho r281)
        hbrow6
  obtain ⟨b6, hb6⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29277) hbrow6
  have hrb6 : RvkFixedBaseLadder.FixedStepRel 6 (toZMod b6)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX5 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY5 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX6 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY6 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb6]
    exact hr6
  have hp6 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX6 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY6 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 6 b6 _ _ hp5 hrb6).2
  have hbrow7 : (1*(rho 29278))*(1 + (-1)*(rho 29278)) = 0 := by
    simpa [Seg31.relationRow7] using r7
  have hacc7 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc7 (rho 29271 : Seg31.F)
      (seg31AccX6 rho : Seg31.F) (seg31AccY6 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc7] using hp6
  have hr7 : RvkFixedBaseLadder.FixedStepRel 7 (rho 29278)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX6 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY6 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX7 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY7 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc7, seg31AccX7, seg31AccY7, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung7_wide (rho 29271 : Seg31.F) (rho 29278 : Seg31.F) (seg31AccX6 rho : Seg31.F) (seg31AccY6 rho : Seg31.F) (rho 29552 : Seg31.F) (rho 29553 : Seg31.F) (rho 29554 : Seg31.F) (rho 29555 : Seg31.F) (rho 29556 : Seg31.F) hacc7
        (by simpa using seg31_prefix_7_v2 rho r282)
        (by simpa using seg31_prefix_7_addX rho r283)
        (by simpa using seg31_prefix_7_addY rho r284)
        (by simpa using seg31_prefix_7_selX rho r285)
        (by simpa using seg31_prefix_7_selY rho r286)
        hbrow7
  obtain ⟨b7, hb7⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29278) hbrow7
  have hrb7 : RvkFixedBaseLadder.FixedStepRel 7 (toZMod b7)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX6 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY6 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX7 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY7 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb7]
    exact hr7
  have hp7 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX7 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY7 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 7 b7 _ _ hp6 hrb7).2
  have hbrow8 : (1*(rho 29279))*(1 + (-1)*(rho 29279)) = 0 := by
    simpa [Seg31.relationRow8] using r8
  have hacc8 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc8 (rho 29271 : Seg31.F)
      (seg31AccX7 rho : Seg31.F) (seg31AccY7 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc8] using hp7
  have hr8 : RvkFixedBaseLadder.FixedStepRel 8 (rho 29279)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX7 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY7 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX8 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY8 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc8, seg31AccX8, seg31AccY8, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung8_wide (rho 29271 : Seg31.F) (rho 29279 : Seg31.F) (seg31AccX7 rho : Seg31.F) (seg31AccY7 rho : Seg31.F) (rho 29557 : Seg31.F) (rho 29558 : Seg31.F) (rho 29559 : Seg31.F) (rho 29560 : Seg31.F) (rho 29561 : Seg31.F) hacc8
        (by simpa using seg31_prefix_8_v2 rho r287)
        (by simpa using seg31_prefix_8_addX rho r288)
        (by simpa using seg31_prefix_8_addY rho r289)
        (by simpa using seg31_prefix_8_selX rho r290)
        (by simpa using seg31_prefix_8_selY rho r291)
        hbrow8
  obtain ⟨b8, hb8⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29279) hbrow8
  have hrb8 : RvkFixedBaseLadder.FixedStepRel 8 (toZMod b8)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX7 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY7 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX8 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY8 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb8]
    exact hr8
  have hp8 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX8 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY8 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 8 b8 _ _ hp7 hrb8).2
  have hbrow9 : (1*(rho 29280))*(1 + (-1)*(rho 29280)) = 0 := by
    simpa [Seg31.relationRow9] using r9
  have hacc9 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc9 (rho 29271 : Seg31.F)
      (seg31AccX8 rho : Seg31.F) (seg31AccY8 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc9] using hp8
  have hr9 : RvkFixedBaseLadder.FixedStepRel 9 (rho 29280)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX8 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY8 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX9 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY9 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc9, seg31AccX9, seg31AccY9, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung9_wide (rho 29271 : Seg31.F) (rho 29280 : Seg31.F) (seg31AccX8 rho : Seg31.F) (seg31AccY8 rho : Seg31.F) (rho 29562 : Seg31.F) (rho 29563 : Seg31.F) (rho 29564 : Seg31.F) (rho 29565 : Seg31.F) (rho 29566 : Seg31.F) hacc9
        (by simpa using seg31_prefix_9_v2 rho r292)
        (by simpa using seg31_prefix_9_addX rho r293)
        (by simpa using seg31_prefix_9_addY rho r294)
        (by simpa using seg31_prefix_9_selX rho r295)
        (by simpa using seg31_prefix_9_selY rho r296)
        hbrow9
  obtain ⟨b9, hb9⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29280) hbrow9
  have hrb9 : RvkFixedBaseLadder.FixedStepRel 9 (toZMod b9)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX8 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY8 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX9 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY9 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb9]
    exact hr9
  have hp9 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX9 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY9 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 9 b9 _ _ hp8 hrb9).2
  have hbrow10 : (1*(rho 29281))*(1 + (-1)*(rho 29281)) = 0 := by
    simpa [Seg31.relationRow10] using r10
  have hacc10 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc10 (rho 29271 : Seg31.F)
      (seg31AccX9 rho : Seg31.F) (seg31AccY9 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc10] using hp9
  have hr10 : RvkFixedBaseLadder.FixedStepRel 10 (rho 29281)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX9 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY9 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX10 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY10 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc10, seg31AccX10, seg31AccY10, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung10_wide (rho 29271 : Seg31.F) (rho 29281 : Seg31.F) (seg31AccX9 rho : Seg31.F) (seg31AccY9 rho : Seg31.F) (rho 29567 : Seg31.F) (rho 29568 : Seg31.F) (rho 29569 : Seg31.F) (rho 29570 : Seg31.F) (rho 29571 : Seg31.F) hacc10
        (by simpa using seg31_prefix_10_v2 rho r297)
        (by simpa using seg31_prefix_10_addX rho r298)
        (by simpa using seg31_prefix_10_addY rho r299)
        (by simpa using seg31_prefix_10_selX rho r300)
        (by simpa using seg31_prefix_10_selY rho r301)
        hbrow10
  obtain ⟨b10, hb10⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29281) hbrow10
  have hrb10 : RvkFixedBaseLadder.FixedStepRel 10 (toZMod b10)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX9 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY9 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX10 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY10 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb10]
    exact hr10
  have hp10 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX10 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY10 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 10 b10 _ _ hp9 hrb10).2
  exact hp10

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


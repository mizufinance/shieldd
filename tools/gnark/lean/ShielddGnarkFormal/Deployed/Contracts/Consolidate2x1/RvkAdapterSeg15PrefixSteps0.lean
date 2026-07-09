import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas0
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrderAssumption

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_steps0 (rho : Nat -> Seg15.F)
    (r0 : Seg15.relationRow0 rho)
    (r1 : Seg15.relationRow1 rho)
    (r252 : Seg15.relationRow252 rho)
    (r253 : Seg15.relationRow253 rho)
    (r254 : Seg15.relationRow254 rho)
    (r255 : Seg15.relationRow255 rho)
    (r256 : Seg15.relationRow256 rho)
    (r2 : Seg15.relationRow2 rho)
    (r257 : Seg15.relationRow257 rho)
    (r258 : Seg15.relationRow258 rho)
    (r259 : Seg15.relationRow259 rho)
    (r260 : Seg15.relationRow260 rho)
    (r261 : Seg15.relationRow261 rho)
    (r3 : Seg15.relationRow3 rho)
    (r262 : Seg15.relationRow262 rho)
    (r263 : Seg15.relationRow263 rho)
    (r264 : Seg15.relationRow264 rho)
    (r265 : Seg15.relationRow265 rho)
    (r266 : Seg15.relationRow266 rho)
    (r4 : Seg15.relationRow4 rho)
    (r267 : Seg15.relationRow267 rho)
    (r268 : Seg15.relationRow268 rho)
    (r269 : Seg15.relationRow269 rho)
    (r270 : Seg15.relationRow270 rho)
    (r271 : Seg15.relationRow271 rho)
    (r5 : Seg15.relationRow5 rho)
    (r272 : Seg15.relationRow272 rho)
    (r273 : Seg15.relationRow273 rho)
    (r274 : Seg15.relationRow274 rho)
    (r275 : Seg15.relationRow275 rho)
    (r276 : Seg15.relationRow276 rho)
    (r6 : Seg15.relationRow6 rho)
    (r277 : Seg15.relationRow277 rho)
    (r278 : Seg15.relationRow278 rho)
    (r279 : Seg15.relationRow279 rho)
    (r280 : Seg15.relationRow280 rho)
    (r281 : Seg15.relationRow281 rho)
    (r7 : Seg15.relationRow7 rho)
    (r282 : Seg15.relationRow282 rho)
    (r283 : Seg15.relationRow283 rho)
    (r284 : Seg15.relationRow284 rho)
    (r285 : Seg15.relationRow285 rho)
    (r286 : Seg15.relationRow286 rho)
    (r8 : Seg15.relationRow8 rho)
    (r287 : Seg15.relationRow287 rho)
    (r288 : Seg15.relationRow288 rho)
    (r289 : Seg15.relationRow289 rho)
    (r290 : Seg15.relationRow290 rho)
    (r291 : Seg15.relationRow291 rho)
    (r9 : Seg15.relationRow9 rho)
    (r292 : Seg15.relationRow292 rho)
    (r293 : Seg15.relationRow293 rho)
    (r294 : Seg15.relationRow294 rho)
    (r295 : Seg15.relationRow295 rho)
    (r296 : Seg15.relationRow296 rho)
    (r10 : Seg15.relationRow10 rho)
    (r297 : Seg15.relationRow297 rho)
    (r298 : Seg15.relationRow298 rho)
    (r299 : Seg15.relationRow299 rho)
    (r300 : Seg15.relationRow300 rho)
    (r301 : Seg15.relationRow301 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX10 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY10 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
  have hbrow0 : (1*(rho 16387))*(1 + (-1)*(rho 16387)) = 0 := by
    simpa [Seg15.relationRow0] using r0
  have hseed : (rho 16387) * (rho 16387) = rho 16387 := by
    linear_combination -hbrow0
  have hpSeed : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc1 (rho 16387 : Seg15.F)) :=
    Shieldd.GnarkFormal.RvkFixedGenInst0.seed_onCurve (rho 16387 : Seg15.F) (by simpa using hseed)
  have hbrow1 : (1*(rho 16388))*(1 + (-1)*(rho 16388)) = 0 := by
    simpa [Seg15.relationRow1] using r1
  have hr1 : RvkFixedBaseLadder.FixedStepRel 1 (rho 16388)
      (Shieldd.GnarkFormal.RvkFixedGenInst0.acc1 (rho 16387 : Seg15.F)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX1 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY1 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc1, seg15AccX1, seg15AccY1, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung1 (rho 16387 : Seg15.F) (rho 16388 : Seg15.F) (rho 16638 : Seg15.F) (rho 16639 : Seg15.F) (rho 16640 : Seg15.F) (rho 16641 : Seg15.F) (rho 16642 : Seg15.F) hpSeed
        (by simpa using seg15_prefix_1_v2 rho r252)
        (by simpa using seg15_prefix_1_addX rho r253)
        (by simpa using seg15_prefix_1_addY rho r254)
        (by simpa using seg15_prefix_1_selX rho r255)
        (by simpa using seg15_prefix_1_selY rho r256)
        hbrow1
  obtain ⟨b1, hb1⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16388) hbrow1
  have hrb1 : RvkFixedBaseLadder.FixedStepRel 1 (toZMod b1)
      (Shieldd.GnarkFormal.RvkFixedGenInst0.acc1 (rho 16387 : Seg15.F)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX1 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY1 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb1]
    exact hr1
  have hp1 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX1 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY1 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 1 b1 _ _ hpSeed hrb1).2
  have hbrow2 : (1*(rho 16389))*(1 + (-1)*(rho 16389)) = 0 := by
    simpa [Seg15.relationRow2] using r2
  have hacc2 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc2 (rho 16387 : Seg15.F)
      (seg15AccX1 rho : Seg15.F) (seg15AccY1 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc2] using hp1
  have hr2 : RvkFixedBaseLadder.FixedStepRel 2 (rho 16389)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX1 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY1 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX2 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY2 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc2, seg15AccX2, seg15AccY2, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung2_wide (rho 16387 : Seg15.F) (rho 16389 : Seg15.F) (seg15AccX1 rho : Seg15.F) (seg15AccY1 rho : Seg15.F) (rho 16643 : Seg15.F) (rho 16644 : Seg15.F) (rho 16645 : Seg15.F) (rho 16646 : Seg15.F) (rho 16647 : Seg15.F) hacc2
        (by simpa using seg15_prefix_2_v2 rho r257)
        (by simpa using seg15_prefix_2_addX rho r258)
        (by simpa using seg15_prefix_2_addY rho r259)
        (by simpa using seg15_prefix_2_selX rho r260)
        (by simpa using seg15_prefix_2_selY rho r261)
        hbrow2
  obtain ⟨b2, hb2⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16389) hbrow2
  have hrb2 : RvkFixedBaseLadder.FixedStepRel 2 (toZMod b2)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX1 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY1 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX2 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY2 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb2]
    exact hr2
  have hp2 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX2 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY2 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 2 b2 _ _ hp1 hrb2).2
  have hbrow3 : (1*(rho 16390))*(1 + (-1)*(rho 16390)) = 0 := by
    simpa [Seg15.relationRow3] using r3
  have hacc3 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc3 (rho 16387 : Seg15.F)
      (seg15AccX2 rho : Seg15.F) (seg15AccY2 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc3] using hp2
  have hr3 : RvkFixedBaseLadder.FixedStepRel 3 (rho 16390)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX2 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY2 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX3 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY3 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc3, seg15AccX3, seg15AccY3, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung3_wide (rho 16387 : Seg15.F) (rho 16390 : Seg15.F) (seg15AccX2 rho : Seg15.F) (seg15AccY2 rho : Seg15.F) (rho 16648 : Seg15.F) (rho 16649 : Seg15.F) (rho 16650 : Seg15.F) (rho 16651 : Seg15.F) (rho 16652 : Seg15.F) hacc3
        (by simpa using seg15_prefix_3_v2 rho r262)
        (by simpa using seg15_prefix_3_addX rho r263)
        (by simpa using seg15_prefix_3_addY rho r264)
        (by simpa using seg15_prefix_3_selX rho r265)
        (by simpa using seg15_prefix_3_selY rho r266)
        hbrow3
  obtain ⟨b3, hb3⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16390) hbrow3
  have hrb3 : RvkFixedBaseLadder.FixedStepRel 3 (toZMod b3)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX2 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY2 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX3 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY3 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb3]
    exact hr3
  have hp3 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX3 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY3 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 3 b3 _ _ hp2 hrb3).2
  have hbrow4 : (1*(rho 16391))*(1 + (-1)*(rho 16391)) = 0 := by
    simpa [Seg15.relationRow4] using r4
  have hacc4 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc4 (rho 16387 : Seg15.F)
      (seg15AccX3 rho : Seg15.F) (seg15AccY3 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc4] using hp3
  have hr4 : RvkFixedBaseLadder.FixedStepRel 4 (rho 16391)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX3 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY3 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX4 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY4 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc4, seg15AccX4, seg15AccY4, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung4_wide (rho 16387 : Seg15.F) (rho 16391 : Seg15.F) (seg15AccX3 rho : Seg15.F) (seg15AccY3 rho : Seg15.F) (rho 16653 : Seg15.F) (rho 16654 : Seg15.F) (rho 16655 : Seg15.F) (rho 16656 : Seg15.F) (rho 16657 : Seg15.F) hacc4
        (by simpa using seg15_prefix_4_v2 rho r267)
        (by simpa using seg15_prefix_4_addX rho r268)
        (by simpa using seg15_prefix_4_addY rho r269)
        (by simpa using seg15_prefix_4_selX rho r270)
        (by simpa using seg15_prefix_4_selY rho r271)
        hbrow4
  obtain ⟨b4, hb4⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16391) hbrow4
  have hrb4 : RvkFixedBaseLadder.FixedStepRel 4 (toZMod b4)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX3 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY3 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX4 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY4 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb4]
    exact hr4
  have hp4 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX4 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY4 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 4 b4 _ _ hp3 hrb4).2
  have hbrow5 : (1*(rho 16392))*(1 + (-1)*(rho 16392)) = 0 := by
    simpa [Seg15.relationRow5] using r5
  have hacc5 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc5 (rho 16387 : Seg15.F)
      (seg15AccX4 rho : Seg15.F) (seg15AccY4 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc5] using hp4
  have hr5 : RvkFixedBaseLadder.FixedStepRel 5 (rho 16392)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX4 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY4 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX5 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY5 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc5, seg15AccX5, seg15AccY5, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung5_wide (rho 16387 : Seg15.F) (rho 16392 : Seg15.F) (seg15AccX4 rho : Seg15.F) (seg15AccY4 rho : Seg15.F) (rho 16658 : Seg15.F) (rho 16659 : Seg15.F) (rho 16660 : Seg15.F) (rho 16661 : Seg15.F) (rho 16662 : Seg15.F) hacc5
        (by simpa using seg15_prefix_5_v2 rho r272)
        (by simpa using seg15_prefix_5_addX rho r273)
        (by simpa using seg15_prefix_5_addY rho r274)
        (by simpa using seg15_prefix_5_selX rho r275)
        (by simpa using seg15_prefix_5_selY rho r276)
        hbrow5
  obtain ⟨b5, hb5⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16392) hbrow5
  have hrb5 : RvkFixedBaseLadder.FixedStepRel 5 (toZMod b5)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX4 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY4 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX5 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY5 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb5]
    exact hr5
  have hp5 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX5 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY5 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 5 b5 _ _ hp4 hrb5).2
  have hbrow6 : (1*(rho 16393))*(1 + (-1)*(rho 16393)) = 0 := by
    simpa [Seg15.relationRow6] using r6
  have hacc6 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc6 (rho 16387 : Seg15.F)
      (seg15AccX5 rho : Seg15.F) (seg15AccY5 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc6] using hp5
  have hr6 : RvkFixedBaseLadder.FixedStepRel 6 (rho 16393)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX5 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY5 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX6 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY6 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc6, seg15AccX6, seg15AccY6, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung6_wide (rho 16387 : Seg15.F) (rho 16393 : Seg15.F) (seg15AccX5 rho : Seg15.F) (seg15AccY5 rho : Seg15.F) (rho 16663 : Seg15.F) (rho 16664 : Seg15.F) (rho 16665 : Seg15.F) (rho 16666 : Seg15.F) (rho 16667 : Seg15.F) hacc6
        (by simpa using seg15_prefix_6_v2 rho r277)
        (by simpa using seg15_prefix_6_addX rho r278)
        (by simpa using seg15_prefix_6_addY rho r279)
        (by simpa using seg15_prefix_6_selX rho r280)
        (by simpa using seg15_prefix_6_selY rho r281)
        hbrow6
  obtain ⟨b6, hb6⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16393) hbrow6
  have hrb6 : RvkFixedBaseLadder.FixedStepRel 6 (toZMod b6)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX5 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY5 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX6 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY6 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb6]
    exact hr6
  have hp6 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX6 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY6 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 6 b6 _ _ hp5 hrb6).2
  have hbrow7 : (1*(rho 16394))*(1 + (-1)*(rho 16394)) = 0 := by
    simpa [Seg15.relationRow7] using r7
  have hacc7 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc7 (rho 16387 : Seg15.F)
      (seg15AccX6 rho : Seg15.F) (seg15AccY6 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc7] using hp6
  have hr7 : RvkFixedBaseLadder.FixedStepRel 7 (rho 16394)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX6 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY6 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX7 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY7 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc7, seg15AccX7, seg15AccY7, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung7_wide (rho 16387 : Seg15.F) (rho 16394 : Seg15.F) (seg15AccX6 rho : Seg15.F) (seg15AccY6 rho : Seg15.F) (rho 16668 : Seg15.F) (rho 16669 : Seg15.F) (rho 16670 : Seg15.F) (rho 16671 : Seg15.F) (rho 16672 : Seg15.F) hacc7
        (by simpa using seg15_prefix_7_v2 rho r282)
        (by simpa using seg15_prefix_7_addX rho r283)
        (by simpa using seg15_prefix_7_addY rho r284)
        (by simpa using seg15_prefix_7_selX rho r285)
        (by simpa using seg15_prefix_7_selY rho r286)
        hbrow7
  obtain ⟨b7, hb7⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16394) hbrow7
  have hrb7 : RvkFixedBaseLadder.FixedStepRel 7 (toZMod b7)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX6 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY6 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX7 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY7 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb7]
    exact hr7
  have hp7 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX7 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY7 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 7 b7 _ _ hp6 hrb7).2
  have hbrow8 : (1*(rho 16395))*(1 + (-1)*(rho 16395)) = 0 := by
    simpa [Seg15.relationRow8] using r8
  have hacc8 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc8 (rho 16387 : Seg15.F)
      (seg15AccX7 rho : Seg15.F) (seg15AccY7 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc8] using hp7
  have hr8 : RvkFixedBaseLadder.FixedStepRel 8 (rho 16395)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX7 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY7 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX8 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY8 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc8, seg15AccX8, seg15AccY8, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung8_wide (rho 16387 : Seg15.F) (rho 16395 : Seg15.F) (seg15AccX7 rho : Seg15.F) (seg15AccY7 rho : Seg15.F) (rho 16673 : Seg15.F) (rho 16674 : Seg15.F) (rho 16675 : Seg15.F) (rho 16676 : Seg15.F) (rho 16677 : Seg15.F) hacc8
        (by simpa using seg15_prefix_8_v2 rho r287)
        (by simpa using seg15_prefix_8_addX rho r288)
        (by simpa using seg15_prefix_8_addY rho r289)
        (by simpa using seg15_prefix_8_selX rho r290)
        (by simpa using seg15_prefix_8_selY rho r291)
        hbrow8
  obtain ⟨b8, hb8⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16395) hbrow8
  have hrb8 : RvkFixedBaseLadder.FixedStepRel 8 (toZMod b8)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX7 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY7 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX8 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY8 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb8]
    exact hr8
  have hp8 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX8 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY8 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 8 b8 _ _ hp7 hrb8).2
  have hbrow9 : (1*(rho 16396))*(1 + (-1)*(rho 16396)) = 0 := by
    simpa [Seg15.relationRow9] using r9
  have hacc9 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc9 (rho 16387 : Seg15.F)
      (seg15AccX8 rho : Seg15.F) (seg15AccY8 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc9] using hp8
  have hr9 : RvkFixedBaseLadder.FixedStepRel 9 (rho 16396)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX8 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY8 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX9 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY9 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc9, seg15AccX9, seg15AccY9, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung9_wide (rho 16387 : Seg15.F) (rho 16396 : Seg15.F) (seg15AccX8 rho : Seg15.F) (seg15AccY8 rho : Seg15.F) (rho 16678 : Seg15.F) (rho 16679 : Seg15.F) (rho 16680 : Seg15.F) (rho 16681 : Seg15.F) (rho 16682 : Seg15.F) hacc9
        (by simpa using seg15_prefix_9_v2 rho r292)
        (by simpa using seg15_prefix_9_addX rho r293)
        (by simpa using seg15_prefix_9_addY rho r294)
        (by simpa using seg15_prefix_9_selX rho r295)
        (by simpa using seg15_prefix_9_selY rho r296)
        hbrow9
  obtain ⟨b9, hb9⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16396) hbrow9
  have hrb9 : RvkFixedBaseLadder.FixedStepRel 9 (toZMod b9)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX8 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY8 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX9 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY9 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb9]
    exact hr9
  have hp9 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX9 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY9 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 9 b9 _ _ hp8 hrb9).2
  have hbrow10 : (1*(rho 16397))*(1 + (-1)*(rho 16397)) = 0 := by
    simpa [Seg15.relationRow10] using r10
  have hacc10 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc10 (rho 16387 : Seg15.F)
      (seg15AccX9 rho : Seg15.F) (seg15AccY9 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc10] using hp9
  have hr10 : RvkFixedBaseLadder.FixedStepRel 10 (rho 16397)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX9 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY9 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX10 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY10 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc10, seg15AccX10, seg15AccY10, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung10_wide (rho 16387 : Seg15.F) (rho 16397 : Seg15.F) (seg15AccX9 rho : Seg15.F) (seg15AccY9 rho : Seg15.F) (rho 16683 : Seg15.F) (rho 16684 : Seg15.F) (rho 16685 : Seg15.F) (rho 16686 : Seg15.F) (rho 16687 : Seg15.F) hacc10
        (by simpa using seg15_prefix_10_v2 rho r297)
        (by simpa using seg15_prefix_10_addX rho r298)
        (by simpa using seg15_prefix_10_addY rho r299)
        (by simpa using seg15_prefix_10_selX rho r300)
        (by simpa using seg15_prefix_10_selY rho r301)
        hbrow10
  obtain ⟨b10, hb10⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16397) hbrow10
  have hrb10 : RvkFixedBaseLadder.FixedStepRel 10 (toZMod b10)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX9 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY9 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX10 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY10 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb10]
    exact hr10
  have hp10 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX10 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY10 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 10 b10 _ _ hp9 hrb10).2
  exact hp10

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


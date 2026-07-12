import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas0
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

theorem seg30_prefix_steps0 (rho : Nat -> Seg30.F)
    (r0 : Seg30.relationRow0 rho)
    (r1 : Seg30.relationRow1 rho)
    (r252 : Seg30.relationRow252 rho)
    (r253 : Seg30.relationRow253 rho)
    (r254 : Seg30.relationRow254 rho)
    (r255 : Seg30.relationRow255 rho)
    (r256 : Seg30.relationRow256 rho)
    (r2 : Seg30.relationRow2 rho)
    (r257 : Seg30.relationRow257 rho)
    (r258 : Seg30.relationRow258 rho)
    (r259 : Seg30.relationRow259 rho)
    (r260 : Seg30.relationRow260 rho)
    (r261 : Seg30.relationRow261 rho)
    (r3 : Seg30.relationRow3 rho)
    (r262 : Seg30.relationRow262 rho)
    (r263 : Seg30.relationRow263 rho)
    (r264 : Seg30.relationRow264 rho)
    (r265 : Seg30.relationRow265 rho)
    (r266 : Seg30.relationRow266 rho)
    (r4 : Seg30.relationRow4 rho)
    (r267 : Seg30.relationRow267 rho)
    (r268 : Seg30.relationRow268 rho)
    (r269 : Seg30.relationRow269 rho)
    (r270 : Seg30.relationRow270 rho)
    (r271 : Seg30.relationRow271 rho)
    (r5 : Seg30.relationRow5 rho)
    (r272 : Seg30.relationRow272 rho)
    (r273 : Seg30.relationRow273 rho)
    (r274 : Seg30.relationRow274 rho)
    (r275 : Seg30.relationRow275 rho)
    (r276 : Seg30.relationRow276 rho)
    (r6 : Seg30.relationRow6 rho)
    (r277 : Seg30.relationRow277 rho)
    (r278 : Seg30.relationRow278 rho)
    (r279 : Seg30.relationRow279 rho)
    (r280 : Seg30.relationRow280 rho)
    (r281 : Seg30.relationRow281 rho)
    (r7 : Seg30.relationRow7 rho)
    (r282 : Seg30.relationRow282 rho)
    (r283 : Seg30.relationRow283 rho)
    (r284 : Seg30.relationRow284 rho)
    (r285 : Seg30.relationRow285 rho)
    (r286 : Seg30.relationRow286 rho)
    (r8 : Seg30.relationRow8 rho)
    (r287 : Seg30.relationRow287 rho)
    (r288 : Seg30.relationRow288 rho)
    (r289 : Seg30.relationRow289 rho)
    (r290 : Seg30.relationRow290 rho)
    (r291 : Seg30.relationRow291 rho)
    (r9 : Seg30.relationRow9 rho)
    (r292 : Seg30.relationRow292 rho)
    (r293 : Seg30.relationRow293 rho)
    (r294 : Seg30.relationRow294 rho)
    (r295 : Seg30.relationRow295 rho)
    (r296 : Seg30.relationRow296 rho)
    (r10 : Seg30.relationRow10 rho)
    (r297 : Seg30.relationRow297 rho)
    (r298 : Seg30.relationRow298 rho)
    (r299 : Seg30.relationRow299 rho)
    (r300 : Seg30.relationRow300 rho)
    (r301 : Seg30.relationRow301 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX10 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY10 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
  have hbrow0 : (1*(rho 28317))*(1 + (-1)*(rho 28317)) = 0 := by
    simpa [Seg30.relationRow0] using r0
  have hseed : (rho 28317) * (rho 28317) = rho 28317 := by
    linear_combination -hbrow0
  have hpSeed : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc1 (rho 28317 : Seg30.F)) :=
    Shieldd.GnarkFormal.RvkFixedGenInst1.seed_onCurve (rho 28317 : Seg30.F) (by simpa using hseed)
  have hbrow1 : (1*(rho 28318))*(1 + (-1)*(rho 28318)) = 0 := by
    simpa [Seg30.relationRow1] using r1
  have hr1 : RvkFixedBaseLadder.FixedStepRel 1 (rho 28318)
      (Shieldd.GnarkFormal.RvkFixedGenInst1.acc1 (rho 28317 : Seg30.F)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX1 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY1 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc1, seg30AccX1, seg30AccY1, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung1 (rho 28317 : Seg30.F) (rho 28318 : Seg30.F) (rho 28568 : Seg30.F) (rho 28569 : Seg30.F) (rho 28570 : Seg30.F) (rho 28571 : Seg30.F) (rho 28572 : Seg30.F) hpSeed
        (by simpa using seg30_prefix_1_v2 rho r252)
        (by simpa using seg30_prefix_1_addX rho r253)
        (by simpa using seg30_prefix_1_addY rho r254)
        (by simpa using seg30_prefix_1_selX rho r255)
        (by simpa using seg30_prefix_1_selY rho r256)
        hbrow1
  obtain ⟨b1, hb1⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28318) hbrow1
  have hrb1 : RvkFixedBaseLadder.FixedStepRel 1 (toZMod b1)
      (Shieldd.GnarkFormal.RvkFixedGenInst1.acc1 (rho 28317 : Seg30.F)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX1 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY1 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb1]
    exact hr1
  have hp1 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX1 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY1 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 1 b1 _ _ hpSeed hrb1).2
  have hbrow2 : (1*(rho 28319))*(1 + (-1)*(rho 28319)) = 0 := by
    simpa [Seg30.relationRow2] using r2
  have hacc2 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc2 (rho 28317 : Seg30.F)
      (seg30AccX1 rho : Seg30.F) (seg30AccY1 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc2] using hp1
  have hr2 : RvkFixedBaseLadder.FixedStepRel 2 (rho 28319)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX1 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY1 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX2 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY2 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc2, seg30AccX2, seg30AccY2, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung2_wide (rho 28317 : Seg30.F) (rho 28319 : Seg30.F) (seg30AccX1 rho : Seg30.F) (seg30AccY1 rho : Seg30.F) (rho 28573 : Seg30.F) (rho 28574 : Seg30.F) (rho 28575 : Seg30.F) (rho 28576 : Seg30.F) (rho 28577 : Seg30.F) hacc2
        (by simpa using seg30_prefix_2_v2 rho r257)
        (by simpa using seg30_prefix_2_addX rho r258)
        (by simpa using seg30_prefix_2_addY rho r259)
        (by simpa using seg30_prefix_2_selX rho r260)
        (by simpa using seg30_prefix_2_selY rho r261)
        hbrow2
  obtain ⟨b2, hb2⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28319) hbrow2
  have hrb2 : RvkFixedBaseLadder.FixedStepRel 2 (toZMod b2)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX1 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY1 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX2 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY2 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb2]
    exact hr2
  have hp2 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX2 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY2 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 2 b2 _ _ hp1 hrb2).2
  have hbrow3 : (1*(rho 28320))*(1 + (-1)*(rho 28320)) = 0 := by
    simpa [Seg30.relationRow3] using r3
  have hacc3 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc3 (rho 28317 : Seg30.F)
      (seg30AccX2 rho : Seg30.F) (seg30AccY2 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc3] using hp2
  have hr3 : RvkFixedBaseLadder.FixedStepRel 3 (rho 28320)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX2 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY2 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX3 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY3 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc3, seg30AccX3, seg30AccY3, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung3_wide (rho 28317 : Seg30.F) (rho 28320 : Seg30.F) (seg30AccX2 rho : Seg30.F) (seg30AccY2 rho : Seg30.F) (rho 28578 : Seg30.F) (rho 28579 : Seg30.F) (rho 28580 : Seg30.F) (rho 28581 : Seg30.F) (rho 28582 : Seg30.F) hacc3
        (by simpa using seg30_prefix_3_v2 rho r262)
        (by simpa using seg30_prefix_3_addX rho r263)
        (by simpa using seg30_prefix_3_addY rho r264)
        (by simpa using seg30_prefix_3_selX rho r265)
        (by simpa using seg30_prefix_3_selY rho r266)
        hbrow3
  obtain ⟨b3, hb3⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28320) hbrow3
  have hrb3 : RvkFixedBaseLadder.FixedStepRel 3 (toZMod b3)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX2 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY2 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX3 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY3 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb3]
    exact hr3
  have hp3 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX3 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY3 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 3 b3 _ _ hp2 hrb3).2
  have hbrow4 : (1*(rho 28321))*(1 + (-1)*(rho 28321)) = 0 := by
    simpa [Seg30.relationRow4] using r4
  have hacc4 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc4 (rho 28317 : Seg30.F)
      (seg30AccX3 rho : Seg30.F) (seg30AccY3 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc4] using hp3
  have hr4 : RvkFixedBaseLadder.FixedStepRel 4 (rho 28321)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX3 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY3 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX4 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY4 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc4, seg30AccX4, seg30AccY4, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung4_wide (rho 28317 : Seg30.F) (rho 28321 : Seg30.F) (seg30AccX3 rho : Seg30.F) (seg30AccY3 rho : Seg30.F) (rho 28583 : Seg30.F) (rho 28584 : Seg30.F) (rho 28585 : Seg30.F) (rho 28586 : Seg30.F) (rho 28587 : Seg30.F) hacc4
        (by simpa using seg30_prefix_4_v2 rho r267)
        (by simpa using seg30_prefix_4_addX rho r268)
        (by simpa using seg30_prefix_4_addY rho r269)
        (by simpa using seg30_prefix_4_selX rho r270)
        (by simpa using seg30_prefix_4_selY rho r271)
        hbrow4
  obtain ⟨b4, hb4⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28321) hbrow4
  have hrb4 : RvkFixedBaseLadder.FixedStepRel 4 (toZMod b4)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX3 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY3 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX4 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY4 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb4]
    exact hr4
  have hp4 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX4 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY4 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 4 b4 _ _ hp3 hrb4).2
  have hbrow5 : (1*(rho 28322))*(1 + (-1)*(rho 28322)) = 0 := by
    simpa [Seg30.relationRow5] using r5
  have hacc5 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc5 (rho 28317 : Seg30.F)
      (seg30AccX4 rho : Seg30.F) (seg30AccY4 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc5] using hp4
  have hr5 : RvkFixedBaseLadder.FixedStepRel 5 (rho 28322)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX4 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY4 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX5 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY5 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc5, seg30AccX5, seg30AccY5, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung5_wide (rho 28317 : Seg30.F) (rho 28322 : Seg30.F) (seg30AccX4 rho : Seg30.F) (seg30AccY4 rho : Seg30.F) (rho 28588 : Seg30.F) (rho 28589 : Seg30.F) (rho 28590 : Seg30.F) (rho 28591 : Seg30.F) (rho 28592 : Seg30.F) hacc5
        (by simpa using seg30_prefix_5_v2 rho r272)
        (by simpa using seg30_prefix_5_addX rho r273)
        (by simpa using seg30_prefix_5_addY rho r274)
        (by simpa using seg30_prefix_5_selX rho r275)
        (by simpa using seg30_prefix_5_selY rho r276)
        hbrow5
  obtain ⟨b5, hb5⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28322) hbrow5
  have hrb5 : RvkFixedBaseLadder.FixedStepRel 5 (toZMod b5)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX4 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY4 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX5 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY5 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb5]
    exact hr5
  have hp5 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX5 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY5 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 5 b5 _ _ hp4 hrb5).2
  have hbrow6 : (1*(rho 28323))*(1 + (-1)*(rho 28323)) = 0 := by
    simpa [Seg30.relationRow6] using r6
  have hacc6 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc6 (rho 28317 : Seg30.F)
      (seg30AccX5 rho : Seg30.F) (seg30AccY5 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc6] using hp5
  have hr6 : RvkFixedBaseLadder.FixedStepRel 6 (rho 28323)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX5 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY5 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX6 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY6 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc6, seg30AccX6, seg30AccY6, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung6_wide (rho 28317 : Seg30.F) (rho 28323 : Seg30.F) (seg30AccX5 rho : Seg30.F) (seg30AccY5 rho : Seg30.F) (rho 28593 : Seg30.F) (rho 28594 : Seg30.F) (rho 28595 : Seg30.F) (rho 28596 : Seg30.F) (rho 28597 : Seg30.F) hacc6
        (by simpa using seg30_prefix_6_v2 rho r277)
        (by simpa using seg30_prefix_6_addX rho r278)
        (by simpa using seg30_prefix_6_addY rho r279)
        (by simpa using seg30_prefix_6_selX rho r280)
        (by simpa using seg30_prefix_6_selY rho r281)
        hbrow6
  obtain ⟨b6, hb6⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28323) hbrow6
  have hrb6 : RvkFixedBaseLadder.FixedStepRel 6 (toZMod b6)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX5 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY5 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX6 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY6 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb6]
    exact hr6
  have hp6 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX6 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY6 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 6 b6 _ _ hp5 hrb6).2
  have hbrow7 : (1*(rho 28324))*(1 + (-1)*(rho 28324)) = 0 := by
    simpa [Seg30.relationRow7] using r7
  have hacc7 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc7 (rho 28317 : Seg30.F)
      (seg30AccX6 rho : Seg30.F) (seg30AccY6 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc7] using hp6
  have hr7 : RvkFixedBaseLadder.FixedStepRel 7 (rho 28324)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX6 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY6 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX7 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY7 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc7, seg30AccX7, seg30AccY7, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung7_wide (rho 28317 : Seg30.F) (rho 28324 : Seg30.F) (seg30AccX6 rho : Seg30.F) (seg30AccY6 rho : Seg30.F) (rho 28598 : Seg30.F) (rho 28599 : Seg30.F) (rho 28600 : Seg30.F) (rho 28601 : Seg30.F) (rho 28602 : Seg30.F) hacc7
        (by simpa using seg30_prefix_7_v2 rho r282)
        (by simpa using seg30_prefix_7_addX rho r283)
        (by simpa using seg30_prefix_7_addY rho r284)
        (by simpa using seg30_prefix_7_selX rho r285)
        (by simpa using seg30_prefix_7_selY rho r286)
        hbrow7
  obtain ⟨b7, hb7⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28324) hbrow7
  have hrb7 : RvkFixedBaseLadder.FixedStepRel 7 (toZMod b7)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX6 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY6 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX7 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY7 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb7]
    exact hr7
  have hp7 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX7 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY7 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 7 b7 _ _ hp6 hrb7).2
  have hbrow8 : (1*(rho 28325))*(1 + (-1)*(rho 28325)) = 0 := by
    simpa [Seg30.relationRow8] using r8
  have hacc8 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc8 (rho 28317 : Seg30.F)
      (seg30AccX7 rho : Seg30.F) (seg30AccY7 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc8] using hp7
  have hr8 : RvkFixedBaseLadder.FixedStepRel 8 (rho 28325)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX7 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY7 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX8 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY8 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc8, seg30AccX8, seg30AccY8, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung8_wide (rho 28317 : Seg30.F) (rho 28325 : Seg30.F) (seg30AccX7 rho : Seg30.F) (seg30AccY7 rho : Seg30.F) (rho 28603 : Seg30.F) (rho 28604 : Seg30.F) (rho 28605 : Seg30.F) (rho 28606 : Seg30.F) (rho 28607 : Seg30.F) hacc8
        (by simpa using seg30_prefix_8_v2 rho r287)
        (by simpa using seg30_prefix_8_addX rho r288)
        (by simpa using seg30_prefix_8_addY rho r289)
        (by simpa using seg30_prefix_8_selX rho r290)
        (by simpa using seg30_prefix_8_selY rho r291)
        hbrow8
  obtain ⟨b8, hb8⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28325) hbrow8
  have hrb8 : RvkFixedBaseLadder.FixedStepRel 8 (toZMod b8)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX7 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY7 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX8 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY8 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb8]
    exact hr8
  have hp8 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX8 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY8 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 8 b8 _ _ hp7 hrb8).2
  have hbrow9 : (1*(rho 28326))*(1 + (-1)*(rho 28326)) = 0 := by
    simpa [Seg30.relationRow9] using r9
  have hacc9 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc9 (rho 28317 : Seg30.F)
      (seg30AccX8 rho : Seg30.F) (seg30AccY8 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc9] using hp8
  have hr9 : RvkFixedBaseLadder.FixedStepRel 9 (rho 28326)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX8 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY8 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX9 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY9 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc9, seg30AccX9, seg30AccY9, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung9_wide (rho 28317 : Seg30.F) (rho 28326 : Seg30.F) (seg30AccX8 rho : Seg30.F) (seg30AccY8 rho : Seg30.F) (rho 28608 : Seg30.F) (rho 28609 : Seg30.F) (rho 28610 : Seg30.F) (rho 28611 : Seg30.F) (rho 28612 : Seg30.F) hacc9
        (by simpa using seg30_prefix_9_v2 rho r292)
        (by simpa using seg30_prefix_9_addX rho r293)
        (by simpa using seg30_prefix_9_addY rho r294)
        (by simpa using seg30_prefix_9_selX rho r295)
        (by simpa using seg30_prefix_9_selY rho r296)
        hbrow9
  obtain ⟨b9, hb9⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28326) hbrow9
  have hrb9 : RvkFixedBaseLadder.FixedStepRel 9 (toZMod b9)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX8 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY8 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX9 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY9 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb9]
    exact hr9
  have hp9 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX9 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY9 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 9 b9 _ _ hp8 hrb9).2
  have hbrow10 : (1*(rho 28327))*(1 + (-1)*(rho 28327)) = 0 := by
    simpa [Seg30.relationRow10] using r10
  have hacc10 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc10 (rho 28317 : Seg30.F)
      (seg30AccX9 rho : Seg30.F) (seg30AccY9 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc10] using hp9
  have hr10 : RvkFixedBaseLadder.FixedStepRel 10 (rho 28327)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX9 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY9 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX10 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY10 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc10, seg30AccX10, seg30AccY10, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung10_wide (rho 28317 : Seg30.F) (rho 28327 : Seg30.F) (seg30AccX9 rho : Seg30.F) (seg30AccY9 rho : Seg30.F) (rho 28613 : Seg30.F) (rho 28614 : Seg30.F) (rho 28615 : Seg30.F) (rho 28616 : Seg30.F) (rho 28617 : Seg30.F) hacc10
        (by simpa using seg30_prefix_10_v2 rho r297)
        (by simpa using seg30_prefix_10_addX rho r298)
        (by simpa using seg30_prefix_10_addY rho r299)
        (by simpa using seg30_prefix_10_selX rho r300)
        (by simpa using seg30_prefix_10_selY rho r301)
        hbrow10
  obtain ⟨b10, hb10⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28327) hbrow10
  have hrb10 : RvkFixedBaseLadder.FixedStepRel 10 (toZMod b10)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX9 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY9 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX10 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY10 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb10]
    exact hr10
  have hp10 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX10 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY10 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 10 b10 _ _ hp9 hrb10).2
  exact hp10

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


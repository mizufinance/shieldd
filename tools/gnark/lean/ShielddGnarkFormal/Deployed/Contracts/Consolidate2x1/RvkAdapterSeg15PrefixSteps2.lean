import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas2
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

theorem seg15_prefix_steps2 (rho : Nat -> Seg15.F)
    (hp20 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX20 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY20 rho : Seg15.F)⟩ : EdwardsBridge.Point))
    (r21 : Seg15.relationRow21 rho)
    (r352 : Seg15.relationRow352 rho)
    (r353 : Seg15.relationRow353 rho)
    (r354 : Seg15.relationRow354 rho)
    (r355 : Seg15.relationRow355 rho)
    (r356 : Seg15.relationRow356 rho)
    (r22 : Seg15.relationRow22 rho)
    (r357 : Seg15.relationRow357 rho)
    (r358 : Seg15.relationRow358 rho)
    (r359 : Seg15.relationRow359 rho)
    (r360 : Seg15.relationRow360 rho)
    (r361 : Seg15.relationRow361 rho)
    (r23 : Seg15.relationRow23 rho)
    (r362 : Seg15.relationRow362 rho)
    (r363 : Seg15.relationRow363 rho)
    (r364 : Seg15.relationRow364 rho)
    (r365 : Seg15.relationRow365 rho)
    (r366 : Seg15.relationRow366 rho)
    (r24 : Seg15.relationRow24 rho)
    (r367 : Seg15.relationRow367 rho)
    (r368 : Seg15.relationRow368 rho)
    (r369 : Seg15.relationRow369 rho)
    (r370 : Seg15.relationRow370 rho)
    (r371 : Seg15.relationRow371 rho)
    (r25 : Seg15.relationRow25 rho)
    (r372 : Seg15.relationRow372 rho)
    (r373 : Seg15.relationRow373 rho)
    (r374 : Seg15.relationRow374 rho)
    (r375 : Seg15.relationRow375 rho)
    (r376 : Seg15.relationRow376 rho)
    (r26 : Seg15.relationRow26 rho)
    (r377 : Seg15.relationRow377 rho)
    (r378 : Seg15.relationRow378 rho)
    (r379 : Seg15.relationRow379 rho)
    (r380 : Seg15.relationRow380 rho)
    (r381 : Seg15.relationRow381 rho)
    (r27 : Seg15.relationRow27 rho)
    (r382 : Seg15.relationRow382 rho)
    (r383 : Seg15.relationRow383 rho)
    (r384 : Seg15.relationRow384 rho)
    (r385 : Seg15.relationRow385 rho)
    (r386 : Seg15.relationRow386 rho)
    (r28 : Seg15.relationRow28 rho)
    (r387 : Seg15.relationRow387 rho)
    (r388 : Seg15.relationRow388 rho)
    (r389 : Seg15.relationRow389 rho)
    (r390 : Seg15.relationRow390 rho)
    (r391 : Seg15.relationRow391 rho)
    (r29 : Seg15.relationRow29 rho)
    (r392 : Seg15.relationRow392 rho)
    (r393 : Seg15.relationRow393 rho)
    (r394 : Seg15.relationRow394 rho)
    (r395 : Seg15.relationRow395 rho)
    (r396 : Seg15.relationRow396 rho)
    (r30 : Seg15.relationRow30 rho)
    (r397 : Seg15.relationRow397 rho)
    (r398 : Seg15.relationRow398 rho)
    (r399 : Seg15.relationRow399 rho)
    (r400 : Seg15.relationRow400 rho)
    (r401 : Seg15.relationRow401 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX30 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY30 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
  have hbrow21 : (1*(rho 16157))*(1 + (-1)*(rho 16157)) = 0 := by
    simpa [Seg15.relationRow21] using r21
  have hacc21 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc21 (rho 16136 : Seg15.F)
      (seg15AccX20 rho : Seg15.F) (seg15AccY20 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc21] using hp20
  have hr21 : RvkFixedBaseLadder.FixedStepRel 21 (rho 16157)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX20 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY20 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX21 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY21 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc21, seg15AccX21, seg15AccY21, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung21_wide (rho 16136 : Seg15.F) (rho 16157 : Seg15.F) (seg15AccX20 rho : Seg15.F) (seg15AccY20 rho : Seg15.F) (rho 16487 : Seg15.F) (rho 16488 : Seg15.F) (rho 16489 : Seg15.F) (rho 16490 : Seg15.F) (rho 16491 : Seg15.F) hacc21
        (by simpa using seg15_prefix_21_v2 rho r352)
        (by simpa using seg15_prefix_21_addX rho r353)
        (by simpa using seg15_prefix_21_addY rho r354)
        (by simpa using seg15_prefix_21_selX rho r355)
        (by simpa using seg15_prefix_21_selY rho r356)
        hbrow21
  obtain ⟨b21, hb21⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16157) hbrow21
  have hrb21 : RvkFixedBaseLadder.FixedStepRel 21 (toZMod b21)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX20 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY20 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX21 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY21 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb21]
    exact hr21
  have hp21 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX21 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY21 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 21 b21 _ _ hp20 hrb21).2
  have hbrow22 : (1*(rho 16158))*(1 + (-1)*(rho 16158)) = 0 := by
    simpa [Seg15.relationRow22] using r22
  have hacc22 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc22 (rho 16136 : Seg15.F)
      (seg15AccX21 rho : Seg15.F) (seg15AccY21 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc22] using hp21
  have hr22 : RvkFixedBaseLadder.FixedStepRel 22 (rho 16158)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX21 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY21 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX22 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY22 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc22, seg15AccX22, seg15AccY22, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung22_wide (rho 16136 : Seg15.F) (rho 16158 : Seg15.F) (seg15AccX21 rho : Seg15.F) (seg15AccY21 rho : Seg15.F) (rho 16492 : Seg15.F) (rho 16493 : Seg15.F) (rho 16494 : Seg15.F) (rho 16495 : Seg15.F) (rho 16496 : Seg15.F) hacc22
        (by simpa using seg15_prefix_22_v2 rho r357)
        (by simpa using seg15_prefix_22_addX rho r358)
        (by simpa using seg15_prefix_22_addY rho r359)
        (by simpa using seg15_prefix_22_selX rho r360)
        (by simpa using seg15_prefix_22_selY rho r361)
        hbrow22
  obtain ⟨b22, hb22⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16158) hbrow22
  have hrb22 : RvkFixedBaseLadder.FixedStepRel 22 (toZMod b22)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX21 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY21 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX22 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY22 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb22]
    exact hr22
  have hp22 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX22 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY22 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 22 b22 _ _ hp21 hrb22).2
  have hbrow23 : (1*(rho 16159))*(1 + (-1)*(rho 16159)) = 0 := by
    simpa [Seg15.relationRow23] using r23
  have hacc23 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc23 (rho 16136 : Seg15.F)
      (seg15AccX22 rho : Seg15.F) (seg15AccY22 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc23] using hp22
  have hr23 : RvkFixedBaseLadder.FixedStepRel 23 (rho 16159)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX22 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY22 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX23 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY23 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc23, seg15AccX23, seg15AccY23, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung23_wide (rho 16136 : Seg15.F) (rho 16159 : Seg15.F) (seg15AccX22 rho : Seg15.F) (seg15AccY22 rho : Seg15.F) (rho 16497 : Seg15.F) (rho 16498 : Seg15.F) (rho 16499 : Seg15.F) (rho 16500 : Seg15.F) (rho 16501 : Seg15.F) hacc23
        (by simpa using seg15_prefix_23_v2 rho r362)
        (by simpa using seg15_prefix_23_addX rho r363)
        (by simpa using seg15_prefix_23_addY rho r364)
        (by simpa using seg15_prefix_23_selX rho r365)
        (by simpa using seg15_prefix_23_selY rho r366)
        hbrow23
  obtain ⟨b23, hb23⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16159) hbrow23
  have hrb23 : RvkFixedBaseLadder.FixedStepRel 23 (toZMod b23)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX22 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY22 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX23 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY23 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb23]
    exact hr23
  have hp23 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX23 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY23 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 23 b23 _ _ hp22 hrb23).2
  have hbrow24 : (1*(rho 16160))*(1 + (-1)*(rho 16160)) = 0 := by
    simpa [Seg15.relationRow24] using r24
  have hacc24 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc24 (rho 16136 : Seg15.F)
      (seg15AccX23 rho : Seg15.F) (seg15AccY23 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc24] using hp23
  have hr24 : RvkFixedBaseLadder.FixedStepRel 24 (rho 16160)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX23 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY23 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX24 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY24 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc24, seg15AccX24, seg15AccY24, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung24_wide (rho 16136 : Seg15.F) (rho 16160 : Seg15.F) (seg15AccX23 rho : Seg15.F) (seg15AccY23 rho : Seg15.F) (rho 16502 : Seg15.F) (rho 16503 : Seg15.F) (rho 16504 : Seg15.F) (rho 16505 : Seg15.F) (rho 16506 : Seg15.F) hacc24
        (by simpa using seg15_prefix_24_v2 rho r367)
        (by simpa using seg15_prefix_24_addX rho r368)
        (by simpa using seg15_prefix_24_addY rho r369)
        (by simpa using seg15_prefix_24_selX rho r370)
        (by simpa using seg15_prefix_24_selY rho r371)
        hbrow24
  obtain ⟨b24, hb24⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16160) hbrow24
  have hrb24 : RvkFixedBaseLadder.FixedStepRel 24 (toZMod b24)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX23 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY23 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX24 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY24 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb24]
    exact hr24
  have hp24 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX24 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY24 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 24 b24 _ _ hp23 hrb24).2
  have hbrow25 : (1*(rho 16161))*(1 + (-1)*(rho 16161)) = 0 := by
    simpa [Seg15.relationRow25] using r25
  have hacc25 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc25 (rho 16136 : Seg15.F)
      (seg15AccX24 rho : Seg15.F) (seg15AccY24 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc25] using hp24
  have hr25 : RvkFixedBaseLadder.FixedStepRel 25 (rho 16161)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX24 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY24 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX25 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY25 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc25, seg15AccX25, seg15AccY25, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung25_wide (rho 16136 : Seg15.F) (rho 16161 : Seg15.F) (seg15AccX24 rho : Seg15.F) (seg15AccY24 rho : Seg15.F) (rho 16507 : Seg15.F) (rho 16508 : Seg15.F) (rho 16509 : Seg15.F) (rho 16510 : Seg15.F) (rho 16511 : Seg15.F) hacc25
        (by simpa using seg15_prefix_25_v2 rho r372)
        (by simpa using seg15_prefix_25_addX rho r373)
        (by simpa using seg15_prefix_25_addY rho r374)
        (by simpa using seg15_prefix_25_selX rho r375)
        (by simpa using seg15_prefix_25_selY rho r376)
        hbrow25
  obtain ⟨b25, hb25⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16161) hbrow25
  have hrb25 : RvkFixedBaseLadder.FixedStepRel 25 (toZMod b25)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX24 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY24 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX25 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY25 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb25]
    exact hr25
  have hp25 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX25 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY25 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 25 b25 _ _ hp24 hrb25).2
  have hbrow26 : (1*(rho 16162))*(1 + (-1)*(rho 16162)) = 0 := by
    simpa [Seg15.relationRow26] using r26
  have hacc26 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc26 (rho 16136 : Seg15.F)
      (seg15AccX25 rho : Seg15.F) (seg15AccY25 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc26] using hp25
  have hr26 : RvkFixedBaseLadder.FixedStepRel 26 (rho 16162)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX25 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY25 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX26 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY26 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc26, seg15AccX26, seg15AccY26, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung26_wide (rho 16136 : Seg15.F) (rho 16162 : Seg15.F) (seg15AccX25 rho : Seg15.F) (seg15AccY25 rho : Seg15.F) (rho 16512 : Seg15.F) (rho 16513 : Seg15.F) (rho 16514 : Seg15.F) (rho 16515 : Seg15.F) (rho 16516 : Seg15.F) hacc26
        (by simpa using seg15_prefix_26_v2 rho r377)
        (by simpa using seg15_prefix_26_addX rho r378)
        (by simpa using seg15_prefix_26_addY rho r379)
        (by simpa using seg15_prefix_26_selX rho r380)
        (by simpa using seg15_prefix_26_selY rho r381)
        hbrow26
  obtain ⟨b26, hb26⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16162) hbrow26
  have hrb26 : RvkFixedBaseLadder.FixedStepRel 26 (toZMod b26)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX25 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY25 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX26 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY26 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb26]
    exact hr26
  have hp26 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX26 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY26 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 26 b26 _ _ hp25 hrb26).2
  have hbrow27 : (1*(rho 16163))*(1 + (-1)*(rho 16163)) = 0 := by
    simpa [Seg15.relationRow27] using r27
  have hacc27 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc27 (rho 16136 : Seg15.F)
      (seg15AccX26 rho : Seg15.F) (seg15AccY26 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc27] using hp26
  have hr27 : RvkFixedBaseLadder.FixedStepRel 27 (rho 16163)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX26 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY26 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX27 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY27 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc27, seg15AccX27, seg15AccY27, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung27_wide (rho 16136 : Seg15.F) (rho 16163 : Seg15.F) (seg15AccX26 rho : Seg15.F) (seg15AccY26 rho : Seg15.F) (rho 16517 : Seg15.F) (rho 16518 : Seg15.F) (rho 16519 : Seg15.F) (rho 16520 : Seg15.F) (rho 16521 : Seg15.F) hacc27
        (by simpa using seg15_prefix_27_v2 rho r382)
        (by simpa using seg15_prefix_27_addX rho r383)
        (by simpa using seg15_prefix_27_addY rho r384)
        (by simpa using seg15_prefix_27_selX rho r385)
        (by simpa using seg15_prefix_27_selY rho r386)
        hbrow27
  obtain ⟨b27, hb27⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16163) hbrow27
  have hrb27 : RvkFixedBaseLadder.FixedStepRel 27 (toZMod b27)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX26 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY26 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX27 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY27 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb27]
    exact hr27
  have hp27 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX27 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY27 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 27 b27 _ _ hp26 hrb27).2
  have hbrow28 : (1*(rho 16164))*(1 + (-1)*(rho 16164)) = 0 := by
    simpa [Seg15.relationRow28] using r28
  have hacc28 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc28 (rho 16136 : Seg15.F)
      (seg15AccX27 rho : Seg15.F) (seg15AccY27 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc28] using hp27
  have hr28 : RvkFixedBaseLadder.FixedStepRel 28 (rho 16164)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX27 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY27 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX28 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY28 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc28, seg15AccX28, seg15AccY28, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung28_wide (rho 16136 : Seg15.F) (rho 16164 : Seg15.F) (seg15AccX27 rho : Seg15.F) (seg15AccY27 rho : Seg15.F) (rho 16522 : Seg15.F) (rho 16523 : Seg15.F) (rho 16524 : Seg15.F) (rho 16525 : Seg15.F) (rho 16526 : Seg15.F) hacc28
        (by simpa using seg15_prefix_28_v2 rho r387)
        (by simpa using seg15_prefix_28_addX rho r388)
        (by simpa using seg15_prefix_28_addY rho r389)
        (by simpa using seg15_prefix_28_selX rho r390)
        (by simpa using seg15_prefix_28_selY rho r391)
        hbrow28
  obtain ⟨b28, hb28⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16164) hbrow28
  have hrb28 : RvkFixedBaseLadder.FixedStepRel 28 (toZMod b28)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX27 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY27 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX28 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY28 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb28]
    exact hr28
  have hp28 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX28 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY28 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 28 b28 _ _ hp27 hrb28).2
  have hbrow29 : (1*(rho 16165))*(1 + (-1)*(rho 16165)) = 0 := by
    simpa [Seg15.relationRow29] using r29
  have hacc29 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc29 (rho 16136 : Seg15.F)
      (seg15AccX28 rho : Seg15.F) (seg15AccY28 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc29] using hp28
  have hr29 : RvkFixedBaseLadder.FixedStepRel 29 (rho 16165)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX28 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY28 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX29 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY29 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc29, seg15AccX29, seg15AccY29, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung29_wide (rho 16136 : Seg15.F) (rho 16165 : Seg15.F) (seg15AccX28 rho : Seg15.F) (seg15AccY28 rho : Seg15.F) (rho 16527 : Seg15.F) (rho 16528 : Seg15.F) (rho 16529 : Seg15.F) (rho 16530 : Seg15.F) (rho 16531 : Seg15.F) hacc29
        (by simpa using seg15_prefix_29_v2 rho r392)
        (by simpa using seg15_prefix_29_addX rho r393)
        (by simpa using seg15_prefix_29_addY rho r394)
        (by simpa using seg15_prefix_29_selX rho r395)
        (by simpa using seg15_prefix_29_selY rho r396)
        hbrow29
  obtain ⟨b29, hb29⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16165) hbrow29
  have hrb29 : RvkFixedBaseLadder.FixedStepRel 29 (toZMod b29)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX28 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY28 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX29 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY29 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb29]
    exact hr29
  have hp29 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX29 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY29 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 29 b29 _ _ hp28 hrb29).2
  have hbrow30 : (1*(rho 16166))*(1 + (-1)*(rho 16166)) = 0 := by
    simpa [Seg15.relationRow30] using r30
  have hacc30 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc30 (rho 16136 : Seg15.F)
      (seg15AccX29 rho : Seg15.F) (seg15AccY29 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc30] using hp29
  have hr30 : RvkFixedBaseLadder.FixedStepRel 30 (rho 16166)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX29 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY29 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX30 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY30 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc30, seg15AccX30, seg15AccY30, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung30_wide (rho 16136 : Seg15.F) (rho 16166 : Seg15.F) (seg15AccX29 rho : Seg15.F) (seg15AccY29 rho : Seg15.F) (rho 16532 : Seg15.F) (rho 16533 : Seg15.F) (rho 16534 : Seg15.F) (rho 16535 : Seg15.F) (rho 16536 : Seg15.F) hacc30
        (by simpa using seg15_prefix_30_v2 rho r397)
        (by simpa using seg15_prefix_30_addX rho r398)
        (by simpa using seg15_prefix_30_addY rho r399)
        (by simpa using seg15_prefix_30_selX rho r400)
        (by simpa using seg15_prefix_30_selY rho r401)
        hbrow30
  obtain ⟨b30, hb30⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16166) hbrow30
  have hrb30 : RvkFixedBaseLadder.FixedStepRel 30 (toZMod b30)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX29 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY29 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX30 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY30 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb30]
    exact hr30
  have hp30 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX30 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY30 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 30 b30 _ _ hp29 hrb30).2
  exact hp30

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


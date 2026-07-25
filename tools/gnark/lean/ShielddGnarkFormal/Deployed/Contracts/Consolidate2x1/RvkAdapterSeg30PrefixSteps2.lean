import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas2
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

theorem seg30_prefix_steps2 (rho : Nat -> Seg30.F)
    (hp20 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX20 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY20 rho : Seg30.F)⟩ : EdwardsBridge.Point))
    (r21 : Seg30.relationRow21 rho)
    (r352 : Seg30.relationRow352 rho)
    (r353 : Seg30.relationRow353 rho)
    (r354 : Seg30.relationRow354 rho)
    (r355 : Seg30.relationRow355 rho)
    (r356 : Seg30.relationRow356 rho)
    (r22 : Seg30.relationRow22 rho)
    (r357 : Seg30.relationRow357 rho)
    (r358 : Seg30.relationRow358 rho)
    (r359 : Seg30.relationRow359 rho)
    (r360 : Seg30.relationRow360 rho)
    (r361 : Seg30.relationRow361 rho)
    (r23 : Seg30.relationRow23 rho)
    (r362 : Seg30.relationRow362 rho)
    (r363 : Seg30.relationRow363 rho)
    (r364 : Seg30.relationRow364 rho)
    (r365 : Seg30.relationRow365 rho)
    (r366 : Seg30.relationRow366 rho)
    (r24 : Seg30.relationRow24 rho)
    (r367 : Seg30.relationRow367 rho)
    (r368 : Seg30.relationRow368 rho)
    (r369 : Seg30.relationRow369 rho)
    (r370 : Seg30.relationRow370 rho)
    (r371 : Seg30.relationRow371 rho)
    (r25 : Seg30.relationRow25 rho)
    (r372 : Seg30.relationRow372 rho)
    (r373 : Seg30.relationRow373 rho)
    (r374 : Seg30.relationRow374 rho)
    (r375 : Seg30.relationRow375 rho)
    (r376 : Seg30.relationRow376 rho)
    (r26 : Seg30.relationRow26 rho)
    (r377 : Seg30.relationRow377 rho)
    (r378 : Seg30.relationRow378 rho)
    (r379 : Seg30.relationRow379 rho)
    (r380 : Seg30.relationRow380 rho)
    (r381 : Seg30.relationRow381 rho)
    (r27 : Seg30.relationRow27 rho)
    (r382 : Seg30.relationRow382 rho)
    (r383 : Seg30.relationRow383 rho)
    (r384 : Seg30.relationRow384 rho)
    (r385 : Seg30.relationRow385 rho)
    (r386 : Seg30.relationRow386 rho)
    (r28 : Seg30.relationRow28 rho)
    (r387 : Seg30.relationRow387 rho)
    (r388 : Seg30.relationRow388 rho)
    (r389 : Seg30.relationRow389 rho)
    (r390 : Seg30.relationRow390 rho)
    (r391 : Seg30.relationRow391 rho)
    (r29 : Seg30.relationRow29 rho)
    (r392 : Seg30.relationRow392 rho)
    (r393 : Seg30.relationRow393 rho)
    (r394 : Seg30.relationRow394 rho)
    (r395 : Seg30.relationRow395 rho)
    (r396 : Seg30.relationRow396 rho)
    (r30 : Seg30.relationRow30 rho)
    (r397 : Seg30.relationRow397 rho)
    (r398 : Seg30.relationRow398 rho)
    (r399 : Seg30.relationRow399 rho)
    (r400 : Seg30.relationRow400 rho)
    (r401 : Seg30.relationRow401 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX30 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY30 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
  have hbrow21 : (1*(rho 28338))*(1 + (-1)*(rho 28338)) = 0 := by
    simpa [Seg30.relationRow21] using r21
  have hacc21 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc21 (rho 28317 : Seg30.F)
      (seg30AccX20 rho : Seg30.F) (seg30AccY20 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc21] using hp20
  have hr21 : RvkFixedBaseLadder.FixedStepRel 21 (rho 28338)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX20 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY20 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX21 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY21 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc21, seg30AccX21, seg30AccY21, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung21_wide (rho 28317 : Seg30.F) (rho 28338 : Seg30.F) (seg30AccX20 rho : Seg30.F) (seg30AccY20 rho : Seg30.F) (rho 28668 : Seg30.F) (rho 28669 : Seg30.F) (rho 28670 : Seg30.F) (rho 28671 : Seg30.F) (rho 28672 : Seg30.F) hacc21
        (by simpa using seg30_prefix_21_v2 rho r352)
        (by simpa using seg30_prefix_21_addX rho r353)
        (by simpa using seg30_prefix_21_addY rho r354)
        (by simpa using seg30_prefix_21_selX rho r355)
        (by simpa using seg30_prefix_21_selY rho r356)
        hbrow21
  obtain ⟨b21, hb21⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28338) hbrow21
  have hrb21 : RvkFixedBaseLadder.FixedStepRel 21 (toZMod b21)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX20 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY20 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX21 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY21 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb21]
    exact hr21
  have hp21 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX21 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY21 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 21 b21 _ _ hp20 hrb21).2
  have hbrow22 : (1*(rho 28339))*(1 + (-1)*(rho 28339)) = 0 := by
    simpa [Seg30.relationRow22] using r22
  have hacc22 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc22 (rho 28317 : Seg30.F)
      (seg30AccX21 rho : Seg30.F) (seg30AccY21 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc22] using hp21
  have hr22 : RvkFixedBaseLadder.FixedStepRel 22 (rho 28339)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX21 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY21 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX22 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY22 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc22, seg30AccX22, seg30AccY22, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung22_wide (rho 28317 : Seg30.F) (rho 28339 : Seg30.F) (seg30AccX21 rho : Seg30.F) (seg30AccY21 rho : Seg30.F) (rho 28673 : Seg30.F) (rho 28674 : Seg30.F) (rho 28675 : Seg30.F) (rho 28676 : Seg30.F) (rho 28677 : Seg30.F) hacc22
        (by simpa using seg30_prefix_22_v2 rho r357)
        (by simpa using seg30_prefix_22_addX rho r358)
        (by simpa using seg30_prefix_22_addY rho r359)
        (by simpa using seg30_prefix_22_selX rho r360)
        (by simpa using seg30_prefix_22_selY rho r361)
        hbrow22
  obtain ⟨b22, hb22⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28339) hbrow22
  have hrb22 : RvkFixedBaseLadder.FixedStepRel 22 (toZMod b22)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX21 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY21 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX22 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY22 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb22]
    exact hr22
  have hp22 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX22 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY22 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 22 b22 _ _ hp21 hrb22).2
  have hbrow23 : (1*(rho 28340))*(1 + (-1)*(rho 28340)) = 0 := by
    simpa [Seg30.relationRow23] using r23
  have hacc23 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc23 (rho 28317 : Seg30.F)
      (seg30AccX22 rho : Seg30.F) (seg30AccY22 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc23] using hp22
  have hr23 : RvkFixedBaseLadder.FixedStepRel 23 (rho 28340)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX22 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY22 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX23 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY23 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc23, seg30AccX23, seg30AccY23, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung23_wide (rho 28317 : Seg30.F) (rho 28340 : Seg30.F) (seg30AccX22 rho : Seg30.F) (seg30AccY22 rho : Seg30.F) (rho 28678 : Seg30.F) (rho 28679 : Seg30.F) (rho 28680 : Seg30.F) (rho 28681 : Seg30.F) (rho 28682 : Seg30.F) hacc23
        (by simpa using seg30_prefix_23_v2 rho r362)
        (by simpa using seg30_prefix_23_addX rho r363)
        (by simpa using seg30_prefix_23_addY rho r364)
        (by simpa using seg30_prefix_23_selX rho r365)
        (by simpa using seg30_prefix_23_selY rho r366)
        hbrow23
  obtain ⟨b23, hb23⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28340) hbrow23
  have hrb23 : RvkFixedBaseLadder.FixedStepRel 23 (toZMod b23)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX22 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY22 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX23 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY23 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb23]
    exact hr23
  have hp23 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX23 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY23 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 23 b23 _ _ hp22 hrb23).2
  have hbrow24 : (1*(rho 28341))*(1 + (-1)*(rho 28341)) = 0 := by
    simpa [Seg30.relationRow24] using r24
  have hacc24 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc24 (rho 28317 : Seg30.F)
      (seg30AccX23 rho : Seg30.F) (seg30AccY23 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc24] using hp23
  have hr24 : RvkFixedBaseLadder.FixedStepRel 24 (rho 28341)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX23 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY23 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX24 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY24 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc24, seg30AccX24, seg30AccY24, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung24_wide (rho 28317 : Seg30.F) (rho 28341 : Seg30.F) (seg30AccX23 rho : Seg30.F) (seg30AccY23 rho : Seg30.F) (rho 28683 : Seg30.F) (rho 28684 : Seg30.F) (rho 28685 : Seg30.F) (rho 28686 : Seg30.F) (rho 28687 : Seg30.F) hacc24
        (by simpa using seg30_prefix_24_v2 rho r367)
        (by simpa using seg30_prefix_24_addX rho r368)
        (by simpa using seg30_prefix_24_addY rho r369)
        (by simpa using seg30_prefix_24_selX rho r370)
        (by simpa using seg30_prefix_24_selY rho r371)
        hbrow24
  obtain ⟨b24, hb24⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28341) hbrow24
  have hrb24 : RvkFixedBaseLadder.FixedStepRel 24 (toZMod b24)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX23 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY23 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX24 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY24 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb24]
    exact hr24
  have hp24 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX24 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY24 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 24 b24 _ _ hp23 hrb24).2
  have hbrow25 : (1*(rho 28342))*(1 + (-1)*(rho 28342)) = 0 := by
    simpa [Seg30.relationRow25] using r25
  have hacc25 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc25 (rho 28317 : Seg30.F)
      (seg30AccX24 rho : Seg30.F) (seg30AccY24 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc25] using hp24
  have hr25 : RvkFixedBaseLadder.FixedStepRel 25 (rho 28342)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX24 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY24 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX25 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY25 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc25, seg30AccX25, seg30AccY25, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung25_wide (rho 28317 : Seg30.F) (rho 28342 : Seg30.F) (seg30AccX24 rho : Seg30.F) (seg30AccY24 rho : Seg30.F) (rho 28688 : Seg30.F) (rho 28689 : Seg30.F) (rho 28690 : Seg30.F) (rho 28691 : Seg30.F) (rho 28692 : Seg30.F) hacc25
        (by simpa using seg30_prefix_25_v2 rho r372)
        (by simpa using seg30_prefix_25_addX rho r373)
        (by simpa using seg30_prefix_25_addY rho r374)
        (by simpa using seg30_prefix_25_selX rho r375)
        (by simpa using seg30_prefix_25_selY rho r376)
        hbrow25
  obtain ⟨b25, hb25⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28342) hbrow25
  have hrb25 : RvkFixedBaseLadder.FixedStepRel 25 (toZMod b25)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX24 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY24 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX25 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY25 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb25]
    exact hr25
  have hp25 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX25 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY25 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 25 b25 _ _ hp24 hrb25).2
  have hbrow26 : (1*(rho 28343))*(1 + (-1)*(rho 28343)) = 0 := by
    simpa [Seg30.relationRow26] using r26
  have hacc26 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc26 (rho 28317 : Seg30.F)
      (seg30AccX25 rho : Seg30.F) (seg30AccY25 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc26] using hp25
  have hr26 : RvkFixedBaseLadder.FixedStepRel 26 (rho 28343)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX25 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY25 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX26 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY26 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc26, seg30AccX26, seg30AccY26, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung26_wide (rho 28317 : Seg30.F) (rho 28343 : Seg30.F) (seg30AccX25 rho : Seg30.F) (seg30AccY25 rho : Seg30.F) (rho 28693 : Seg30.F) (rho 28694 : Seg30.F) (rho 28695 : Seg30.F) (rho 28696 : Seg30.F) (rho 28697 : Seg30.F) hacc26
        (by simpa using seg30_prefix_26_v2 rho r377)
        (by simpa using seg30_prefix_26_addX rho r378)
        (by simpa using seg30_prefix_26_addY rho r379)
        (by simpa using seg30_prefix_26_selX rho r380)
        (by simpa using seg30_prefix_26_selY rho r381)
        hbrow26
  obtain ⟨b26, hb26⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28343) hbrow26
  have hrb26 : RvkFixedBaseLadder.FixedStepRel 26 (toZMod b26)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX25 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY25 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX26 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY26 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb26]
    exact hr26
  have hp26 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX26 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY26 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 26 b26 _ _ hp25 hrb26).2
  have hbrow27 : (1*(rho 28344))*(1 + (-1)*(rho 28344)) = 0 := by
    simpa [Seg30.relationRow27] using r27
  have hacc27 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc27 (rho 28317 : Seg30.F)
      (seg30AccX26 rho : Seg30.F) (seg30AccY26 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc27] using hp26
  have hr27 : RvkFixedBaseLadder.FixedStepRel 27 (rho 28344)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX26 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY26 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX27 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY27 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc27, seg30AccX27, seg30AccY27, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung27_wide (rho 28317 : Seg30.F) (rho 28344 : Seg30.F) (seg30AccX26 rho : Seg30.F) (seg30AccY26 rho : Seg30.F) (rho 28698 : Seg30.F) (rho 28699 : Seg30.F) (rho 28700 : Seg30.F) (rho 28701 : Seg30.F) (rho 28702 : Seg30.F) hacc27
        (by simpa using seg30_prefix_27_v2 rho r382)
        (by simpa using seg30_prefix_27_addX rho r383)
        (by simpa using seg30_prefix_27_addY rho r384)
        (by simpa using seg30_prefix_27_selX rho r385)
        (by simpa using seg30_prefix_27_selY rho r386)
        hbrow27
  obtain ⟨b27, hb27⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28344) hbrow27
  have hrb27 : RvkFixedBaseLadder.FixedStepRel 27 (toZMod b27)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX26 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY26 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX27 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY27 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb27]
    exact hr27
  have hp27 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX27 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY27 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 27 b27 _ _ hp26 hrb27).2
  have hbrow28 : (1*(rho 28345))*(1 + (-1)*(rho 28345)) = 0 := by
    simpa [Seg30.relationRow28] using r28
  have hacc28 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc28 (rho 28317 : Seg30.F)
      (seg30AccX27 rho : Seg30.F) (seg30AccY27 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc28] using hp27
  have hr28 : RvkFixedBaseLadder.FixedStepRel 28 (rho 28345)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX27 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY27 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX28 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY28 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc28, seg30AccX28, seg30AccY28, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung28_wide (rho 28317 : Seg30.F) (rho 28345 : Seg30.F) (seg30AccX27 rho : Seg30.F) (seg30AccY27 rho : Seg30.F) (rho 28703 : Seg30.F) (rho 28704 : Seg30.F) (rho 28705 : Seg30.F) (rho 28706 : Seg30.F) (rho 28707 : Seg30.F) hacc28
        (by simpa using seg30_prefix_28_v2 rho r387)
        (by simpa using seg30_prefix_28_addX rho r388)
        (by simpa using seg30_prefix_28_addY rho r389)
        (by simpa using seg30_prefix_28_selX rho r390)
        (by simpa using seg30_prefix_28_selY rho r391)
        hbrow28
  obtain ⟨b28, hb28⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28345) hbrow28
  have hrb28 : RvkFixedBaseLadder.FixedStepRel 28 (toZMod b28)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX27 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY27 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX28 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY28 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb28]
    exact hr28
  have hp28 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX28 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY28 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 28 b28 _ _ hp27 hrb28).2
  have hbrow29 : (1*(rho 28346))*(1 + (-1)*(rho 28346)) = 0 := by
    simpa [Seg30.relationRow29] using r29
  have hacc29 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc29 (rho 28317 : Seg30.F)
      (seg30AccX28 rho : Seg30.F) (seg30AccY28 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc29] using hp28
  have hr29 : RvkFixedBaseLadder.FixedStepRel 29 (rho 28346)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX28 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY28 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX29 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY29 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc29, seg30AccX29, seg30AccY29, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung29_wide (rho 28317 : Seg30.F) (rho 28346 : Seg30.F) (seg30AccX28 rho : Seg30.F) (seg30AccY28 rho : Seg30.F) (rho 28708 : Seg30.F) (rho 28709 : Seg30.F) (rho 28710 : Seg30.F) (rho 28711 : Seg30.F) (rho 28712 : Seg30.F) hacc29
        (by simpa using seg30_prefix_29_v2 rho r392)
        (by simpa using seg30_prefix_29_addX rho r393)
        (by simpa using seg30_prefix_29_addY rho r394)
        (by simpa using seg30_prefix_29_selX rho r395)
        (by simpa using seg30_prefix_29_selY rho r396)
        hbrow29
  obtain ⟨b29, hb29⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28346) hbrow29
  have hrb29 : RvkFixedBaseLadder.FixedStepRel 29 (toZMod b29)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX28 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY28 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX29 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY29 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb29]
    exact hr29
  have hp29 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX29 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY29 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 29 b29 _ _ hp28 hrb29).2
  have hbrow30 : (1*(rho 28347))*(1 + (-1)*(rho 28347)) = 0 := by
    simpa [Seg30.relationRow30] using r30
  have hacc30 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc30 (rho 28317 : Seg30.F)
      (seg30AccX29 rho : Seg30.F) (seg30AccY29 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc30] using hp29
  have hr30 : RvkFixedBaseLadder.FixedStepRel 30 (rho 28347)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX29 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY29 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX30 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY30 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc30, seg30AccX30, seg30AccY30, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung30_wide (rho 28317 : Seg30.F) (rho 28347 : Seg30.F) (seg30AccX29 rho : Seg30.F) (seg30AccY29 rho : Seg30.F) (rho 28713 : Seg30.F) (rho 28714 : Seg30.F) (rho 28715 : Seg30.F) (rho 28716 : Seg30.F) (rho 28717 : Seg30.F) hacc30
        (by simpa using seg30_prefix_30_v2 rho r397)
        (by simpa using seg30_prefix_30_addX rho r398)
        (by simpa using seg30_prefix_30_addY rho r399)
        (by simpa using seg30_prefix_30_selX rho r400)
        (by simpa using seg30_prefix_30_selY rho r401)
        hbrow30
  obtain ⟨b30, hb30⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28347) hbrow30
  have hrb30 : RvkFixedBaseLadder.FixedStepRel 30 (toZMod b30)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX29 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY29 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX30 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY30 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb30]
    exact hr30
  have hp30 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX30 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY30 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 30 b30 _ _ hp29 hrb30).2
  exact hp30

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31PrefixLemmas2
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

theorem seg31_prefix_steps2 (rho : Nat -> Seg31.F)
    (hp20 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX20 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY20 rho : Seg31.F)⟩ : EdwardsBridge.Point))
    (r21 : Seg31.relationRow21 rho)
    (r352 : Seg31.relationRow352 rho)
    (r353 : Seg31.relationRow353 rho)
    (r354 : Seg31.relationRow354 rho)
    (r355 : Seg31.relationRow355 rho)
    (r356 : Seg31.relationRow356 rho)
    (r22 : Seg31.relationRow22 rho)
    (r357 : Seg31.relationRow357 rho)
    (r358 : Seg31.relationRow358 rho)
    (r359 : Seg31.relationRow359 rho)
    (r360 : Seg31.relationRow360 rho)
    (r361 : Seg31.relationRow361 rho)
    (r23 : Seg31.relationRow23 rho)
    (r362 : Seg31.relationRow362 rho)
    (r363 : Seg31.relationRow363 rho)
    (r364 : Seg31.relationRow364 rho)
    (r365 : Seg31.relationRow365 rho)
    (r366 : Seg31.relationRow366 rho)
    (r24 : Seg31.relationRow24 rho)
    (r367 : Seg31.relationRow367 rho)
    (r368 : Seg31.relationRow368 rho)
    (r369 : Seg31.relationRow369 rho)
    (r370 : Seg31.relationRow370 rho)
    (r371 : Seg31.relationRow371 rho)
    (r25 : Seg31.relationRow25 rho)
    (r372 : Seg31.relationRow372 rho)
    (r373 : Seg31.relationRow373 rho)
    (r374 : Seg31.relationRow374 rho)
    (r375 : Seg31.relationRow375 rho)
    (r376 : Seg31.relationRow376 rho)
    (r26 : Seg31.relationRow26 rho)
    (r377 : Seg31.relationRow377 rho)
    (r378 : Seg31.relationRow378 rho)
    (r379 : Seg31.relationRow379 rho)
    (r380 : Seg31.relationRow380 rho)
    (r381 : Seg31.relationRow381 rho)
    (r27 : Seg31.relationRow27 rho)
    (r382 : Seg31.relationRow382 rho)
    (r383 : Seg31.relationRow383 rho)
    (r384 : Seg31.relationRow384 rho)
    (r385 : Seg31.relationRow385 rho)
    (r386 : Seg31.relationRow386 rho)
    (r28 : Seg31.relationRow28 rho)
    (r387 : Seg31.relationRow387 rho)
    (r388 : Seg31.relationRow388 rho)
    (r389 : Seg31.relationRow389 rho)
    (r390 : Seg31.relationRow390 rho)
    (r391 : Seg31.relationRow391 rho)
    (r29 : Seg31.relationRow29 rho)
    (r392 : Seg31.relationRow392 rho)
    (r393 : Seg31.relationRow393 rho)
    (r394 : Seg31.relationRow394 rho)
    (r395 : Seg31.relationRow395 rho)
    (r396 : Seg31.relationRow396 rho)
    (r30 : Seg31.relationRow30 rho)
    (r397 : Seg31.relationRow397 rho)
    (r398 : Seg31.relationRow398 rho)
    (r399 : Seg31.relationRow399 rho)
    (r400 : Seg31.relationRow400 rho)
    (r401 : Seg31.relationRow401 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX30 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY30 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
  have hbrow21 : (1*(rho 29292))*(1 + (-1)*(rho 29292)) = 0 := by
    simpa [Seg31.relationRow21] using r21
  have hacc21 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc21 (rho 29271 : Seg31.F)
      (seg31AccX20 rho : Seg31.F) (seg31AccY20 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc21] using hp20
  have hr21 : RvkFixedBaseLadder.FixedStepRel 21 (rho 29292)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX20 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY20 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX21 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY21 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc21, seg31AccX21, seg31AccY21, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung21_wide (rho 29271 : Seg31.F) (rho 29292 : Seg31.F) (seg31AccX20 rho : Seg31.F) (seg31AccY20 rho : Seg31.F) (rho 29622 : Seg31.F) (rho 29623 : Seg31.F) (rho 29624 : Seg31.F) (rho 29625 : Seg31.F) (rho 29626 : Seg31.F) hacc21
        (by simpa using seg31_prefix_21_v2 rho r352)
        (by simpa using seg31_prefix_21_addX rho r353)
        (by simpa using seg31_prefix_21_addY rho r354)
        (by simpa using seg31_prefix_21_selX rho r355)
        (by simpa using seg31_prefix_21_selY rho r356)
        hbrow21
  obtain ⟨b21, hb21⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29292) hbrow21
  have hrb21 : RvkFixedBaseLadder.FixedStepRel 21 (toZMod b21)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX20 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY20 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX21 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY21 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb21]
    exact hr21
  have hp21 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX21 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY21 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 21 b21 _ _ hp20 hrb21).2
  have hbrow22 : (1*(rho 29293))*(1 + (-1)*(rho 29293)) = 0 := by
    simpa [Seg31.relationRow22] using r22
  have hacc22 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc22 (rho 29271 : Seg31.F)
      (seg31AccX21 rho : Seg31.F) (seg31AccY21 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc22] using hp21
  have hr22 : RvkFixedBaseLadder.FixedStepRel 22 (rho 29293)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX21 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY21 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX22 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY22 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc22, seg31AccX22, seg31AccY22, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung22_wide (rho 29271 : Seg31.F) (rho 29293 : Seg31.F) (seg31AccX21 rho : Seg31.F) (seg31AccY21 rho : Seg31.F) (rho 29627 : Seg31.F) (rho 29628 : Seg31.F) (rho 29629 : Seg31.F) (rho 29630 : Seg31.F) (rho 29631 : Seg31.F) hacc22
        (by simpa using seg31_prefix_22_v2 rho r357)
        (by simpa using seg31_prefix_22_addX rho r358)
        (by simpa using seg31_prefix_22_addY rho r359)
        (by simpa using seg31_prefix_22_selX rho r360)
        (by simpa using seg31_prefix_22_selY rho r361)
        hbrow22
  obtain ⟨b22, hb22⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29293) hbrow22
  have hrb22 : RvkFixedBaseLadder.FixedStepRel 22 (toZMod b22)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX21 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY21 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX22 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY22 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb22]
    exact hr22
  have hp22 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX22 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY22 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 22 b22 _ _ hp21 hrb22).2
  have hbrow23 : (1*(rho 29294))*(1 + (-1)*(rho 29294)) = 0 := by
    simpa [Seg31.relationRow23] using r23
  have hacc23 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc23 (rho 29271 : Seg31.F)
      (seg31AccX22 rho : Seg31.F) (seg31AccY22 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc23] using hp22
  have hr23 : RvkFixedBaseLadder.FixedStepRel 23 (rho 29294)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX22 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY22 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX23 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY23 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc23, seg31AccX23, seg31AccY23, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung23_wide (rho 29271 : Seg31.F) (rho 29294 : Seg31.F) (seg31AccX22 rho : Seg31.F) (seg31AccY22 rho : Seg31.F) (rho 29632 : Seg31.F) (rho 29633 : Seg31.F) (rho 29634 : Seg31.F) (rho 29635 : Seg31.F) (rho 29636 : Seg31.F) hacc23
        (by simpa using seg31_prefix_23_v2 rho r362)
        (by simpa using seg31_prefix_23_addX rho r363)
        (by simpa using seg31_prefix_23_addY rho r364)
        (by simpa using seg31_prefix_23_selX rho r365)
        (by simpa using seg31_prefix_23_selY rho r366)
        hbrow23
  obtain ⟨b23, hb23⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29294) hbrow23
  have hrb23 : RvkFixedBaseLadder.FixedStepRel 23 (toZMod b23)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX22 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY22 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX23 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY23 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb23]
    exact hr23
  have hp23 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX23 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY23 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 23 b23 _ _ hp22 hrb23).2
  have hbrow24 : (1*(rho 29295))*(1 + (-1)*(rho 29295)) = 0 := by
    simpa [Seg31.relationRow24] using r24
  have hacc24 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc24 (rho 29271 : Seg31.F)
      (seg31AccX23 rho : Seg31.F) (seg31AccY23 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc24] using hp23
  have hr24 : RvkFixedBaseLadder.FixedStepRel 24 (rho 29295)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX23 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY23 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX24 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY24 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc24, seg31AccX24, seg31AccY24, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung24_wide (rho 29271 : Seg31.F) (rho 29295 : Seg31.F) (seg31AccX23 rho : Seg31.F) (seg31AccY23 rho : Seg31.F) (rho 29637 : Seg31.F) (rho 29638 : Seg31.F) (rho 29639 : Seg31.F) (rho 29640 : Seg31.F) (rho 29641 : Seg31.F) hacc24
        (by simpa using seg31_prefix_24_v2 rho r367)
        (by simpa using seg31_prefix_24_addX rho r368)
        (by simpa using seg31_prefix_24_addY rho r369)
        (by simpa using seg31_prefix_24_selX rho r370)
        (by simpa using seg31_prefix_24_selY rho r371)
        hbrow24
  obtain ⟨b24, hb24⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29295) hbrow24
  have hrb24 : RvkFixedBaseLadder.FixedStepRel 24 (toZMod b24)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX23 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY23 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX24 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY24 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb24]
    exact hr24
  have hp24 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX24 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY24 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 24 b24 _ _ hp23 hrb24).2
  have hbrow25 : (1*(rho 29296))*(1 + (-1)*(rho 29296)) = 0 := by
    simpa [Seg31.relationRow25] using r25
  have hacc25 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc25 (rho 29271 : Seg31.F)
      (seg31AccX24 rho : Seg31.F) (seg31AccY24 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc25] using hp24
  have hr25 : RvkFixedBaseLadder.FixedStepRel 25 (rho 29296)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX24 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY24 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX25 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY25 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc25, seg31AccX25, seg31AccY25, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung25_wide (rho 29271 : Seg31.F) (rho 29296 : Seg31.F) (seg31AccX24 rho : Seg31.F) (seg31AccY24 rho : Seg31.F) (rho 29642 : Seg31.F) (rho 29643 : Seg31.F) (rho 29644 : Seg31.F) (rho 29645 : Seg31.F) (rho 29646 : Seg31.F) hacc25
        (by simpa using seg31_prefix_25_v2 rho r372)
        (by simpa using seg31_prefix_25_addX rho r373)
        (by simpa using seg31_prefix_25_addY rho r374)
        (by simpa using seg31_prefix_25_selX rho r375)
        (by simpa using seg31_prefix_25_selY rho r376)
        hbrow25
  obtain ⟨b25, hb25⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29296) hbrow25
  have hrb25 : RvkFixedBaseLadder.FixedStepRel 25 (toZMod b25)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX24 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY24 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX25 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY25 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb25]
    exact hr25
  have hp25 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX25 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY25 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 25 b25 _ _ hp24 hrb25).2
  have hbrow26 : (1*(rho 29297))*(1 + (-1)*(rho 29297)) = 0 := by
    simpa [Seg31.relationRow26] using r26
  have hacc26 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc26 (rho 29271 : Seg31.F)
      (seg31AccX25 rho : Seg31.F) (seg31AccY25 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc26] using hp25
  have hr26 : RvkFixedBaseLadder.FixedStepRel 26 (rho 29297)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX25 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY25 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX26 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY26 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc26, seg31AccX26, seg31AccY26, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung26_wide (rho 29271 : Seg31.F) (rho 29297 : Seg31.F) (seg31AccX25 rho : Seg31.F) (seg31AccY25 rho : Seg31.F) (rho 29647 : Seg31.F) (rho 29648 : Seg31.F) (rho 29649 : Seg31.F) (rho 29650 : Seg31.F) (rho 29651 : Seg31.F) hacc26
        (by simpa using seg31_prefix_26_v2 rho r377)
        (by simpa using seg31_prefix_26_addX rho r378)
        (by simpa using seg31_prefix_26_addY rho r379)
        (by simpa using seg31_prefix_26_selX rho r380)
        (by simpa using seg31_prefix_26_selY rho r381)
        hbrow26
  obtain ⟨b26, hb26⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29297) hbrow26
  have hrb26 : RvkFixedBaseLadder.FixedStepRel 26 (toZMod b26)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX25 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY25 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX26 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY26 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb26]
    exact hr26
  have hp26 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX26 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY26 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 26 b26 _ _ hp25 hrb26).2
  have hbrow27 : (1*(rho 29298))*(1 + (-1)*(rho 29298)) = 0 := by
    simpa [Seg31.relationRow27] using r27
  have hacc27 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc27 (rho 29271 : Seg31.F)
      (seg31AccX26 rho : Seg31.F) (seg31AccY26 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc27] using hp26
  have hr27 : RvkFixedBaseLadder.FixedStepRel 27 (rho 29298)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX26 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY26 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX27 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY27 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc27, seg31AccX27, seg31AccY27, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung27_wide (rho 29271 : Seg31.F) (rho 29298 : Seg31.F) (seg31AccX26 rho : Seg31.F) (seg31AccY26 rho : Seg31.F) (rho 29652 : Seg31.F) (rho 29653 : Seg31.F) (rho 29654 : Seg31.F) (rho 29655 : Seg31.F) (rho 29656 : Seg31.F) hacc27
        (by simpa using seg31_prefix_27_v2 rho r382)
        (by simpa using seg31_prefix_27_addX rho r383)
        (by simpa using seg31_prefix_27_addY rho r384)
        (by simpa using seg31_prefix_27_selX rho r385)
        (by simpa using seg31_prefix_27_selY rho r386)
        hbrow27
  obtain ⟨b27, hb27⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29298) hbrow27
  have hrb27 : RvkFixedBaseLadder.FixedStepRel 27 (toZMod b27)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX26 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY26 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX27 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY27 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb27]
    exact hr27
  have hp27 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX27 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY27 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 27 b27 _ _ hp26 hrb27).2
  have hbrow28 : (1*(rho 29299))*(1 + (-1)*(rho 29299)) = 0 := by
    simpa [Seg31.relationRow28] using r28
  have hacc28 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc28 (rho 29271 : Seg31.F)
      (seg31AccX27 rho : Seg31.F) (seg31AccY27 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc28] using hp27
  have hr28 : RvkFixedBaseLadder.FixedStepRel 28 (rho 29299)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX27 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY27 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX28 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY28 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc28, seg31AccX28, seg31AccY28, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung28_wide (rho 29271 : Seg31.F) (rho 29299 : Seg31.F) (seg31AccX27 rho : Seg31.F) (seg31AccY27 rho : Seg31.F) (rho 29657 : Seg31.F) (rho 29658 : Seg31.F) (rho 29659 : Seg31.F) (rho 29660 : Seg31.F) (rho 29661 : Seg31.F) hacc28
        (by simpa using seg31_prefix_28_v2 rho r387)
        (by simpa using seg31_prefix_28_addX rho r388)
        (by simpa using seg31_prefix_28_addY rho r389)
        (by simpa using seg31_prefix_28_selX rho r390)
        (by simpa using seg31_prefix_28_selY rho r391)
        hbrow28
  obtain ⟨b28, hb28⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29299) hbrow28
  have hrb28 : RvkFixedBaseLadder.FixedStepRel 28 (toZMod b28)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX27 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY27 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX28 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY28 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb28]
    exact hr28
  have hp28 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX28 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY28 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 28 b28 _ _ hp27 hrb28).2
  have hbrow29 : (1*(rho 29300))*(1 + (-1)*(rho 29300)) = 0 := by
    simpa [Seg31.relationRow29] using r29
  have hacc29 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc29 (rho 29271 : Seg31.F)
      (seg31AccX28 rho : Seg31.F) (seg31AccY28 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc29] using hp28
  have hr29 : RvkFixedBaseLadder.FixedStepRel 29 (rho 29300)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX28 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY28 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX29 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY29 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc29, seg31AccX29, seg31AccY29, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung29_wide (rho 29271 : Seg31.F) (rho 29300 : Seg31.F) (seg31AccX28 rho : Seg31.F) (seg31AccY28 rho : Seg31.F) (rho 29662 : Seg31.F) (rho 29663 : Seg31.F) (rho 29664 : Seg31.F) (rho 29665 : Seg31.F) (rho 29666 : Seg31.F) hacc29
        (by simpa using seg31_prefix_29_v2 rho r392)
        (by simpa using seg31_prefix_29_addX rho r393)
        (by simpa using seg31_prefix_29_addY rho r394)
        (by simpa using seg31_prefix_29_selX rho r395)
        (by simpa using seg31_prefix_29_selY rho r396)
        hbrow29
  obtain ⟨b29, hb29⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29300) hbrow29
  have hrb29 : RvkFixedBaseLadder.FixedStepRel 29 (toZMod b29)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX28 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY28 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX29 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY29 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb29]
    exact hr29
  have hp29 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX29 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY29 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 29 b29 _ _ hp28 hrb29).2
  have hbrow30 : (1*(rho 29301))*(1 + (-1)*(rho 29301)) = 0 := by
    simpa [Seg31.relationRow30] using r30
  have hacc30 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc30 (rho 29271 : Seg31.F)
      (seg31AccX29 rho : Seg31.F) (seg31AccY29 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc30] using hp29
  have hr30 : RvkFixedBaseLadder.FixedStepRel 30 (rho 29301)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX29 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY29 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX30 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY30 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc30, seg31AccX30, seg31AccY30, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung30_wide (rho 29271 : Seg31.F) (rho 29301 : Seg31.F) (seg31AccX29 rho : Seg31.F) (seg31AccY29 rho : Seg31.F) (rho 29667 : Seg31.F) (rho 29668 : Seg31.F) (rho 29669 : Seg31.F) (rho 29670 : Seg31.F) (rho 29671 : Seg31.F) hacc30
        (by simpa using seg31_prefix_30_v2 rho r397)
        (by simpa using seg31_prefix_30_addX rho r398)
        (by simpa using seg31_prefix_30_addY rho r399)
        (by simpa using seg31_prefix_30_selX rho r400)
        (by simpa using seg31_prefix_30_selY rho r401)
        hbrow30
  obtain ⟨b30, hb30⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29301) hbrow30
  have hrb30 : RvkFixedBaseLadder.FixedStepRel 30 (toZMod b30)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX29 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY29 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX30 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY30 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb30]
    exact hr30
  have hp30 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX30 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY30 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 30 b30 _ _ hp29 hrb30).2
  exact hp30

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


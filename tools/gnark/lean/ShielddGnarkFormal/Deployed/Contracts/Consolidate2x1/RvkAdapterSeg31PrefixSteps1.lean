import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31PrefixLemmas1
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

theorem seg31_prefix_steps1 (rho : Nat -> Seg31.F)
    (hp10 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX10 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY10 rho : Seg31.F)⟩ : EdwardsBridge.Point))
    (r11 : Seg31.relationRow11 rho)
    (r302 : Seg31.relationRow302 rho)
    (r303 : Seg31.relationRow303 rho)
    (r304 : Seg31.relationRow304 rho)
    (r305 : Seg31.relationRow305 rho)
    (r306 : Seg31.relationRow306 rho)
    (r12 : Seg31.relationRow12 rho)
    (r307 : Seg31.relationRow307 rho)
    (r308 : Seg31.relationRow308 rho)
    (r309 : Seg31.relationRow309 rho)
    (r310 : Seg31.relationRow310 rho)
    (r311 : Seg31.relationRow311 rho)
    (r13 : Seg31.relationRow13 rho)
    (r312 : Seg31.relationRow312 rho)
    (r313 : Seg31.relationRow313 rho)
    (r314 : Seg31.relationRow314 rho)
    (r315 : Seg31.relationRow315 rho)
    (r316 : Seg31.relationRow316 rho)
    (r14 : Seg31.relationRow14 rho)
    (r317 : Seg31.relationRow317 rho)
    (r318 : Seg31.relationRow318 rho)
    (r319 : Seg31.relationRow319 rho)
    (r320 : Seg31.relationRow320 rho)
    (r321 : Seg31.relationRow321 rho)
    (r15 : Seg31.relationRow15 rho)
    (r322 : Seg31.relationRow322 rho)
    (r323 : Seg31.relationRow323 rho)
    (r324 : Seg31.relationRow324 rho)
    (r325 : Seg31.relationRow325 rho)
    (r326 : Seg31.relationRow326 rho)
    (r16 : Seg31.relationRow16 rho)
    (r327 : Seg31.relationRow327 rho)
    (r328 : Seg31.relationRow328 rho)
    (r329 : Seg31.relationRow329 rho)
    (r330 : Seg31.relationRow330 rho)
    (r331 : Seg31.relationRow331 rho)
    (r17 : Seg31.relationRow17 rho)
    (r332 : Seg31.relationRow332 rho)
    (r333 : Seg31.relationRow333 rho)
    (r334 : Seg31.relationRow334 rho)
    (r335 : Seg31.relationRow335 rho)
    (r336 : Seg31.relationRow336 rho)
    (r18 : Seg31.relationRow18 rho)
    (r337 : Seg31.relationRow337 rho)
    (r338 : Seg31.relationRow338 rho)
    (r339 : Seg31.relationRow339 rho)
    (r340 : Seg31.relationRow340 rho)
    (r341 : Seg31.relationRow341 rho)
    (r19 : Seg31.relationRow19 rho)
    (r342 : Seg31.relationRow342 rho)
    (r343 : Seg31.relationRow343 rho)
    (r344 : Seg31.relationRow344 rho)
    (r345 : Seg31.relationRow345 rho)
    (r346 : Seg31.relationRow346 rho)
    (r20 : Seg31.relationRow20 rho)
    (r347 : Seg31.relationRow347 rho)
    (r348 : Seg31.relationRow348 rho)
    (r349 : Seg31.relationRow349 rho)
    (r350 : Seg31.relationRow350 rho)
    (r351 : Seg31.relationRow351 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX20 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY20 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
  have hbrow11 : (1*(rho 29282))*(1 + (-1)*(rho 29282)) = 0 := by
    simpa [Seg31.relationRow11] using r11
  have hacc11 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc11 (rho 29271 : Seg31.F)
      (seg31AccX10 rho : Seg31.F) (seg31AccY10 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc11] using hp10
  have hr11 : RvkFixedBaseLadder.FixedStepRel 11 (rho 29282)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX10 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY10 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX11 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY11 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc11, seg31AccX11, seg31AccY11, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung11_wide (rho 29271 : Seg31.F) (rho 29282 : Seg31.F) (seg31AccX10 rho : Seg31.F) (seg31AccY10 rho : Seg31.F) (rho 29572 : Seg31.F) (rho 29573 : Seg31.F) (rho 29574 : Seg31.F) (rho 29575 : Seg31.F) (rho 29576 : Seg31.F) hacc11
        (by simpa using seg31_prefix_11_v2 rho r302)
        (by simpa using seg31_prefix_11_addX rho r303)
        (by simpa using seg31_prefix_11_addY rho r304)
        (by simpa using seg31_prefix_11_selX rho r305)
        (by simpa using seg31_prefix_11_selY rho r306)
        hbrow11
  obtain ⟨b11, hb11⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29282) hbrow11
  have hrb11 : RvkFixedBaseLadder.FixedStepRel 11 (toZMod b11)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX10 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY10 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX11 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY11 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb11]
    exact hr11
  have hp11 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX11 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY11 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 11 b11 _ _ hp10 hrb11).2
  have hbrow12 : (1*(rho 29283))*(1 + (-1)*(rho 29283)) = 0 := by
    simpa [Seg31.relationRow12] using r12
  have hacc12 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc12 (rho 29271 : Seg31.F)
      (seg31AccX11 rho : Seg31.F) (seg31AccY11 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc12] using hp11
  have hr12 : RvkFixedBaseLadder.FixedStepRel 12 (rho 29283)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX11 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY11 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX12 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY12 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc12, seg31AccX12, seg31AccY12, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung12_wide (rho 29271 : Seg31.F) (rho 29283 : Seg31.F) (seg31AccX11 rho : Seg31.F) (seg31AccY11 rho : Seg31.F) (rho 29577 : Seg31.F) (rho 29578 : Seg31.F) (rho 29579 : Seg31.F) (rho 29580 : Seg31.F) (rho 29581 : Seg31.F) hacc12
        (by simpa using seg31_prefix_12_v2 rho r307)
        (by simpa using seg31_prefix_12_addX rho r308)
        (by simpa using seg31_prefix_12_addY rho r309)
        (by simpa using seg31_prefix_12_selX rho r310)
        (by simpa using seg31_prefix_12_selY rho r311)
        hbrow12
  obtain ⟨b12, hb12⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29283) hbrow12
  have hrb12 : RvkFixedBaseLadder.FixedStepRel 12 (toZMod b12)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX11 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY11 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX12 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY12 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb12]
    exact hr12
  have hp12 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX12 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY12 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 12 b12 _ _ hp11 hrb12).2
  have hbrow13 : (1*(rho 29284))*(1 + (-1)*(rho 29284)) = 0 := by
    simpa [Seg31.relationRow13] using r13
  have hacc13 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc13 (rho 29271 : Seg31.F)
      (seg31AccX12 rho : Seg31.F) (seg31AccY12 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc13] using hp12
  have hr13 : RvkFixedBaseLadder.FixedStepRel 13 (rho 29284)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX12 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY12 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX13 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY13 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc13, seg31AccX13, seg31AccY13, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung13_wide (rho 29271 : Seg31.F) (rho 29284 : Seg31.F) (seg31AccX12 rho : Seg31.F) (seg31AccY12 rho : Seg31.F) (rho 29582 : Seg31.F) (rho 29583 : Seg31.F) (rho 29584 : Seg31.F) (rho 29585 : Seg31.F) (rho 29586 : Seg31.F) hacc13
        (by simpa using seg31_prefix_13_v2 rho r312)
        (by simpa using seg31_prefix_13_addX rho r313)
        (by simpa using seg31_prefix_13_addY rho r314)
        (by simpa using seg31_prefix_13_selX rho r315)
        (by simpa using seg31_prefix_13_selY rho r316)
        hbrow13
  obtain ⟨b13, hb13⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29284) hbrow13
  have hrb13 : RvkFixedBaseLadder.FixedStepRel 13 (toZMod b13)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX12 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY12 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX13 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY13 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb13]
    exact hr13
  have hp13 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX13 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY13 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 13 b13 _ _ hp12 hrb13).2
  have hbrow14 : (1*(rho 29285))*(1 + (-1)*(rho 29285)) = 0 := by
    simpa [Seg31.relationRow14] using r14
  have hacc14 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc14 (rho 29271 : Seg31.F)
      (seg31AccX13 rho : Seg31.F) (seg31AccY13 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc14] using hp13
  have hr14 : RvkFixedBaseLadder.FixedStepRel 14 (rho 29285)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX13 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY13 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX14 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY14 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc14, seg31AccX14, seg31AccY14, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung14_wide (rho 29271 : Seg31.F) (rho 29285 : Seg31.F) (seg31AccX13 rho : Seg31.F) (seg31AccY13 rho : Seg31.F) (rho 29587 : Seg31.F) (rho 29588 : Seg31.F) (rho 29589 : Seg31.F) (rho 29590 : Seg31.F) (rho 29591 : Seg31.F) hacc14
        (by simpa using seg31_prefix_14_v2 rho r317)
        (by simpa using seg31_prefix_14_addX rho r318)
        (by simpa using seg31_prefix_14_addY rho r319)
        (by simpa using seg31_prefix_14_selX rho r320)
        (by simpa using seg31_prefix_14_selY rho r321)
        hbrow14
  obtain ⟨b14, hb14⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29285) hbrow14
  have hrb14 : RvkFixedBaseLadder.FixedStepRel 14 (toZMod b14)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX13 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY13 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX14 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY14 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb14]
    exact hr14
  have hp14 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX14 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY14 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 14 b14 _ _ hp13 hrb14).2
  have hbrow15 : (1*(rho 29286))*(1 + (-1)*(rho 29286)) = 0 := by
    simpa [Seg31.relationRow15] using r15
  have hacc15 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc15 (rho 29271 : Seg31.F)
      (seg31AccX14 rho : Seg31.F) (seg31AccY14 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc15] using hp14
  have hr15 : RvkFixedBaseLadder.FixedStepRel 15 (rho 29286)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX14 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY14 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX15 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY15 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc15, seg31AccX15, seg31AccY15, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung15_wide (rho 29271 : Seg31.F) (rho 29286 : Seg31.F) (seg31AccX14 rho : Seg31.F) (seg31AccY14 rho : Seg31.F) (rho 29592 : Seg31.F) (rho 29593 : Seg31.F) (rho 29594 : Seg31.F) (rho 29595 : Seg31.F) (rho 29596 : Seg31.F) hacc15
        (by simpa using seg31_prefix_15_v2 rho r322)
        (by simpa using seg31_prefix_15_addX rho r323)
        (by simpa using seg31_prefix_15_addY rho r324)
        (by simpa using seg31_prefix_15_selX rho r325)
        (by simpa using seg31_prefix_15_selY rho r326)
        hbrow15
  obtain ⟨b15, hb15⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29286) hbrow15
  have hrb15 : RvkFixedBaseLadder.FixedStepRel 15 (toZMod b15)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX14 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY14 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX15 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY15 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb15]
    exact hr15
  have hp15 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX15 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY15 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 15 b15 _ _ hp14 hrb15).2
  have hbrow16 : (1*(rho 29287))*(1 + (-1)*(rho 29287)) = 0 := by
    simpa [Seg31.relationRow16] using r16
  have hacc16 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc16 (rho 29271 : Seg31.F)
      (seg31AccX15 rho : Seg31.F) (seg31AccY15 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc16] using hp15
  have hr16 : RvkFixedBaseLadder.FixedStepRel 16 (rho 29287)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX15 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY15 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX16 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY16 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc16, seg31AccX16, seg31AccY16, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung16_wide (rho 29271 : Seg31.F) (rho 29287 : Seg31.F) (seg31AccX15 rho : Seg31.F) (seg31AccY15 rho : Seg31.F) (rho 29597 : Seg31.F) (rho 29598 : Seg31.F) (rho 29599 : Seg31.F) (rho 29600 : Seg31.F) (rho 29601 : Seg31.F) hacc16
        (by simpa using seg31_prefix_16_v2 rho r327)
        (by simpa using seg31_prefix_16_addX rho r328)
        (by simpa using seg31_prefix_16_addY rho r329)
        (by simpa using seg31_prefix_16_selX rho r330)
        (by simpa using seg31_prefix_16_selY rho r331)
        hbrow16
  obtain ⟨b16, hb16⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29287) hbrow16
  have hrb16 : RvkFixedBaseLadder.FixedStepRel 16 (toZMod b16)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX15 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY15 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX16 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY16 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb16]
    exact hr16
  have hp16 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX16 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY16 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 16 b16 _ _ hp15 hrb16).2
  have hbrow17 : (1*(rho 29288))*(1 + (-1)*(rho 29288)) = 0 := by
    simpa [Seg31.relationRow17] using r17
  have hacc17 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc17 (rho 29271 : Seg31.F)
      (seg31AccX16 rho : Seg31.F) (seg31AccY16 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc17] using hp16
  have hr17 : RvkFixedBaseLadder.FixedStepRel 17 (rho 29288)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX16 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY16 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX17 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY17 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc17, seg31AccX17, seg31AccY17, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung17_wide (rho 29271 : Seg31.F) (rho 29288 : Seg31.F) (seg31AccX16 rho : Seg31.F) (seg31AccY16 rho : Seg31.F) (rho 29602 : Seg31.F) (rho 29603 : Seg31.F) (rho 29604 : Seg31.F) (rho 29605 : Seg31.F) (rho 29606 : Seg31.F) hacc17
        (by simpa using seg31_prefix_17_v2 rho r332)
        (by simpa using seg31_prefix_17_addX rho r333)
        (by simpa using seg31_prefix_17_addY rho r334)
        (by simpa using seg31_prefix_17_selX rho r335)
        (by simpa using seg31_prefix_17_selY rho r336)
        hbrow17
  obtain ⟨b17, hb17⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29288) hbrow17
  have hrb17 : RvkFixedBaseLadder.FixedStepRel 17 (toZMod b17)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX16 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY16 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX17 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY17 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb17]
    exact hr17
  have hp17 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX17 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY17 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 17 b17 _ _ hp16 hrb17).2
  have hbrow18 : (1*(rho 29289))*(1 + (-1)*(rho 29289)) = 0 := by
    simpa [Seg31.relationRow18] using r18
  have hacc18 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc18 (rho 29271 : Seg31.F)
      (seg31AccX17 rho : Seg31.F) (seg31AccY17 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc18] using hp17
  have hr18 : RvkFixedBaseLadder.FixedStepRel 18 (rho 29289)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX17 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY17 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX18 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY18 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc18, seg31AccX18, seg31AccY18, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung18_wide (rho 29271 : Seg31.F) (rho 29289 : Seg31.F) (seg31AccX17 rho : Seg31.F) (seg31AccY17 rho : Seg31.F) (rho 29607 : Seg31.F) (rho 29608 : Seg31.F) (rho 29609 : Seg31.F) (rho 29610 : Seg31.F) (rho 29611 : Seg31.F) hacc18
        (by simpa using seg31_prefix_18_v2 rho r337)
        (by simpa using seg31_prefix_18_addX rho r338)
        (by simpa using seg31_prefix_18_addY rho r339)
        (by simpa using seg31_prefix_18_selX rho r340)
        (by simpa using seg31_prefix_18_selY rho r341)
        hbrow18
  obtain ⟨b18, hb18⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29289) hbrow18
  have hrb18 : RvkFixedBaseLadder.FixedStepRel 18 (toZMod b18)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX17 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY17 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX18 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY18 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb18]
    exact hr18
  have hp18 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX18 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY18 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 18 b18 _ _ hp17 hrb18).2
  have hbrow19 : (1*(rho 29290))*(1 + (-1)*(rho 29290)) = 0 := by
    simpa [Seg31.relationRow19] using r19
  have hacc19 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc19 (rho 29271 : Seg31.F)
      (seg31AccX18 rho : Seg31.F) (seg31AccY18 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc19] using hp18
  have hr19 : RvkFixedBaseLadder.FixedStepRel 19 (rho 29290)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX18 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY18 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX19 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY19 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc19, seg31AccX19, seg31AccY19, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung19_wide (rho 29271 : Seg31.F) (rho 29290 : Seg31.F) (seg31AccX18 rho : Seg31.F) (seg31AccY18 rho : Seg31.F) (rho 29612 : Seg31.F) (rho 29613 : Seg31.F) (rho 29614 : Seg31.F) (rho 29615 : Seg31.F) (rho 29616 : Seg31.F) hacc19
        (by simpa using seg31_prefix_19_v2 rho r342)
        (by simpa using seg31_prefix_19_addX rho r343)
        (by simpa using seg31_prefix_19_addY rho r344)
        (by simpa using seg31_prefix_19_selX rho r345)
        (by simpa using seg31_prefix_19_selY rho r346)
        hbrow19
  obtain ⟨b19, hb19⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29290) hbrow19
  have hrb19 : RvkFixedBaseLadder.FixedStepRel 19 (toZMod b19)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX18 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY18 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX19 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY19 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb19]
    exact hr19
  have hp19 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX19 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY19 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 19 b19 _ _ hp18 hrb19).2
  have hbrow20 : (1*(rho 29291))*(1 + (-1)*(rho 29291)) = 0 := by
    simpa [Seg31.relationRow20] using r20
  have hacc20 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc20 (rho 29271 : Seg31.F)
      (seg31AccX19 rho : Seg31.F) (seg31AccY19 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc20] using hp19
  have hr20 : RvkFixedBaseLadder.FixedStepRel 20 (rho 29291)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX19 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY19 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX20 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY20 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc20, seg31AccX20, seg31AccY20, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung20_wide (rho 29271 : Seg31.F) (rho 29291 : Seg31.F) (seg31AccX19 rho : Seg31.F) (seg31AccY19 rho : Seg31.F) (rho 29617 : Seg31.F) (rho 29618 : Seg31.F) (rho 29619 : Seg31.F) (rho 29620 : Seg31.F) (rho 29621 : Seg31.F) hacc20
        (by simpa using seg31_prefix_20_v2 rho r347)
        (by simpa using seg31_prefix_20_addX rho r348)
        (by simpa using seg31_prefix_20_addY rho r349)
        (by simpa using seg31_prefix_20_selX rho r350)
        (by simpa using seg31_prefix_20_selY rho r351)
        hbrow20
  obtain ⟨b20, hb20⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29291) hbrow20
  have hrb20 : RvkFixedBaseLadder.FixedStepRel 20 (toZMod b20)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX19 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY19 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX20 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY20 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb20]
    exact hr20
  have hp20 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX20 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY20 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 20 b20 _ _ hp19 hrb20).2
  exact hp20

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


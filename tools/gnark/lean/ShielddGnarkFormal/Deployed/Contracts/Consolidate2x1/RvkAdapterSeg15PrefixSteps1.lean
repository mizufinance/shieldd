import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas1
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

theorem seg15_prefix_steps1 (rho : Nat -> Seg15.F)
    (hp10 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX10 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY10 rho : Seg15.F)⟩ : EdwardsBridge.Point))
    (r11 : Seg15.relationRow11 rho)
    (r302 : Seg15.relationRow302 rho)
    (r303 : Seg15.relationRow303 rho)
    (r304 : Seg15.relationRow304 rho)
    (r305 : Seg15.relationRow305 rho)
    (r306 : Seg15.relationRow306 rho)
    (r12 : Seg15.relationRow12 rho)
    (r307 : Seg15.relationRow307 rho)
    (r308 : Seg15.relationRow308 rho)
    (r309 : Seg15.relationRow309 rho)
    (r310 : Seg15.relationRow310 rho)
    (r311 : Seg15.relationRow311 rho)
    (r13 : Seg15.relationRow13 rho)
    (r312 : Seg15.relationRow312 rho)
    (r313 : Seg15.relationRow313 rho)
    (r314 : Seg15.relationRow314 rho)
    (r315 : Seg15.relationRow315 rho)
    (r316 : Seg15.relationRow316 rho)
    (r14 : Seg15.relationRow14 rho)
    (r317 : Seg15.relationRow317 rho)
    (r318 : Seg15.relationRow318 rho)
    (r319 : Seg15.relationRow319 rho)
    (r320 : Seg15.relationRow320 rho)
    (r321 : Seg15.relationRow321 rho)
    (r15 : Seg15.relationRow15 rho)
    (r322 : Seg15.relationRow322 rho)
    (r323 : Seg15.relationRow323 rho)
    (r324 : Seg15.relationRow324 rho)
    (r325 : Seg15.relationRow325 rho)
    (r326 : Seg15.relationRow326 rho)
    (r16 : Seg15.relationRow16 rho)
    (r327 : Seg15.relationRow327 rho)
    (r328 : Seg15.relationRow328 rho)
    (r329 : Seg15.relationRow329 rho)
    (r330 : Seg15.relationRow330 rho)
    (r331 : Seg15.relationRow331 rho)
    (r17 : Seg15.relationRow17 rho)
    (r332 : Seg15.relationRow332 rho)
    (r333 : Seg15.relationRow333 rho)
    (r334 : Seg15.relationRow334 rho)
    (r335 : Seg15.relationRow335 rho)
    (r336 : Seg15.relationRow336 rho)
    (r18 : Seg15.relationRow18 rho)
    (r337 : Seg15.relationRow337 rho)
    (r338 : Seg15.relationRow338 rho)
    (r339 : Seg15.relationRow339 rho)
    (r340 : Seg15.relationRow340 rho)
    (r341 : Seg15.relationRow341 rho)
    (r19 : Seg15.relationRow19 rho)
    (r342 : Seg15.relationRow342 rho)
    (r343 : Seg15.relationRow343 rho)
    (r344 : Seg15.relationRow344 rho)
    (r345 : Seg15.relationRow345 rho)
    (r346 : Seg15.relationRow346 rho)
    (r20 : Seg15.relationRow20 rho)
    (r347 : Seg15.relationRow347 rho)
    (r348 : Seg15.relationRow348 rho)
    (r349 : Seg15.relationRow349 rho)
    (r350 : Seg15.relationRow350 rho)
    (r351 : Seg15.relationRow351 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX20 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY20 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
  have hbrow11 : (1*(rho 16398))*(1 + (-1)*(rho 16398)) = 0 := by
    simpa [Seg15.relationRow11] using r11
  have hacc11 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc11 (rho 16387 : Seg15.F)
      (seg15AccX10 rho : Seg15.F) (seg15AccY10 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc11] using hp10
  have hr11 : RvkFixedBaseLadder.FixedStepRel 11 (rho 16398)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX10 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY10 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX11 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY11 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc11, seg15AccX11, seg15AccY11, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung11_wide (rho 16387 : Seg15.F) (rho 16398 : Seg15.F) (seg15AccX10 rho : Seg15.F) (seg15AccY10 rho : Seg15.F) (rho 16688 : Seg15.F) (rho 16689 : Seg15.F) (rho 16690 : Seg15.F) (rho 16691 : Seg15.F) (rho 16692 : Seg15.F) hacc11
        (by simpa using seg15_prefix_11_v2 rho r302)
        (by simpa using seg15_prefix_11_addX rho r303)
        (by simpa using seg15_prefix_11_addY rho r304)
        (by simpa using seg15_prefix_11_selX rho r305)
        (by simpa using seg15_prefix_11_selY rho r306)
        hbrow11
  obtain ⟨b11, hb11⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16398) hbrow11
  have hrb11 : RvkFixedBaseLadder.FixedStepRel 11 (toZMod b11)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX10 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY10 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX11 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY11 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb11]
    exact hr11
  have hp11 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX11 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY11 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 11 b11 _ _ hp10 hrb11).2
  have hbrow12 : (1*(rho 16399))*(1 + (-1)*(rho 16399)) = 0 := by
    simpa [Seg15.relationRow12] using r12
  have hacc12 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc12 (rho 16387 : Seg15.F)
      (seg15AccX11 rho : Seg15.F) (seg15AccY11 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc12] using hp11
  have hr12 : RvkFixedBaseLadder.FixedStepRel 12 (rho 16399)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX11 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY11 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX12 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY12 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc12, seg15AccX12, seg15AccY12, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung12_wide (rho 16387 : Seg15.F) (rho 16399 : Seg15.F) (seg15AccX11 rho : Seg15.F) (seg15AccY11 rho : Seg15.F) (rho 16693 : Seg15.F) (rho 16694 : Seg15.F) (rho 16695 : Seg15.F) (rho 16696 : Seg15.F) (rho 16697 : Seg15.F) hacc12
        (by simpa using seg15_prefix_12_v2 rho r307)
        (by simpa using seg15_prefix_12_addX rho r308)
        (by simpa using seg15_prefix_12_addY rho r309)
        (by simpa using seg15_prefix_12_selX rho r310)
        (by simpa using seg15_prefix_12_selY rho r311)
        hbrow12
  obtain ⟨b12, hb12⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16399) hbrow12
  have hrb12 : RvkFixedBaseLadder.FixedStepRel 12 (toZMod b12)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX11 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY11 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX12 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY12 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb12]
    exact hr12
  have hp12 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX12 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY12 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 12 b12 _ _ hp11 hrb12).2
  have hbrow13 : (1*(rho 16400))*(1 + (-1)*(rho 16400)) = 0 := by
    simpa [Seg15.relationRow13] using r13
  have hacc13 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc13 (rho 16387 : Seg15.F)
      (seg15AccX12 rho : Seg15.F) (seg15AccY12 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc13] using hp12
  have hr13 : RvkFixedBaseLadder.FixedStepRel 13 (rho 16400)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX12 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY12 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX13 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY13 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc13, seg15AccX13, seg15AccY13, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung13_wide (rho 16387 : Seg15.F) (rho 16400 : Seg15.F) (seg15AccX12 rho : Seg15.F) (seg15AccY12 rho : Seg15.F) (rho 16698 : Seg15.F) (rho 16699 : Seg15.F) (rho 16700 : Seg15.F) (rho 16701 : Seg15.F) (rho 16702 : Seg15.F) hacc13
        (by simpa using seg15_prefix_13_v2 rho r312)
        (by simpa using seg15_prefix_13_addX rho r313)
        (by simpa using seg15_prefix_13_addY rho r314)
        (by simpa using seg15_prefix_13_selX rho r315)
        (by simpa using seg15_prefix_13_selY rho r316)
        hbrow13
  obtain ⟨b13, hb13⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16400) hbrow13
  have hrb13 : RvkFixedBaseLadder.FixedStepRel 13 (toZMod b13)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX12 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY12 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX13 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY13 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb13]
    exact hr13
  have hp13 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX13 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY13 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 13 b13 _ _ hp12 hrb13).2
  have hbrow14 : (1*(rho 16401))*(1 + (-1)*(rho 16401)) = 0 := by
    simpa [Seg15.relationRow14] using r14
  have hacc14 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc14 (rho 16387 : Seg15.F)
      (seg15AccX13 rho : Seg15.F) (seg15AccY13 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc14] using hp13
  have hr14 : RvkFixedBaseLadder.FixedStepRel 14 (rho 16401)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX13 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY13 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX14 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY14 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc14, seg15AccX14, seg15AccY14, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung14_wide (rho 16387 : Seg15.F) (rho 16401 : Seg15.F) (seg15AccX13 rho : Seg15.F) (seg15AccY13 rho : Seg15.F) (rho 16703 : Seg15.F) (rho 16704 : Seg15.F) (rho 16705 : Seg15.F) (rho 16706 : Seg15.F) (rho 16707 : Seg15.F) hacc14
        (by simpa using seg15_prefix_14_v2 rho r317)
        (by simpa using seg15_prefix_14_addX rho r318)
        (by simpa using seg15_prefix_14_addY rho r319)
        (by simpa using seg15_prefix_14_selX rho r320)
        (by simpa using seg15_prefix_14_selY rho r321)
        hbrow14
  obtain ⟨b14, hb14⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16401) hbrow14
  have hrb14 : RvkFixedBaseLadder.FixedStepRel 14 (toZMod b14)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX13 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY13 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX14 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY14 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb14]
    exact hr14
  have hp14 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX14 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY14 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 14 b14 _ _ hp13 hrb14).2
  have hbrow15 : (1*(rho 16402))*(1 + (-1)*(rho 16402)) = 0 := by
    simpa [Seg15.relationRow15] using r15
  have hacc15 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc15 (rho 16387 : Seg15.F)
      (seg15AccX14 rho : Seg15.F) (seg15AccY14 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc15] using hp14
  have hr15 : RvkFixedBaseLadder.FixedStepRel 15 (rho 16402)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX14 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY14 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX15 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY15 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc15, seg15AccX15, seg15AccY15, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung15_wide (rho 16387 : Seg15.F) (rho 16402 : Seg15.F) (seg15AccX14 rho : Seg15.F) (seg15AccY14 rho : Seg15.F) (rho 16708 : Seg15.F) (rho 16709 : Seg15.F) (rho 16710 : Seg15.F) (rho 16711 : Seg15.F) (rho 16712 : Seg15.F) hacc15
        (by simpa using seg15_prefix_15_v2 rho r322)
        (by simpa using seg15_prefix_15_addX rho r323)
        (by simpa using seg15_prefix_15_addY rho r324)
        (by simpa using seg15_prefix_15_selX rho r325)
        (by simpa using seg15_prefix_15_selY rho r326)
        hbrow15
  obtain ⟨b15, hb15⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16402) hbrow15
  have hrb15 : RvkFixedBaseLadder.FixedStepRel 15 (toZMod b15)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX14 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY14 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX15 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY15 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb15]
    exact hr15
  have hp15 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX15 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY15 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 15 b15 _ _ hp14 hrb15).2
  have hbrow16 : (1*(rho 16403))*(1 + (-1)*(rho 16403)) = 0 := by
    simpa [Seg15.relationRow16] using r16
  have hacc16 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc16 (rho 16387 : Seg15.F)
      (seg15AccX15 rho : Seg15.F) (seg15AccY15 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc16] using hp15
  have hr16 : RvkFixedBaseLadder.FixedStepRel 16 (rho 16403)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX15 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY15 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX16 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY16 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc16, seg15AccX16, seg15AccY16, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung16_wide (rho 16387 : Seg15.F) (rho 16403 : Seg15.F) (seg15AccX15 rho : Seg15.F) (seg15AccY15 rho : Seg15.F) (rho 16713 : Seg15.F) (rho 16714 : Seg15.F) (rho 16715 : Seg15.F) (rho 16716 : Seg15.F) (rho 16717 : Seg15.F) hacc16
        (by simpa using seg15_prefix_16_v2 rho r327)
        (by simpa using seg15_prefix_16_addX rho r328)
        (by simpa using seg15_prefix_16_addY rho r329)
        (by simpa using seg15_prefix_16_selX rho r330)
        (by simpa using seg15_prefix_16_selY rho r331)
        hbrow16
  obtain ⟨b16, hb16⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16403) hbrow16
  have hrb16 : RvkFixedBaseLadder.FixedStepRel 16 (toZMod b16)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX15 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY15 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX16 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY16 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb16]
    exact hr16
  have hp16 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX16 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY16 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 16 b16 _ _ hp15 hrb16).2
  have hbrow17 : (1*(rho 16404))*(1 + (-1)*(rho 16404)) = 0 := by
    simpa [Seg15.relationRow17] using r17
  have hacc17 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc17 (rho 16387 : Seg15.F)
      (seg15AccX16 rho : Seg15.F) (seg15AccY16 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc17] using hp16
  have hr17 : RvkFixedBaseLadder.FixedStepRel 17 (rho 16404)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX16 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY16 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX17 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY17 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc17, seg15AccX17, seg15AccY17, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung17_wide (rho 16387 : Seg15.F) (rho 16404 : Seg15.F) (seg15AccX16 rho : Seg15.F) (seg15AccY16 rho : Seg15.F) (rho 16718 : Seg15.F) (rho 16719 : Seg15.F) (rho 16720 : Seg15.F) (rho 16721 : Seg15.F) (rho 16722 : Seg15.F) hacc17
        (by simpa using seg15_prefix_17_v2 rho r332)
        (by simpa using seg15_prefix_17_addX rho r333)
        (by simpa using seg15_prefix_17_addY rho r334)
        (by simpa using seg15_prefix_17_selX rho r335)
        (by simpa using seg15_prefix_17_selY rho r336)
        hbrow17
  obtain ⟨b17, hb17⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16404) hbrow17
  have hrb17 : RvkFixedBaseLadder.FixedStepRel 17 (toZMod b17)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX16 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY16 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX17 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY17 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb17]
    exact hr17
  have hp17 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX17 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY17 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 17 b17 _ _ hp16 hrb17).2
  have hbrow18 : (1*(rho 16405))*(1 + (-1)*(rho 16405)) = 0 := by
    simpa [Seg15.relationRow18] using r18
  have hacc18 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc18 (rho 16387 : Seg15.F)
      (seg15AccX17 rho : Seg15.F) (seg15AccY17 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc18] using hp17
  have hr18 : RvkFixedBaseLadder.FixedStepRel 18 (rho 16405)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX17 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY17 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX18 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY18 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc18, seg15AccX18, seg15AccY18, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung18_wide (rho 16387 : Seg15.F) (rho 16405 : Seg15.F) (seg15AccX17 rho : Seg15.F) (seg15AccY17 rho : Seg15.F) (rho 16723 : Seg15.F) (rho 16724 : Seg15.F) (rho 16725 : Seg15.F) (rho 16726 : Seg15.F) (rho 16727 : Seg15.F) hacc18
        (by simpa using seg15_prefix_18_v2 rho r337)
        (by simpa using seg15_prefix_18_addX rho r338)
        (by simpa using seg15_prefix_18_addY rho r339)
        (by simpa using seg15_prefix_18_selX rho r340)
        (by simpa using seg15_prefix_18_selY rho r341)
        hbrow18
  obtain ⟨b18, hb18⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16405) hbrow18
  have hrb18 : RvkFixedBaseLadder.FixedStepRel 18 (toZMod b18)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX17 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY17 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX18 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY18 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb18]
    exact hr18
  have hp18 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX18 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY18 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 18 b18 _ _ hp17 hrb18).2
  have hbrow19 : (1*(rho 16406))*(1 + (-1)*(rho 16406)) = 0 := by
    simpa [Seg15.relationRow19] using r19
  have hacc19 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc19 (rho 16387 : Seg15.F)
      (seg15AccX18 rho : Seg15.F) (seg15AccY18 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc19] using hp18
  have hr19 : RvkFixedBaseLadder.FixedStepRel 19 (rho 16406)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX18 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY18 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX19 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY19 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc19, seg15AccX19, seg15AccY19, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung19_wide (rho 16387 : Seg15.F) (rho 16406 : Seg15.F) (seg15AccX18 rho : Seg15.F) (seg15AccY18 rho : Seg15.F) (rho 16728 : Seg15.F) (rho 16729 : Seg15.F) (rho 16730 : Seg15.F) (rho 16731 : Seg15.F) (rho 16732 : Seg15.F) hacc19
        (by simpa using seg15_prefix_19_v2 rho r342)
        (by simpa using seg15_prefix_19_addX rho r343)
        (by simpa using seg15_prefix_19_addY rho r344)
        (by simpa using seg15_prefix_19_selX rho r345)
        (by simpa using seg15_prefix_19_selY rho r346)
        hbrow19
  obtain ⟨b19, hb19⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16406) hbrow19
  have hrb19 : RvkFixedBaseLadder.FixedStepRel 19 (toZMod b19)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX18 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY18 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX19 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY19 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb19]
    exact hr19
  have hp19 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX19 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY19 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 19 b19 _ _ hp18 hrb19).2
  have hbrow20 : (1*(rho 16407))*(1 + (-1)*(rho 16407)) = 0 := by
    simpa [Seg15.relationRow20] using r20
  have hacc20 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc20 (rho 16387 : Seg15.F)
      (seg15AccX19 rho : Seg15.F) (seg15AccY19 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc20] using hp19
  have hr20 : RvkFixedBaseLadder.FixedStepRel 20 (rho 16407)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX19 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY19 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX20 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY20 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc20, seg15AccX20, seg15AccY20, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung20_wide (rho 16387 : Seg15.F) (rho 16407 : Seg15.F) (seg15AccX19 rho : Seg15.F) (seg15AccY19 rho : Seg15.F) (rho 16733 : Seg15.F) (rho 16734 : Seg15.F) (rho 16735 : Seg15.F) (rho 16736 : Seg15.F) (rho 16737 : Seg15.F) hacc20
        (by simpa using seg15_prefix_20_v2 rho r347)
        (by simpa using seg15_prefix_20_addX rho r348)
        (by simpa using seg15_prefix_20_addY rho r349)
        (by simpa using seg15_prefix_20_selX rho r350)
        (by simpa using seg15_prefix_20_selY rho r351)
        hbrow20
  obtain ⟨b20, hb20⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16407) hbrow20
  have hrb20 : RvkFixedBaseLadder.FixedStepRel 20 (toZMod b20)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX19 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY19 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX20 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY20 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb20]
    exact hr20
  have hp20 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX20 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY20 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 20 b20 _ _ hp19 hrb20).2
  exact hp20

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


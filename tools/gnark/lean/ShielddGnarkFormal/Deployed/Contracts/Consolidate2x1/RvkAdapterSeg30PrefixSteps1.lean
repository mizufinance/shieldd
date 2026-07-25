import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas1
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

theorem seg30_prefix_steps1 (rho : Nat -> Seg30.F)
    (hp10 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX10 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY10 rho : Seg30.F)⟩ : EdwardsBridge.Point))
    (r11 : Seg30.relationRow11 rho)
    (r302 : Seg30.relationRow302 rho)
    (r303 : Seg30.relationRow303 rho)
    (r304 : Seg30.relationRow304 rho)
    (r305 : Seg30.relationRow305 rho)
    (r306 : Seg30.relationRow306 rho)
    (r12 : Seg30.relationRow12 rho)
    (r307 : Seg30.relationRow307 rho)
    (r308 : Seg30.relationRow308 rho)
    (r309 : Seg30.relationRow309 rho)
    (r310 : Seg30.relationRow310 rho)
    (r311 : Seg30.relationRow311 rho)
    (r13 : Seg30.relationRow13 rho)
    (r312 : Seg30.relationRow312 rho)
    (r313 : Seg30.relationRow313 rho)
    (r314 : Seg30.relationRow314 rho)
    (r315 : Seg30.relationRow315 rho)
    (r316 : Seg30.relationRow316 rho)
    (r14 : Seg30.relationRow14 rho)
    (r317 : Seg30.relationRow317 rho)
    (r318 : Seg30.relationRow318 rho)
    (r319 : Seg30.relationRow319 rho)
    (r320 : Seg30.relationRow320 rho)
    (r321 : Seg30.relationRow321 rho)
    (r15 : Seg30.relationRow15 rho)
    (r322 : Seg30.relationRow322 rho)
    (r323 : Seg30.relationRow323 rho)
    (r324 : Seg30.relationRow324 rho)
    (r325 : Seg30.relationRow325 rho)
    (r326 : Seg30.relationRow326 rho)
    (r16 : Seg30.relationRow16 rho)
    (r327 : Seg30.relationRow327 rho)
    (r328 : Seg30.relationRow328 rho)
    (r329 : Seg30.relationRow329 rho)
    (r330 : Seg30.relationRow330 rho)
    (r331 : Seg30.relationRow331 rho)
    (r17 : Seg30.relationRow17 rho)
    (r332 : Seg30.relationRow332 rho)
    (r333 : Seg30.relationRow333 rho)
    (r334 : Seg30.relationRow334 rho)
    (r335 : Seg30.relationRow335 rho)
    (r336 : Seg30.relationRow336 rho)
    (r18 : Seg30.relationRow18 rho)
    (r337 : Seg30.relationRow337 rho)
    (r338 : Seg30.relationRow338 rho)
    (r339 : Seg30.relationRow339 rho)
    (r340 : Seg30.relationRow340 rho)
    (r341 : Seg30.relationRow341 rho)
    (r19 : Seg30.relationRow19 rho)
    (r342 : Seg30.relationRow342 rho)
    (r343 : Seg30.relationRow343 rho)
    (r344 : Seg30.relationRow344 rho)
    (r345 : Seg30.relationRow345 rho)
    (r346 : Seg30.relationRow346 rho)
    (r20 : Seg30.relationRow20 rho)
    (r347 : Seg30.relationRow347 rho)
    (r348 : Seg30.relationRow348 rho)
    (r349 : Seg30.relationRow349 rho)
    (r350 : Seg30.relationRow350 rho)
    (r351 : Seg30.relationRow351 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX20 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY20 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
  have hbrow11 : (1*(rho 28328))*(1 + (-1)*(rho 28328)) = 0 := by
    simpa [Seg30.relationRow11] using r11
  have hacc11 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc11 (rho 28317 : Seg30.F)
      (seg30AccX10 rho : Seg30.F) (seg30AccY10 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc11] using hp10
  have hr11 : RvkFixedBaseLadder.FixedStepRel 11 (rho 28328)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX10 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY10 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX11 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY11 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc11, seg30AccX11, seg30AccY11, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung11_wide (rho 28317 : Seg30.F) (rho 28328 : Seg30.F) (seg30AccX10 rho : Seg30.F) (seg30AccY10 rho : Seg30.F) (rho 28618 : Seg30.F) (rho 28619 : Seg30.F) (rho 28620 : Seg30.F) (rho 28621 : Seg30.F) (rho 28622 : Seg30.F) hacc11
        (by simpa using seg30_prefix_11_v2 rho r302)
        (by simpa using seg30_prefix_11_addX rho r303)
        (by simpa using seg30_prefix_11_addY rho r304)
        (by simpa using seg30_prefix_11_selX rho r305)
        (by simpa using seg30_prefix_11_selY rho r306)
        hbrow11
  obtain ⟨b11, hb11⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28328) hbrow11
  have hrb11 : RvkFixedBaseLadder.FixedStepRel 11 (toZMod b11)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX10 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY10 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX11 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY11 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb11]
    exact hr11
  have hp11 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX11 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY11 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 11 b11 _ _ hp10 hrb11).2
  have hbrow12 : (1*(rho 28329))*(1 + (-1)*(rho 28329)) = 0 := by
    simpa [Seg30.relationRow12] using r12
  have hacc12 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc12 (rho 28317 : Seg30.F)
      (seg30AccX11 rho : Seg30.F) (seg30AccY11 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc12] using hp11
  have hr12 : RvkFixedBaseLadder.FixedStepRel 12 (rho 28329)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX11 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY11 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX12 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY12 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc12, seg30AccX12, seg30AccY12, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung12_wide (rho 28317 : Seg30.F) (rho 28329 : Seg30.F) (seg30AccX11 rho : Seg30.F) (seg30AccY11 rho : Seg30.F) (rho 28623 : Seg30.F) (rho 28624 : Seg30.F) (rho 28625 : Seg30.F) (rho 28626 : Seg30.F) (rho 28627 : Seg30.F) hacc12
        (by simpa using seg30_prefix_12_v2 rho r307)
        (by simpa using seg30_prefix_12_addX rho r308)
        (by simpa using seg30_prefix_12_addY rho r309)
        (by simpa using seg30_prefix_12_selX rho r310)
        (by simpa using seg30_prefix_12_selY rho r311)
        hbrow12
  obtain ⟨b12, hb12⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28329) hbrow12
  have hrb12 : RvkFixedBaseLadder.FixedStepRel 12 (toZMod b12)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX11 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY11 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX12 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY12 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb12]
    exact hr12
  have hp12 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX12 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY12 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 12 b12 _ _ hp11 hrb12).2
  have hbrow13 : (1*(rho 28330))*(1 + (-1)*(rho 28330)) = 0 := by
    simpa [Seg30.relationRow13] using r13
  have hacc13 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc13 (rho 28317 : Seg30.F)
      (seg30AccX12 rho : Seg30.F) (seg30AccY12 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc13] using hp12
  have hr13 : RvkFixedBaseLadder.FixedStepRel 13 (rho 28330)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX12 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY12 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX13 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY13 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc13, seg30AccX13, seg30AccY13, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung13_wide (rho 28317 : Seg30.F) (rho 28330 : Seg30.F) (seg30AccX12 rho : Seg30.F) (seg30AccY12 rho : Seg30.F) (rho 28628 : Seg30.F) (rho 28629 : Seg30.F) (rho 28630 : Seg30.F) (rho 28631 : Seg30.F) (rho 28632 : Seg30.F) hacc13
        (by simpa using seg30_prefix_13_v2 rho r312)
        (by simpa using seg30_prefix_13_addX rho r313)
        (by simpa using seg30_prefix_13_addY rho r314)
        (by simpa using seg30_prefix_13_selX rho r315)
        (by simpa using seg30_prefix_13_selY rho r316)
        hbrow13
  obtain ⟨b13, hb13⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28330) hbrow13
  have hrb13 : RvkFixedBaseLadder.FixedStepRel 13 (toZMod b13)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX12 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY12 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX13 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY13 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb13]
    exact hr13
  have hp13 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX13 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY13 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 13 b13 _ _ hp12 hrb13).2
  have hbrow14 : (1*(rho 28331))*(1 + (-1)*(rho 28331)) = 0 := by
    simpa [Seg30.relationRow14] using r14
  have hacc14 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc14 (rho 28317 : Seg30.F)
      (seg30AccX13 rho : Seg30.F) (seg30AccY13 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc14] using hp13
  have hr14 : RvkFixedBaseLadder.FixedStepRel 14 (rho 28331)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX13 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY13 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX14 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY14 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc14, seg30AccX14, seg30AccY14, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung14_wide (rho 28317 : Seg30.F) (rho 28331 : Seg30.F) (seg30AccX13 rho : Seg30.F) (seg30AccY13 rho : Seg30.F) (rho 28633 : Seg30.F) (rho 28634 : Seg30.F) (rho 28635 : Seg30.F) (rho 28636 : Seg30.F) (rho 28637 : Seg30.F) hacc14
        (by simpa using seg30_prefix_14_v2 rho r317)
        (by simpa using seg30_prefix_14_addX rho r318)
        (by simpa using seg30_prefix_14_addY rho r319)
        (by simpa using seg30_prefix_14_selX rho r320)
        (by simpa using seg30_prefix_14_selY rho r321)
        hbrow14
  obtain ⟨b14, hb14⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28331) hbrow14
  have hrb14 : RvkFixedBaseLadder.FixedStepRel 14 (toZMod b14)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX13 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY13 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX14 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY14 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb14]
    exact hr14
  have hp14 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX14 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY14 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 14 b14 _ _ hp13 hrb14).2
  have hbrow15 : (1*(rho 28332))*(1 + (-1)*(rho 28332)) = 0 := by
    simpa [Seg30.relationRow15] using r15
  have hacc15 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc15 (rho 28317 : Seg30.F)
      (seg30AccX14 rho : Seg30.F) (seg30AccY14 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc15] using hp14
  have hr15 : RvkFixedBaseLadder.FixedStepRel 15 (rho 28332)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX14 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY14 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX15 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY15 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc15, seg30AccX15, seg30AccY15, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung15_wide (rho 28317 : Seg30.F) (rho 28332 : Seg30.F) (seg30AccX14 rho : Seg30.F) (seg30AccY14 rho : Seg30.F) (rho 28638 : Seg30.F) (rho 28639 : Seg30.F) (rho 28640 : Seg30.F) (rho 28641 : Seg30.F) (rho 28642 : Seg30.F) hacc15
        (by simpa using seg30_prefix_15_v2 rho r322)
        (by simpa using seg30_prefix_15_addX rho r323)
        (by simpa using seg30_prefix_15_addY rho r324)
        (by simpa using seg30_prefix_15_selX rho r325)
        (by simpa using seg30_prefix_15_selY rho r326)
        hbrow15
  obtain ⟨b15, hb15⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28332) hbrow15
  have hrb15 : RvkFixedBaseLadder.FixedStepRel 15 (toZMod b15)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX14 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY14 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX15 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY15 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb15]
    exact hr15
  have hp15 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX15 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY15 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 15 b15 _ _ hp14 hrb15).2
  have hbrow16 : (1*(rho 28333))*(1 + (-1)*(rho 28333)) = 0 := by
    simpa [Seg30.relationRow16] using r16
  have hacc16 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc16 (rho 28317 : Seg30.F)
      (seg30AccX15 rho : Seg30.F) (seg30AccY15 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc16] using hp15
  have hr16 : RvkFixedBaseLadder.FixedStepRel 16 (rho 28333)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX15 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY15 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX16 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY16 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc16, seg30AccX16, seg30AccY16, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung16_wide (rho 28317 : Seg30.F) (rho 28333 : Seg30.F) (seg30AccX15 rho : Seg30.F) (seg30AccY15 rho : Seg30.F) (rho 28643 : Seg30.F) (rho 28644 : Seg30.F) (rho 28645 : Seg30.F) (rho 28646 : Seg30.F) (rho 28647 : Seg30.F) hacc16
        (by simpa using seg30_prefix_16_v2 rho r327)
        (by simpa using seg30_prefix_16_addX rho r328)
        (by simpa using seg30_prefix_16_addY rho r329)
        (by simpa using seg30_prefix_16_selX rho r330)
        (by simpa using seg30_prefix_16_selY rho r331)
        hbrow16
  obtain ⟨b16, hb16⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28333) hbrow16
  have hrb16 : RvkFixedBaseLadder.FixedStepRel 16 (toZMod b16)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX15 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY15 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX16 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY16 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb16]
    exact hr16
  have hp16 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX16 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY16 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 16 b16 _ _ hp15 hrb16).2
  have hbrow17 : (1*(rho 28334))*(1 + (-1)*(rho 28334)) = 0 := by
    simpa [Seg30.relationRow17] using r17
  have hacc17 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc17 (rho 28317 : Seg30.F)
      (seg30AccX16 rho : Seg30.F) (seg30AccY16 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc17] using hp16
  have hr17 : RvkFixedBaseLadder.FixedStepRel 17 (rho 28334)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX16 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY16 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX17 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY17 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc17, seg30AccX17, seg30AccY17, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung17_wide (rho 28317 : Seg30.F) (rho 28334 : Seg30.F) (seg30AccX16 rho : Seg30.F) (seg30AccY16 rho : Seg30.F) (rho 28648 : Seg30.F) (rho 28649 : Seg30.F) (rho 28650 : Seg30.F) (rho 28651 : Seg30.F) (rho 28652 : Seg30.F) hacc17
        (by simpa using seg30_prefix_17_v2 rho r332)
        (by simpa using seg30_prefix_17_addX rho r333)
        (by simpa using seg30_prefix_17_addY rho r334)
        (by simpa using seg30_prefix_17_selX rho r335)
        (by simpa using seg30_prefix_17_selY rho r336)
        hbrow17
  obtain ⟨b17, hb17⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28334) hbrow17
  have hrb17 : RvkFixedBaseLadder.FixedStepRel 17 (toZMod b17)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX16 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY16 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX17 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY17 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb17]
    exact hr17
  have hp17 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX17 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY17 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 17 b17 _ _ hp16 hrb17).2
  have hbrow18 : (1*(rho 28335))*(1 + (-1)*(rho 28335)) = 0 := by
    simpa [Seg30.relationRow18] using r18
  have hacc18 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc18 (rho 28317 : Seg30.F)
      (seg30AccX17 rho : Seg30.F) (seg30AccY17 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc18] using hp17
  have hr18 : RvkFixedBaseLadder.FixedStepRel 18 (rho 28335)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX17 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY17 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX18 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY18 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc18, seg30AccX18, seg30AccY18, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung18_wide (rho 28317 : Seg30.F) (rho 28335 : Seg30.F) (seg30AccX17 rho : Seg30.F) (seg30AccY17 rho : Seg30.F) (rho 28653 : Seg30.F) (rho 28654 : Seg30.F) (rho 28655 : Seg30.F) (rho 28656 : Seg30.F) (rho 28657 : Seg30.F) hacc18
        (by simpa using seg30_prefix_18_v2 rho r337)
        (by simpa using seg30_prefix_18_addX rho r338)
        (by simpa using seg30_prefix_18_addY rho r339)
        (by simpa using seg30_prefix_18_selX rho r340)
        (by simpa using seg30_prefix_18_selY rho r341)
        hbrow18
  obtain ⟨b18, hb18⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28335) hbrow18
  have hrb18 : RvkFixedBaseLadder.FixedStepRel 18 (toZMod b18)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX17 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY17 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX18 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY18 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb18]
    exact hr18
  have hp18 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX18 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY18 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 18 b18 _ _ hp17 hrb18).2
  have hbrow19 : (1*(rho 28336))*(1 + (-1)*(rho 28336)) = 0 := by
    simpa [Seg30.relationRow19] using r19
  have hacc19 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc19 (rho 28317 : Seg30.F)
      (seg30AccX18 rho : Seg30.F) (seg30AccY18 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc19] using hp18
  have hr19 : RvkFixedBaseLadder.FixedStepRel 19 (rho 28336)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX18 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY18 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX19 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY19 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc19, seg30AccX19, seg30AccY19, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung19_wide (rho 28317 : Seg30.F) (rho 28336 : Seg30.F) (seg30AccX18 rho : Seg30.F) (seg30AccY18 rho : Seg30.F) (rho 28658 : Seg30.F) (rho 28659 : Seg30.F) (rho 28660 : Seg30.F) (rho 28661 : Seg30.F) (rho 28662 : Seg30.F) hacc19
        (by simpa using seg30_prefix_19_v2 rho r342)
        (by simpa using seg30_prefix_19_addX rho r343)
        (by simpa using seg30_prefix_19_addY rho r344)
        (by simpa using seg30_prefix_19_selX rho r345)
        (by simpa using seg30_prefix_19_selY rho r346)
        hbrow19
  obtain ⟨b19, hb19⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28336) hbrow19
  have hrb19 : RvkFixedBaseLadder.FixedStepRel 19 (toZMod b19)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX18 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY18 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX19 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY19 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb19]
    exact hr19
  have hp19 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX19 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY19 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 19 b19 _ _ hp18 hrb19).2
  have hbrow20 : (1*(rho 28337))*(1 + (-1)*(rho 28337)) = 0 := by
    simpa [Seg30.relationRow20] using r20
  have hacc20 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc20 (rho 28317 : Seg30.F)
      (seg30AccX19 rho : Seg30.F) (seg30AccY19 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc20] using hp19
  have hr20 : RvkFixedBaseLadder.FixedStepRel 20 (rho 28337)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX19 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY19 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX20 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY20 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc20, seg30AccX20, seg30AccY20, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung20_wide (rho 28317 : Seg30.F) (rho 28337 : Seg30.F) (seg30AccX19 rho : Seg30.F) (seg30AccY19 rho : Seg30.F) (rho 28663 : Seg30.F) (rho 28664 : Seg30.F) (rho 28665 : Seg30.F) (rho 28666 : Seg30.F) (rho 28667 : Seg30.F) hacc20
        (by simpa using seg30_prefix_20_v2 rho r347)
        (by simpa using seg30_prefix_20_addX rho r348)
        (by simpa using seg30_prefix_20_addY rho r349)
        (by simpa using seg30_prefix_20_selX rho r350)
        (by simpa using seg30_prefix_20_selY rho r351)
        hbrow20
  obtain ⟨b20, hb20⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28337) hbrow20
  have hrb20 : RvkFixedBaseLadder.FixedStepRel 20 (toZMod b20)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX19 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY19 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX20 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY20 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb20]
    exact hr20
  have hp20 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX20 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY20 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 20 b20 _ _ hp19 hrb20).2
  exact hp20

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg13PrefixLemmas1
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

theorem seg13_prefix_steps1 (rho : Nat -> Seg13.F)
    (hp10 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX10 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY10 rho : Seg13.F)⟩ : EdwardsBridge.Point))
    (r11 : Seg13.relationRow11 rho)
    (r302 : Seg13.relationRow302 rho)
    (r303 : Seg13.relationRow303 rho)
    (r304 : Seg13.relationRow304 rho)
    (r305 : Seg13.relationRow305 rho)
    (r306 : Seg13.relationRow306 rho)
    (r12 : Seg13.relationRow12 rho)
    (r307 : Seg13.relationRow307 rho)
    (r308 : Seg13.relationRow308 rho)
    (r309 : Seg13.relationRow309 rho)
    (r310 : Seg13.relationRow310 rho)
    (r311 : Seg13.relationRow311 rho)
    (r13 : Seg13.relationRow13 rho)
    (r312 : Seg13.relationRow312 rho)
    (r313 : Seg13.relationRow313 rho)
    (r314 : Seg13.relationRow314 rho)
    (r315 : Seg13.relationRow315 rho)
    (r316 : Seg13.relationRow316 rho)
    (r14 : Seg13.relationRow14 rho)
    (r317 : Seg13.relationRow317 rho)
    (r318 : Seg13.relationRow318 rho)
    (r319 : Seg13.relationRow319 rho)
    (r320 : Seg13.relationRow320 rho)
    (r321 : Seg13.relationRow321 rho)
    (r15 : Seg13.relationRow15 rho)
    (r322 : Seg13.relationRow322 rho)
    (r323 : Seg13.relationRow323 rho)
    (r324 : Seg13.relationRow324 rho)
    (r325 : Seg13.relationRow325 rho)
    (r326 : Seg13.relationRow326 rho)
    (r16 : Seg13.relationRow16 rho)
    (r327 : Seg13.relationRow327 rho)
    (r328 : Seg13.relationRow328 rho)
    (r329 : Seg13.relationRow329 rho)
    (r330 : Seg13.relationRow330 rho)
    (r331 : Seg13.relationRow331 rho)
    (r17 : Seg13.relationRow17 rho)
    (r332 : Seg13.relationRow332 rho)
    (r333 : Seg13.relationRow333 rho)
    (r334 : Seg13.relationRow334 rho)
    (r335 : Seg13.relationRow335 rho)
    (r336 : Seg13.relationRow336 rho)
    (r18 : Seg13.relationRow18 rho)
    (r337 : Seg13.relationRow337 rho)
    (r338 : Seg13.relationRow338 rho)
    (r339 : Seg13.relationRow339 rho)
    (r340 : Seg13.relationRow340 rho)
    (r341 : Seg13.relationRow341 rho)
    (r19 : Seg13.relationRow19 rho)
    (r342 : Seg13.relationRow342 rho)
    (r343 : Seg13.relationRow343 rho)
    (r344 : Seg13.relationRow344 rho)
    (r345 : Seg13.relationRow345 rho)
    (r346 : Seg13.relationRow346 rho)
    (r20 : Seg13.relationRow20 rho)
    (r347 : Seg13.relationRow347 rho)
    (r348 : Seg13.relationRow348 rho)
    (r349 : Seg13.relationRow349 rho)
    (r350 : Seg13.relationRow350 rho)
    (r351 : Seg13.relationRow351 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX20 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY20 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
  have hbrow11 : (1*(rho 10582))*(1 + (-1)*(rho 10582)) = 0 := by
    simpa [Seg13.relationRow11] using r11
  have hacc11 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc11 (rho 10571 : Seg13.F)
      (seg13AccX10 rho : Seg13.F) (seg13AccY10 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc11] using hp10
  have hr11 : RvkFixedBaseLadder.FixedStepRel 11 (rho 10582)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX10 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY10 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX11 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY11 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc11, seg13AccX11, seg13AccY11, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung11_wide (rho 10571 : Seg13.F) (rho 10582 : Seg13.F) (seg13AccX10 rho : Seg13.F) (seg13AccY10 rho : Seg13.F) (rho 10872 : Seg13.F) (rho 10873 : Seg13.F) (rho 10874 : Seg13.F) (rho 10875 : Seg13.F) (rho 10876 : Seg13.F) hacc11
        (by simpa using seg13_prefix_11_v2 rho r302)
        (by simpa using seg13_prefix_11_addX rho r303)
        (by simpa using seg13_prefix_11_addY rho r304)
        (by simpa using seg13_prefix_11_selX rho r305)
        (by simpa using seg13_prefix_11_selY rho r306)
        hbrow11
  obtain ⟨b11, hb11⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10582) hbrow11
  have hrb11 : RvkFixedBaseLadder.FixedStepRel 11 (toZMod b11)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX10 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY10 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX11 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY11 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb11]
    exact hr11
  have hp11 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX11 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY11 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 11 b11 _ _ hp10 hrb11).2
  have hbrow12 : (1*(rho 10583))*(1 + (-1)*(rho 10583)) = 0 := by
    simpa [Seg13.relationRow12] using r12
  have hacc12 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc12 (rho 10571 : Seg13.F)
      (seg13AccX11 rho : Seg13.F) (seg13AccY11 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc12] using hp11
  have hr12 : RvkFixedBaseLadder.FixedStepRel 12 (rho 10583)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX11 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY11 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX12 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY12 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc12, seg13AccX12, seg13AccY12, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung12_wide (rho 10571 : Seg13.F) (rho 10583 : Seg13.F) (seg13AccX11 rho : Seg13.F) (seg13AccY11 rho : Seg13.F) (rho 10877 : Seg13.F) (rho 10878 : Seg13.F) (rho 10879 : Seg13.F) (rho 10880 : Seg13.F) (rho 10881 : Seg13.F) hacc12
        (by simpa using seg13_prefix_12_v2 rho r307)
        (by simpa using seg13_prefix_12_addX rho r308)
        (by simpa using seg13_prefix_12_addY rho r309)
        (by simpa using seg13_prefix_12_selX rho r310)
        (by simpa using seg13_prefix_12_selY rho r311)
        hbrow12
  obtain ⟨b12, hb12⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10583) hbrow12
  have hrb12 : RvkFixedBaseLadder.FixedStepRel 12 (toZMod b12)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX11 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY11 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX12 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY12 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb12]
    exact hr12
  have hp12 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX12 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY12 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 12 b12 _ _ hp11 hrb12).2
  have hbrow13 : (1*(rho 10584))*(1 + (-1)*(rho 10584)) = 0 := by
    simpa [Seg13.relationRow13] using r13
  have hacc13 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc13 (rho 10571 : Seg13.F)
      (seg13AccX12 rho : Seg13.F) (seg13AccY12 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc13] using hp12
  have hr13 : RvkFixedBaseLadder.FixedStepRel 13 (rho 10584)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX12 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY12 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX13 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY13 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc13, seg13AccX13, seg13AccY13, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung13_wide (rho 10571 : Seg13.F) (rho 10584 : Seg13.F) (seg13AccX12 rho : Seg13.F) (seg13AccY12 rho : Seg13.F) (rho 10882 : Seg13.F) (rho 10883 : Seg13.F) (rho 10884 : Seg13.F) (rho 10885 : Seg13.F) (rho 10886 : Seg13.F) hacc13
        (by simpa using seg13_prefix_13_v2 rho r312)
        (by simpa using seg13_prefix_13_addX rho r313)
        (by simpa using seg13_prefix_13_addY rho r314)
        (by simpa using seg13_prefix_13_selX rho r315)
        (by simpa using seg13_prefix_13_selY rho r316)
        hbrow13
  obtain ⟨b13, hb13⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10584) hbrow13
  have hrb13 : RvkFixedBaseLadder.FixedStepRel 13 (toZMod b13)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX12 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY12 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX13 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY13 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb13]
    exact hr13
  have hp13 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX13 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY13 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 13 b13 _ _ hp12 hrb13).2
  have hbrow14 : (1*(rho 10585))*(1 + (-1)*(rho 10585)) = 0 := by
    simpa [Seg13.relationRow14] using r14
  have hacc14 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc14 (rho 10571 : Seg13.F)
      (seg13AccX13 rho : Seg13.F) (seg13AccY13 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc14] using hp13
  have hr14 : RvkFixedBaseLadder.FixedStepRel 14 (rho 10585)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX13 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY13 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX14 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY14 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc14, seg13AccX14, seg13AccY14, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung14_wide (rho 10571 : Seg13.F) (rho 10585 : Seg13.F) (seg13AccX13 rho : Seg13.F) (seg13AccY13 rho : Seg13.F) (rho 10887 : Seg13.F) (rho 10888 : Seg13.F) (rho 10889 : Seg13.F) (rho 10890 : Seg13.F) (rho 10891 : Seg13.F) hacc14
        (by simpa using seg13_prefix_14_v2 rho r317)
        (by simpa using seg13_prefix_14_addX rho r318)
        (by simpa using seg13_prefix_14_addY rho r319)
        (by simpa using seg13_prefix_14_selX rho r320)
        (by simpa using seg13_prefix_14_selY rho r321)
        hbrow14
  obtain ⟨b14, hb14⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10585) hbrow14
  have hrb14 : RvkFixedBaseLadder.FixedStepRel 14 (toZMod b14)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX13 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY13 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX14 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY14 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb14]
    exact hr14
  have hp14 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX14 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY14 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 14 b14 _ _ hp13 hrb14).2
  have hbrow15 : (1*(rho 10586))*(1 + (-1)*(rho 10586)) = 0 := by
    simpa [Seg13.relationRow15] using r15
  have hacc15 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc15 (rho 10571 : Seg13.F)
      (seg13AccX14 rho : Seg13.F) (seg13AccY14 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc15] using hp14
  have hr15 : RvkFixedBaseLadder.FixedStepRel 15 (rho 10586)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX14 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY14 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX15 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY15 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc15, seg13AccX15, seg13AccY15, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung15_wide (rho 10571 : Seg13.F) (rho 10586 : Seg13.F) (seg13AccX14 rho : Seg13.F) (seg13AccY14 rho : Seg13.F) (rho 10892 : Seg13.F) (rho 10893 : Seg13.F) (rho 10894 : Seg13.F) (rho 10895 : Seg13.F) (rho 10896 : Seg13.F) hacc15
        (by simpa using seg13_prefix_15_v2 rho r322)
        (by simpa using seg13_prefix_15_addX rho r323)
        (by simpa using seg13_prefix_15_addY rho r324)
        (by simpa using seg13_prefix_15_selX rho r325)
        (by simpa using seg13_prefix_15_selY rho r326)
        hbrow15
  obtain ⟨b15, hb15⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10586) hbrow15
  have hrb15 : RvkFixedBaseLadder.FixedStepRel 15 (toZMod b15)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX14 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY14 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX15 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY15 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb15]
    exact hr15
  have hp15 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX15 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY15 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 15 b15 _ _ hp14 hrb15).2
  have hbrow16 : (1*(rho 10587))*(1 + (-1)*(rho 10587)) = 0 := by
    simpa [Seg13.relationRow16] using r16
  have hacc16 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc16 (rho 10571 : Seg13.F)
      (seg13AccX15 rho : Seg13.F) (seg13AccY15 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc16] using hp15
  have hr16 : RvkFixedBaseLadder.FixedStepRel 16 (rho 10587)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX15 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY15 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX16 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY16 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc16, seg13AccX16, seg13AccY16, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung16_wide (rho 10571 : Seg13.F) (rho 10587 : Seg13.F) (seg13AccX15 rho : Seg13.F) (seg13AccY15 rho : Seg13.F) (rho 10897 : Seg13.F) (rho 10898 : Seg13.F) (rho 10899 : Seg13.F) (rho 10900 : Seg13.F) (rho 10901 : Seg13.F) hacc16
        (by simpa using seg13_prefix_16_v2 rho r327)
        (by simpa using seg13_prefix_16_addX rho r328)
        (by simpa using seg13_prefix_16_addY rho r329)
        (by simpa using seg13_prefix_16_selX rho r330)
        (by simpa using seg13_prefix_16_selY rho r331)
        hbrow16
  obtain ⟨b16, hb16⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10587) hbrow16
  have hrb16 : RvkFixedBaseLadder.FixedStepRel 16 (toZMod b16)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX15 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY15 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX16 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY16 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb16]
    exact hr16
  have hp16 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX16 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY16 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 16 b16 _ _ hp15 hrb16).2
  have hbrow17 : (1*(rho 10588))*(1 + (-1)*(rho 10588)) = 0 := by
    simpa [Seg13.relationRow17] using r17
  have hacc17 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc17 (rho 10571 : Seg13.F)
      (seg13AccX16 rho : Seg13.F) (seg13AccY16 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc17] using hp16
  have hr17 : RvkFixedBaseLadder.FixedStepRel 17 (rho 10588)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX16 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY16 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX17 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY17 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc17, seg13AccX17, seg13AccY17, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung17_wide (rho 10571 : Seg13.F) (rho 10588 : Seg13.F) (seg13AccX16 rho : Seg13.F) (seg13AccY16 rho : Seg13.F) (rho 10902 : Seg13.F) (rho 10903 : Seg13.F) (rho 10904 : Seg13.F) (rho 10905 : Seg13.F) (rho 10906 : Seg13.F) hacc17
        (by simpa using seg13_prefix_17_v2 rho r332)
        (by simpa using seg13_prefix_17_addX rho r333)
        (by simpa using seg13_prefix_17_addY rho r334)
        (by simpa using seg13_prefix_17_selX rho r335)
        (by simpa using seg13_prefix_17_selY rho r336)
        hbrow17
  obtain ⟨b17, hb17⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10588) hbrow17
  have hrb17 : RvkFixedBaseLadder.FixedStepRel 17 (toZMod b17)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX16 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY16 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX17 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY17 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb17]
    exact hr17
  have hp17 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX17 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY17 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 17 b17 _ _ hp16 hrb17).2
  have hbrow18 : (1*(rho 10589))*(1 + (-1)*(rho 10589)) = 0 := by
    simpa [Seg13.relationRow18] using r18
  have hacc18 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc18 (rho 10571 : Seg13.F)
      (seg13AccX17 rho : Seg13.F) (seg13AccY17 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc18] using hp17
  have hr18 : RvkFixedBaseLadder.FixedStepRel 18 (rho 10589)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX17 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY17 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX18 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY18 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc18, seg13AccX18, seg13AccY18, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung18_wide (rho 10571 : Seg13.F) (rho 10589 : Seg13.F) (seg13AccX17 rho : Seg13.F) (seg13AccY17 rho : Seg13.F) (rho 10907 : Seg13.F) (rho 10908 : Seg13.F) (rho 10909 : Seg13.F) (rho 10910 : Seg13.F) (rho 10911 : Seg13.F) hacc18
        (by simpa using seg13_prefix_18_v2 rho r337)
        (by simpa using seg13_prefix_18_addX rho r338)
        (by simpa using seg13_prefix_18_addY rho r339)
        (by simpa using seg13_prefix_18_selX rho r340)
        (by simpa using seg13_prefix_18_selY rho r341)
        hbrow18
  obtain ⟨b18, hb18⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10589) hbrow18
  have hrb18 : RvkFixedBaseLadder.FixedStepRel 18 (toZMod b18)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX17 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY17 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX18 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY18 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb18]
    exact hr18
  have hp18 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX18 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY18 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 18 b18 _ _ hp17 hrb18).2
  have hbrow19 : (1*(rho 10590))*(1 + (-1)*(rho 10590)) = 0 := by
    simpa [Seg13.relationRow19] using r19
  have hacc19 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc19 (rho 10571 : Seg13.F)
      (seg13AccX18 rho : Seg13.F) (seg13AccY18 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc19] using hp18
  have hr19 : RvkFixedBaseLadder.FixedStepRel 19 (rho 10590)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX18 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY18 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX19 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY19 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc19, seg13AccX19, seg13AccY19, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung19_wide (rho 10571 : Seg13.F) (rho 10590 : Seg13.F) (seg13AccX18 rho : Seg13.F) (seg13AccY18 rho : Seg13.F) (rho 10912 : Seg13.F) (rho 10913 : Seg13.F) (rho 10914 : Seg13.F) (rho 10915 : Seg13.F) (rho 10916 : Seg13.F) hacc19
        (by simpa using seg13_prefix_19_v2 rho r342)
        (by simpa using seg13_prefix_19_addX rho r343)
        (by simpa using seg13_prefix_19_addY rho r344)
        (by simpa using seg13_prefix_19_selX rho r345)
        (by simpa using seg13_prefix_19_selY rho r346)
        hbrow19
  obtain ⟨b19, hb19⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10590) hbrow19
  have hrb19 : RvkFixedBaseLadder.FixedStepRel 19 (toZMod b19)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX18 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY18 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX19 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY19 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb19]
    exact hr19
  have hp19 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX19 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY19 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 19 b19 _ _ hp18 hrb19).2
  have hbrow20 : (1*(rho 10591))*(1 + (-1)*(rho 10591)) = 0 := by
    simpa [Seg13.relationRow20] using r20
  have hacc20 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc20 (rho 10571 : Seg13.F)
      (seg13AccX19 rho : Seg13.F) (seg13AccY19 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc20] using hp19
  have hr20 : RvkFixedBaseLadder.FixedStepRel 20 (rho 10591)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX19 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY19 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX20 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY20 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc20, seg13AccX20, seg13AccY20, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung20_wide (rho 10571 : Seg13.F) (rho 10591 : Seg13.F) (seg13AccX19 rho : Seg13.F) (seg13AccY19 rho : Seg13.F) (rho 10917 : Seg13.F) (rho 10918 : Seg13.F) (rho 10919 : Seg13.F) (rho 10920 : Seg13.F) (rho 10921 : Seg13.F) hacc20
        (by simpa using seg13_prefix_20_v2 rho r347)
        (by simpa using seg13_prefix_20_addX rho r348)
        (by simpa using seg13_prefix_20_addY rho r349)
        (by simpa using seg13_prefix_20_selX rho r350)
        (by simpa using seg13_prefix_20_selY rho r351)
        hbrow20
  obtain ⟨b20, hb20⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10591) hbrow20
  have hrb20 : RvkFixedBaseLadder.FixedStepRel 20 (toZMod b20)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX19 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY19 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX20 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY20 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb20]
    exact hr20
  have hp20 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX20 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY20 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 20 b20 _ _ hp19 hrb20).2
  exact hp20

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg13PrefixLemmas5
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

theorem seg13_prefix_steps5 (rho : Nat -> Seg13.F)
    (hp50 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX50 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY50 rho : Seg13.F)⟩ : EdwardsBridge.Point))
    (r51 : Seg13.relationRow51 rho)
    (r502 : Seg13.relationRow502 rho)
    (r503 : Seg13.relationRow503 rho)
    (r504 : Seg13.relationRow504 rho)
    (r505 : Seg13.relationRow505 rho)
    (r506 : Seg13.relationRow506 rho)
    (r52 : Seg13.relationRow52 rho)
    (r507 : Seg13.relationRow507 rho)
    (r508 : Seg13.relationRow508 rho)
    (r509 : Seg13.relationRow509 rho)
    (r510 : Seg13.relationRow510 rho)
    (r511 : Seg13.relationRow511 rho)
    (r53 : Seg13.relationRow53 rho)
    (r512 : Seg13.relationRow512 rho)
    (r513 : Seg13.relationRow513 rho)
    (r514 : Seg13.relationRow514 rho)
    (r515 : Seg13.relationRow515 rho)
    (r516 : Seg13.relationRow516 rho)
    (r54 : Seg13.relationRow54 rho)
    (r517 : Seg13.relationRow517 rho)
    (r518 : Seg13.relationRow518 rho)
    (r519 : Seg13.relationRow519 rho)
    (r520 : Seg13.relationRow520 rho)
    (r521 : Seg13.relationRow521 rho)
    (r55 : Seg13.relationRow55 rho)
    (r522 : Seg13.relationRow522 rho)
    (r523 : Seg13.relationRow523 rho)
    (r524 : Seg13.relationRow524 rho)
    (r525 : Seg13.relationRow525 rho)
    (r526 : Seg13.relationRow526 rho)
    (r56 : Seg13.relationRow56 rho)
    (r527 : Seg13.relationRow527 rho)
    (r528 : Seg13.relationRow528 rho)
    (r529 : Seg13.relationRow529 rho)
    (r530 : Seg13.relationRow530 rho)
    (r531 : Seg13.relationRow531 rho)
    (r57 : Seg13.relationRow57 rho)
    (r532 : Seg13.relationRow532 rho)
    (r533 : Seg13.relationRow533 rho)
    (r534 : Seg13.relationRow534 rho)
    (r535 : Seg13.relationRow535 rho)
    (r536 : Seg13.relationRow536 rho)
    (r58 : Seg13.relationRow58 rho)
    (r537 : Seg13.relationRow537 rho)
    (r538 : Seg13.relationRow538 rho)
    (r539 : Seg13.relationRow539 rho)
    (r540 : Seg13.relationRow540 rho)
    (r541 : Seg13.relationRow541 rho)
    (r59 : Seg13.relationRow59 rho)
    (r542 : Seg13.relationRow542 rho)
    (r543 : Seg13.relationRow543 rho)
    (r544 : Seg13.relationRow544 rho)
    (r545 : Seg13.relationRow545 rho)
    (r546 : Seg13.relationRow546 rho)
    (r60 : Seg13.relationRow60 rho)
    (r547 : Seg13.relationRow547 rho)
    (r548 : Seg13.relationRow548 rho)
    (r549 : Seg13.relationRow549 rho)
    (r550 : Seg13.relationRow550 rho)
    (r551 : Seg13.relationRow551 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX60 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY60 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
  have hbrow51 : (1*(rho 10622))*(1 + (-1)*(rho 10622)) = 0 := by
    simpa [Seg13.relationRow51] using r51
  have hacc51 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc51 (rho 10571 : Seg13.F)
      (seg13AccX50 rho : Seg13.F) (seg13AccY50 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc51] using hp50
  have hr51 : RvkFixedBaseLadder.FixedStepRel 51 (rho 10622)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX50 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY50 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX51 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY51 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc51, seg13AccX51, seg13AccY51, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung51_wide (rho 10571 : Seg13.F) (rho 10622 : Seg13.F) (seg13AccX50 rho : Seg13.F) (seg13AccY50 rho : Seg13.F) (rho 11072 : Seg13.F) (rho 11073 : Seg13.F) (rho 11074 : Seg13.F) (rho 11075 : Seg13.F) (rho 11076 : Seg13.F) hacc51
        (by simpa using seg13_prefix_51_v2 rho r502)
        (by simpa using seg13_prefix_51_addX rho r503)
        (by simpa using seg13_prefix_51_addY rho r504)
        (by simpa using seg13_prefix_51_selX rho r505)
        (by simpa using seg13_prefix_51_selY rho r506)
        hbrow51
  obtain ⟨b51, hb51⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10622) hbrow51
  have hrb51 : RvkFixedBaseLadder.FixedStepRel 51 (toZMod b51)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX50 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY50 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX51 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY51 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb51]
    exact hr51
  have hp51 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX51 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY51 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 51 b51 _ _ hp50 hrb51).2
  have hbrow52 : (1*(rho 10623))*(1 + (-1)*(rho 10623)) = 0 := by
    simpa [Seg13.relationRow52] using r52
  have hacc52 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc52 (rho 10571 : Seg13.F)
      (seg13AccX51 rho : Seg13.F) (seg13AccY51 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc52] using hp51
  have hr52 : RvkFixedBaseLadder.FixedStepRel 52 (rho 10623)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX51 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY51 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX52 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY52 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc52, seg13AccX52, seg13AccY52, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung52_wide (rho 10571 : Seg13.F) (rho 10623 : Seg13.F) (seg13AccX51 rho : Seg13.F) (seg13AccY51 rho : Seg13.F) (rho 11077 : Seg13.F) (rho 11078 : Seg13.F) (rho 11079 : Seg13.F) (rho 11080 : Seg13.F) (rho 11081 : Seg13.F) hacc52
        (by simpa using seg13_prefix_52_v2 rho r507)
        (by simpa using seg13_prefix_52_addX rho r508)
        (by simpa using seg13_prefix_52_addY rho r509)
        (by simpa using seg13_prefix_52_selX rho r510)
        (by simpa using seg13_prefix_52_selY rho r511)
        hbrow52
  obtain ⟨b52, hb52⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10623) hbrow52
  have hrb52 : RvkFixedBaseLadder.FixedStepRel 52 (toZMod b52)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX51 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY51 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX52 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY52 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb52]
    exact hr52
  have hp52 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX52 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY52 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 52 b52 _ _ hp51 hrb52).2
  have hbrow53 : (1*(rho 10624))*(1 + (-1)*(rho 10624)) = 0 := by
    simpa [Seg13.relationRow53] using r53
  have hacc53 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc53 (rho 10571 : Seg13.F)
      (seg13AccX52 rho : Seg13.F) (seg13AccY52 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc53] using hp52
  have hr53 : RvkFixedBaseLadder.FixedStepRel 53 (rho 10624)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX52 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY52 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX53 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY53 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc53, seg13AccX53, seg13AccY53, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung53_wide (rho 10571 : Seg13.F) (rho 10624 : Seg13.F) (seg13AccX52 rho : Seg13.F) (seg13AccY52 rho : Seg13.F) (rho 11082 : Seg13.F) (rho 11083 : Seg13.F) (rho 11084 : Seg13.F) (rho 11085 : Seg13.F) (rho 11086 : Seg13.F) hacc53
        (by simpa using seg13_prefix_53_v2 rho r512)
        (by simpa using seg13_prefix_53_addX rho r513)
        (by simpa using seg13_prefix_53_addY rho r514)
        (by simpa using seg13_prefix_53_selX rho r515)
        (by simpa using seg13_prefix_53_selY rho r516)
        hbrow53
  obtain ⟨b53, hb53⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10624) hbrow53
  have hrb53 : RvkFixedBaseLadder.FixedStepRel 53 (toZMod b53)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX52 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY52 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX53 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY53 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb53]
    exact hr53
  have hp53 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX53 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY53 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 53 b53 _ _ hp52 hrb53).2
  have hbrow54 : (1*(rho 10625))*(1 + (-1)*(rho 10625)) = 0 := by
    simpa [Seg13.relationRow54] using r54
  have hacc54 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc54 (rho 10571 : Seg13.F)
      (seg13AccX53 rho : Seg13.F) (seg13AccY53 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc54] using hp53
  have hr54 : RvkFixedBaseLadder.FixedStepRel 54 (rho 10625)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX53 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY53 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX54 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY54 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc54, seg13AccX54, seg13AccY54, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung54_wide (rho 10571 : Seg13.F) (rho 10625 : Seg13.F) (seg13AccX53 rho : Seg13.F) (seg13AccY53 rho : Seg13.F) (rho 11087 : Seg13.F) (rho 11088 : Seg13.F) (rho 11089 : Seg13.F) (rho 11090 : Seg13.F) (rho 11091 : Seg13.F) hacc54
        (by simpa using seg13_prefix_54_v2 rho r517)
        (by simpa using seg13_prefix_54_addX rho r518)
        (by simpa using seg13_prefix_54_addY rho r519)
        (by simpa using seg13_prefix_54_selX rho r520)
        (by simpa using seg13_prefix_54_selY rho r521)
        hbrow54
  obtain ⟨b54, hb54⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10625) hbrow54
  have hrb54 : RvkFixedBaseLadder.FixedStepRel 54 (toZMod b54)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX53 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY53 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX54 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY54 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb54]
    exact hr54
  have hp54 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX54 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY54 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 54 b54 _ _ hp53 hrb54).2
  have hbrow55 : (1*(rho 10626))*(1 + (-1)*(rho 10626)) = 0 := by
    simpa [Seg13.relationRow55] using r55
  have hacc55 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc55 (rho 10571 : Seg13.F)
      (seg13AccX54 rho : Seg13.F) (seg13AccY54 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc55] using hp54
  have hr55 : RvkFixedBaseLadder.FixedStepRel 55 (rho 10626)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX54 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY54 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX55 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY55 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc55, seg13AccX55, seg13AccY55, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung55_wide (rho 10571 : Seg13.F) (rho 10626 : Seg13.F) (seg13AccX54 rho : Seg13.F) (seg13AccY54 rho : Seg13.F) (rho 11092 : Seg13.F) (rho 11093 : Seg13.F) (rho 11094 : Seg13.F) (rho 11095 : Seg13.F) (rho 11096 : Seg13.F) hacc55
        (by simpa using seg13_prefix_55_v2 rho r522)
        (by simpa using seg13_prefix_55_addX rho r523)
        (by simpa using seg13_prefix_55_addY rho r524)
        (by simpa using seg13_prefix_55_selX rho r525)
        (by simpa using seg13_prefix_55_selY rho r526)
        hbrow55
  obtain ⟨b55, hb55⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10626) hbrow55
  have hrb55 : RvkFixedBaseLadder.FixedStepRel 55 (toZMod b55)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX54 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY54 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX55 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY55 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb55]
    exact hr55
  have hp55 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX55 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY55 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 55 b55 _ _ hp54 hrb55).2
  have hbrow56 : (1*(rho 10627))*(1 + (-1)*(rho 10627)) = 0 := by
    simpa [Seg13.relationRow56] using r56
  have hacc56 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc56 (rho 10571 : Seg13.F)
      (seg13AccX55 rho : Seg13.F) (seg13AccY55 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc56] using hp55
  have hr56 : RvkFixedBaseLadder.FixedStepRel 56 (rho 10627)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX55 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY55 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX56 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY56 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc56, seg13AccX56, seg13AccY56, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung56_wide (rho 10571 : Seg13.F) (rho 10627 : Seg13.F) (seg13AccX55 rho : Seg13.F) (seg13AccY55 rho : Seg13.F) (rho 11097 : Seg13.F) (rho 11098 : Seg13.F) (rho 11099 : Seg13.F) (rho 11100 : Seg13.F) (rho 11101 : Seg13.F) hacc56
        (by simpa using seg13_prefix_56_v2 rho r527)
        (by simpa using seg13_prefix_56_addX rho r528)
        (by simpa using seg13_prefix_56_addY rho r529)
        (by simpa using seg13_prefix_56_selX rho r530)
        (by simpa using seg13_prefix_56_selY rho r531)
        hbrow56
  obtain ⟨b56, hb56⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10627) hbrow56
  have hrb56 : RvkFixedBaseLadder.FixedStepRel 56 (toZMod b56)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX55 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY55 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX56 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY56 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb56]
    exact hr56
  have hp56 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX56 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY56 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 56 b56 _ _ hp55 hrb56).2
  have hbrow57 : (1*(rho 10628))*(1 + (-1)*(rho 10628)) = 0 := by
    simpa [Seg13.relationRow57] using r57
  have hacc57 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc57 (rho 10571 : Seg13.F)
      (seg13AccX56 rho : Seg13.F) (seg13AccY56 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc57] using hp56
  have hr57 : RvkFixedBaseLadder.FixedStepRel 57 (rho 10628)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX56 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY56 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX57 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY57 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc57, seg13AccX57, seg13AccY57, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung57_wide (rho 10571 : Seg13.F) (rho 10628 : Seg13.F) (seg13AccX56 rho : Seg13.F) (seg13AccY56 rho : Seg13.F) (rho 11102 : Seg13.F) (rho 11103 : Seg13.F) (rho 11104 : Seg13.F) (rho 11105 : Seg13.F) (rho 11106 : Seg13.F) hacc57
        (by simpa using seg13_prefix_57_v2 rho r532)
        (by simpa using seg13_prefix_57_addX rho r533)
        (by simpa using seg13_prefix_57_addY rho r534)
        (by simpa using seg13_prefix_57_selX rho r535)
        (by simpa using seg13_prefix_57_selY rho r536)
        hbrow57
  obtain ⟨b57, hb57⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10628) hbrow57
  have hrb57 : RvkFixedBaseLadder.FixedStepRel 57 (toZMod b57)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX56 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY56 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX57 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY57 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb57]
    exact hr57
  have hp57 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX57 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY57 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 57 b57 _ _ hp56 hrb57).2
  have hbrow58 : (1*(rho 10629))*(1 + (-1)*(rho 10629)) = 0 := by
    simpa [Seg13.relationRow58] using r58
  have hacc58 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc58 (rho 10571 : Seg13.F)
      (seg13AccX57 rho : Seg13.F) (seg13AccY57 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc58] using hp57
  have hr58 : RvkFixedBaseLadder.FixedStepRel 58 (rho 10629)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX57 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY57 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX58 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY58 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc58, seg13AccX58, seg13AccY58, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung58_wide (rho 10571 : Seg13.F) (rho 10629 : Seg13.F) (seg13AccX57 rho : Seg13.F) (seg13AccY57 rho : Seg13.F) (rho 11107 : Seg13.F) (rho 11108 : Seg13.F) (rho 11109 : Seg13.F) (rho 11110 : Seg13.F) (rho 11111 : Seg13.F) hacc58
        (by simpa using seg13_prefix_58_v2 rho r537)
        (by simpa using seg13_prefix_58_addX rho r538)
        (by simpa using seg13_prefix_58_addY rho r539)
        (by simpa using seg13_prefix_58_selX rho r540)
        (by simpa using seg13_prefix_58_selY rho r541)
        hbrow58
  obtain ⟨b58, hb58⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10629) hbrow58
  have hrb58 : RvkFixedBaseLadder.FixedStepRel 58 (toZMod b58)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX57 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY57 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX58 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY58 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb58]
    exact hr58
  have hp58 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX58 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY58 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 58 b58 _ _ hp57 hrb58).2
  have hbrow59 : (1*(rho 10630))*(1 + (-1)*(rho 10630)) = 0 := by
    simpa [Seg13.relationRow59] using r59
  have hacc59 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc59 (rho 10571 : Seg13.F)
      (seg13AccX58 rho : Seg13.F) (seg13AccY58 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc59] using hp58
  have hr59 : RvkFixedBaseLadder.FixedStepRel 59 (rho 10630)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX58 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY58 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX59 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY59 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc59, seg13AccX59, seg13AccY59, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung59_wide (rho 10571 : Seg13.F) (rho 10630 : Seg13.F) (seg13AccX58 rho : Seg13.F) (seg13AccY58 rho : Seg13.F) (rho 11112 : Seg13.F) (rho 11113 : Seg13.F) (rho 11114 : Seg13.F) (rho 11115 : Seg13.F) (rho 11116 : Seg13.F) hacc59
        (by simpa using seg13_prefix_59_v2 rho r542)
        (by simpa using seg13_prefix_59_addX rho r543)
        (by simpa using seg13_prefix_59_addY rho r544)
        (by simpa using seg13_prefix_59_selX rho r545)
        (by simpa using seg13_prefix_59_selY rho r546)
        hbrow59
  obtain ⟨b59, hb59⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10630) hbrow59
  have hrb59 : RvkFixedBaseLadder.FixedStepRel 59 (toZMod b59)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX58 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY58 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX59 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY59 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb59]
    exact hr59
  have hp59 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX59 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY59 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 59 b59 _ _ hp58 hrb59).2
  have hbrow60 : (1*(rho 10631))*(1 + (-1)*(rho 10631)) = 0 := by
    simpa [Seg13.relationRow60] using r60
  have hacc60 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc60 (rho 10571 : Seg13.F)
      (seg13AccX59 rho : Seg13.F) (seg13AccY59 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc60] using hp59
  have hr60 : RvkFixedBaseLadder.FixedStepRel 60 (rho 10631)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX59 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY59 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX60 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY60 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc60, seg13AccX60, seg13AccY60, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung60_wide (rho 10571 : Seg13.F) (rho 10631 : Seg13.F) (seg13AccX59 rho : Seg13.F) (seg13AccY59 rho : Seg13.F) (rho 11117 : Seg13.F) (rho 11118 : Seg13.F) (rho 11119 : Seg13.F) (rho 11120 : Seg13.F) (rho 11121 : Seg13.F) hacc60
        (by simpa using seg13_prefix_60_v2 rho r547)
        (by simpa using seg13_prefix_60_addX rho r548)
        (by simpa using seg13_prefix_60_addY rho r549)
        (by simpa using seg13_prefix_60_selX rho r550)
        (by simpa using seg13_prefix_60_selY rho r551)
        hbrow60
  obtain ⟨b60, hb60⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10631) hbrow60
  have hrb60 : RvkFixedBaseLadder.FixedStepRel 60 (toZMod b60)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX59 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY59 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX60 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY60 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb60]
    exact hr60
  have hp60 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX60 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY60 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 60 b60 _ _ hp59 hrb60).2
  exact hp60

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


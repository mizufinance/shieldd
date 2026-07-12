import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas5
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

theorem seg30_prefix_steps5 (rho : Nat -> Seg30.F)
    (hp50 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX50 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY50 rho : Seg30.F)⟩ : EdwardsBridge.Point))
    (r51 : Seg30.relationRow51 rho)
    (r502 : Seg30.relationRow502 rho)
    (r503 : Seg30.relationRow503 rho)
    (r504 : Seg30.relationRow504 rho)
    (r505 : Seg30.relationRow505 rho)
    (r506 : Seg30.relationRow506 rho)
    (r52 : Seg30.relationRow52 rho)
    (r507 : Seg30.relationRow507 rho)
    (r508 : Seg30.relationRow508 rho)
    (r509 : Seg30.relationRow509 rho)
    (r510 : Seg30.relationRow510 rho)
    (r511 : Seg30.relationRow511 rho)
    (r53 : Seg30.relationRow53 rho)
    (r512 : Seg30.relationRow512 rho)
    (r513 : Seg30.relationRow513 rho)
    (r514 : Seg30.relationRow514 rho)
    (r515 : Seg30.relationRow515 rho)
    (r516 : Seg30.relationRow516 rho)
    (r54 : Seg30.relationRow54 rho)
    (r517 : Seg30.relationRow517 rho)
    (r518 : Seg30.relationRow518 rho)
    (r519 : Seg30.relationRow519 rho)
    (r520 : Seg30.relationRow520 rho)
    (r521 : Seg30.relationRow521 rho)
    (r55 : Seg30.relationRow55 rho)
    (r522 : Seg30.relationRow522 rho)
    (r523 : Seg30.relationRow523 rho)
    (r524 : Seg30.relationRow524 rho)
    (r525 : Seg30.relationRow525 rho)
    (r526 : Seg30.relationRow526 rho)
    (r56 : Seg30.relationRow56 rho)
    (r527 : Seg30.relationRow527 rho)
    (r528 : Seg30.relationRow528 rho)
    (r529 : Seg30.relationRow529 rho)
    (r530 : Seg30.relationRow530 rho)
    (r531 : Seg30.relationRow531 rho)
    (r57 : Seg30.relationRow57 rho)
    (r532 : Seg30.relationRow532 rho)
    (r533 : Seg30.relationRow533 rho)
    (r534 : Seg30.relationRow534 rho)
    (r535 : Seg30.relationRow535 rho)
    (r536 : Seg30.relationRow536 rho)
    (r58 : Seg30.relationRow58 rho)
    (r537 : Seg30.relationRow537 rho)
    (r538 : Seg30.relationRow538 rho)
    (r539 : Seg30.relationRow539 rho)
    (r540 : Seg30.relationRow540 rho)
    (r541 : Seg30.relationRow541 rho)
    (r59 : Seg30.relationRow59 rho)
    (r542 : Seg30.relationRow542 rho)
    (r543 : Seg30.relationRow543 rho)
    (r544 : Seg30.relationRow544 rho)
    (r545 : Seg30.relationRow545 rho)
    (r546 : Seg30.relationRow546 rho)
    (r60 : Seg30.relationRow60 rho)
    (r547 : Seg30.relationRow547 rho)
    (r548 : Seg30.relationRow548 rho)
    (r549 : Seg30.relationRow549 rho)
    (r550 : Seg30.relationRow550 rho)
    (r551 : Seg30.relationRow551 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX60 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY60 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
  have hbrow51 : (1*(rho 28368))*(1 + (-1)*(rho 28368)) = 0 := by
    simpa [Seg30.relationRow51] using r51
  have hacc51 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc51 (rho 28317 : Seg30.F)
      (seg30AccX50 rho : Seg30.F) (seg30AccY50 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc51] using hp50
  have hr51 : RvkFixedBaseLadder.FixedStepRel 51 (rho 28368)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX50 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY50 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX51 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY51 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc51, seg30AccX51, seg30AccY51, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung51_wide (rho 28317 : Seg30.F) (rho 28368 : Seg30.F) (seg30AccX50 rho : Seg30.F) (seg30AccY50 rho : Seg30.F) (rho 28818 : Seg30.F) (rho 28819 : Seg30.F) (rho 28820 : Seg30.F) (rho 28821 : Seg30.F) (rho 28822 : Seg30.F) hacc51
        (by simpa using seg30_prefix_51_v2 rho r502)
        (by simpa using seg30_prefix_51_addX rho r503)
        (by simpa using seg30_prefix_51_addY rho r504)
        (by simpa using seg30_prefix_51_selX rho r505)
        (by simpa using seg30_prefix_51_selY rho r506)
        hbrow51
  obtain ⟨b51, hb51⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28368) hbrow51
  have hrb51 : RvkFixedBaseLadder.FixedStepRel 51 (toZMod b51)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX50 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY50 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX51 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY51 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb51]
    exact hr51
  have hp51 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX51 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY51 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 51 b51 _ _ hp50 hrb51).2
  have hbrow52 : (1*(rho 28369))*(1 + (-1)*(rho 28369)) = 0 := by
    simpa [Seg30.relationRow52] using r52
  have hacc52 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc52 (rho 28317 : Seg30.F)
      (seg30AccX51 rho : Seg30.F) (seg30AccY51 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc52] using hp51
  have hr52 : RvkFixedBaseLadder.FixedStepRel 52 (rho 28369)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX51 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY51 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX52 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY52 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc52, seg30AccX52, seg30AccY52, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung52_wide (rho 28317 : Seg30.F) (rho 28369 : Seg30.F) (seg30AccX51 rho : Seg30.F) (seg30AccY51 rho : Seg30.F) (rho 28823 : Seg30.F) (rho 28824 : Seg30.F) (rho 28825 : Seg30.F) (rho 28826 : Seg30.F) (rho 28827 : Seg30.F) hacc52
        (by simpa using seg30_prefix_52_v2 rho r507)
        (by simpa using seg30_prefix_52_addX rho r508)
        (by simpa using seg30_prefix_52_addY rho r509)
        (by simpa using seg30_prefix_52_selX rho r510)
        (by simpa using seg30_prefix_52_selY rho r511)
        hbrow52
  obtain ⟨b52, hb52⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28369) hbrow52
  have hrb52 : RvkFixedBaseLadder.FixedStepRel 52 (toZMod b52)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX51 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY51 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX52 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY52 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb52]
    exact hr52
  have hp52 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX52 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY52 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 52 b52 _ _ hp51 hrb52).2
  have hbrow53 : (1*(rho 28370))*(1 + (-1)*(rho 28370)) = 0 := by
    simpa [Seg30.relationRow53] using r53
  have hacc53 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc53 (rho 28317 : Seg30.F)
      (seg30AccX52 rho : Seg30.F) (seg30AccY52 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc53] using hp52
  have hr53 : RvkFixedBaseLadder.FixedStepRel 53 (rho 28370)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX52 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY52 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX53 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY53 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc53, seg30AccX53, seg30AccY53, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung53_wide (rho 28317 : Seg30.F) (rho 28370 : Seg30.F) (seg30AccX52 rho : Seg30.F) (seg30AccY52 rho : Seg30.F) (rho 28828 : Seg30.F) (rho 28829 : Seg30.F) (rho 28830 : Seg30.F) (rho 28831 : Seg30.F) (rho 28832 : Seg30.F) hacc53
        (by simpa using seg30_prefix_53_v2 rho r512)
        (by simpa using seg30_prefix_53_addX rho r513)
        (by simpa using seg30_prefix_53_addY rho r514)
        (by simpa using seg30_prefix_53_selX rho r515)
        (by simpa using seg30_prefix_53_selY rho r516)
        hbrow53
  obtain ⟨b53, hb53⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28370) hbrow53
  have hrb53 : RvkFixedBaseLadder.FixedStepRel 53 (toZMod b53)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX52 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY52 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX53 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY53 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb53]
    exact hr53
  have hp53 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX53 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY53 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 53 b53 _ _ hp52 hrb53).2
  have hbrow54 : (1*(rho 28371))*(1 + (-1)*(rho 28371)) = 0 := by
    simpa [Seg30.relationRow54] using r54
  have hacc54 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc54 (rho 28317 : Seg30.F)
      (seg30AccX53 rho : Seg30.F) (seg30AccY53 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc54] using hp53
  have hr54 : RvkFixedBaseLadder.FixedStepRel 54 (rho 28371)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX53 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY53 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX54 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY54 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc54, seg30AccX54, seg30AccY54, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung54_wide (rho 28317 : Seg30.F) (rho 28371 : Seg30.F) (seg30AccX53 rho : Seg30.F) (seg30AccY53 rho : Seg30.F) (rho 28833 : Seg30.F) (rho 28834 : Seg30.F) (rho 28835 : Seg30.F) (rho 28836 : Seg30.F) (rho 28837 : Seg30.F) hacc54
        (by simpa using seg30_prefix_54_v2 rho r517)
        (by simpa using seg30_prefix_54_addX rho r518)
        (by simpa using seg30_prefix_54_addY rho r519)
        (by simpa using seg30_prefix_54_selX rho r520)
        (by simpa using seg30_prefix_54_selY rho r521)
        hbrow54
  obtain ⟨b54, hb54⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28371) hbrow54
  have hrb54 : RvkFixedBaseLadder.FixedStepRel 54 (toZMod b54)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX53 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY53 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX54 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY54 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb54]
    exact hr54
  have hp54 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX54 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY54 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 54 b54 _ _ hp53 hrb54).2
  have hbrow55 : (1*(rho 28372))*(1 + (-1)*(rho 28372)) = 0 := by
    simpa [Seg30.relationRow55] using r55
  have hacc55 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc55 (rho 28317 : Seg30.F)
      (seg30AccX54 rho : Seg30.F) (seg30AccY54 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc55] using hp54
  have hr55 : RvkFixedBaseLadder.FixedStepRel 55 (rho 28372)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX54 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY54 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX55 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY55 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc55, seg30AccX55, seg30AccY55, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung55_wide (rho 28317 : Seg30.F) (rho 28372 : Seg30.F) (seg30AccX54 rho : Seg30.F) (seg30AccY54 rho : Seg30.F) (rho 28838 : Seg30.F) (rho 28839 : Seg30.F) (rho 28840 : Seg30.F) (rho 28841 : Seg30.F) (rho 28842 : Seg30.F) hacc55
        (by simpa using seg30_prefix_55_v2 rho r522)
        (by simpa using seg30_prefix_55_addX rho r523)
        (by simpa using seg30_prefix_55_addY rho r524)
        (by simpa using seg30_prefix_55_selX rho r525)
        (by simpa using seg30_prefix_55_selY rho r526)
        hbrow55
  obtain ⟨b55, hb55⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28372) hbrow55
  have hrb55 : RvkFixedBaseLadder.FixedStepRel 55 (toZMod b55)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX54 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY54 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX55 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY55 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb55]
    exact hr55
  have hp55 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX55 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY55 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 55 b55 _ _ hp54 hrb55).2
  have hbrow56 : (1*(rho 28373))*(1 + (-1)*(rho 28373)) = 0 := by
    simpa [Seg30.relationRow56] using r56
  have hacc56 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc56 (rho 28317 : Seg30.F)
      (seg30AccX55 rho : Seg30.F) (seg30AccY55 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc56] using hp55
  have hr56 : RvkFixedBaseLadder.FixedStepRel 56 (rho 28373)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX55 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY55 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX56 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY56 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc56, seg30AccX56, seg30AccY56, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung56_wide (rho 28317 : Seg30.F) (rho 28373 : Seg30.F) (seg30AccX55 rho : Seg30.F) (seg30AccY55 rho : Seg30.F) (rho 28843 : Seg30.F) (rho 28844 : Seg30.F) (rho 28845 : Seg30.F) (rho 28846 : Seg30.F) (rho 28847 : Seg30.F) hacc56
        (by simpa using seg30_prefix_56_v2 rho r527)
        (by simpa using seg30_prefix_56_addX rho r528)
        (by simpa using seg30_prefix_56_addY rho r529)
        (by simpa using seg30_prefix_56_selX rho r530)
        (by simpa using seg30_prefix_56_selY rho r531)
        hbrow56
  obtain ⟨b56, hb56⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28373) hbrow56
  have hrb56 : RvkFixedBaseLadder.FixedStepRel 56 (toZMod b56)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX55 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY55 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX56 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY56 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb56]
    exact hr56
  have hp56 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX56 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY56 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 56 b56 _ _ hp55 hrb56).2
  have hbrow57 : (1*(rho 28374))*(1 + (-1)*(rho 28374)) = 0 := by
    simpa [Seg30.relationRow57] using r57
  have hacc57 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc57 (rho 28317 : Seg30.F)
      (seg30AccX56 rho : Seg30.F) (seg30AccY56 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc57] using hp56
  have hr57 : RvkFixedBaseLadder.FixedStepRel 57 (rho 28374)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX56 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY56 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX57 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY57 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc57, seg30AccX57, seg30AccY57, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung57_wide (rho 28317 : Seg30.F) (rho 28374 : Seg30.F) (seg30AccX56 rho : Seg30.F) (seg30AccY56 rho : Seg30.F) (rho 28848 : Seg30.F) (rho 28849 : Seg30.F) (rho 28850 : Seg30.F) (rho 28851 : Seg30.F) (rho 28852 : Seg30.F) hacc57
        (by simpa using seg30_prefix_57_v2 rho r532)
        (by simpa using seg30_prefix_57_addX rho r533)
        (by simpa using seg30_prefix_57_addY rho r534)
        (by simpa using seg30_prefix_57_selX rho r535)
        (by simpa using seg30_prefix_57_selY rho r536)
        hbrow57
  obtain ⟨b57, hb57⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28374) hbrow57
  have hrb57 : RvkFixedBaseLadder.FixedStepRel 57 (toZMod b57)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX56 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY56 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX57 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY57 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb57]
    exact hr57
  have hp57 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX57 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY57 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 57 b57 _ _ hp56 hrb57).2
  have hbrow58 : (1*(rho 28375))*(1 + (-1)*(rho 28375)) = 0 := by
    simpa [Seg30.relationRow58] using r58
  have hacc58 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc58 (rho 28317 : Seg30.F)
      (seg30AccX57 rho : Seg30.F) (seg30AccY57 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc58] using hp57
  have hr58 : RvkFixedBaseLadder.FixedStepRel 58 (rho 28375)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX57 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY57 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX58 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY58 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc58, seg30AccX58, seg30AccY58, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung58_wide (rho 28317 : Seg30.F) (rho 28375 : Seg30.F) (seg30AccX57 rho : Seg30.F) (seg30AccY57 rho : Seg30.F) (rho 28853 : Seg30.F) (rho 28854 : Seg30.F) (rho 28855 : Seg30.F) (rho 28856 : Seg30.F) (rho 28857 : Seg30.F) hacc58
        (by simpa using seg30_prefix_58_v2 rho r537)
        (by simpa using seg30_prefix_58_addX rho r538)
        (by simpa using seg30_prefix_58_addY rho r539)
        (by simpa using seg30_prefix_58_selX rho r540)
        (by simpa using seg30_prefix_58_selY rho r541)
        hbrow58
  obtain ⟨b58, hb58⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28375) hbrow58
  have hrb58 : RvkFixedBaseLadder.FixedStepRel 58 (toZMod b58)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX57 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY57 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX58 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY58 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb58]
    exact hr58
  have hp58 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX58 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY58 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 58 b58 _ _ hp57 hrb58).2
  have hbrow59 : (1*(rho 28376))*(1 + (-1)*(rho 28376)) = 0 := by
    simpa [Seg30.relationRow59] using r59
  have hacc59 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc59 (rho 28317 : Seg30.F)
      (seg30AccX58 rho : Seg30.F) (seg30AccY58 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc59] using hp58
  have hr59 : RvkFixedBaseLadder.FixedStepRel 59 (rho 28376)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX58 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY58 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX59 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY59 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc59, seg30AccX59, seg30AccY59, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung59_wide (rho 28317 : Seg30.F) (rho 28376 : Seg30.F) (seg30AccX58 rho : Seg30.F) (seg30AccY58 rho : Seg30.F) (rho 28858 : Seg30.F) (rho 28859 : Seg30.F) (rho 28860 : Seg30.F) (rho 28861 : Seg30.F) (rho 28862 : Seg30.F) hacc59
        (by simpa using seg30_prefix_59_v2 rho r542)
        (by simpa using seg30_prefix_59_addX rho r543)
        (by simpa using seg30_prefix_59_addY rho r544)
        (by simpa using seg30_prefix_59_selX rho r545)
        (by simpa using seg30_prefix_59_selY rho r546)
        hbrow59
  obtain ⟨b59, hb59⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28376) hbrow59
  have hrb59 : RvkFixedBaseLadder.FixedStepRel 59 (toZMod b59)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX58 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY58 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX59 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY59 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb59]
    exact hr59
  have hp59 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX59 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY59 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 59 b59 _ _ hp58 hrb59).2
  have hbrow60 : (1*(rho 28377))*(1 + (-1)*(rho 28377)) = 0 := by
    simpa [Seg30.relationRow60] using r60
  have hacc60 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc60 (rho 28317 : Seg30.F)
      (seg30AccX59 rho : Seg30.F) (seg30AccY59 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc60] using hp59
  have hr60 : RvkFixedBaseLadder.FixedStepRel 60 (rho 28377)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX59 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY59 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX60 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY60 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc60, seg30AccX60, seg30AccY60, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung60_wide (rho 28317 : Seg30.F) (rho 28377 : Seg30.F) (seg30AccX59 rho : Seg30.F) (seg30AccY59 rho : Seg30.F) (rho 28863 : Seg30.F) (rho 28864 : Seg30.F) (rho 28865 : Seg30.F) (rho 28866 : Seg30.F) (rho 28867 : Seg30.F) hacc60
        (by simpa using seg30_prefix_60_v2 rho r547)
        (by simpa using seg30_prefix_60_addX rho r548)
        (by simpa using seg30_prefix_60_addY rho r549)
        (by simpa using seg30_prefix_60_selX rho r550)
        (by simpa using seg30_prefix_60_selY rho r551)
        hbrow60
  obtain ⟨b60, hb60⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28377) hbrow60
  have hrb60 : RvkFixedBaseLadder.FixedStepRel 60 (toZMod b60)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX59 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY59 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX60 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY60 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb60]
    exact hr60
  have hp60 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX60 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY60 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 60 b60 _ _ hp59 hrb60).2
  exact hp60

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


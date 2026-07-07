import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31PrefixLemmas5
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

theorem seg31_prefix_steps5 (rho : Nat -> Seg31.F)
    (hp50 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX50 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY50 rho : Seg31.F)⟩ : EdwardsBridge.Point))
    (r51 : Seg31.relationRow51 rho)
    (r502 : Seg31.relationRow502 rho)
    (r503 : Seg31.relationRow503 rho)
    (r504 : Seg31.relationRow504 rho)
    (r505 : Seg31.relationRow505 rho)
    (r506 : Seg31.relationRow506 rho)
    (r52 : Seg31.relationRow52 rho)
    (r507 : Seg31.relationRow507 rho)
    (r508 : Seg31.relationRow508 rho)
    (r509 : Seg31.relationRow509 rho)
    (r510 : Seg31.relationRow510 rho)
    (r511 : Seg31.relationRow511 rho)
    (r53 : Seg31.relationRow53 rho)
    (r512 : Seg31.relationRow512 rho)
    (r513 : Seg31.relationRow513 rho)
    (r514 : Seg31.relationRow514 rho)
    (r515 : Seg31.relationRow515 rho)
    (r516 : Seg31.relationRow516 rho)
    (r54 : Seg31.relationRow54 rho)
    (r517 : Seg31.relationRow517 rho)
    (r518 : Seg31.relationRow518 rho)
    (r519 : Seg31.relationRow519 rho)
    (r520 : Seg31.relationRow520 rho)
    (r521 : Seg31.relationRow521 rho)
    (r55 : Seg31.relationRow55 rho)
    (r522 : Seg31.relationRow522 rho)
    (r523 : Seg31.relationRow523 rho)
    (r524 : Seg31.relationRow524 rho)
    (r525 : Seg31.relationRow525 rho)
    (r526 : Seg31.relationRow526 rho)
    (r56 : Seg31.relationRow56 rho)
    (r527 : Seg31.relationRow527 rho)
    (r528 : Seg31.relationRow528 rho)
    (r529 : Seg31.relationRow529 rho)
    (r530 : Seg31.relationRow530 rho)
    (r531 : Seg31.relationRow531 rho)
    (r57 : Seg31.relationRow57 rho)
    (r532 : Seg31.relationRow532 rho)
    (r533 : Seg31.relationRow533 rho)
    (r534 : Seg31.relationRow534 rho)
    (r535 : Seg31.relationRow535 rho)
    (r536 : Seg31.relationRow536 rho)
    (r58 : Seg31.relationRow58 rho)
    (r537 : Seg31.relationRow537 rho)
    (r538 : Seg31.relationRow538 rho)
    (r539 : Seg31.relationRow539 rho)
    (r540 : Seg31.relationRow540 rho)
    (r541 : Seg31.relationRow541 rho)
    (r59 : Seg31.relationRow59 rho)
    (r542 : Seg31.relationRow542 rho)
    (r543 : Seg31.relationRow543 rho)
    (r544 : Seg31.relationRow544 rho)
    (r545 : Seg31.relationRow545 rho)
    (r546 : Seg31.relationRow546 rho)
    (r60 : Seg31.relationRow60 rho)
    (r547 : Seg31.relationRow547 rho)
    (r548 : Seg31.relationRow548 rho)
    (r549 : Seg31.relationRow549 rho)
    (r550 : Seg31.relationRow550 rho)
    (r551 : Seg31.relationRow551 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX60 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY60 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
  have hbrow51 : (1*(rho 29322))*(1 + (-1)*(rho 29322)) = 0 := by
    simpa [Seg31.relationRow51] using r51
  have hacc51 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc51 (rho 29271 : Seg31.F)
      (seg31AccX50 rho : Seg31.F) (seg31AccY50 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc51] using hp50
  have hr51 : RvkFixedBaseLadder.FixedStepRel 51 (rho 29322)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX50 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY50 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX51 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY51 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc51, seg31AccX51, seg31AccY51, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung51_wide (rho 29271 : Seg31.F) (rho 29322 : Seg31.F) (seg31AccX50 rho : Seg31.F) (seg31AccY50 rho : Seg31.F) (rho 29772 : Seg31.F) (rho 29773 : Seg31.F) (rho 29774 : Seg31.F) (rho 29775 : Seg31.F) (rho 29776 : Seg31.F) hacc51
        (by simpa using seg31_prefix_51_v2 rho r502)
        (by simpa using seg31_prefix_51_addX rho r503)
        (by simpa using seg31_prefix_51_addY rho r504)
        (by simpa using seg31_prefix_51_selX rho r505)
        (by simpa using seg31_prefix_51_selY rho r506)
        hbrow51
  obtain ⟨b51, hb51⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29322) hbrow51
  have hrb51 : RvkFixedBaseLadder.FixedStepRel 51 (toZMod b51)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX50 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY50 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX51 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY51 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb51]
    exact hr51
  have hp51 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX51 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY51 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 51 b51 _ _ hp50 hrb51).2
  have hbrow52 : (1*(rho 29323))*(1 + (-1)*(rho 29323)) = 0 := by
    simpa [Seg31.relationRow52] using r52
  have hacc52 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc52 (rho 29271 : Seg31.F)
      (seg31AccX51 rho : Seg31.F) (seg31AccY51 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc52] using hp51
  have hr52 : RvkFixedBaseLadder.FixedStepRel 52 (rho 29323)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX51 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY51 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX52 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY52 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc52, seg31AccX52, seg31AccY52, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung52_wide (rho 29271 : Seg31.F) (rho 29323 : Seg31.F) (seg31AccX51 rho : Seg31.F) (seg31AccY51 rho : Seg31.F) (rho 29777 : Seg31.F) (rho 29778 : Seg31.F) (rho 29779 : Seg31.F) (rho 29780 : Seg31.F) (rho 29781 : Seg31.F) hacc52
        (by simpa using seg31_prefix_52_v2 rho r507)
        (by simpa using seg31_prefix_52_addX rho r508)
        (by simpa using seg31_prefix_52_addY rho r509)
        (by simpa using seg31_prefix_52_selX rho r510)
        (by simpa using seg31_prefix_52_selY rho r511)
        hbrow52
  obtain ⟨b52, hb52⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29323) hbrow52
  have hrb52 : RvkFixedBaseLadder.FixedStepRel 52 (toZMod b52)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX51 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY51 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX52 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY52 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb52]
    exact hr52
  have hp52 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX52 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY52 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 52 b52 _ _ hp51 hrb52).2
  have hbrow53 : (1*(rho 29324))*(1 + (-1)*(rho 29324)) = 0 := by
    simpa [Seg31.relationRow53] using r53
  have hacc53 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc53 (rho 29271 : Seg31.F)
      (seg31AccX52 rho : Seg31.F) (seg31AccY52 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc53] using hp52
  have hr53 : RvkFixedBaseLadder.FixedStepRel 53 (rho 29324)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX52 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY52 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX53 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY53 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc53, seg31AccX53, seg31AccY53, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung53_wide (rho 29271 : Seg31.F) (rho 29324 : Seg31.F) (seg31AccX52 rho : Seg31.F) (seg31AccY52 rho : Seg31.F) (rho 29782 : Seg31.F) (rho 29783 : Seg31.F) (rho 29784 : Seg31.F) (rho 29785 : Seg31.F) (rho 29786 : Seg31.F) hacc53
        (by simpa using seg31_prefix_53_v2 rho r512)
        (by simpa using seg31_prefix_53_addX rho r513)
        (by simpa using seg31_prefix_53_addY rho r514)
        (by simpa using seg31_prefix_53_selX rho r515)
        (by simpa using seg31_prefix_53_selY rho r516)
        hbrow53
  obtain ⟨b53, hb53⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29324) hbrow53
  have hrb53 : RvkFixedBaseLadder.FixedStepRel 53 (toZMod b53)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX52 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY52 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX53 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY53 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb53]
    exact hr53
  have hp53 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX53 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY53 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 53 b53 _ _ hp52 hrb53).2
  have hbrow54 : (1*(rho 29325))*(1 + (-1)*(rho 29325)) = 0 := by
    simpa [Seg31.relationRow54] using r54
  have hacc54 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc54 (rho 29271 : Seg31.F)
      (seg31AccX53 rho : Seg31.F) (seg31AccY53 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc54] using hp53
  have hr54 : RvkFixedBaseLadder.FixedStepRel 54 (rho 29325)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX53 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY53 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX54 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY54 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc54, seg31AccX54, seg31AccY54, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung54_wide (rho 29271 : Seg31.F) (rho 29325 : Seg31.F) (seg31AccX53 rho : Seg31.F) (seg31AccY53 rho : Seg31.F) (rho 29787 : Seg31.F) (rho 29788 : Seg31.F) (rho 29789 : Seg31.F) (rho 29790 : Seg31.F) (rho 29791 : Seg31.F) hacc54
        (by simpa using seg31_prefix_54_v2 rho r517)
        (by simpa using seg31_prefix_54_addX rho r518)
        (by simpa using seg31_prefix_54_addY rho r519)
        (by simpa using seg31_prefix_54_selX rho r520)
        (by simpa using seg31_prefix_54_selY rho r521)
        hbrow54
  obtain ⟨b54, hb54⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29325) hbrow54
  have hrb54 : RvkFixedBaseLadder.FixedStepRel 54 (toZMod b54)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX53 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY53 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX54 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY54 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb54]
    exact hr54
  have hp54 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX54 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY54 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 54 b54 _ _ hp53 hrb54).2
  have hbrow55 : (1*(rho 29326))*(1 + (-1)*(rho 29326)) = 0 := by
    simpa [Seg31.relationRow55] using r55
  have hacc55 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc55 (rho 29271 : Seg31.F)
      (seg31AccX54 rho : Seg31.F) (seg31AccY54 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc55] using hp54
  have hr55 : RvkFixedBaseLadder.FixedStepRel 55 (rho 29326)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX54 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY54 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX55 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY55 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc55, seg31AccX55, seg31AccY55, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung55_wide (rho 29271 : Seg31.F) (rho 29326 : Seg31.F) (seg31AccX54 rho : Seg31.F) (seg31AccY54 rho : Seg31.F) (rho 29792 : Seg31.F) (rho 29793 : Seg31.F) (rho 29794 : Seg31.F) (rho 29795 : Seg31.F) (rho 29796 : Seg31.F) hacc55
        (by simpa using seg31_prefix_55_v2 rho r522)
        (by simpa using seg31_prefix_55_addX rho r523)
        (by simpa using seg31_prefix_55_addY rho r524)
        (by simpa using seg31_prefix_55_selX rho r525)
        (by simpa using seg31_prefix_55_selY rho r526)
        hbrow55
  obtain ⟨b55, hb55⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29326) hbrow55
  have hrb55 : RvkFixedBaseLadder.FixedStepRel 55 (toZMod b55)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX54 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY54 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX55 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY55 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb55]
    exact hr55
  have hp55 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX55 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY55 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 55 b55 _ _ hp54 hrb55).2
  have hbrow56 : (1*(rho 29327))*(1 + (-1)*(rho 29327)) = 0 := by
    simpa [Seg31.relationRow56] using r56
  have hacc56 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc56 (rho 29271 : Seg31.F)
      (seg31AccX55 rho : Seg31.F) (seg31AccY55 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc56] using hp55
  have hr56 : RvkFixedBaseLadder.FixedStepRel 56 (rho 29327)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX55 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY55 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX56 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY56 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc56, seg31AccX56, seg31AccY56, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung56_wide (rho 29271 : Seg31.F) (rho 29327 : Seg31.F) (seg31AccX55 rho : Seg31.F) (seg31AccY55 rho : Seg31.F) (rho 29797 : Seg31.F) (rho 29798 : Seg31.F) (rho 29799 : Seg31.F) (rho 29800 : Seg31.F) (rho 29801 : Seg31.F) hacc56
        (by simpa using seg31_prefix_56_v2 rho r527)
        (by simpa using seg31_prefix_56_addX rho r528)
        (by simpa using seg31_prefix_56_addY rho r529)
        (by simpa using seg31_prefix_56_selX rho r530)
        (by simpa using seg31_prefix_56_selY rho r531)
        hbrow56
  obtain ⟨b56, hb56⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29327) hbrow56
  have hrb56 : RvkFixedBaseLadder.FixedStepRel 56 (toZMod b56)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX55 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY55 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX56 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY56 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb56]
    exact hr56
  have hp56 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX56 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY56 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 56 b56 _ _ hp55 hrb56).2
  have hbrow57 : (1*(rho 29328))*(1 + (-1)*(rho 29328)) = 0 := by
    simpa [Seg31.relationRow57] using r57
  have hacc57 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc57 (rho 29271 : Seg31.F)
      (seg31AccX56 rho : Seg31.F) (seg31AccY56 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc57] using hp56
  have hr57 : RvkFixedBaseLadder.FixedStepRel 57 (rho 29328)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX56 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY56 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX57 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY57 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc57, seg31AccX57, seg31AccY57, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung57_wide (rho 29271 : Seg31.F) (rho 29328 : Seg31.F) (seg31AccX56 rho : Seg31.F) (seg31AccY56 rho : Seg31.F) (rho 29802 : Seg31.F) (rho 29803 : Seg31.F) (rho 29804 : Seg31.F) (rho 29805 : Seg31.F) (rho 29806 : Seg31.F) hacc57
        (by simpa using seg31_prefix_57_v2 rho r532)
        (by simpa using seg31_prefix_57_addX rho r533)
        (by simpa using seg31_prefix_57_addY rho r534)
        (by simpa using seg31_prefix_57_selX rho r535)
        (by simpa using seg31_prefix_57_selY rho r536)
        hbrow57
  obtain ⟨b57, hb57⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29328) hbrow57
  have hrb57 : RvkFixedBaseLadder.FixedStepRel 57 (toZMod b57)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX56 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY56 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX57 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY57 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb57]
    exact hr57
  have hp57 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX57 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY57 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 57 b57 _ _ hp56 hrb57).2
  have hbrow58 : (1*(rho 29329))*(1 + (-1)*(rho 29329)) = 0 := by
    simpa [Seg31.relationRow58] using r58
  have hacc58 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc58 (rho 29271 : Seg31.F)
      (seg31AccX57 rho : Seg31.F) (seg31AccY57 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc58] using hp57
  have hr58 : RvkFixedBaseLadder.FixedStepRel 58 (rho 29329)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX57 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY57 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX58 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY58 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc58, seg31AccX58, seg31AccY58, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung58_wide (rho 29271 : Seg31.F) (rho 29329 : Seg31.F) (seg31AccX57 rho : Seg31.F) (seg31AccY57 rho : Seg31.F) (rho 29807 : Seg31.F) (rho 29808 : Seg31.F) (rho 29809 : Seg31.F) (rho 29810 : Seg31.F) (rho 29811 : Seg31.F) hacc58
        (by simpa using seg31_prefix_58_v2 rho r537)
        (by simpa using seg31_prefix_58_addX rho r538)
        (by simpa using seg31_prefix_58_addY rho r539)
        (by simpa using seg31_prefix_58_selX rho r540)
        (by simpa using seg31_prefix_58_selY rho r541)
        hbrow58
  obtain ⟨b58, hb58⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29329) hbrow58
  have hrb58 : RvkFixedBaseLadder.FixedStepRel 58 (toZMod b58)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX57 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY57 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX58 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY58 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb58]
    exact hr58
  have hp58 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX58 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY58 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 58 b58 _ _ hp57 hrb58).2
  have hbrow59 : (1*(rho 29330))*(1 + (-1)*(rho 29330)) = 0 := by
    simpa [Seg31.relationRow59] using r59
  have hacc59 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc59 (rho 29271 : Seg31.F)
      (seg31AccX58 rho : Seg31.F) (seg31AccY58 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc59] using hp58
  have hr59 : RvkFixedBaseLadder.FixedStepRel 59 (rho 29330)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX58 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY58 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX59 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY59 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc59, seg31AccX59, seg31AccY59, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung59_wide (rho 29271 : Seg31.F) (rho 29330 : Seg31.F) (seg31AccX58 rho : Seg31.F) (seg31AccY58 rho : Seg31.F) (rho 29812 : Seg31.F) (rho 29813 : Seg31.F) (rho 29814 : Seg31.F) (rho 29815 : Seg31.F) (rho 29816 : Seg31.F) hacc59
        (by simpa using seg31_prefix_59_v2 rho r542)
        (by simpa using seg31_prefix_59_addX rho r543)
        (by simpa using seg31_prefix_59_addY rho r544)
        (by simpa using seg31_prefix_59_selX rho r545)
        (by simpa using seg31_prefix_59_selY rho r546)
        hbrow59
  obtain ⟨b59, hb59⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29330) hbrow59
  have hrb59 : RvkFixedBaseLadder.FixedStepRel 59 (toZMod b59)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX58 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY58 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX59 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY59 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb59]
    exact hr59
  have hp59 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX59 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY59 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 59 b59 _ _ hp58 hrb59).2
  have hbrow60 : (1*(rho 29331))*(1 + (-1)*(rho 29331)) = 0 := by
    simpa [Seg31.relationRow60] using r60
  have hacc60 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc60 (rho 29271 : Seg31.F)
      (seg31AccX59 rho : Seg31.F) (seg31AccY59 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc60] using hp59
  have hr60 : RvkFixedBaseLadder.FixedStepRel 60 (rho 29331)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX59 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY59 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX60 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY60 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc60, seg31AccX60, seg31AccY60, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung60_wide (rho 29271 : Seg31.F) (rho 29331 : Seg31.F) (seg31AccX59 rho : Seg31.F) (seg31AccY59 rho : Seg31.F) (rho 29817 : Seg31.F) (rho 29818 : Seg31.F) (rho 29819 : Seg31.F) (rho 29820 : Seg31.F) (rho 29821 : Seg31.F) hacc60
        (by simpa using seg31_prefix_60_v2 rho r547)
        (by simpa using seg31_prefix_60_addX rho r548)
        (by simpa using seg31_prefix_60_addY rho r549)
        (by simpa using seg31_prefix_60_selX rho r550)
        (by simpa using seg31_prefix_60_selY rho r551)
        hbrow60
  obtain ⟨b60, hb60⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29331) hbrow60
  have hrb60 : RvkFixedBaseLadder.FixedStepRel 60 (toZMod b60)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX59 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY59 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX60 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY60 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb60]
    exact hr60
  have hp60 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX60 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY60 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 60 b60 _ _ hp59 hrb60).2
  exact hp60

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


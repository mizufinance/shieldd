import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas5
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

theorem seg15_prefix_steps5 (rho : Nat -> Seg15.F)
    (hp50 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX50 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY50 rho : Seg15.F)⟩ : EdwardsBridge.Point))
    (r51 : Seg15.relationRow51 rho)
    (r502 : Seg15.relationRow502 rho)
    (r503 : Seg15.relationRow503 rho)
    (r504 : Seg15.relationRow504 rho)
    (r505 : Seg15.relationRow505 rho)
    (r506 : Seg15.relationRow506 rho)
    (r52 : Seg15.relationRow52 rho)
    (r507 : Seg15.relationRow507 rho)
    (r508 : Seg15.relationRow508 rho)
    (r509 : Seg15.relationRow509 rho)
    (r510 : Seg15.relationRow510 rho)
    (r511 : Seg15.relationRow511 rho)
    (r53 : Seg15.relationRow53 rho)
    (r512 : Seg15.relationRow512 rho)
    (r513 : Seg15.relationRow513 rho)
    (r514 : Seg15.relationRow514 rho)
    (r515 : Seg15.relationRow515 rho)
    (r516 : Seg15.relationRow516 rho)
    (r54 : Seg15.relationRow54 rho)
    (r517 : Seg15.relationRow517 rho)
    (r518 : Seg15.relationRow518 rho)
    (r519 : Seg15.relationRow519 rho)
    (r520 : Seg15.relationRow520 rho)
    (r521 : Seg15.relationRow521 rho)
    (r55 : Seg15.relationRow55 rho)
    (r522 : Seg15.relationRow522 rho)
    (r523 : Seg15.relationRow523 rho)
    (r524 : Seg15.relationRow524 rho)
    (r525 : Seg15.relationRow525 rho)
    (r526 : Seg15.relationRow526 rho)
    (r56 : Seg15.relationRow56 rho)
    (r527 : Seg15.relationRow527 rho)
    (r528 : Seg15.relationRow528 rho)
    (r529 : Seg15.relationRow529 rho)
    (r530 : Seg15.relationRow530 rho)
    (r531 : Seg15.relationRow531 rho)
    (r57 : Seg15.relationRow57 rho)
    (r532 : Seg15.relationRow532 rho)
    (r533 : Seg15.relationRow533 rho)
    (r534 : Seg15.relationRow534 rho)
    (r535 : Seg15.relationRow535 rho)
    (r536 : Seg15.relationRow536 rho)
    (r58 : Seg15.relationRow58 rho)
    (r537 : Seg15.relationRow537 rho)
    (r538 : Seg15.relationRow538 rho)
    (r539 : Seg15.relationRow539 rho)
    (r540 : Seg15.relationRow540 rho)
    (r541 : Seg15.relationRow541 rho)
    (r59 : Seg15.relationRow59 rho)
    (r542 : Seg15.relationRow542 rho)
    (r543 : Seg15.relationRow543 rho)
    (r544 : Seg15.relationRow544 rho)
    (r545 : Seg15.relationRow545 rho)
    (r546 : Seg15.relationRow546 rho)
    (r60 : Seg15.relationRow60 rho)
    (r547 : Seg15.relationRow547 rho)
    (r548 : Seg15.relationRow548 rho)
    (r549 : Seg15.relationRow549 rho)
    (r550 : Seg15.relationRow550 rho)
    (r551 : Seg15.relationRow551 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX60 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY60 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
  have hbrow51 : (1*(rho 16438))*(1 + (-1)*(rho 16438)) = 0 := by
    simpa [Seg15.relationRow51] using r51
  have hacc51 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc51 (rho 16387 : Seg15.F)
      (seg15AccX50 rho : Seg15.F) (seg15AccY50 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc51] using hp50
  have hr51 : RvkFixedBaseLadder.FixedStepRel 51 (rho 16438)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX50 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY50 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX51 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY51 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc51, seg15AccX51, seg15AccY51, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung51_wide (rho 16387 : Seg15.F) (rho 16438 : Seg15.F) (seg15AccX50 rho : Seg15.F) (seg15AccY50 rho : Seg15.F) (rho 16888 : Seg15.F) (rho 16889 : Seg15.F) (rho 16890 : Seg15.F) (rho 16891 : Seg15.F) (rho 16892 : Seg15.F) hacc51
        (by simpa using seg15_prefix_51_v2 rho r502)
        (by simpa using seg15_prefix_51_addX rho r503)
        (by simpa using seg15_prefix_51_addY rho r504)
        (by simpa using seg15_prefix_51_selX rho r505)
        (by simpa using seg15_prefix_51_selY rho r506)
        hbrow51
  obtain ⟨b51, hb51⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16438) hbrow51
  have hrb51 : RvkFixedBaseLadder.FixedStepRel 51 (toZMod b51)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX50 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY50 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX51 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY51 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb51]
    exact hr51
  have hp51 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX51 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY51 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 51 b51 _ _ hp50 hrb51).2
  have hbrow52 : (1*(rho 16439))*(1 + (-1)*(rho 16439)) = 0 := by
    simpa [Seg15.relationRow52] using r52
  have hacc52 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc52 (rho 16387 : Seg15.F)
      (seg15AccX51 rho : Seg15.F) (seg15AccY51 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc52] using hp51
  have hr52 : RvkFixedBaseLadder.FixedStepRel 52 (rho 16439)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX51 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY51 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX52 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY52 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc52, seg15AccX52, seg15AccY52, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung52_wide (rho 16387 : Seg15.F) (rho 16439 : Seg15.F) (seg15AccX51 rho : Seg15.F) (seg15AccY51 rho : Seg15.F) (rho 16893 : Seg15.F) (rho 16894 : Seg15.F) (rho 16895 : Seg15.F) (rho 16896 : Seg15.F) (rho 16897 : Seg15.F) hacc52
        (by simpa using seg15_prefix_52_v2 rho r507)
        (by simpa using seg15_prefix_52_addX rho r508)
        (by simpa using seg15_prefix_52_addY rho r509)
        (by simpa using seg15_prefix_52_selX rho r510)
        (by simpa using seg15_prefix_52_selY rho r511)
        hbrow52
  obtain ⟨b52, hb52⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16439) hbrow52
  have hrb52 : RvkFixedBaseLadder.FixedStepRel 52 (toZMod b52)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX51 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY51 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX52 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY52 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb52]
    exact hr52
  have hp52 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX52 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY52 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 52 b52 _ _ hp51 hrb52).2
  have hbrow53 : (1*(rho 16440))*(1 + (-1)*(rho 16440)) = 0 := by
    simpa [Seg15.relationRow53] using r53
  have hacc53 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc53 (rho 16387 : Seg15.F)
      (seg15AccX52 rho : Seg15.F) (seg15AccY52 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc53] using hp52
  have hr53 : RvkFixedBaseLadder.FixedStepRel 53 (rho 16440)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX52 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY52 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX53 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY53 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc53, seg15AccX53, seg15AccY53, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung53_wide (rho 16387 : Seg15.F) (rho 16440 : Seg15.F) (seg15AccX52 rho : Seg15.F) (seg15AccY52 rho : Seg15.F) (rho 16898 : Seg15.F) (rho 16899 : Seg15.F) (rho 16900 : Seg15.F) (rho 16901 : Seg15.F) (rho 16902 : Seg15.F) hacc53
        (by simpa using seg15_prefix_53_v2 rho r512)
        (by simpa using seg15_prefix_53_addX rho r513)
        (by simpa using seg15_prefix_53_addY rho r514)
        (by simpa using seg15_prefix_53_selX rho r515)
        (by simpa using seg15_prefix_53_selY rho r516)
        hbrow53
  obtain ⟨b53, hb53⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16440) hbrow53
  have hrb53 : RvkFixedBaseLadder.FixedStepRel 53 (toZMod b53)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX52 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY52 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX53 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY53 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb53]
    exact hr53
  have hp53 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX53 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY53 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 53 b53 _ _ hp52 hrb53).2
  have hbrow54 : (1*(rho 16441))*(1 + (-1)*(rho 16441)) = 0 := by
    simpa [Seg15.relationRow54] using r54
  have hacc54 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc54 (rho 16387 : Seg15.F)
      (seg15AccX53 rho : Seg15.F) (seg15AccY53 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc54] using hp53
  have hr54 : RvkFixedBaseLadder.FixedStepRel 54 (rho 16441)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX53 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY53 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX54 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY54 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc54, seg15AccX54, seg15AccY54, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung54_wide (rho 16387 : Seg15.F) (rho 16441 : Seg15.F) (seg15AccX53 rho : Seg15.F) (seg15AccY53 rho : Seg15.F) (rho 16903 : Seg15.F) (rho 16904 : Seg15.F) (rho 16905 : Seg15.F) (rho 16906 : Seg15.F) (rho 16907 : Seg15.F) hacc54
        (by simpa using seg15_prefix_54_v2 rho r517)
        (by simpa using seg15_prefix_54_addX rho r518)
        (by simpa using seg15_prefix_54_addY rho r519)
        (by simpa using seg15_prefix_54_selX rho r520)
        (by simpa using seg15_prefix_54_selY rho r521)
        hbrow54
  obtain ⟨b54, hb54⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16441) hbrow54
  have hrb54 : RvkFixedBaseLadder.FixedStepRel 54 (toZMod b54)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX53 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY53 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX54 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY54 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb54]
    exact hr54
  have hp54 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX54 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY54 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 54 b54 _ _ hp53 hrb54).2
  have hbrow55 : (1*(rho 16442))*(1 + (-1)*(rho 16442)) = 0 := by
    simpa [Seg15.relationRow55] using r55
  have hacc55 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc55 (rho 16387 : Seg15.F)
      (seg15AccX54 rho : Seg15.F) (seg15AccY54 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc55] using hp54
  have hr55 : RvkFixedBaseLadder.FixedStepRel 55 (rho 16442)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX54 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY54 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX55 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY55 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc55, seg15AccX55, seg15AccY55, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung55_wide (rho 16387 : Seg15.F) (rho 16442 : Seg15.F) (seg15AccX54 rho : Seg15.F) (seg15AccY54 rho : Seg15.F) (rho 16908 : Seg15.F) (rho 16909 : Seg15.F) (rho 16910 : Seg15.F) (rho 16911 : Seg15.F) (rho 16912 : Seg15.F) hacc55
        (by simpa using seg15_prefix_55_v2 rho r522)
        (by simpa using seg15_prefix_55_addX rho r523)
        (by simpa using seg15_prefix_55_addY rho r524)
        (by simpa using seg15_prefix_55_selX rho r525)
        (by simpa using seg15_prefix_55_selY rho r526)
        hbrow55
  obtain ⟨b55, hb55⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16442) hbrow55
  have hrb55 : RvkFixedBaseLadder.FixedStepRel 55 (toZMod b55)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX54 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY54 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX55 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY55 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb55]
    exact hr55
  have hp55 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX55 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY55 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 55 b55 _ _ hp54 hrb55).2
  have hbrow56 : (1*(rho 16443))*(1 + (-1)*(rho 16443)) = 0 := by
    simpa [Seg15.relationRow56] using r56
  have hacc56 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc56 (rho 16387 : Seg15.F)
      (seg15AccX55 rho : Seg15.F) (seg15AccY55 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc56] using hp55
  have hr56 : RvkFixedBaseLadder.FixedStepRel 56 (rho 16443)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX55 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY55 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX56 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY56 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc56, seg15AccX56, seg15AccY56, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung56_wide (rho 16387 : Seg15.F) (rho 16443 : Seg15.F) (seg15AccX55 rho : Seg15.F) (seg15AccY55 rho : Seg15.F) (rho 16913 : Seg15.F) (rho 16914 : Seg15.F) (rho 16915 : Seg15.F) (rho 16916 : Seg15.F) (rho 16917 : Seg15.F) hacc56
        (by simpa using seg15_prefix_56_v2 rho r527)
        (by simpa using seg15_prefix_56_addX rho r528)
        (by simpa using seg15_prefix_56_addY rho r529)
        (by simpa using seg15_prefix_56_selX rho r530)
        (by simpa using seg15_prefix_56_selY rho r531)
        hbrow56
  obtain ⟨b56, hb56⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16443) hbrow56
  have hrb56 : RvkFixedBaseLadder.FixedStepRel 56 (toZMod b56)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX55 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY55 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX56 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY56 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb56]
    exact hr56
  have hp56 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX56 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY56 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 56 b56 _ _ hp55 hrb56).2
  have hbrow57 : (1*(rho 16444))*(1 + (-1)*(rho 16444)) = 0 := by
    simpa [Seg15.relationRow57] using r57
  have hacc57 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc57 (rho 16387 : Seg15.F)
      (seg15AccX56 rho : Seg15.F) (seg15AccY56 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc57] using hp56
  have hr57 : RvkFixedBaseLadder.FixedStepRel 57 (rho 16444)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX56 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY56 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX57 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY57 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc57, seg15AccX57, seg15AccY57, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung57_wide (rho 16387 : Seg15.F) (rho 16444 : Seg15.F) (seg15AccX56 rho : Seg15.F) (seg15AccY56 rho : Seg15.F) (rho 16918 : Seg15.F) (rho 16919 : Seg15.F) (rho 16920 : Seg15.F) (rho 16921 : Seg15.F) (rho 16922 : Seg15.F) hacc57
        (by simpa using seg15_prefix_57_v2 rho r532)
        (by simpa using seg15_prefix_57_addX rho r533)
        (by simpa using seg15_prefix_57_addY rho r534)
        (by simpa using seg15_prefix_57_selX rho r535)
        (by simpa using seg15_prefix_57_selY rho r536)
        hbrow57
  obtain ⟨b57, hb57⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16444) hbrow57
  have hrb57 : RvkFixedBaseLadder.FixedStepRel 57 (toZMod b57)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX56 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY56 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX57 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY57 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb57]
    exact hr57
  have hp57 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX57 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY57 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 57 b57 _ _ hp56 hrb57).2
  have hbrow58 : (1*(rho 16445))*(1 + (-1)*(rho 16445)) = 0 := by
    simpa [Seg15.relationRow58] using r58
  have hacc58 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc58 (rho 16387 : Seg15.F)
      (seg15AccX57 rho : Seg15.F) (seg15AccY57 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc58] using hp57
  have hr58 : RvkFixedBaseLadder.FixedStepRel 58 (rho 16445)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX57 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY57 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX58 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY58 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc58, seg15AccX58, seg15AccY58, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung58_wide (rho 16387 : Seg15.F) (rho 16445 : Seg15.F) (seg15AccX57 rho : Seg15.F) (seg15AccY57 rho : Seg15.F) (rho 16923 : Seg15.F) (rho 16924 : Seg15.F) (rho 16925 : Seg15.F) (rho 16926 : Seg15.F) (rho 16927 : Seg15.F) hacc58
        (by simpa using seg15_prefix_58_v2 rho r537)
        (by simpa using seg15_prefix_58_addX rho r538)
        (by simpa using seg15_prefix_58_addY rho r539)
        (by simpa using seg15_prefix_58_selX rho r540)
        (by simpa using seg15_prefix_58_selY rho r541)
        hbrow58
  obtain ⟨b58, hb58⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16445) hbrow58
  have hrb58 : RvkFixedBaseLadder.FixedStepRel 58 (toZMod b58)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX57 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY57 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX58 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY58 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb58]
    exact hr58
  have hp58 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX58 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY58 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 58 b58 _ _ hp57 hrb58).2
  have hbrow59 : (1*(rho 16446))*(1 + (-1)*(rho 16446)) = 0 := by
    simpa [Seg15.relationRow59] using r59
  have hacc59 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc59 (rho 16387 : Seg15.F)
      (seg15AccX58 rho : Seg15.F) (seg15AccY58 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc59] using hp58
  have hr59 : RvkFixedBaseLadder.FixedStepRel 59 (rho 16446)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX58 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY58 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX59 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY59 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc59, seg15AccX59, seg15AccY59, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung59_wide (rho 16387 : Seg15.F) (rho 16446 : Seg15.F) (seg15AccX58 rho : Seg15.F) (seg15AccY58 rho : Seg15.F) (rho 16928 : Seg15.F) (rho 16929 : Seg15.F) (rho 16930 : Seg15.F) (rho 16931 : Seg15.F) (rho 16932 : Seg15.F) hacc59
        (by simpa using seg15_prefix_59_v2 rho r542)
        (by simpa using seg15_prefix_59_addX rho r543)
        (by simpa using seg15_prefix_59_addY rho r544)
        (by simpa using seg15_prefix_59_selX rho r545)
        (by simpa using seg15_prefix_59_selY rho r546)
        hbrow59
  obtain ⟨b59, hb59⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16446) hbrow59
  have hrb59 : RvkFixedBaseLadder.FixedStepRel 59 (toZMod b59)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX58 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY58 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX59 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY59 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb59]
    exact hr59
  have hp59 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX59 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY59 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 59 b59 _ _ hp58 hrb59).2
  have hbrow60 : (1*(rho 16447))*(1 + (-1)*(rho 16447)) = 0 := by
    simpa [Seg15.relationRow60] using r60
  have hacc60 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc60 (rho 16387 : Seg15.F)
      (seg15AccX59 rho : Seg15.F) (seg15AccY59 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc60] using hp59
  have hr60 : RvkFixedBaseLadder.FixedStepRel 60 (rho 16447)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX59 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY59 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX60 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY60 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc60, seg15AccX60, seg15AccY60, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung60_wide (rho 16387 : Seg15.F) (rho 16447 : Seg15.F) (seg15AccX59 rho : Seg15.F) (seg15AccY59 rho : Seg15.F) (rho 16933 : Seg15.F) (rho 16934 : Seg15.F) (rho 16935 : Seg15.F) (rho 16936 : Seg15.F) (rho 16937 : Seg15.F) hacc60
        (by simpa using seg15_prefix_60_v2 rho r547)
        (by simpa using seg15_prefix_60_addX rho r548)
        (by simpa using seg15_prefix_60_addY rho r549)
        (by simpa using seg15_prefix_60_selX rho r550)
        (by simpa using seg15_prefix_60_selY rho r551)
        hbrow60
  obtain ⟨b60, hb60⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16447) hbrow60
  have hrb60 : RvkFixedBaseLadder.FixedStepRel 60 (toZMod b60)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX59 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY59 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX60 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY60 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb60]
    exact hr60
  have hp60 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX60 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY60 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 60 b60 _ _ hp59 hrb60).2
  exact hp60

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


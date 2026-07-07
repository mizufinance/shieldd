import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg13PrefixLemmas9
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

theorem seg13_prefix_steps9 (rho : Nat -> Seg13.F)
    (hp90 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX90 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY90 rho : Seg13.F)⟩ : EdwardsBridge.Point))
    (r91 : Seg13.relationRow91 rho)
    (r702 : Seg13.relationRow702 rho)
    (r703 : Seg13.relationRow703 rho)
    (r704 : Seg13.relationRow704 rho)
    (r705 : Seg13.relationRow705 rho)
    (r706 : Seg13.relationRow706 rho)
    (r92 : Seg13.relationRow92 rho)
    (r707 : Seg13.relationRow707 rho)
    (r708 : Seg13.relationRow708 rho)
    (r709 : Seg13.relationRow709 rho)
    (r710 : Seg13.relationRow710 rho)
    (r711 : Seg13.relationRow711 rho)
    (r93 : Seg13.relationRow93 rho)
    (r712 : Seg13.relationRow712 rho)
    (r713 : Seg13.relationRow713 rho)
    (r714 : Seg13.relationRow714 rho)
    (r715 : Seg13.relationRow715 rho)
    (r716 : Seg13.relationRow716 rho)
    (r94 : Seg13.relationRow94 rho)
    (r717 : Seg13.relationRow717 rho)
    (r718 : Seg13.relationRow718 rho)
    (r719 : Seg13.relationRow719 rho)
    (r720 : Seg13.relationRow720 rho)
    (r721 : Seg13.relationRow721 rho)
    (r95 : Seg13.relationRow95 rho)
    (r722 : Seg13.relationRow722 rho)
    (r723 : Seg13.relationRow723 rho)
    (r724 : Seg13.relationRow724 rho)
    (r725 : Seg13.relationRow725 rho)
    (r726 : Seg13.relationRow726 rho)
    (r96 : Seg13.relationRow96 rho)
    (r727 : Seg13.relationRow727 rho)
    (r728 : Seg13.relationRow728 rho)
    (r729 : Seg13.relationRow729 rho)
    (r730 : Seg13.relationRow730 rho)
    (r731 : Seg13.relationRow731 rho)
    (r97 : Seg13.relationRow97 rho)
    (r732 : Seg13.relationRow732 rho)
    (r733 : Seg13.relationRow733 rho)
    (r734 : Seg13.relationRow734 rho)
    (r735 : Seg13.relationRow735 rho)
    (r736 : Seg13.relationRow736 rho)
    (r98 : Seg13.relationRow98 rho)
    (r737 : Seg13.relationRow737 rho)
    (r738 : Seg13.relationRow738 rho)
    (r739 : Seg13.relationRow739 rho)
    (r740 : Seg13.relationRow740 rho)
    (r741 : Seg13.relationRow741 rho)
    (r99 : Seg13.relationRow99 rho)
    (r742 : Seg13.relationRow742 rho)
    (r743 : Seg13.relationRow743 rho)
    (r744 : Seg13.relationRow744 rho)
    (r745 : Seg13.relationRow745 rho)
    (r746 : Seg13.relationRow746 rho)
    (r100 : Seg13.relationRow100 rho)
    (r747 : Seg13.relationRow747 rho)
    (r748 : Seg13.relationRow748 rho)
    (r749 : Seg13.relationRow749 rho)
    (r750 : Seg13.relationRow750 rho)
    (r751 : Seg13.relationRow751 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX100 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY100 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
  have hbrow91 : (1*(rho 10662))*(1 + (-1)*(rho 10662)) = 0 := by
    simpa [Seg13.relationRow91] using r91
  have hacc91 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc91 (rho 10571 : Seg13.F)
      (seg13AccX90 rho : Seg13.F) (seg13AccY90 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc91] using hp90
  have hr91 : RvkFixedBaseLadder.FixedStepRel 91 (rho 10662)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX90 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY90 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX91 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY91 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc91, seg13AccX91, seg13AccY91, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung91_wide (rho 10571 : Seg13.F) (rho 10662 : Seg13.F) (seg13AccX90 rho : Seg13.F) (seg13AccY90 rho : Seg13.F) (rho 11272 : Seg13.F) (rho 11273 : Seg13.F) (rho 11274 : Seg13.F) (rho 11275 : Seg13.F) (rho 11276 : Seg13.F) hacc91
        (by simpa using seg13_prefix_91_v2 rho r702)
        (by simpa using seg13_prefix_91_addX rho r703)
        (by simpa using seg13_prefix_91_addY rho r704)
        (by simpa using seg13_prefix_91_selX rho r705)
        (by simpa using seg13_prefix_91_selY rho r706)
        hbrow91
  obtain ⟨b91, hb91⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10662) hbrow91
  have hrb91 : RvkFixedBaseLadder.FixedStepRel 91 (toZMod b91)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX90 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY90 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX91 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY91 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb91]
    exact hr91
  have hp91 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX91 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY91 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 91 b91 _ _ hp90 hrb91).2
  have hbrow92 : (1*(rho 10663))*(1 + (-1)*(rho 10663)) = 0 := by
    simpa [Seg13.relationRow92] using r92
  have hacc92 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc92 (rho 10571 : Seg13.F)
      (seg13AccX91 rho : Seg13.F) (seg13AccY91 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc92] using hp91
  have hr92 : RvkFixedBaseLadder.FixedStepRel 92 (rho 10663)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX91 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY91 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX92 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY92 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc92, seg13AccX92, seg13AccY92, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung92_wide (rho 10571 : Seg13.F) (rho 10663 : Seg13.F) (seg13AccX91 rho : Seg13.F) (seg13AccY91 rho : Seg13.F) (rho 11277 : Seg13.F) (rho 11278 : Seg13.F) (rho 11279 : Seg13.F) (rho 11280 : Seg13.F) (rho 11281 : Seg13.F) hacc92
        (by simpa using seg13_prefix_92_v2 rho r707)
        (by simpa using seg13_prefix_92_addX rho r708)
        (by simpa using seg13_prefix_92_addY rho r709)
        (by simpa using seg13_prefix_92_selX rho r710)
        (by simpa using seg13_prefix_92_selY rho r711)
        hbrow92
  obtain ⟨b92, hb92⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10663) hbrow92
  have hrb92 : RvkFixedBaseLadder.FixedStepRel 92 (toZMod b92)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX91 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY91 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX92 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY92 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb92]
    exact hr92
  have hp92 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX92 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY92 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 92 b92 _ _ hp91 hrb92).2
  have hbrow93 : (1*(rho 10664))*(1 + (-1)*(rho 10664)) = 0 := by
    simpa [Seg13.relationRow93] using r93
  have hacc93 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc93 (rho 10571 : Seg13.F)
      (seg13AccX92 rho : Seg13.F) (seg13AccY92 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc93] using hp92
  have hr93 : RvkFixedBaseLadder.FixedStepRel 93 (rho 10664)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX92 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY92 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX93 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY93 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc93, seg13AccX93, seg13AccY93, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung93_wide (rho 10571 : Seg13.F) (rho 10664 : Seg13.F) (seg13AccX92 rho : Seg13.F) (seg13AccY92 rho : Seg13.F) (rho 11282 : Seg13.F) (rho 11283 : Seg13.F) (rho 11284 : Seg13.F) (rho 11285 : Seg13.F) (rho 11286 : Seg13.F) hacc93
        (by simpa using seg13_prefix_93_v2 rho r712)
        (by simpa using seg13_prefix_93_addX rho r713)
        (by simpa using seg13_prefix_93_addY rho r714)
        (by simpa using seg13_prefix_93_selX rho r715)
        (by simpa using seg13_prefix_93_selY rho r716)
        hbrow93
  obtain ⟨b93, hb93⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10664) hbrow93
  have hrb93 : RvkFixedBaseLadder.FixedStepRel 93 (toZMod b93)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX92 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY92 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX93 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY93 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb93]
    exact hr93
  have hp93 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX93 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY93 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 93 b93 _ _ hp92 hrb93).2
  have hbrow94 : (1*(rho 10665))*(1 + (-1)*(rho 10665)) = 0 := by
    simpa [Seg13.relationRow94] using r94
  have hacc94 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc94 (rho 10571 : Seg13.F)
      (seg13AccX93 rho : Seg13.F) (seg13AccY93 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc94] using hp93
  have hr94 : RvkFixedBaseLadder.FixedStepRel 94 (rho 10665)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX93 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY93 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX94 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY94 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc94, seg13AccX94, seg13AccY94, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung94_wide (rho 10571 : Seg13.F) (rho 10665 : Seg13.F) (seg13AccX93 rho : Seg13.F) (seg13AccY93 rho : Seg13.F) (rho 11287 : Seg13.F) (rho 11288 : Seg13.F) (rho 11289 : Seg13.F) (rho 11290 : Seg13.F) (rho 11291 : Seg13.F) hacc94
        (by simpa using seg13_prefix_94_v2 rho r717)
        (by simpa using seg13_prefix_94_addX rho r718)
        (by simpa using seg13_prefix_94_addY rho r719)
        (by simpa using seg13_prefix_94_selX rho r720)
        (by simpa using seg13_prefix_94_selY rho r721)
        hbrow94
  obtain ⟨b94, hb94⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10665) hbrow94
  have hrb94 : RvkFixedBaseLadder.FixedStepRel 94 (toZMod b94)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX93 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY93 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX94 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY94 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb94]
    exact hr94
  have hp94 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX94 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY94 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 94 b94 _ _ hp93 hrb94).2
  have hbrow95 : (1*(rho 10666))*(1 + (-1)*(rho 10666)) = 0 := by
    simpa [Seg13.relationRow95] using r95
  have hacc95 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc95 (rho 10571 : Seg13.F)
      (seg13AccX94 rho : Seg13.F) (seg13AccY94 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc95] using hp94
  have hr95 : RvkFixedBaseLadder.FixedStepRel 95 (rho 10666)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX94 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY94 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX95 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY95 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc95, seg13AccX95, seg13AccY95, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung95_wide (rho 10571 : Seg13.F) (rho 10666 : Seg13.F) (seg13AccX94 rho : Seg13.F) (seg13AccY94 rho : Seg13.F) (rho 11292 : Seg13.F) (rho 11293 : Seg13.F) (rho 11294 : Seg13.F) (rho 11295 : Seg13.F) (rho 11296 : Seg13.F) hacc95
        (by simpa using seg13_prefix_95_v2 rho r722)
        (by simpa using seg13_prefix_95_addX rho r723)
        (by simpa using seg13_prefix_95_addY rho r724)
        (by simpa using seg13_prefix_95_selX rho r725)
        (by simpa using seg13_prefix_95_selY rho r726)
        hbrow95
  obtain ⟨b95, hb95⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10666) hbrow95
  have hrb95 : RvkFixedBaseLadder.FixedStepRel 95 (toZMod b95)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX94 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY94 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX95 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY95 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb95]
    exact hr95
  have hp95 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX95 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY95 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 95 b95 _ _ hp94 hrb95).2
  have hbrow96 : (1*(rho 10667))*(1 + (-1)*(rho 10667)) = 0 := by
    simpa [Seg13.relationRow96] using r96
  have hacc96 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc96 (rho 10571 : Seg13.F)
      (seg13AccX95 rho : Seg13.F) (seg13AccY95 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc96] using hp95
  have hr96 : RvkFixedBaseLadder.FixedStepRel 96 (rho 10667)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX95 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY95 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX96 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY96 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc96, seg13AccX96, seg13AccY96, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung96_wide (rho 10571 : Seg13.F) (rho 10667 : Seg13.F) (seg13AccX95 rho : Seg13.F) (seg13AccY95 rho : Seg13.F) (rho 11297 : Seg13.F) (rho 11298 : Seg13.F) (rho 11299 : Seg13.F) (rho 11300 : Seg13.F) (rho 11301 : Seg13.F) hacc96
        (by simpa using seg13_prefix_96_v2 rho r727)
        (by simpa using seg13_prefix_96_addX rho r728)
        (by simpa using seg13_prefix_96_addY rho r729)
        (by simpa using seg13_prefix_96_selX rho r730)
        (by simpa using seg13_prefix_96_selY rho r731)
        hbrow96
  obtain ⟨b96, hb96⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10667) hbrow96
  have hrb96 : RvkFixedBaseLadder.FixedStepRel 96 (toZMod b96)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX95 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY95 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX96 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY96 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb96]
    exact hr96
  have hp96 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX96 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY96 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 96 b96 _ _ hp95 hrb96).2
  have hbrow97 : (1*(rho 10668))*(1 + (-1)*(rho 10668)) = 0 := by
    simpa [Seg13.relationRow97] using r97
  have hacc97 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc97 (rho 10571 : Seg13.F)
      (seg13AccX96 rho : Seg13.F) (seg13AccY96 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc97] using hp96
  have hr97 : RvkFixedBaseLadder.FixedStepRel 97 (rho 10668)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX96 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY96 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX97 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY97 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc97, seg13AccX97, seg13AccY97, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung97_wide (rho 10571 : Seg13.F) (rho 10668 : Seg13.F) (seg13AccX96 rho : Seg13.F) (seg13AccY96 rho : Seg13.F) (rho 11302 : Seg13.F) (rho 11303 : Seg13.F) (rho 11304 : Seg13.F) (rho 11305 : Seg13.F) (rho 11306 : Seg13.F) hacc97
        (by simpa using seg13_prefix_97_v2 rho r732)
        (by simpa using seg13_prefix_97_addX rho r733)
        (by simpa using seg13_prefix_97_addY rho r734)
        (by simpa using seg13_prefix_97_selX rho r735)
        (by simpa using seg13_prefix_97_selY rho r736)
        hbrow97
  obtain ⟨b97, hb97⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10668) hbrow97
  have hrb97 : RvkFixedBaseLadder.FixedStepRel 97 (toZMod b97)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX96 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY96 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX97 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY97 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb97]
    exact hr97
  have hp97 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX97 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY97 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 97 b97 _ _ hp96 hrb97).2
  have hbrow98 : (1*(rho 10669))*(1 + (-1)*(rho 10669)) = 0 := by
    simpa [Seg13.relationRow98] using r98
  have hacc98 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc98 (rho 10571 : Seg13.F)
      (seg13AccX97 rho : Seg13.F) (seg13AccY97 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc98] using hp97
  have hr98 : RvkFixedBaseLadder.FixedStepRel 98 (rho 10669)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX97 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY97 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX98 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY98 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc98, seg13AccX98, seg13AccY98, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung98_wide (rho 10571 : Seg13.F) (rho 10669 : Seg13.F) (seg13AccX97 rho : Seg13.F) (seg13AccY97 rho : Seg13.F) (rho 11307 : Seg13.F) (rho 11308 : Seg13.F) (rho 11309 : Seg13.F) (rho 11310 : Seg13.F) (rho 11311 : Seg13.F) hacc98
        (by simpa using seg13_prefix_98_v2 rho r737)
        (by simpa using seg13_prefix_98_addX rho r738)
        (by simpa using seg13_prefix_98_addY rho r739)
        (by simpa using seg13_prefix_98_selX rho r740)
        (by simpa using seg13_prefix_98_selY rho r741)
        hbrow98
  obtain ⟨b98, hb98⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10669) hbrow98
  have hrb98 : RvkFixedBaseLadder.FixedStepRel 98 (toZMod b98)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX97 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY97 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX98 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY98 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb98]
    exact hr98
  have hp98 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX98 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY98 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 98 b98 _ _ hp97 hrb98).2
  have hbrow99 : (1*(rho 10670))*(1 + (-1)*(rho 10670)) = 0 := by
    simpa [Seg13.relationRow99] using r99
  have hacc99 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc99 (rho 10571 : Seg13.F)
      (seg13AccX98 rho : Seg13.F) (seg13AccY98 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc99] using hp98
  have hr99 : RvkFixedBaseLadder.FixedStepRel 99 (rho 10670)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX98 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY98 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX99 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY99 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc99, seg13AccX99, seg13AccY99, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung99_wide (rho 10571 : Seg13.F) (rho 10670 : Seg13.F) (seg13AccX98 rho : Seg13.F) (seg13AccY98 rho : Seg13.F) (rho 11312 : Seg13.F) (rho 11313 : Seg13.F) (rho 11314 : Seg13.F) (rho 11315 : Seg13.F) (rho 11316 : Seg13.F) hacc99
        (by simpa using seg13_prefix_99_v2 rho r742)
        (by simpa using seg13_prefix_99_addX rho r743)
        (by simpa using seg13_prefix_99_addY rho r744)
        (by simpa using seg13_prefix_99_selX rho r745)
        (by simpa using seg13_prefix_99_selY rho r746)
        hbrow99
  obtain ⟨b99, hb99⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10670) hbrow99
  have hrb99 : RvkFixedBaseLadder.FixedStepRel 99 (toZMod b99)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX98 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY98 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX99 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY99 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb99]
    exact hr99
  have hp99 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX99 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY99 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 99 b99 _ _ hp98 hrb99).2
  have hbrow100 : (1*(rho 10671))*(1 + (-1)*(rho 10671)) = 0 := by
    simpa [Seg13.relationRow100] using r100
  have hacc100 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc100 (rho 10571 : Seg13.F)
      (seg13AccX99 rho : Seg13.F) (seg13AccY99 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc100] using hp99
  have hr100 : RvkFixedBaseLadder.FixedStepRel 100 (rho 10671)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX99 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY99 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX100 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY100 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc100, seg13AccX100, seg13AccY100, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung100_wide (rho 10571 : Seg13.F) (rho 10671 : Seg13.F) (seg13AccX99 rho : Seg13.F) (seg13AccY99 rho : Seg13.F) (rho 11317 : Seg13.F) (rho 11318 : Seg13.F) (rho 11319 : Seg13.F) (rho 11320 : Seg13.F) (rho 11321 : Seg13.F) hacc100
        (by simpa using seg13_prefix_100_v2 rho r747)
        (by simpa using seg13_prefix_100_addX rho r748)
        (by simpa using seg13_prefix_100_addY rho r749)
        (by simpa using seg13_prefix_100_selX rho r750)
        (by simpa using seg13_prefix_100_selY rho r751)
        hbrow100
  obtain ⟨b100, hb100⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10671) hbrow100
  have hrb100 : RvkFixedBaseLadder.FixedStepRel 100 (toZMod b100)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX99 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY99 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX100 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY100 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb100]
    exact hr100
  have hp100 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX100 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY100 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 100 b100 _ _ hp99 hrb100).2
  exact hp100

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


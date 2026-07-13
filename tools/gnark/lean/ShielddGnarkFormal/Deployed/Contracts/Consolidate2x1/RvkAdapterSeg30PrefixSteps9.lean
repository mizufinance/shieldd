import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas9
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

theorem seg30_prefix_steps9 (rho : Nat -> Seg30.F)
    (hp90 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX90 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY90 rho : Seg30.F)⟩ : EdwardsBridge.Point))
    (r91 : Seg30.relationRow91 rho)
    (r702 : Seg30.relationRow702 rho)
    (r703 : Seg30.relationRow703 rho)
    (r704 : Seg30.relationRow704 rho)
    (r705 : Seg30.relationRow705 rho)
    (r706 : Seg30.relationRow706 rho)
    (r92 : Seg30.relationRow92 rho)
    (r707 : Seg30.relationRow707 rho)
    (r708 : Seg30.relationRow708 rho)
    (r709 : Seg30.relationRow709 rho)
    (r710 : Seg30.relationRow710 rho)
    (r711 : Seg30.relationRow711 rho)
    (r93 : Seg30.relationRow93 rho)
    (r712 : Seg30.relationRow712 rho)
    (r713 : Seg30.relationRow713 rho)
    (r714 : Seg30.relationRow714 rho)
    (r715 : Seg30.relationRow715 rho)
    (r716 : Seg30.relationRow716 rho)
    (r94 : Seg30.relationRow94 rho)
    (r717 : Seg30.relationRow717 rho)
    (r718 : Seg30.relationRow718 rho)
    (r719 : Seg30.relationRow719 rho)
    (r720 : Seg30.relationRow720 rho)
    (r721 : Seg30.relationRow721 rho)
    (r95 : Seg30.relationRow95 rho)
    (r722 : Seg30.relationRow722 rho)
    (r723 : Seg30.relationRow723 rho)
    (r724 : Seg30.relationRow724 rho)
    (r725 : Seg30.relationRow725 rho)
    (r726 : Seg30.relationRow726 rho)
    (r96 : Seg30.relationRow96 rho)
    (r727 : Seg30.relationRow727 rho)
    (r728 : Seg30.relationRow728 rho)
    (r729 : Seg30.relationRow729 rho)
    (r730 : Seg30.relationRow730 rho)
    (r731 : Seg30.relationRow731 rho)
    (r97 : Seg30.relationRow97 rho)
    (r732 : Seg30.relationRow732 rho)
    (r733 : Seg30.relationRow733 rho)
    (r734 : Seg30.relationRow734 rho)
    (r735 : Seg30.relationRow735 rho)
    (r736 : Seg30.relationRow736 rho)
    (r98 : Seg30.relationRow98 rho)
    (r737 : Seg30.relationRow737 rho)
    (r738 : Seg30.relationRow738 rho)
    (r739 : Seg30.relationRow739 rho)
    (r740 : Seg30.relationRow740 rho)
    (r741 : Seg30.relationRow741 rho)
    (r99 : Seg30.relationRow99 rho)
    (r742 : Seg30.relationRow742 rho)
    (r743 : Seg30.relationRow743 rho)
    (r744 : Seg30.relationRow744 rho)
    (r745 : Seg30.relationRow745 rho)
    (r746 : Seg30.relationRow746 rho)
    (r100 : Seg30.relationRow100 rho)
    (r747 : Seg30.relationRow747 rho)
    (r748 : Seg30.relationRow748 rho)
    (r749 : Seg30.relationRow749 rho)
    (r750 : Seg30.relationRow750 rho)
    (r751 : Seg30.relationRow751 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX100 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY100 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
  have hbrow91 : (1*(rho 28408))*(1 + (-1)*(rho 28408)) = 0 := by
    simpa [Seg30.relationRow91] using r91
  have hacc91 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc91 (rho 28317 : Seg30.F)
      (seg30AccX90 rho : Seg30.F) (seg30AccY90 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc91] using hp90
  have hr91 : RvkFixedBaseLadder.FixedStepRel 91 (rho 28408)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX90 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY90 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX91 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY91 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc91, seg30AccX91, seg30AccY91, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung91_wide (rho 28317 : Seg30.F) (rho 28408 : Seg30.F) (seg30AccX90 rho : Seg30.F) (seg30AccY90 rho : Seg30.F) (rho 29018 : Seg30.F) (rho 29019 : Seg30.F) (rho 29020 : Seg30.F) (rho 29021 : Seg30.F) (rho 29022 : Seg30.F) hacc91
        (by simpa using seg30_prefix_91_v2 rho r702)
        (by simpa using seg30_prefix_91_addX rho r703)
        (by simpa using seg30_prefix_91_addY rho r704)
        (by simpa using seg30_prefix_91_selX rho r705)
        (by simpa using seg30_prefix_91_selY rho r706)
        hbrow91
  obtain ⟨b91, hb91⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28408) hbrow91
  have hrb91 : RvkFixedBaseLadder.FixedStepRel 91 (toZMod b91)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX90 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY90 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX91 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY91 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb91]
    exact hr91
  have hp91 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX91 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY91 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 91 b91 _ _ hp90 hrb91).2
  have hbrow92 : (1*(rho 28409))*(1 + (-1)*(rho 28409)) = 0 := by
    simpa [Seg30.relationRow92] using r92
  have hacc92 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc92 (rho 28317 : Seg30.F)
      (seg30AccX91 rho : Seg30.F) (seg30AccY91 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc92] using hp91
  have hr92 : RvkFixedBaseLadder.FixedStepRel 92 (rho 28409)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX91 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY91 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX92 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY92 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc92, seg30AccX92, seg30AccY92, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung92_wide (rho 28317 : Seg30.F) (rho 28409 : Seg30.F) (seg30AccX91 rho : Seg30.F) (seg30AccY91 rho : Seg30.F) (rho 29023 : Seg30.F) (rho 29024 : Seg30.F) (rho 29025 : Seg30.F) (rho 29026 : Seg30.F) (rho 29027 : Seg30.F) hacc92
        (by simpa using seg30_prefix_92_v2 rho r707)
        (by simpa using seg30_prefix_92_addX rho r708)
        (by simpa using seg30_prefix_92_addY rho r709)
        (by simpa using seg30_prefix_92_selX rho r710)
        (by simpa using seg30_prefix_92_selY rho r711)
        hbrow92
  obtain ⟨b92, hb92⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28409) hbrow92
  have hrb92 : RvkFixedBaseLadder.FixedStepRel 92 (toZMod b92)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX91 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY91 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX92 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY92 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb92]
    exact hr92
  have hp92 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX92 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY92 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 92 b92 _ _ hp91 hrb92).2
  have hbrow93 : (1*(rho 28410))*(1 + (-1)*(rho 28410)) = 0 := by
    simpa [Seg30.relationRow93] using r93
  have hacc93 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc93 (rho 28317 : Seg30.F)
      (seg30AccX92 rho : Seg30.F) (seg30AccY92 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc93] using hp92
  have hr93 : RvkFixedBaseLadder.FixedStepRel 93 (rho 28410)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX92 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY92 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX93 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY93 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc93, seg30AccX93, seg30AccY93, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung93_wide (rho 28317 : Seg30.F) (rho 28410 : Seg30.F) (seg30AccX92 rho : Seg30.F) (seg30AccY92 rho : Seg30.F) (rho 29028 : Seg30.F) (rho 29029 : Seg30.F) (rho 29030 : Seg30.F) (rho 29031 : Seg30.F) (rho 29032 : Seg30.F) hacc93
        (by simpa using seg30_prefix_93_v2 rho r712)
        (by simpa using seg30_prefix_93_addX rho r713)
        (by simpa using seg30_prefix_93_addY rho r714)
        (by simpa using seg30_prefix_93_selX rho r715)
        (by simpa using seg30_prefix_93_selY rho r716)
        hbrow93
  obtain ⟨b93, hb93⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28410) hbrow93
  have hrb93 : RvkFixedBaseLadder.FixedStepRel 93 (toZMod b93)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX92 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY92 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX93 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY93 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb93]
    exact hr93
  have hp93 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX93 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY93 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 93 b93 _ _ hp92 hrb93).2
  have hbrow94 : (1*(rho 28411))*(1 + (-1)*(rho 28411)) = 0 := by
    simpa [Seg30.relationRow94] using r94
  have hacc94 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc94 (rho 28317 : Seg30.F)
      (seg30AccX93 rho : Seg30.F) (seg30AccY93 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc94] using hp93
  have hr94 : RvkFixedBaseLadder.FixedStepRel 94 (rho 28411)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX93 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY93 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX94 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY94 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc94, seg30AccX94, seg30AccY94, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung94_wide (rho 28317 : Seg30.F) (rho 28411 : Seg30.F) (seg30AccX93 rho : Seg30.F) (seg30AccY93 rho : Seg30.F) (rho 29033 : Seg30.F) (rho 29034 : Seg30.F) (rho 29035 : Seg30.F) (rho 29036 : Seg30.F) (rho 29037 : Seg30.F) hacc94
        (by simpa using seg30_prefix_94_v2 rho r717)
        (by simpa using seg30_prefix_94_addX rho r718)
        (by simpa using seg30_prefix_94_addY rho r719)
        (by simpa using seg30_prefix_94_selX rho r720)
        (by simpa using seg30_prefix_94_selY rho r721)
        hbrow94
  obtain ⟨b94, hb94⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28411) hbrow94
  have hrb94 : RvkFixedBaseLadder.FixedStepRel 94 (toZMod b94)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX93 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY93 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX94 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY94 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb94]
    exact hr94
  have hp94 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX94 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY94 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 94 b94 _ _ hp93 hrb94).2
  have hbrow95 : (1*(rho 28412))*(1 + (-1)*(rho 28412)) = 0 := by
    simpa [Seg30.relationRow95] using r95
  have hacc95 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc95 (rho 28317 : Seg30.F)
      (seg30AccX94 rho : Seg30.F) (seg30AccY94 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc95] using hp94
  have hr95 : RvkFixedBaseLadder.FixedStepRel 95 (rho 28412)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX94 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY94 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX95 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY95 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc95, seg30AccX95, seg30AccY95, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung95_wide (rho 28317 : Seg30.F) (rho 28412 : Seg30.F) (seg30AccX94 rho : Seg30.F) (seg30AccY94 rho : Seg30.F) (rho 29038 : Seg30.F) (rho 29039 : Seg30.F) (rho 29040 : Seg30.F) (rho 29041 : Seg30.F) (rho 29042 : Seg30.F) hacc95
        (by simpa using seg30_prefix_95_v2 rho r722)
        (by simpa using seg30_prefix_95_addX rho r723)
        (by simpa using seg30_prefix_95_addY rho r724)
        (by simpa using seg30_prefix_95_selX rho r725)
        (by simpa using seg30_prefix_95_selY rho r726)
        hbrow95
  obtain ⟨b95, hb95⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28412) hbrow95
  have hrb95 : RvkFixedBaseLadder.FixedStepRel 95 (toZMod b95)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX94 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY94 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX95 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY95 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb95]
    exact hr95
  have hp95 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX95 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY95 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 95 b95 _ _ hp94 hrb95).2
  have hbrow96 : (1*(rho 28413))*(1 + (-1)*(rho 28413)) = 0 := by
    simpa [Seg30.relationRow96] using r96
  have hacc96 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc96 (rho 28317 : Seg30.F)
      (seg30AccX95 rho : Seg30.F) (seg30AccY95 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc96] using hp95
  have hr96 : RvkFixedBaseLadder.FixedStepRel 96 (rho 28413)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX95 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY95 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX96 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY96 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc96, seg30AccX96, seg30AccY96, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung96_wide (rho 28317 : Seg30.F) (rho 28413 : Seg30.F) (seg30AccX95 rho : Seg30.F) (seg30AccY95 rho : Seg30.F) (rho 29043 : Seg30.F) (rho 29044 : Seg30.F) (rho 29045 : Seg30.F) (rho 29046 : Seg30.F) (rho 29047 : Seg30.F) hacc96
        (by simpa using seg30_prefix_96_v2 rho r727)
        (by simpa using seg30_prefix_96_addX rho r728)
        (by simpa using seg30_prefix_96_addY rho r729)
        (by simpa using seg30_prefix_96_selX rho r730)
        (by simpa using seg30_prefix_96_selY rho r731)
        hbrow96
  obtain ⟨b96, hb96⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28413) hbrow96
  have hrb96 : RvkFixedBaseLadder.FixedStepRel 96 (toZMod b96)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX95 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY95 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX96 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY96 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb96]
    exact hr96
  have hp96 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX96 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY96 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 96 b96 _ _ hp95 hrb96).2
  have hbrow97 : (1*(rho 28414))*(1 + (-1)*(rho 28414)) = 0 := by
    simpa [Seg30.relationRow97] using r97
  have hacc97 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc97 (rho 28317 : Seg30.F)
      (seg30AccX96 rho : Seg30.F) (seg30AccY96 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc97] using hp96
  have hr97 : RvkFixedBaseLadder.FixedStepRel 97 (rho 28414)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX96 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY96 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX97 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY97 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc97, seg30AccX97, seg30AccY97, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung97_wide (rho 28317 : Seg30.F) (rho 28414 : Seg30.F) (seg30AccX96 rho : Seg30.F) (seg30AccY96 rho : Seg30.F) (rho 29048 : Seg30.F) (rho 29049 : Seg30.F) (rho 29050 : Seg30.F) (rho 29051 : Seg30.F) (rho 29052 : Seg30.F) hacc97
        (by simpa using seg30_prefix_97_v2 rho r732)
        (by simpa using seg30_prefix_97_addX rho r733)
        (by simpa using seg30_prefix_97_addY rho r734)
        (by simpa using seg30_prefix_97_selX rho r735)
        (by simpa using seg30_prefix_97_selY rho r736)
        hbrow97
  obtain ⟨b97, hb97⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28414) hbrow97
  have hrb97 : RvkFixedBaseLadder.FixedStepRel 97 (toZMod b97)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX96 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY96 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX97 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY97 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb97]
    exact hr97
  have hp97 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX97 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY97 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 97 b97 _ _ hp96 hrb97).2
  have hbrow98 : (1*(rho 28415))*(1 + (-1)*(rho 28415)) = 0 := by
    simpa [Seg30.relationRow98] using r98
  have hacc98 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc98 (rho 28317 : Seg30.F)
      (seg30AccX97 rho : Seg30.F) (seg30AccY97 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc98] using hp97
  have hr98 : RvkFixedBaseLadder.FixedStepRel 98 (rho 28415)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX97 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY97 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX98 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY98 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc98, seg30AccX98, seg30AccY98, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung98_wide (rho 28317 : Seg30.F) (rho 28415 : Seg30.F) (seg30AccX97 rho : Seg30.F) (seg30AccY97 rho : Seg30.F) (rho 29053 : Seg30.F) (rho 29054 : Seg30.F) (rho 29055 : Seg30.F) (rho 29056 : Seg30.F) (rho 29057 : Seg30.F) hacc98
        (by simpa using seg30_prefix_98_v2 rho r737)
        (by simpa using seg30_prefix_98_addX rho r738)
        (by simpa using seg30_prefix_98_addY rho r739)
        (by simpa using seg30_prefix_98_selX rho r740)
        (by simpa using seg30_prefix_98_selY rho r741)
        hbrow98
  obtain ⟨b98, hb98⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28415) hbrow98
  have hrb98 : RvkFixedBaseLadder.FixedStepRel 98 (toZMod b98)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX97 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY97 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX98 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY98 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb98]
    exact hr98
  have hp98 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX98 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY98 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 98 b98 _ _ hp97 hrb98).2
  have hbrow99 : (1*(rho 28416))*(1 + (-1)*(rho 28416)) = 0 := by
    simpa [Seg30.relationRow99] using r99
  have hacc99 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc99 (rho 28317 : Seg30.F)
      (seg30AccX98 rho : Seg30.F) (seg30AccY98 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc99] using hp98
  have hr99 : RvkFixedBaseLadder.FixedStepRel 99 (rho 28416)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX98 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY98 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX99 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY99 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc99, seg30AccX99, seg30AccY99, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung99_wide (rho 28317 : Seg30.F) (rho 28416 : Seg30.F) (seg30AccX98 rho : Seg30.F) (seg30AccY98 rho : Seg30.F) (rho 29058 : Seg30.F) (rho 29059 : Seg30.F) (rho 29060 : Seg30.F) (rho 29061 : Seg30.F) (rho 29062 : Seg30.F) hacc99
        (by simpa using seg30_prefix_99_v2 rho r742)
        (by simpa using seg30_prefix_99_addX rho r743)
        (by simpa using seg30_prefix_99_addY rho r744)
        (by simpa using seg30_prefix_99_selX rho r745)
        (by simpa using seg30_prefix_99_selY rho r746)
        hbrow99
  obtain ⟨b99, hb99⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28416) hbrow99
  have hrb99 : RvkFixedBaseLadder.FixedStepRel 99 (toZMod b99)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX98 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY98 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX99 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY99 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb99]
    exact hr99
  have hp99 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX99 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY99 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 99 b99 _ _ hp98 hrb99).2
  have hbrow100 : (1*(rho 28417))*(1 + (-1)*(rho 28417)) = 0 := by
    simpa [Seg30.relationRow100] using r100
  have hacc100 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc100 (rho 28317 : Seg30.F)
      (seg30AccX99 rho : Seg30.F) (seg30AccY99 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc100] using hp99
  have hr100 : RvkFixedBaseLadder.FixedStepRel 100 (rho 28417)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX99 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY99 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX100 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY100 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc100, seg30AccX100, seg30AccY100, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung100_wide (rho 28317 : Seg30.F) (rho 28417 : Seg30.F) (seg30AccX99 rho : Seg30.F) (seg30AccY99 rho : Seg30.F) (rho 29063 : Seg30.F) (rho 29064 : Seg30.F) (rho 29065 : Seg30.F) (rho 29066 : Seg30.F) (rho 29067 : Seg30.F) hacc100
        (by simpa using seg30_prefix_100_v2 rho r747)
        (by simpa using seg30_prefix_100_addX rho r748)
        (by simpa using seg30_prefix_100_addY rho r749)
        (by simpa using seg30_prefix_100_selX rho r750)
        (by simpa using seg30_prefix_100_selY rho r751)
        hbrow100
  obtain ⟨b100, hb100⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28417) hbrow100
  have hrb100 : RvkFixedBaseLadder.FixedStepRel 100 (toZMod b100)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX99 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY99 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX100 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY100 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb100]
    exact hr100
  have hp100 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX100 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY100 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 100 b100 _ _ hp99 hrb100).2
  exact hp100

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


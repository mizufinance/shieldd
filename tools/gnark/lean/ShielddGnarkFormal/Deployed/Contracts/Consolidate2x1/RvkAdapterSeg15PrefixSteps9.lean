import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas9
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

theorem seg15_prefix_steps9 (rho : Nat -> Seg15.F)
    (hp90 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX90 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY90 rho : Seg15.F)⟩ : EdwardsBridge.Point))
    (r91 : Seg15.relationRow91 rho)
    (r702 : Seg15.relationRow702 rho)
    (r703 : Seg15.relationRow703 rho)
    (r704 : Seg15.relationRow704 rho)
    (r705 : Seg15.relationRow705 rho)
    (r706 : Seg15.relationRow706 rho)
    (r92 : Seg15.relationRow92 rho)
    (r707 : Seg15.relationRow707 rho)
    (r708 : Seg15.relationRow708 rho)
    (r709 : Seg15.relationRow709 rho)
    (r710 : Seg15.relationRow710 rho)
    (r711 : Seg15.relationRow711 rho)
    (r93 : Seg15.relationRow93 rho)
    (r712 : Seg15.relationRow712 rho)
    (r713 : Seg15.relationRow713 rho)
    (r714 : Seg15.relationRow714 rho)
    (r715 : Seg15.relationRow715 rho)
    (r716 : Seg15.relationRow716 rho)
    (r94 : Seg15.relationRow94 rho)
    (r717 : Seg15.relationRow717 rho)
    (r718 : Seg15.relationRow718 rho)
    (r719 : Seg15.relationRow719 rho)
    (r720 : Seg15.relationRow720 rho)
    (r721 : Seg15.relationRow721 rho)
    (r95 : Seg15.relationRow95 rho)
    (r722 : Seg15.relationRow722 rho)
    (r723 : Seg15.relationRow723 rho)
    (r724 : Seg15.relationRow724 rho)
    (r725 : Seg15.relationRow725 rho)
    (r726 : Seg15.relationRow726 rho)
    (r96 : Seg15.relationRow96 rho)
    (r727 : Seg15.relationRow727 rho)
    (r728 : Seg15.relationRow728 rho)
    (r729 : Seg15.relationRow729 rho)
    (r730 : Seg15.relationRow730 rho)
    (r731 : Seg15.relationRow731 rho)
    (r97 : Seg15.relationRow97 rho)
    (r732 : Seg15.relationRow732 rho)
    (r733 : Seg15.relationRow733 rho)
    (r734 : Seg15.relationRow734 rho)
    (r735 : Seg15.relationRow735 rho)
    (r736 : Seg15.relationRow736 rho)
    (r98 : Seg15.relationRow98 rho)
    (r737 : Seg15.relationRow737 rho)
    (r738 : Seg15.relationRow738 rho)
    (r739 : Seg15.relationRow739 rho)
    (r740 : Seg15.relationRow740 rho)
    (r741 : Seg15.relationRow741 rho)
    (r99 : Seg15.relationRow99 rho)
    (r742 : Seg15.relationRow742 rho)
    (r743 : Seg15.relationRow743 rho)
    (r744 : Seg15.relationRow744 rho)
    (r745 : Seg15.relationRow745 rho)
    (r746 : Seg15.relationRow746 rho)
    (r100 : Seg15.relationRow100 rho)
    (r747 : Seg15.relationRow747 rho)
    (r748 : Seg15.relationRow748 rho)
    (r749 : Seg15.relationRow749 rho)
    (r750 : Seg15.relationRow750 rho)
    (r751 : Seg15.relationRow751 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX100 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY100 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
  have hbrow91 : (1*(rho 16227))*(1 + (-1)*(rho 16227)) = 0 := by
    simpa [Seg15.relationRow91] using r91
  have hacc91 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc91 (rho 16136 : Seg15.F)
      (seg15AccX90 rho : Seg15.F) (seg15AccY90 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc91] using hp90
  have hr91 : RvkFixedBaseLadder.FixedStepRel 91 (rho 16227)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX90 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY90 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX91 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY91 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc91, seg15AccX91, seg15AccY91, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung91_wide (rho 16136 : Seg15.F) (rho 16227 : Seg15.F) (seg15AccX90 rho : Seg15.F) (seg15AccY90 rho : Seg15.F) (rho 16837 : Seg15.F) (rho 16838 : Seg15.F) (rho 16839 : Seg15.F) (rho 16840 : Seg15.F) (rho 16841 : Seg15.F) hacc91
        (by simpa using seg15_prefix_91_v2 rho r702)
        (by simpa using seg15_prefix_91_addX rho r703)
        (by simpa using seg15_prefix_91_addY rho r704)
        (by simpa using seg15_prefix_91_selX rho r705)
        (by simpa using seg15_prefix_91_selY rho r706)
        hbrow91
  obtain ⟨b91, hb91⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16227) hbrow91
  have hrb91 : RvkFixedBaseLadder.FixedStepRel 91 (toZMod b91)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX90 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY90 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX91 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY91 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb91]
    exact hr91
  have hp91 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX91 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY91 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 91 b91 _ _ hp90 hrb91).2
  have hbrow92 : (1*(rho 16228))*(1 + (-1)*(rho 16228)) = 0 := by
    simpa [Seg15.relationRow92] using r92
  have hacc92 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc92 (rho 16136 : Seg15.F)
      (seg15AccX91 rho : Seg15.F) (seg15AccY91 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc92] using hp91
  have hr92 : RvkFixedBaseLadder.FixedStepRel 92 (rho 16228)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX91 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY91 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX92 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY92 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc92, seg15AccX92, seg15AccY92, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung92_wide (rho 16136 : Seg15.F) (rho 16228 : Seg15.F) (seg15AccX91 rho : Seg15.F) (seg15AccY91 rho : Seg15.F) (rho 16842 : Seg15.F) (rho 16843 : Seg15.F) (rho 16844 : Seg15.F) (rho 16845 : Seg15.F) (rho 16846 : Seg15.F) hacc92
        (by simpa using seg15_prefix_92_v2 rho r707)
        (by simpa using seg15_prefix_92_addX rho r708)
        (by simpa using seg15_prefix_92_addY rho r709)
        (by simpa using seg15_prefix_92_selX rho r710)
        (by simpa using seg15_prefix_92_selY rho r711)
        hbrow92
  obtain ⟨b92, hb92⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16228) hbrow92
  have hrb92 : RvkFixedBaseLadder.FixedStepRel 92 (toZMod b92)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX91 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY91 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX92 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY92 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb92]
    exact hr92
  have hp92 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX92 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY92 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 92 b92 _ _ hp91 hrb92).2
  have hbrow93 : (1*(rho 16229))*(1 + (-1)*(rho 16229)) = 0 := by
    simpa [Seg15.relationRow93] using r93
  have hacc93 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc93 (rho 16136 : Seg15.F)
      (seg15AccX92 rho : Seg15.F) (seg15AccY92 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc93] using hp92
  have hr93 : RvkFixedBaseLadder.FixedStepRel 93 (rho 16229)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX92 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY92 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX93 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY93 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc93, seg15AccX93, seg15AccY93, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung93_wide (rho 16136 : Seg15.F) (rho 16229 : Seg15.F) (seg15AccX92 rho : Seg15.F) (seg15AccY92 rho : Seg15.F) (rho 16847 : Seg15.F) (rho 16848 : Seg15.F) (rho 16849 : Seg15.F) (rho 16850 : Seg15.F) (rho 16851 : Seg15.F) hacc93
        (by simpa using seg15_prefix_93_v2 rho r712)
        (by simpa using seg15_prefix_93_addX rho r713)
        (by simpa using seg15_prefix_93_addY rho r714)
        (by simpa using seg15_prefix_93_selX rho r715)
        (by simpa using seg15_prefix_93_selY rho r716)
        hbrow93
  obtain ⟨b93, hb93⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16229) hbrow93
  have hrb93 : RvkFixedBaseLadder.FixedStepRel 93 (toZMod b93)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX92 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY92 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX93 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY93 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb93]
    exact hr93
  have hp93 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX93 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY93 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 93 b93 _ _ hp92 hrb93).2
  have hbrow94 : (1*(rho 16230))*(1 + (-1)*(rho 16230)) = 0 := by
    simpa [Seg15.relationRow94] using r94
  have hacc94 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc94 (rho 16136 : Seg15.F)
      (seg15AccX93 rho : Seg15.F) (seg15AccY93 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc94] using hp93
  have hr94 : RvkFixedBaseLadder.FixedStepRel 94 (rho 16230)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX93 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY93 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX94 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY94 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc94, seg15AccX94, seg15AccY94, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung94_wide (rho 16136 : Seg15.F) (rho 16230 : Seg15.F) (seg15AccX93 rho : Seg15.F) (seg15AccY93 rho : Seg15.F) (rho 16852 : Seg15.F) (rho 16853 : Seg15.F) (rho 16854 : Seg15.F) (rho 16855 : Seg15.F) (rho 16856 : Seg15.F) hacc94
        (by simpa using seg15_prefix_94_v2 rho r717)
        (by simpa using seg15_prefix_94_addX rho r718)
        (by simpa using seg15_prefix_94_addY rho r719)
        (by simpa using seg15_prefix_94_selX rho r720)
        (by simpa using seg15_prefix_94_selY rho r721)
        hbrow94
  obtain ⟨b94, hb94⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16230) hbrow94
  have hrb94 : RvkFixedBaseLadder.FixedStepRel 94 (toZMod b94)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX93 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY93 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX94 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY94 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb94]
    exact hr94
  have hp94 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX94 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY94 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 94 b94 _ _ hp93 hrb94).2
  have hbrow95 : (1*(rho 16231))*(1 + (-1)*(rho 16231)) = 0 := by
    simpa [Seg15.relationRow95] using r95
  have hacc95 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc95 (rho 16136 : Seg15.F)
      (seg15AccX94 rho : Seg15.F) (seg15AccY94 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc95] using hp94
  have hr95 : RvkFixedBaseLadder.FixedStepRel 95 (rho 16231)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX94 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY94 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX95 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY95 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc95, seg15AccX95, seg15AccY95, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung95_wide (rho 16136 : Seg15.F) (rho 16231 : Seg15.F) (seg15AccX94 rho : Seg15.F) (seg15AccY94 rho : Seg15.F) (rho 16857 : Seg15.F) (rho 16858 : Seg15.F) (rho 16859 : Seg15.F) (rho 16860 : Seg15.F) (rho 16861 : Seg15.F) hacc95
        (by simpa using seg15_prefix_95_v2 rho r722)
        (by simpa using seg15_prefix_95_addX rho r723)
        (by simpa using seg15_prefix_95_addY rho r724)
        (by simpa using seg15_prefix_95_selX rho r725)
        (by simpa using seg15_prefix_95_selY rho r726)
        hbrow95
  obtain ⟨b95, hb95⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16231) hbrow95
  have hrb95 : RvkFixedBaseLadder.FixedStepRel 95 (toZMod b95)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX94 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY94 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX95 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY95 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb95]
    exact hr95
  have hp95 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX95 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY95 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 95 b95 _ _ hp94 hrb95).2
  have hbrow96 : (1*(rho 16232))*(1 + (-1)*(rho 16232)) = 0 := by
    simpa [Seg15.relationRow96] using r96
  have hacc96 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc96 (rho 16136 : Seg15.F)
      (seg15AccX95 rho : Seg15.F) (seg15AccY95 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc96] using hp95
  have hr96 : RvkFixedBaseLadder.FixedStepRel 96 (rho 16232)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX95 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY95 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX96 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY96 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc96, seg15AccX96, seg15AccY96, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung96_wide (rho 16136 : Seg15.F) (rho 16232 : Seg15.F) (seg15AccX95 rho : Seg15.F) (seg15AccY95 rho : Seg15.F) (rho 16862 : Seg15.F) (rho 16863 : Seg15.F) (rho 16864 : Seg15.F) (rho 16865 : Seg15.F) (rho 16866 : Seg15.F) hacc96
        (by simpa using seg15_prefix_96_v2 rho r727)
        (by simpa using seg15_prefix_96_addX rho r728)
        (by simpa using seg15_prefix_96_addY rho r729)
        (by simpa using seg15_prefix_96_selX rho r730)
        (by simpa using seg15_prefix_96_selY rho r731)
        hbrow96
  obtain ⟨b96, hb96⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16232) hbrow96
  have hrb96 : RvkFixedBaseLadder.FixedStepRel 96 (toZMod b96)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX95 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY95 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX96 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY96 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb96]
    exact hr96
  have hp96 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX96 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY96 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 96 b96 _ _ hp95 hrb96).2
  have hbrow97 : (1*(rho 16233))*(1 + (-1)*(rho 16233)) = 0 := by
    simpa [Seg15.relationRow97] using r97
  have hacc97 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc97 (rho 16136 : Seg15.F)
      (seg15AccX96 rho : Seg15.F) (seg15AccY96 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc97] using hp96
  have hr97 : RvkFixedBaseLadder.FixedStepRel 97 (rho 16233)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX96 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY96 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX97 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY97 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc97, seg15AccX97, seg15AccY97, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung97_wide (rho 16136 : Seg15.F) (rho 16233 : Seg15.F) (seg15AccX96 rho : Seg15.F) (seg15AccY96 rho : Seg15.F) (rho 16867 : Seg15.F) (rho 16868 : Seg15.F) (rho 16869 : Seg15.F) (rho 16870 : Seg15.F) (rho 16871 : Seg15.F) hacc97
        (by simpa using seg15_prefix_97_v2 rho r732)
        (by simpa using seg15_prefix_97_addX rho r733)
        (by simpa using seg15_prefix_97_addY rho r734)
        (by simpa using seg15_prefix_97_selX rho r735)
        (by simpa using seg15_prefix_97_selY rho r736)
        hbrow97
  obtain ⟨b97, hb97⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16233) hbrow97
  have hrb97 : RvkFixedBaseLadder.FixedStepRel 97 (toZMod b97)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX96 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY96 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX97 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY97 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb97]
    exact hr97
  have hp97 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX97 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY97 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 97 b97 _ _ hp96 hrb97).2
  have hbrow98 : (1*(rho 16234))*(1 + (-1)*(rho 16234)) = 0 := by
    simpa [Seg15.relationRow98] using r98
  have hacc98 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc98 (rho 16136 : Seg15.F)
      (seg15AccX97 rho : Seg15.F) (seg15AccY97 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc98] using hp97
  have hr98 : RvkFixedBaseLadder.FixedStepRel 98 (rho 16234)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX97 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY97 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX98 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY98 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc98, seg15AccX98, seg15AccY98, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung98_wide (rho 16136 : Seg15.F) (rho 16234 : Seg15.F) (seg15AccX97 rho : Seg15.F) (seg15AccY97 rho : Seg15.F) (rho 16872 : Seg15.F) (rho 16873 : Seg15.F) (rho 16874 : Seg15.F) (rho 16875 : Seg15.F) (rho 16876 : Seg15.F) hacc98
        (by simpa using seg15_prefix_98_v2 rho r737)
        (by simpa using seg15_prefix_98_addX rho r738)
        (by simpa using seg15_prefix_98_addY rho r739)
        (by simpa using seg15_prefix_98_selX rho r740)
        (by simpa using seg15_prefix_98_selY rho r741)
        hbrow98
  obtain ⟨b98, hb98⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16234) hbrow98
  have hrb98 : RvkFixedBaseLadder.FixedStepRel 98 (toZMod b98)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX97 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY97 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX98 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY98 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb98]
    exact hr98
  have hp98 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX98 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY98 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 98 b98 _ _ hp97 hrb98).2
  have hbrow99 : (1*(rho 16235))*(1 + (-1)*(rho 16235)) = 0 := by
    simpa [Seg15.relationRow99] using r99
  have hacc99 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc99 (rho 16136 : Seg15.F)
      (seg15AccX98 rho : Seg15.F) (seg15AccY98 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc99] using hp98
  have hr99 : RvkFixedBaseLadder.FixedStepRel 99 (rho 16235)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX98 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY98 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX99 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY99 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc99, seg15AccX99, seg15AccY99, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung99_wide (rho 16136 : Seg15.F) (rho 16235 : Seg15.F) (seg15AccX98 rho : Seg15.F) (seg15AccY98 rho : Seg15.F) (rho 16877 : Seg15.F) (rho 16878 : Seg15.F) (rho 16879 : Seg15.F) (rho 16880 : Seg15.F) (rho 16881 : Seg15.F) hacc99
        (by simpa using seg15_prefix_99_v2 rho r742)
        (by simpa using seg15_prefix_99_addX rho r743)
        (by simpa using seg15_prefix_99_addY rho r744)
        (by simpa using seg15_prefix_99_selX rho r745)
        (by simpa using seg15_prefix_99_selY rho r746)
        hbrow99
  obtain ⟨b99, hb99⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16235) hbrow99
  have hrb99 : RvkFixedBaseLadder.FixedStepRel 99 (toZMod b99)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX98 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY98 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX99 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY99 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb99]
    exact hr99
  have hp99 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX99 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY99 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 99 b99 _ _ hp98 hrb99).2
  have hbrow100 : (1*(rho 16236))*(1 + (-1)*(rho 16236)) = 0 := by
    simpa [Seg15.relationRow100] using r100
  have hacc100 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc100 (rho 16136 : Seg15.F)
      (seg15AccX99 rho : Seg15.F) (seg15AccY99 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc100] using hp99
  have hr100 : RvkFixedBaseLadder.FixedStepRel 100 (rho 16236)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX99 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY99 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX100 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY100 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc100, seg15AccX100, seg15AccY100, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung100_wide (rho 16136 : Seg15.F) (rho 16236 : Seg15.F) (seg15AccX99 rho : Seg15.F) (seg15AccY99 rho : Seg15.F) (rho 16882 : Seg15.F) (rho 16883 : Seg15.F) (rho 16884 : Seg15.F) (rho 16885 : Seg15.F) (rho 16886 : Seg15.F) hacc100
        (by simpa using seg15_prefix_100_v2 rho r747)
        (by simpa using seg15_prefix_100_addX rho r748)
        (by simpa using seg15_prefix_100_addY rho r749)
        (by simpa using seg15_prefix_100_selX rho r750)
        (by simpa using seg15_prefix_100_selY rho r751)
        hbrow100
  obtain ⟨b100, hb100⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16236) hbrow100
  have hrb100 : RvkFixedBaseLadder.FixedStepRel 100 (toZMod b100)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX99 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY99 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX100 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY100 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb100]
    exact hr100
  have hp100 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX100 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY100 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 100 b100 _ _ hp99 hrb100).2
  exact hp100

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31PrefixLemmas9
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

theorem seg31_prefix_steps9 (rho : Nat -> Seg31.F)
    (hp90 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX90 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY90 rho : Seg31.F)⟩ : EdwardsBridge.Point))
    (r91 : Seg31.relationRow91 rho)
    (r702 : Seg31.relationRow702 rho)
    (r703 : Seg31.relationRow703 rho)
    (r704 : Seg31.relationRow704 rho)
    (r705 : Seg31.relationRow705 rho)
    (r706 : Seg31.relationRow706 rho)
    (r92 : Seg31.relationRow92 rho)
    (r707 : Seg31.relationRow707 rho)
    (r708 : Seg31.relationRow708 rho)
    (r709 : Seg31.relationRow709 rho)
    (r710 : Seg31.relationRow710 rho)
    (r711 : Seg31.relationRow711 rho)
    (r93 : Seg31.relationRow93 rho)
    (r712 : Seg31.relationRow712 rho)
    (r713 : Seg31.relationRow713 rho)
    (r714 : Seg31.relationRow714 rho)
    (r715 : Seg31.relationRow715 rho)
    (r716 : Seg31.relationRow716 rho)
    (r94 : Seg31.relationRow94 rho)
    (r717 : Seg31.relationRow717 rho)
    (r718 : Seg31.relationRow718 rho)
    (r719 : Seg31.relationRow719 rho)
    (r720 : Seg31.relationRow720 rho)
    (r721 : Seg31.relationRow721 rho)
    (r95 : Seg31.relationRow95 rho)
    (r722 : Seg31.relationRow722 rho)
    (r723 : Seg31.relationRow723 rho)
    (r724 : Seg31.relationRow724 rho)
    (r725 : Seg31.relationRow725 rho)
    (r726 : Seg31.relationRow726 rho)
    (r96 : Seg31.relationRow96 rho)
    (r727 : Seg31.relationRow727 rho)
    (r728 : Seg31.relationRow728 rho)
    (r729 : Seg31.relationRow729 rho)
    (r730 : Seg31.relationRow730 rho)
    (r731 : Seg31.relationRow731 rho)
    (r97 : Seg31.relationRow97 rho)
    (r732 : Seg31.relationRow732 rho)
    (r733 : Seg31.relationRow733 rho)
    (r734 : Seg31.relationRow734 rho)
    (r735 : Seg31.relationRow735 rho)
    (r736 : Seg31.relationRow736 rho)
    (r98 : Seg31.relationRow98 rho)
    (r737 : Seg31.relationRow737 rho)
    (r738 : Seg31.relationRow738 rho)
    (r739 : Seg31.relationRow739 rho)
    (r740 : Seg31.relationRow740 rho)
    (r741 : Seg31.relationRow741 rho)
    (r99 : Seg31.relationRow99 rho)
    (r742 : Seg31.relationRow742 rho)
    (r743 : Seg31.relationRow743 rho)
    (r744 : Seg31.relationRow744 rho)
    (r745 : Seg31.relationRow745 rho)
    (r746 : Seg31.relationRow746 rho)
    (r100 : Seg31.relationRow100 rho)
    (r747 : Seg31.relationRow747 rho)
    (r748 : Seg31.relationRow748 rho)
    (r749 : Seg31.relationRow749 rho)
    (r750 : Seg31.relationRow750 rho)
    (r751 : Seg31.relationRow751 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX100 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY100 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
  have hbrow91 : (1*(rho 29362))*(1 + (-1)*(rho 29362)) = 0 := by
    simpa [Seg31.relationRow91] using r91
  have hacc91 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc91 (rho 29271 : Seg31.F)
      (seg31AccX90 rho : Seg31.F) (seg31AccY90 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc91] using hp90
  have hr91 : RvkFixedBaseLadder.FixedStepRel 91 (rho 29362)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX90 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY90 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX91 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY91 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc91, seg31AccX91, seg31AccY91, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung91_wide (rho 29271 : Seg31.F) (rho 29362 : Seg31.F) (seg31AccX90 rho : Seg31.F) (seg31AccY90 rho : Seg31.F) (rho 29972 : Seg31.F) (rho 29973 : Seg31.F) (rho 29974 : Seg31.F) (rho 29975 : Seg31.F) (rho 29976 : Seg31.F) hacc91
        (by simpa using seg31_prefix_91_v2 rho r702)
        (by simpa using seg31_prefix_91_addX rho r703)
        (by simpa using seg31_prefix_91_addY rho r704)
        (by simpa using seg31_prefix_91_selX rho r705)
        (by simpa using seg31_prefix_91_selY rho r706)
        hbrow91
  obtain ⟨b91, hb91⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29362) hbrow91
  have hrb91 : RvkFixedBaseLadder.FixedStepRel 91 (toZMod b91)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX90 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY90 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX91 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY91 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb91]
    exact hr91
  have hp91 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX91 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY91 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 91 b91 _ _ hp90 hrb91).2
  have hbrow92 : (1*(rho 29363))*(1 + (-1)*(rho 29363)) = 0 := by
    simpa [Seg31.relationRow92] using r92
  have hacc92 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc92 (rho 29271 : Seg31.F)
      (seg31AccX91 rho : Seg31.F) (seg31AccY91 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc92] using hp91
  have hr92 : RvkFixedBaseLadder.FixedStepRel 92 (rho 29363)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX91 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY91 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX92 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY92 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc92, seg31AccX92, seg31AccY92, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung92_wide (rho 29271 : Seg31.F) (rho 29363 : Seg31.F) (seg31AccX91 rho : Seg31.F) (seg31AccY91 rho : Seg31.F) (rho 29977 : Seg31.F) (rho 29978 : Seg31.F) (rho 29979 : Seg31.F) (rho 29980 : Seg31.F) (rho 29981 : Seg31.F) hacc92
        (by simpa using seg31_prefix_92_v2 rho r707)
        (by simpa using seg31_prefix_92_addX rho r708)
        (by simpa using seg31_prefix_92_addY rho r709)
        (by simpa using seg31_prefix_92_selX rho r710)
        (by simpa using seg31_prefix_92_selY rho r711)
        hbrow92
  obtain ⟨b92, hb92⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29363) hbrow92
  have hrb92 : RvkFixedBaseLadder.FixedStepRel 92 (toZMod b92)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX91 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY91 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX92 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY92 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb92]
    exact hr92
  have hp92 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX92 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY92 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 92 b92 _ _ hp91 hrb92).2
  have hbrow93 : (1*(rho 29364))*(1 + (-1)*(rho 29364)) = 0 := by
    simpa [Seg31.relationRow93] using r93
  have hacc93 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc93 (rho 29271 : Seg31.F)
      (seg31AccX92 rho : Seg31.F) (seg31AccY92 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc93] using hp92
  have hr93 : RvkFixedBaseLadder.FixedStepRel 93 (rho 29364)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX92 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY92 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX93 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY93 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc93, seg31AccX93, seg31AccY93, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung93_wide (rho 29271 : Seg31.F) (rho 29364 : Seg31.F) (seg31AccX92 rho : Seg31.F) (seg31AccY92 rho : Seg31.F) (rho 29982 : Seg31.F) (rho 29983 : Seg31.F) (rho 29984 : Seg31.F) (rho 29985 : Seg31.F) (rho 29986 : Seg31.F) hacc93
        (by simpa using seg31_prefix_93_v2 rho r712)
        (by simpa using seg31_prefix_93_addX rho r713)
        (by simpa using seg31_prefix_93_addY rho r714)
        (by simpa using seg31_prefix_93_selX rho r715)
        (by simpa using seg31_prefix_93_selY rho r716)
        hbrow93
  obtain ⟨b93, hb93⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29364) hbrow93
  have hrb93 : RvkFixedBaseLadder.FixedStepRel 93 (toZMod b93)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX92 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY92 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX93 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY93 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb93]
    exact hr93
  have hp93 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX93 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY93 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 93 b93 _ _ hp92 hrb93).2
  have hbrow94 : (1*(rho 29365))*(1 + (-1)*(rho 29365)) = 0 := by
    simpa [Seg31.relationRow94] using r94
  have hacc94 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc94 (rho 29271 : Seg31.F)
      (seg31AccX93 rho : Seg31.F) (seg31AccY93 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc94] using hp93
  have hr94 : RvkFixedBaseLadder.FixedStepRel 94 (rho 29365)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX93 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY93 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX94 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY94 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc94, seg31AccX94, seg31AccY94, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung94_wide (rho 29271 : Seg31.F) (rho 29365 : Seg31.F) (seg31AccX93 rho : Seg31.F) (seg31AccY93 rho : Seg31.F) (rho 29987 : Seg31.F) (rho 29988 : Seg31.F) (rho 29989 : Seg31.F) (rho 29990 : Seg31.F) (rho 29991 : Seg31.F) hacc94
        (by simpa using seg31_prefix_94_v2 rho r717)
        (by simpa using seg31_prefix_94_addX rho r718)
        (by simpa using seg31_prefix_94_addY rho r719)
        (by simpa using seg31_prefix_94_selX rho r720)
        (by simpa using seg31_prefix_94_selY rho r721)
        hbrow94
  obtain ⟨b94, hb94⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29365) hbrow94
  have hrb94 : RvkFixedBaseLadder.FixedStepRel 94 (toZMod b94)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX93 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY93 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX94 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY94 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb94]
    exact hr94
  have hp94 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX94 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY94 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 94 b94 _ _ hp93 hrb94).2
  have hbrow95 : (1*(rho 29366))*(1 + (-1)*(rho 29366)) = 0 := by
    simpa [Seg31.relationRow95] using r95
  have hacc95 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc95 (rho 29271 : Seg31.F)
      (seg31AccX94 rho : Seg31.F) (seg31AccY94 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc95] using hp94
  have hr95 : RvkFixedBaseLadder.FixedStepRel 95 (rho 29366)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX94 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY94 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX95 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY95 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc95, seg31AccX95, seg31AccY95, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung95_wide (rho 29271 : Seg31.F) (rho 29366 : Seg31.F) (seg31AccX94 rho : Seg31.F) (seg31AccY94 rho : Seg31.F) (rho 29992 : Seg31.F) (rho 29993 : Seg31.F) (rho 29994 : Seg31.F) (rho 29995 : Seg31.F) (rho 29996 : Seg31.F) hacc95
        (by simpa using seg31_prefix_95_v2 rho r722)
        (by simpa using seg31_prefix_95_addX rho r723)
        (by simpa using seg31_prefix_95_addY rho r724)
        (by simpa using seg31_prefix_95_selX rho r725)
        (by simpa using seg31_prefix_95_selY rho r726)
        hbrow95
  obtain ⟨b95, hb95⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29366) hbrow95
  have hrb95 : RvkFixedBaseLadder.FixedStepRel 95 (toZMod b95)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX94 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY94 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX95 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY95 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb95]
    exact hr95
  have hp95 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX95 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY95 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 95 b95 _ _ hp94 hrb95).2
  have hbrow96 : (1*(rho 29367))*(1 + (-1)*(rho 29367)) = 0 := by
    simpa [Seg31.relationRow96] using r96
  have hacc96 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc96 (rho 29271 : Seg31.F)
      (seg31AccX95 rho : Seg31.F) (seg31AccY95 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc96] using hp95
  have hr96 : RvkFixedBaseLadder.FixedStepRel 96 (rho 29367)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX95 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY95 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX96 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY96 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc96, seg31AccX96, seg31AccY96, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung96_wide (rho 29271 : Seg31.F) (rho 29367 : Seg31.F) (seg31AccX95 rho : Seg31.F) (seg31AccY95 rho : Seg31.F) (rho 29997 : Seg31.F) (rho 29998 : Seg31.F) (rho 29999 : Seg31.F) (rho 30000 : Seg31.F) (rho 30001 : Seg31.F) hacc96
        (by simpa using seg31_prefix_96_v2 rho r727)
        (by simpa using seg31_prefix_96_addX rho r728)
        (by simpa using seg31_prefix_96_addY rho r729)
        (by simpa using seg31_prefix_96_selX rho r730)
        (by simpa using seg31_prefix_96_selY rho r731)
        hbrow96
  obtain ⟨b96, hb96⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29367) hbrow96
  have hrb96 : RvkFixedBaseLadder.FixedStepRel 96 (toZMod b96)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX95 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY95 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX96 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY96 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb96]
    exact hr96
  have hp96 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX96 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY96 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 96 b96 _ _ hp95 hrb96).2
  have hbrow97 : (1*(rho 29368))*(1 + (-1)*(rho 29368)) = 0 := by
    simpa [Seg31.relationRow97] using r97
  have hacc97 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc97 (rho 29271 : Seg31.F)
      (seg31AccX96 rho : Seg31.F) (seg31AccY96 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc97] using hp96
  have hr97 : RvkFixedBaseLadder.FixedStepRel 97 (rho 29368)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX96 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY96 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX97 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY97 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc97, seg31AccX97, seg31AccY97, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung97_wide (rho 29271 : Seg31.F) (rho 29368 : Seg31.F) (seg31AccX96 rho : Seg31.F) (seg31AccY96 rho : Seg31.F) (rho 30002 : Seg31.F) (rho 30003 : Seg31.F) (rho 30004 : Seg31.F) (rho 30005 : Seg31.F) (rho 30006 : Seg31.F) hacc97
        (by simpa using seg31_prefix_97_v2 rho r732)
        (by simpa using seg31_prefix_97_addX rho r733)
        (by simpa using seg31_prefix_97_addY rho r734)
        (by simpa using seg31_prefix_97_selX rho r735)
        (by simpa using seg31_prefix_97_selY rho r736)
        hbrow97
  obtain ⟨b97, hb97⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29368) hbrow97
  have hrb97 : RvkFixedBaseLadder.FixedStepRel 97 (toZMod b97)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX96 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY96 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX97 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY97 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb97]
    exact hr97
  have hp97 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX97 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY97 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 97 b97 _ _ hp96 hrb97).2
  have hbrow98 : (1*(rho 29369))*(1 + (-1)*(rho 29369)) = 0 := by
    simpa [Seg31.relationRow98] using r98
  have hacc98 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc98 (rho 29271 : Seg31.F)
      (seg31AccX97 rho : Seg31.F) (seg31AccY97 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc98] using hp97
  have hr98 : RvkFixedBaseLadder.FixedStepRel 98 (rho 29369)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX97 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY97 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX98 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY98 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc98, seg31AccX98, seg31AccY98, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung98_wide (rho 29271 : Seg31.F) (rho 29369 : Seg31.F) (seg31AccX97 rho : Seg31.F) (seg31AccY97 rho : Seg31.F) (rho 30007 : Seg31.F) (rho 30008 : Seg31.F) (rho 30009 : Seg31.F) (rho 30010 : Seg31.F) (rho 30011 : Seg31.F) hacc98
        (by simpa using seg31_prefix_98_v2 rho r737)
        (by simpa using seg31_prefix_98_addX rho r738)
        (by simpa using seg31_prefix_98_addY rho r739)
        (by simpa using seg31_prefix_98_selX rho r740)
        (by simpa using seg31_prefix_98_selY rho r741)
        hbrow98
  obtain ⟨b98, hb98⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29369) hbrow98
  have hrb98 : RvkFixedBaseLadder.FixedStepRel 98 (toZMod b98)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX97 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY97 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX98 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY98 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb98]
    exact hr98
  have hp98 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX98 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY98 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 98 b98 _ _ hp97 hrb98).2
  have hbrow99 : (1*(rho 29370))*(1 + (-1)*(rho 29370)) = 0 := by
    simpa [Seg31.relationRow99] using r99
  have hacc99 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc99 (rho 29271 : Seg31.F)
      (seg31AccX98 rho : Seg31.F) (seg31AccY98 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc99] using hp98
  have hr99 : RvkFixedBaseLadder.FixedStepRel 99 (rho 29370)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX98 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY98 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX99 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY99 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc99, seg31AccX99, seg31AccY99, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung99_wide (rho 29271 : Seg31.F) (rho 29370 : Seg31.F) (seg31AccX98 rho : Seg31.F) (seg31AccY98 rho : Seg31.F) (rho 30012 : Seg31.F) (rho 30013 : Seg31.F) (rho 30014 : Seg31.F) (rho 30015 : Seg31.F) (rho 30016 : Seg31.F) hacc99
        (by simpa using seg31_prefix_99_v2 rho r742)
        (by simpa using seg31_prefix_99_addX rho r743)
        (by simpa using seg31_prefix_99_addY rho r744)
        (by simpa using seg31_prefix_99_selX rho r745)
        (by simpa using seg31_prefix_99_selY rho r746)
        hbrow99
  obtain ⟨b99, hb99⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29370) hbrow99
  have hrb99 : RvkFixedBaseLadder.FixedStepRel 99 (toZMod b99)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX98 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY98 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX99 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY99 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb99]
    exact hr99
  have hp99 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX99 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY99 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 99 b99 _ _ hp98 hrb99).2
  have hbrow100 : (1*(rho 29371))*(1 + (-1)*(rho 29371)) = 0 := by
    simpa [Seg31.relationRow100] using r100
  have hacc100 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc100 (rho 29271 : Seg31.F)
      (seg31AccX99 rho : Seg31.F) (seg31AccY99 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc100] using hp99
  have hr100 : RvkFixedBaseLadder.FixedStepRel 100 (rho 29371)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX99 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY99 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX100 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY100 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc100, seg31AccX100, seg31AccY100, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung100_wide (rho 29271 : Seg31.F) (rho 29371 : Seg31.F) (seg31AccX99 rho : Seg31.F) (seg31AccY99 rho : Seg31.F) (rho 30017 : Seg31.F) (rho 30018 : Seg31.F) (rho 30019 : Seg31.F) (rho 30020 : Seg31.F) (rho 30021 : Seg31.F) hacc100
        (by simpa using seg31_prefix_100_v2 rho r747)
        (by simpa using seg31_prefix_100_addX rho r748)
        (by simpa using seg31_prefix_100_addY rho r749)
        (by simpa using seg31_prefix_100_selX rho r750)
        (by simpa using seg31_prefix_100_selY rho r751)
        hbrow100
  obtain ⟨b100, hb100⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29371) hbrow100
  have hrb100 : RvkFixedBaseLadder.FixedStepRel 100 (toZMod b100)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX99 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY99 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX100 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY100 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb100]
    exact hr100
  have hp100 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX100 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY100 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 100 b100 _ _ hp99 hrb100).2
  exact hp100

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


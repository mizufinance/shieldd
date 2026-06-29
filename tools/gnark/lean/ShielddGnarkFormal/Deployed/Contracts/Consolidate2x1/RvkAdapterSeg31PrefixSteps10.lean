import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31PrefixLemmas10
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

theorem seg31_prefix_steps10 (rho : Nat -> Seg31.F)
    (hp100 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX100 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY100 rho : Seg31.F)⟩ : EdwardsBridge.Point))
    (r101 : Seg31.relationRow101 rho)
    (r752 : Seg31.relationRow752 rho)
    (r753 : Seg31.relationRow753 rho)
    (r754 : Seg31.relationRow754 rho)
    (r755 : Seg31.relationRow755 rho)
    (r756 : Seg31.relationRow756 rho)
    (r102 : Seg31.relationRow102 rho)
    (r757 : Seg31.relationRow757 rho)
    (r758 : Seg31.relationRow758 rho)
    (r759 : Seg31.relationRow759 rho)
    (r760 : Seg31.relationRow760 rho)
    (r761 : Seg31.relationRow761 rho)
    (r103 : Seg31.relationRow103 rho)
    (r762 : Seg31.relationRow762 rho)
    (r763 : Seg31.relationRow763 rho)
    (r764 : Seg31.relationRow764 rho)
    (r765 : Seg31.relationRow765 rho)
    (r766 : Seg31.relationRow766 rho)
    (r104 : Seg31.relationRow104 rho)
    (r767 : Seg31.relationRow767 rho)
    (r768 : Seg31.relationRow768 rho)
    (r769 : Seg31.relationRow769 rho)
    (r770 : Seg31.relationRow770 rho)
    (r771 : Seg31.relationRow771 rho)
    (r105 : Seg31.relationRow105 rho)
    (r772 : Seg31.relationRow772 rho)
    (r773 : Seg31.relationRow773 rho)
    (r774 : Seg31.relationRow774 rho)
    (r775 : Seg31.relationRow775 rho)
    (r776 : Seg31.relationRow776 rho)
    (r106 : Seg31.relationRow106 rho)
    (r777 : Seg31.relationRow777 rho)
    (r778 : Seg31.relationRow778 rho)
    (r779 : Seg31.relationRow779 rho)
    (r780 : Seg31.relationRow780 rho)
    (r781 : Seg31.relationRow781 rho)
    (r107 : Seg31.relationRow107 rho)
    (r782 : Seg31.relationRow782 rho)
    (r783 : Seg31.relationRow783 rho)
    (r784 : Seg31.relationRow784 rho)
    (r785 : Seg31.relationRow785 rho)
    (r786 : Seg31.relationRow786 rho)
    (r108 : Seg31.relationRow108 rho)
    (r787 : Seg31.relationRow787 rho)
    (r788 : Seg31.relationRow788 rho)
    (r789 : Seg31.relationRow789 rho)
    (r790 : Seg31.relationRow790 rho)
    (r791 : Seg31.relationRow791 rho)
    (r109 : Seg31.relationRow109 rho)
    (r792 : Seg31.relationRow792 rho)
    (r793 : Seg31.relationRow793 rho)
    (r794 : Seg31.relationRow794 rho)
    (r795 : Seg31.relationRow795 rho)
    (r796 : Seg31.relationRow796 rho)
    (r110 : Seg31.relationRow110 rho)
    (r797 : Seg31.relationRow797 rho)
    (r798 : Seg31.relationRow798 rho)
    (r799 : Seg31.relationRow799 rho)
    (r800 : Seg31.relationRow800 rho)
    (r801 : Seg31.relationRow801 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX110 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY110 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
  have hbrow101 : (1*(rho 29372))*(1 + (-1)*(rho 29372)) = 0 := by
    simpa [Seg31.relationRow101] using r101
  have hacc101 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc101 (rho 29271 : Seg31.F)
      (seg31AccX100 rho : Seg31.F) (seg31AccY100 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc101] using hp100
  have hr101 : RvkFixedBaseLadder.FixedStepRel 101 (rho 29372)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX100 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY100 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX101 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY101 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc101, seg31AccX101, seg31AccY101, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung101_wide (rho 29271 : Seg31.F) (rho 29372 : Seg31.F) (seg31AccX100 rho : Seg31.F) (seg31AccY100 rho : Seg31.F) (rho 30022 : Seg31.F) (rho 30023 : Seg31.F) (rho 30024 : Seg31.F) (rho 30025 : Seg31.F) (rho 30026 : Seg31.F) hacc101
        (by simpa using seg31_prefix_101_v2 rho r752)
        (by simpa using seg31_prefix_101_addX rho r753)
        (by simpa using seg31_prefix_101_addY rho r754)
        (by simpa using seg31_prefix_101_selX rho r755)
        (by simpa using seg31_prefix_101_selY rho r756)
        hbrow101
  obtain ⟨b101, hb101⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29372) hbrow101
  have hrb101 : RvkFixedBaseLadder.FixedStepRel 101 (toZMod b101)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX100 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY100 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX101 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY101 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb101]
    exact hr101
  have hp101 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX101 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY101 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 101 b101 _ _ hp100 hrb101).2
  have hbrow102 : (1*(rho 29373))*(1 + (-1)*(rho 29373)) = 0 := by
    simpa [Seg31.relationRow102] using r102
  have hacc102 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc102 (rho 29271 : Seg31.F)
      (seg31AccX101 rho : Seg31.F) (seg31AccY101 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc102] using hp101
  have hr102 : RvkFixedBaseLadder.FixedStepRel 102 (rho 29373)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX101 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY101 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX102 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY102 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc102, seg31AccX102, seg31AccY102, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung102_wide (rho 29271 : Seg31.F) (rho 29373 : Seg31.F) (seg31AccX101 rho : Seg31.F) (seg31AccY101 rho : Seg31.F) (rho 30027 : Seg31.F) (rho 30028 : Seg31.F) (rho 30029 : Seg31.F) (rho 30030 : Seg31.F) (rho 30031 : Seg31.F) hacc102
        (by simpa using seg31_prefix_102_v2 rho r757)
        (by simpa using seg31_prefix_102_addX rho r758)
        (by simpa using seg31_prefix_102_addY rho r759)
        (by simpa using seg31_prefix_102_selX rho r760)
        (by simpa using seg31_prefix_102_selY rho r761)
        hbrow102
  obtain ⟨b102, hb102⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29373) hbrow102
  have hrb102 : RvkFixedBaseLadder.FixedStepRel 102 (toZMod b102)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX101 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY101 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX102 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY102 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb102]
    exact hr102
  have hp102 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX102 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY102 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 102 b102 _ _ hp101 hrb102).2
  have hbrow103 : (1*(rho 29374))*(1 + (-1)*(rho 29374)) = 0 := by
    simpa [Seg31.relationRow103] using r103
  have hacc103 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc103 (rho 29271 : Seg31.F)
      (seg31AccX102 rho : Seg31.F) (seg31AccY102 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc103] using hp102
  have hr103 : RvkFixedBaseLadder.FixedStepRel 103 (rho 29374)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX102 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY102 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX103 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY103 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc103, seg31AccX103, seg31AccY103, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung103_wide (rho 29271 : Seg31.F) (rho 29374 : Seg31.F) (seg31AccX102 rho : Seg31.F) (seg31AccY102 rho : Seg31.F) (rho 30032 : Seg31.F) (rho 30033 : Seg31.F) (rho 30034 : Seg31.F) (rho 30035 : Seg31.F) (rho 30036 : Seg31.F) hacc103
        (by simpa using seg31_prefix_103_v2 rho r762)
        (by simpa using seg31_prefix_103_addX rho r763)
        (by simpa using seg31_prefix_103_addY rho r764)
        (by simpa using seg31_prefix_103_selX rho r765)
        (by simpa using seg31_prefix_103_selY rho r766)
        hbrow103
  obtain ⟨b103, hb103⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29374) hbrow103
  have hrb103 : RvkFixedBaseLadder.FixedStepRel 103 (toZMod b103)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX102 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY102 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX103 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY103 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb103]
    exact hr103
  have hp103 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX103 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY103 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 103 b103 _ _ hp102 hrb103).2
  have hbrow104 : (1*(rho 29375))*(1 + (-1)*(rho 29375)) = 0 := by
    simpa [Seg31.relationRow104] using r104
  have hacc104 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc104 (rho 29271 : Seg31.F)
      (seg31AccX103 rho : Seg31.F) (seg31AccY103 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc104] using hp103
  have hr104 : RvkFixedBaseLadder.FixedStepRel 104 (rho 29375)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX103 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY103 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX104 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY104 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc104, seg31AccX104, seg31AccY104, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung104_wide (rho 29271 : Seg31.F) (rho 29375 : Seg31.F) (seg31AccX103 rho : Seg31.F) (seg31AccY103 rho : Seg31.F) (rho 30037 : Seg31.F) (rho 30038 : Seg31.F) (rho 30039 : Seg31.F) (rho 30040 : Seg31.F) (rho 30041 : Seg31.F) hacc104
        (by simpa using seg31_prefix_104_v2 rho r767)
        (by simpa using seg31_prefix_104_addX rho r768)
        (by simpa using seg31_prefix_104_addY rho r769)
        (by simpa using seg31_prefix_104_selX rho r770)
        (by simpa using seg31_prefix_104_selY rho r771)
        hbrow104
  obtain ⟨b104, hb104⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29375) hbrow104
  have hrb104 : RvkFixedBaseLadder.FixedStepRel 104 (toZMod b104)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX103 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY103 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX104 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY104 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb104]
    exact hr104
  have hp104 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX104 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY104 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 104 b104 _ _ hp103 hrb104).2
  have hbrow105 : (1*(rho 29376))*(1 + (-1)*(rho 29376)) = 0 := by
    simpa [Seg31.relationRow105] using r105
  have hacc105 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc105 (rho 29271 : Seg31.F)
      (seg31AccX104 rho : Seg31.F) (seg31AccY104 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc105] using hp104
  have hr105 : RvkFixedBaseLadder.FixedStepRel 105 (rho 29376)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX104 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY104 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX105 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY105 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc105, seg31AccX105, seg31AccY105, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung105_wide (rho 29271 : Seg31.F) (rho 29376 : Seg31.F) (seg31AccX104 rho : Seg31.F) (seg31AccY104 rho : Seg31.F) (rho 30042 : Seg31.F) (rho 30043 : Seg31.F) (rho 30044 : Seg31.F) (rho 30045 : Seg31.F) (rho 30046 : Seg31.F) hacc105
        (by simpa using seg31_prefix_105_v2 rho r772)
        (by simpa using seg31_prefix_105_addX rho r773)
        (by simpa using seg31_prefix_105_addY rho r774)
        (by simpa using seg31_prefix_105_selX rho r775)
        (by simpa using seg31_prefix_105_selY rho r776)
        hbrow105
  obtain ⟨b105, hb105⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29376) hbrow105
  have hrb105 : RvkFixedBaseLadder.FixedStepRel 105 (toZMod b105)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX104 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY104 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX105 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY105 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb105]
    exact hr105
  have hp105 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX105 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY105 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 105 b105 _ _ hp104 hrb105).2
  have hbrow106 : (1*(rho 29377))*(1 + (-1)*(rho 29377)) = 0 := by
    simpa [Seg31.relationRow106] using r106
  have hacc106 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc106 (rho 29271 : Seg31.F)
      (seg31AccX105 rho : Seg31.F) (seg31AccY105 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc106] using hp105
  have hr106 : RvkFixedBaseLadder.FixedStepRel 106 (rho 29377)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX105 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY105 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX106 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY106 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc106, seg31AccX106, seg31AccY106, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung106_wide (rho 29271 : Seg31.F) (rho 29377 : Seg31.F) (seg31AccX105 rho : Seg31.F) (seg31AccY105 rho : Seg31.F) (rho 30047 : Seg31.F) (rho 30048 : Seg31.F) (rho 30049 : Seg31.F) (rho 30050 : Seg31.F) (rho 30051 : Seg31.F) hacc106
        (by simpa using seg31_prefix_106_v2 rho r777)
        (by simpa using seg31_prefix_106_addX rho r778)
        (by simpa using seg31_prefix_106_addY rho r779)
        (by simpa using seg31_prefix_106_selX rho r780)
        (by simpa using seg31_prefix_106_selY rho r781)
        hbrow106
  obtain ⟨b106, hb106⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29377) hbrow106
  have hrb106 : RvkFixedBaseLadder.FixedStepRel 106 (toZMod b106)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX105 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY105 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX106 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY106 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb106]
    exact hr106
  have hp106 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX106 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY106 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 106 b106 _ _ hp105 hrb106).2
  have hbrow107 : (1*(rho 29378))*(1 + (-1)*(rho 29378)) = 0 := by
    simpa [Seg31.relationRow107] using r107
  have hacc107 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc107 (rho 29271 : Seg31.F)
      (seg31AccX106 rho : Seg31.F) (seg31AccY106 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc107] using hp106
  have hr107 : RvkFixedBaseLadder.FixedStepRel 107 (rho 29378)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX106 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY106 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX107 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY107 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc107, seg31AccX107, seg31AccY107, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung107_wide (rho 29271 : Seg31.F) (rho 29378 : Seg31.F) (seg31AccX106 rho : Seg31.F) (seg31AccY106 rho : Seg31.F) (rho 30052 : Seg31.F) (rho 30053 : Seg31.F) (rho 30054 : Seg31.F) (rho 30055 : Seg31.F) (rho 30056 : Seg31.F) hacc107
        (by simpa using seg31_prefix_107_v2 rho r782)
        (by simpa using seg31_prefix_107_addX rho r783)
        (by simpa using seg31_prefix_107_addY rho r784)
        (by simpa using seg31_prefix_107_selX rho r785)
        (by simpa using seg31_prefix_107_selY rho r786)
        hbrow107
  obtain ⟨b107, hb107⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29378) hbrow107
  have hrb107 : RvkFixedBaseLadder.FixedStepRel 107 (toZMod b107)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX106 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY106 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX107 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY107 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb107]
    exact hr107
  have hp107 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX107 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY107 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 107 b107 _ _ hp106 hrb107).2
  have hbrow108 : (1*(rho 29379))*(1 + (-1)*(rho 29379)) = 0 := by
    simpa [Seg31.relationRow108] using r108
  have hacc108 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc108 (rho 29271 : Seg31.F)
      (seg31AccX107 rho : Seg31.F) (seg31AccY107 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc108] using hp107
  have hr108 : RvkFixedBaseLadder.FixedStepRel 108 (rho 29379)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX107 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY107 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX108 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY108 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc108, seg31AccX108, seg31AccY108, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung108_wide (rho 29271 : Seg31.F) (rho 29379 : Seg31.F) (seg31AccX107 rho : Seg31.F) (seg31AccY107 rho : Seg31.F) (rho 30057 : Seg31.F) (rho 30058 : Seg31.F) (rho 30059 : Seg31.F) (rho 30060 : Seg31.F) (rho 30061 : Seg31.F) hacc108
        (by simpa using seg31_prefix_108_v2 rho r787)
        (by simpa using seg31_prefix_108_addX rho r788)
        (by simpa using seg31_prefix_108_addY rho r789)
        (by simpa using seg31_prefix_108_selX rho r790)
        (by simpa using seg31_prefix_108_selY rho r791)
        hbrow108
  obtain ⟨b108, hb108⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29379) hbrow108
  have hrb108 : RvkFixedBaseLadder.FixedStepRel 108 (toZMod b108)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX107 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY107 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX108 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY108 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb108]
    exact hr108
  have hp108 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX108 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY108 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 108 b108 _ _ hp107 hrb108).2
  have hbrow109 : (1*(rho 29380))*(1 + (-1)*(rho 29380)) = 0 := by
    simpa [Seg31.relationRow109] using r109
  have hacc109 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc109 (rho 29271 : Seg31.F)
      (seg31AccX108 rho : Seg31.F) (seg31AccY108 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc109] using hp108
  have hr109 : RvkFixedBaseLadder.FixedStepRel 109 (rho 29380)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX108 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY108 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX109 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY109 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc109, seg31AccX109, seg31AccY109, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung109_wide (rho 29271 : Seg31.F) (rho 29380 : Seg31.F) (seg31AccX108 rho : Seg31.F) (seg31AccY108 rho : Seg31.F) (rho 30062 : Seg31.F) (rho 30063 : Seg31.F) (rho 30064 : Seg31.F) (rho 30065 : Seg31.F) (rho 30066 : Seg31.F) hacc109
        (by simpa using seg31_prefix_109_v2 rho r792)
        (by simpa using seg31_prefix_109_addX rho r793)
        (by simpa using seg31_prefix_109_addY rho r794)
        (by simpa using seg31_prefix_109_selX rho r795)
        (by simpa using seg31_prefix_109_selY rho r796)
        hbrow109
  obtain ⟨b109, hb109⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29380) hbrow109
  have hrb109 : RvkFixedBaseLadder.FixedStepRel 109 (toZMod b109)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX108 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY108 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX109 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY109 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb109]
    exact hr109
  have hp109 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX109 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY109 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 109 b109 _ _ hp108 hrb109).2
  have hbrow110 : (1*(rho 29381))*(1 + (-1)*(rho 29381)) = 0 := by
    simpa [Seg31.relationRow110] using r110
  have hacc110 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc110 (rho 29271 : Seg31.F)
      (seg31AccX109 rho : Seg31.F) (seg31AccY109 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc110] using hp109
  have hr110 : RvkFixedBaseLadder.FixedStepRel 110 (rho 29381)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX109 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY109 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX110 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY110 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc110, seg31AccX110, seg31AccY110, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung110_wide (rho 29271 : Seg31.F) (rho 29381 : Seg31.F) (seg31AccX109 rho : Seg31.F) (seg31AccY109 rho : Seg31.F) (rho 30067 : Seg31.F) (rho 30068 : Seg31.F) (rho 30069 : Seg31.F) (rho 30070 : Seg31.F) (rho 30071 : Seg31.F) hacc110
        (by simpa using seg31_prefix_110_v2 rho r797)
        (by simpa using seg31_prefix_110_addX rho r798)
        (by simpa using seg31_prefix_110_addY rho r799)
        (by simpa using seg31_prefix_110_selX rho r800)
        (by simpa using seg31_prefix_110_selY rho r801)
        hbrow110
  obtain ⟨b110, hb110⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29381) hbrow110
  have hrb110 : RvkFixedBaseLadder.FixedStepRel 110 (toZMod b110)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX109 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY109 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX110 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY110 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb110]
    exact hr110
  have hp110 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX110 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY110 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 110 b110 _ _ hp109 hrb110).2
  exact hp110

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


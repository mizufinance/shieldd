import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg13PrefixLemmas10
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

theorem seg13_prefix_steps10 (rho : Nat -> Seg13.F)
    (hp100 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX100 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY100 rho : Seg13.F)⟩ : EdwardsBridge.Point))
    (r101 : Seg13.relationRow101 rho)
    (r752 : Seg13.relationRow752 rho)
    (r753 : Seg13.relationRow753 rho)
    (r754 : Seg13.relationRow754 rho)
    (r755 : Seg13.relationRow755 rho)
    (r756 : Seg13.relationRow756 rho)
    (r102 : Seg13.relationRow102 rho)
    (r757 : Seg13.relationRow757 rho)
    (r758 : Seg13.relationRow758 rho)
    (r759 : Seg13.relationRow759 rho)
    (r760 : Seg13.relationRow760 rho)
    (r761 : Seg13.relationRow761 rho)
    (r103 : Seg13.relationRow103 rho)
    (r762 : Seg13.relationRow762 rho)
    (r763 : Seg13.relationRow763 rho)
    (r764 : Seg13.relationRow764 rho)
    (r765 : Seg13.relationRow765 rho)
    (r766 : Seg13.relationRow766 rho)
    (r104 : Seg13.relationRow104 rho)
    (r767 : Seg13.relationRow767 rho)
    (r768 : Seg13.relationRow768 rho)
    (r769 : Seg13.relationRow769 rho)
    (r770 : Seg13.relationRow770 rho)
    (r771 : Seg13.relationRow771 rho)
    (r105 : Seg13.relationRow105 rho)
    (r772 : Seg13.relationRow772 rho)
    (r773 : Seg13.relationRow773 rho)
    (r774 : Seg13.relationRow774 rho)
    (r775 : Seg13.relationRow775 rho)
    (r776 : Seg13.relationRow776 rho)
    (r106 : Seg13.relationRow106 rho)
    (r777 : Seg13.relationRow777 rho)
    (r778 : Seg13.relationRow778 rho)
    (r779 : Seg13.relationRow779 rho)
    (r780 : Seg13.relationRow780 rho)
    (r781 : Seg13.relationRow781 rho)
    (r107 : Seg13.relationRow107 rho)
    (r782 : Seg13.relationRow782 rho)
    (r783 : Seg13.relationRow783 rho)
    (r784 : Seg13.relationRow784 rho)
    (r785 : Seg13.relationRow785 rho)
    (r786 : Seg13.relationRow786 rho)
    (r108 : Seg13.relationRow108 rho)
    (r787 : Seg13.relationRow787 rho)
    (r788 : Seg13.relationRow788 rho)
    (r789 : Seg13.relationRow789 rho)
    (r790 : Seg13.relationRow790 rho)
    (r791 : Seg13.relationRow791 rho)
    (r109 : Seg13.relationRow109 rho)
    (r792 : Seg13.relationRow792 rho)
    (r793 : Seg13.relationRow793 rho)
    (r794 : Seg13.relationRow794 rho)
    (r795 : Seg13.relationRow795 rho)
    (r796 : Seg13.relationRow796 rho)
    (r110 : Seg13.relationRow110 rho)
    (r797 : Seg13.relationRow797 rho)
    (r798 : Seg13.relationRow798 rho)
    (r799 : Seg13.relationRow799 rho)
    (r800 : Seg13.relationRow800 rho)
    (r801 : Seg13.relationRow801 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX110 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY110 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
  have hbrow101 : (1*(rho 10672))*(1 + (-1)*(rho 10672)) = 0 := by
    simpa [Seg13.relationRow101] using r101
  have hacc101 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc101 (rho 10571 : Seg13.F)
      (seg13AccX100 rho : Seg13.F) (seg13AccY100 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc101] using hp100
  have hr101 : RvkFixedBaseLadder.FixedStepRel 101 (rho 10672)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX100 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY100 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX101 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY101 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc101, seg13AccX101, seg13AccY101, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung101_wide (rho 10571 : Seg13.F) (rho 10672 : Seg13.F) (seg13AccX100 rho : Seg13.F) (seg13AccY100 rho : Seg13.F) (rho 11322 : Seg13.F) (rho 11323 : Seg13.F) (rho 11324 : Seg13.F) (rho 11325 : Seg13.F) (rho 11326 : Seg13.F) hacc101
        (by simpa using seg13_prefix_101_v2 rho r752)
        (by simpa using seg13_prefix_101_addX rho r753)
        (by simpa using seg13_prefix_101_addY rho r754)
        (by simpa using seg13_prefix_101_selX rho r755)
        (by simpa using seg13_prefix_101_selY rho r756)
        hbrow101
  obtain ⟨b101, hb101⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10672) hbrow101
  have hrb101 : RvkFixedBaseLadder.FixedStepRel 101 (toZMod b101)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX100 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY100 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX101 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY101 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb101]
    exact hr101
  have hp101 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX101 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY101 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 101 b101 _ _ hp100 hrb101).2
  have hbrow102 : (1*(rho 10673))*(1 + (-1)*(rho 10673)) = 0 := by
    simpa [Seg13.relationRow102] using r102
  have hacc102 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc102 (rho 10571 : Seg13.F)
      (seg13AccX101 rho : Seg13.F) (seg13AccY101 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc102] using hp101
  have hr102 : RvkFixedBaseLadder.FixedStepRel 102 (rho 10673)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX101 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY101 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX102 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY102 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc102, seg13AccX102, seg13AccY102, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung102_wide (rho 10571 : Seg13.F) (rho 10673 : Seg13.F) (seg13AccX101 rho : Seg13.F) (seg13AccY101 rho : Seg13.F) (rho 11327 : Seg13.F) (rho 11328 : Seg13.F) (rho 11329 : Seg13.F) (rho 11330 : Seg13.F) (rho 11331 : Seg13.F) hacc102
        (by simpa using seg13_prefix_102_v2 rho r757)
        (by simpa using seg13_prefix_102_addX rho r758)
        (by simpa using seg13_prefix_102_addY rho r759)
        (by simpa using seg13_prefix_102_selX rho r760)
        (by simpa using seg13_prefix_102_selY rho r761)
        hbrow102
  obtain ⟨b102, hb102⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10673) hbrow102
  have hrb102 : RvkFixedBaseLadder.FixedStepRel 102 (toZMod b102)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX101 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY101 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX102 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY102 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb102]
    exact hr102
  have hp102 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX102 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY102 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 102 b102 _ _ hp101 hrb102).2
  have hbrow103 : (1*(rho 10674))*(1 + (-1)*(rho 10674)) = 0 := by
    simpa [Seg13.relationRow103] using r103
  have hacc103 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc103 (rho 10571 : Seg13.F)
      (seg13AccX102 rho : Seg13.F) (seg13AccY102 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc103] using hp102
  have hr103 : RvkFixedBaseLadder.FixedStepRel 103 (rho 10674)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX102 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY102 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX103 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY103 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc103, seg13AccX103, seg13AccY103, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung103_wide (rho 10571 : Seg13.F) (rho 10674 : Seg13.F) (seg13AccX102 rho : Seg13.F) (seg13AccY102 rho : Seg13.F) (rho 11332 : Seg13.F) (rho 11333 : Seg13.F) (rho 11334 : Seg13.F) (rho 11335 : Seg13.F) (rho 11336 : Seg13.F) hacc103
        (by simpa using seg13_prefix_103_v2 rho r762)
        (by simpa using seg13_prefix_103_addX rho r763)
        (by simpa using seg13_prefix_103_addY rho r764)
        (by simpa using seg13_prefix_103_selX rho r765)
        (by simpa using seg13_prefix_103_selY rho r766)
        hbrow103
  obtain ⟨b103, hb103⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10674) hbrow103
  have hrb103 : RvkFixedBaseLadder.FixedStepRel 103 (toZMod b103)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX102 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY102 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX103 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY103 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb103]
    exact hr103
  have hp103 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX103 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY103 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 103 b103 _ _ hp102 hrb103).2
  have hbrow104 : (1*(rho 10675))*(1 + (-1)*(rho 10675)) = 0 := by
    simpa [Seg13.relationRow104] using r104
  have hacc104 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc104 (rho 10571 : Seg13.F)
      (seg13AccX103 rho : Seg13.F) (seg13AccY103 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc104] using hp103
  have hr104 : RvkFixedBaseLadder.FixedStepRel 104 (rho 10675)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX103 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY103 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX104 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY104 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc104, seg13AccX104, seg13AccY104, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung104_wide (rho 10571 : Seg13.F) (rho 10675 : Seg13.F) (seg13AccX103 rho : Seg13.F) (seg13AccY103 rho : Seg13.F) (rho 11337 : Seg13.F) (rho 11338 : Seg13.F) (rho 11339 : Seg13.F) (rho 11340 : Seg13.F) (rho 11341 : Seg13.F) hacc104
        (by simpa using seg13_prefix_104_v2 rho r767)
        (by simpa using seg13_prefix_104_addX rho r768)
        (by simpa using seg13_prefix_104_addY rho r769)
        (by simpa using seg13_prefix_104_selX rho r770)
        (by simpa using seg13_prefix_104_selY rho r771)
        hbrow104
  obtain ⟨b104, hb104⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10675) hbrow104
  have hrb104 : RvkFixedBaseLadder.FixedStepRel 104 (toZMod b104)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX103 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY103 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX104 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY104 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb104]
    exact hr104
  have hp104 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX104 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY104 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 104 b104 _ _ hp103 hrb104).2
  have hbrow105 : (1*(rho 10676))*(1 + (-1)*(rho 10676)) = 0 := by
    simpa [Seg13.relationRow105] using r105
  have hacc105 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc105 (rho 10571 : Seg13.F)
      (seg13AccX104 rho : Seg13.F) (seg13AccY104 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc105] using hp104
  have hr105 : RvkFixedBaseLadder.FixedStepRel 105 (rho 10676)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX104 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY104 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX105 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY105 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc105, seg13AccX105, seg13AccY105, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung105_wide (rho 10571 : Seg13.F) (rho 10676 : Seg13.F) (seg13AccX104 rho : Seg13.F) (seg13AccY104 rho : Seg13.F) (rho 11342 : Seg13.F) (rho 11343 : Seg13.F) (rho 11344 : Seg13.F) (rho 11345 : Seg13.F) (rho 11346 : Seg13.F) hacc105
        (by simpa using seg13_prefix_105_v2 rho r772)
        (by simpa using seg13_prefix_105_addX rho r773)
        (by simpa using seg13_prefix_105_addY rho r774)
        (by simpa using seg13_prefix_105_selX rho r775)
        (by simpa using seg13_prefix_105_selY rho r776)
        hbrow105
  obtain ⟨b105, hb105⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10676) hbrow105
  have hrb105 : RvkFixedBaseLadder.FixedStepRel 105 (toZMod b105)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX104 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY104 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX105 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY105 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb105]
    exact hr105
  have hp105 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX105 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY105 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 105 b105 _ _ hp104 hrb105).2
  have hbrow106 : (1*(rho 10677))*(1 + (-1)*(rho 10677)) = 0 := by
    simpa [Seg13.relationRow106] using r106
  have hacc106 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc106 (rho 10571 : Seg13.F)
      (seg13AccX105 rho : Seg13.F) (seg13AccY105 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc106] using hp105
  have hr106 : RvkFixedBaseLadder.FixedStepRel 106 (rho 10677)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX105 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY105 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX106 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY106 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc106, seg13AccX106, seg13AccY106, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung106_wide (rho 10571 : Seg13.F) (rho 10677 : Seg13.F) (seg13AccX105 rho : Seg13.F) (seg13AccY105 rho : Seg13.F) (rho 11347 : Seg13.F) (rho 11348 : Seg13.F) (rho 11349 : Seg13.F) (rho 11350 : Seg13.F) (rho 11351 : Seg13.F) hacc106
        (by simpa using seg13_prefix_106_v2 rho r777)
        (by simpa using seg13_prefix_106_addX rho r778)
        (by simpa using seg13_prefix_106_addY rho r779)
        (by simpa using seg13_prefix_106_selX rho r780)
        (by simpa using seg13_prefix_106_selY rho r781)
        hbrow106
  obtain ⟨b106, hb106⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10677) hbrow106
  have hrb106 : RvkFixedBaseLadder.FixedStepRel 106 (toZMod b106)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX105 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY105 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX106 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY106 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb106]
    exact hr106
  have hp106 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX106 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY106 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 106 b106 _ _ hp105 hrb106).2
  have hbrow107 : (1*(rho 10678))*(1 + (-1)*(rho 10678)) = 0 := by
    simpa [Seg13.relationRow107] using r107
  have hacc107 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc107 (rho 10571 : Seg13.F)
      (seg13AccX106 rho : Seg13.F) (seg13AccY106 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc107] using hp106
  have hr107 : RvkFixedBaseLadder.FixedStepRel 107 (rho 10678)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX106 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY106 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX107 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY107 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc107, seg13AccX107, seg13AccY107, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung107_wide (rho 10571 : Seg13.F) (rho 10678 : Seg13.F) (seg13AccX106 rho : Seg13.F) (seg13AccY106 rho : Seg13.F) (rho 11352 : Seg13.F) (rho 11353 : Seg13.F) (rho 11354 : Seg13.F) (rho 11355 : Seg13.F) (rho 11356 : Seg13.F) hacc107
        (by simpa using seg13_prefix_107_v2 rho r782)
        (by simpa using seg13_prefix_107_addX rho r783)
        (by simpa using seg13_prefix_107_addY rho r784)
        (by simpa using seg13_prefix_107_selX rho r785)
        (by simpa using seg13_prefix_107_selY rho r786)
        hbrow107
  obtain ⟨b107, hb107⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10678) hbrow107
  have hrb107 : RvkFixedBaseLadder.FixedStepRel 107 (toZMod b107)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX106 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY106 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX107 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY107 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb107]
    exact hr107
  have hp107 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX107 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY107 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 107 b107 _ _ hp106 hrb107).2
  have hbrow108 : (1*(rho 10679))*(1 + (-1)*(rho 10679)) = 0 := by
    simpa [Seg13.relationRow108] using r108
  have hacc108 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc108 (rho 10571 : Seg13.F)
      (seg13AccX107 rho : Seg13.F) (seg13AccY107 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc108] using hp107
  have hr108 : RvkFixedBaseLadder.FixedStepRel 108 (rho 10679)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX107 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY107 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX108 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY108 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc108, seg13AccX108, seg13AccY108, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung108_wide (rho 10571 : Seg13.F) (rho 10679 : Seg13.F) (seg13AccX107 rho : Seg13.F) (seg13AccY107 rho : Seg13.F) (rho 11357 : Seg13.F) (rho 11358 : Seg13.F) (rho 11359 : Seg13.F) (rho 11360 : Seg13.F) (rho 11361 : Seg13.F) hacc108
        (by simpa using seg13_prefix_108_v2 rho r787)
        (by simpa using seg13_prefix_108_addX rho r788)
        (by simpa using seg13_prefix_108_addY rho r789)
        (by simpa using seg13_prefix_108_selX rho r790)
        (by simpa using seg13_prefix_108_selY rho r791)
        hbrow108
  obtain ⟨b108, hb108⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10679) hbrow108
  have hrb108 : RvkFixedBaseLadder.FixedStepRel 108 (toZMod b108)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX107 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY107 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX108 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY108 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb108]
    exact hr108
  have hp108 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX108 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY108 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 108 b108 _ _ hp107 hrb108).2
  have hbrow109 : (1*(rho 10680))*(1 + (-1)*(rho 10680)) = 0 := by
    simpa [Seg13.relationRow109] using r109
  have hacc109 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc109 (rho 10571 : Seg13.F)
      (seg13AccX108 rho : Seg13.F) (seg13AccY108 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc109] using hp108
  have hr109 : RvkFixedBaseLadder.FixedStepRel 109 (rho 10680)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX108 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY108 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX109 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY109 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc109, seg13AccX109, seg13AccY109, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung109_wide (rho 10571 : Seg13.F) (rho 10680 : Seg13.F) (seg13AccX108 rho : Seg13.F) (seg13AccY108 rho : Seg13.F) (rho 11362 : Seg13.F) (rho 11363 : Seg13.F) (rho 11364 : Seg13.F) (rho 11365 : Seg13.F) (rho 11366 : Seg13.F) hacc109
        (by simpa using seg13_prefix_109_v2 rho r792)
        (by simpa using seg13_prefix_109_addX rho r793)
        (by simpa using seg13_prefix_109_addY rho r794)
        (by simpa using seg13_prefix_109_selX rho r795)
        (by simpa using seg13_prefix_109_selY rho r796)
        hbrow109
  obtain ⟨b109, hb109⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10680) hbrow109
  have hrb109 : RvkFixedBaseLadder.FixedStepRel 109 (toZMod b109)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX108 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY108 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX109 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY109 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb109]
    exact hr109
  have hp109 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX109 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY109 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 109 b109 _ _ hp108 hrb109).2
  have hbrow110 : (1*(rho 10681))*(1 + (-1)*(rho 10681)) = 0 := by
    simpa [Seg13.relationRow110] using r110
  have hacc110 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc110 (rho 10571 : Seg13.F)
      (seg13AccX109 rho : Seg13.F) (seg13AccY109 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc110] using hp109
  have hr110 : RvkFixedBaseLadder.FixedStepRel 110 (rho 10681)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX109 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY109 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX110 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY110 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc110, seg13AccX110, seg13AccY110, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung110_wide (rho 10571 : Seg13.F) (rho 10681 : Seg13.F) (seg13AccX109 rho : Seg13.F) (seg13AccY109 rho : Seg13.F) (rho 11367 : Seg13.F) (rho 11368 : Seg13.F) (rho 11369 : Seg13.F) (rho 11370 : Seg13.F) (rho 11371 : Seg13.F) hacc110
        (by simpa using seg13_prefix_110_v2 rho r797)
        (by simpa using seg13_prefix_110_addX rho r798)
        (by simpa using seg13_prefix_110_addY rho r799)
        (by simpa using seg13_prefix_110_selX rho r800)
        (by simpa using seg13_prefix_110_selY rho r801)
        hbrow110
  obtain ⟨b110, hb110⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10681) hbrow110
  have hrb110 : RvkFixedBaseLadder.FixedStepRel 110 (toZMod b110)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX109 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY109 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX110 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY110 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb110]
    exact hr110
  have hp110 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX110 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY110 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 110 b110 _ _ hp109 hrb110).2
  exact hp110

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


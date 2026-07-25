import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas10
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

theorem seg30_prefix_steps10 (rho : Nat -> Seg30.F)
    (hp100 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX100 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY100 rho : Seg30.F)⟩ : EdwardsBridge.Point))
    (r101 : Seg30.relationRow101 rho)
    (r752 : Seg30.relationRow752 rho)
    (r753 : Seg30.relationRow753 rho)
    (r754 : Seg30.relationRow754 rho)
    (r755 : Seg30.relationRow755 rho)
    (r756 : Seg30.relationRow756 rho)
    (r102 : Seg30.relationRow102 rho)
    (r757 : Seg30.relationRow757 rho)
    (r758 : Seg30.relationRow758 rho)
    (r759 : Seg30.relationRow759 rho)
    (r760 : Seg30.relationRow760 rho)
    (r761 : Seg30.relationRow761 rho)
    (r103 : Seg30.relationRow103 rho)
    (r762 : Seg30.relationRow762 rho)
    (r763 : Seg30.relationRow763 rho)
    (r764 : Seg30.relationRow764 rho)
    (r765 : Seg30.relationRow765 rho)
    (r766 : Seg30.relationRow766 rho)
    (r104 : Seg30.relationRow104 rho)
    (r767 : Seg30.relationRow767 rho)
    (r768 : Seg30.relationRow768 rho)
    (r769 : Seg30.relationRow769 rho)
    (r770 : Seg30.relationRow770 rho)
    (r771 : Seg30.relationRow771 rho)
    (r105 : Seg30.relationRow105 rho)
    (r772 : Seg30.relationRow772 rho)
    (r773 : Seg30.relationRow773 rho)
    (r774 : Seg30.relationRow774 rho)
    (r775 : Seg30.relationRow775 rho)
    (r776 : Seg30.relationRow776 rho)
    (r106 : Seg30.relationRow106 rho)
    (r777 : Seg30.relationRow777 rho)
    (r778 : Seg30.relationRow778 rho)
    (r779 : Seg30.relationRow779 rho)
    (r780 : Seg30.relationRow780 rho)
    (r781 : Seg30.relationRow781 rho)
    (r107 : Seg30.relationRow107 rho)
    (r782 : Seg30.relationRow782 rho)
    (r783 : Seg30.relationRow783 rho)
    (r784 : Seg30.relationRow784 rho)
    (r785 : Seg30.relationRow785 rho)
    (r786 : Seg30.relationRow786 rho)
    (r108 : Seg30.relationRow108 rho)
    (r787 : Seg30.relationRow787 rho)
    (r788 : Seg30.relationRow788 rho)
    (r789 : Seg30.relationRow789 rho)
    (r790 : Seg30.relationRow790 rho)
    (r791 : Seg30.relationRow791 rho)
    (r109 : Seg30.relationRow109 rho)
    (r792 : Seg30.relationRow792 rho)
    (r793 : Seg30.relationRow793 rho)
    (r794 : Seg30.relationRow794 rho)
    (r795 : Seg30.relationRow795 rho)
    (r796 : Seg30.relationRow796 rho)
    (r110 : Seg30.relationRow110 rho)
    (r797 : Seg30.relationRow797 rho)
    (r798 : Seg30.relationRow798 rho)
    (r799 : Seg30.relationRow799 rho)
    (r800 : Seg30.relationRow800 rho)
    (r801 : Seg30.relationRow801 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX110 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY110 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
  have hbrow101 : (1*(rho 28418))*(1 + (-1)*(rho 28418)) = 0 := by
    simpa [Seg30.relationRow101] using r101
  have hacc101 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc101 (rho 28317 : Seg30.F)
      (seg30AccX100 rho : Seg30.F) (seg30AccY100 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc101] using hp100
  have hr101 : RvkFixedBaseLadder.FixedStepRel 101 (rho 28418)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX100 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY100 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX101 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY101 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc101, seg30AccX101, seg30AccY101, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung101_wide (rho 28317 : Seg30.F) (rho 28418 : Seg30.F) (seg30AccX100 rho : Seg30.F) (seg30AccY100 rho : Seg30.F) (rho 29068 : Seg30.F) (rho 29069 : Seg30.F) (rho 29070 : Seg30.F) (rho 29071 : Seg30.F) (rho 29072 : Seg30.F) hacc101
        (by simpa using seg30_prefix_101_v2 rho r752)
        (by simpa using seg30_prefix_101_addX rho r753)
        (by simpa using seg30_prefix_101_addY rho r754)
        (by simpa using seg30_prefix_101_selX rho r755)
        (by simpa using seg30_prefix_101_selY rho r756)
        hbrow101
  obtain ⟨b101, hb101⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28418) hbrow101
  have hrb101 : RvkFixedBaseLadder.FixedStepRel 101 (toZMod b101)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX100 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY100 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX101 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY101 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb101]
    exact hr101
  have hp101 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX101 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY101 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 101 b101 _ _ hp100 hrb101).2
  have hbrow102 : (1*(rho 28419))*(1 + (-1)*(rho 28419)) = 0 := by
    simpa [Seg30.relationRow102] using r102
  have hacc102 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc102 (rho 28317 : Seg30.F)
      (seg30AccX101 rho : Seg30.F) (seg30AccY101 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc102] using hp101
  have hr102 : RvkFixedBaseLadder.FixedStepRel 102 (rho 28419)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX101 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY101 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX102 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY102 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc102, seg30AccX102, seg30AccY102, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung102_wide (rho 28317 : Seg30.F) (rho 28419 : Seg30.F) (seg30AccX101 rho : Seg30.F) (seg30AccY101 rho : Seg30.F) (rho 29073 : Seg30.F) (rho 29074 : Seg30.F) (rho 29075 : Seg30.F) (rho 29076 : Seg30.F) (rho 29077 : Seg30.F) hacc102
        (by simpa using seg30_prefix_102_v2 rho r757)
        (by simpa using seg30_prefix_102_addX rho r758)
        (by simpa using seg30_prefix_102_addY rho r759)
        (by simpa using seg30_prefix_102_selX rho r760)
        (by simpa using seg30_prefix_102_selY rho r761)
        hbrow102
  obtain ⟨b102, hb102⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28419) hbrow102
  have hrb102 : RvkFixedBaseLadder.FixedStepRel 102 (toZMod b102)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX101 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY101 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX102 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY102 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb102]
    exact hr102
  have hp102 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX102 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY102 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 102 b102 _ _ hp101 hrb102).2
  have hbrow103 : (1*(rho 28420))*(1 + (-1)*(rho 28420)) = 0 := by
    simpa [Seg30.relationRow103] using r103
  have hacc103 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc103 (rho 28317 : Seg30.F)
      (seg30AccX102 rho : Seg30.F) (seg30AccY102 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc103] using hp102
  have hr103 : RvkFixedBaseLadder.FixedStepRel 103 (rho 28420)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX102 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY102 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX103 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY103 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc103, seg30AccX103, seg30AccY103, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung103_wide (rho 28317 : Seg30.F) (rho 28420 : Seg30.F) (seg30AccX102 rho : Seg30.F) (seg30AccY102 rho : Seg30.F) (rho 29078 : Seg30.F) (rho 29079 : Seg30.F) (rho 29080 : Seg30.F) (rho 29081 : Seg30.F) (rho 29082 : Seg30.F) hacc103
        (by simpa using seg30_prefix_103_v2 rho r762)
        (by simpa using seg30_prefix_103_addX rho r763)
        (by simpa using seg30_prefix_103_addY rho r764)
        (by simpa using seg30_prefix_103_selX rho r765)
        (by simpa using seg30_prefix_103_selY rho r766)
        hbrow103
  obtain ⟨b103, hb103⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28420) hbrow103
  have hrb103 : RvkFixedBaseLadder.FixedStepRel 103 (toZMod b103)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX102 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY102 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX103 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY103 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb103]
    exact hr103
  have hp103 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX103 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY103 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 103 b103 _ _ hp102 hrb103).2
  have hbrow104 : (1*(rho 28421))*(1 + (-1)*(rho 28421)) = 0 := by
    simpa [Seg30.relationRow104] using r104
  have hacc104 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc104 (rho 28317 : Seg30.F)
      (seg30AccX103 rho : Seg30.F) (seg30AccY103 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc104] using hp103
  have hr104 : RvkFixedBaseLadder.FixedStepRel 104 (rho 28421)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX103 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY103 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX104 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY104 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc104, seg30AccX104, seg30AccY104, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung104_wide (rho 28317 : Seg30.F) (rho 28421 : Seg30.F) (seg30AccX103 rho : Seg30.F) (seg30AccY103 rho : Seg30.F) (rho 29083 : Seg30.F) (rho 29084 : Seg30.F) (rho 29085 : Seg30.F) (rho 29086 : Seg30.F) (rho 29087 : Seg30.F) hacc104
        (by simpa using seg30_prefix_104_v2 rho r767)
        (by simpa using seg30_prefix_104_addX rho r768)
        (by simpa using seg30_prefix_104_addY rho r769)
        (by simpa using seg30_prefix_104_selX rho r770)
        (by simpa using seg30_prefix_104_selY rho r771)
        hbrow104
  obtain ⟨b104, hb104⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28421) hbrow104
  have hrb104 : RvkFixedBaseLadder.FixedStepRel 104 (toZMod b104)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX103 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY103 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX104 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY104 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb104]
    exact hr104
  have hp104 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX104 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY104 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 104 b104 _ _ hp103 hrb104).2
  have hbrow105 : (1*(rho 28422))*(1 + (-1)*(rho 28422)) = 0 := by
    simpa [Seg30.relationRow105] using r105
  have hacc105 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc105 (rho 28317 : Seg30.F)
      (seg30AccX104 rho : Seg30.F) (seg30AccY104 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc105] using hp104
  have hr105 : RvkFixedBaseLadder.FixedStepRel 105 (rho 28422)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX104 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY104 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX105 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY105 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc105, seg30AccX105, seg30AccY105, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung105_wide (rho 28317 : Seg30.F) (rho 28422 : Seg30.F) (seg30AccX104 rho : Seg30.F) (seg30AccY104 rho : Seg30.F) (rho 29088 : Seg30.F) (rho 29089 : Seg30.F) (rho 29090 : Seg30.F) (rho 29091 : Seg30.F) (rho 29092 : Seg30.F) hacc105
        (by simpa using seg30_prefix_105_v2 rho r772)
        (by simpa using seg30_prefix_105_addX rho r773)
        (by simpa using seg30_prefix_105_addY rho r774)
        (by simpa using seg30_prefix_105_selX rho r775)
        (by simpa using seg30_prefix_105_selY rho r776)
        hbrow105
  obtain ⟨b105, hb105⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28422) hbrow105
  have hrb105 : RvkFixedBaseLadder.FixedStepRel 105 (toZMod b105)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX104 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY104 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX105 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY105 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb105]
    exact hr105
  have hp105 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX105 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY105 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 105 b105 _ _ hp104 hrb105).2
  have hbrow106 : (1*(rho 28423))*(1 + (-1)*(rho 28423)) = 0 := by
    simpa [Seg30.relationRow106] using r106
  have hacc106 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc106 (rho 28317 : Seg30.F)
      (seg30AccX105 rho : Seg30.F) (seg30AccY105 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc106] using hp105
  have hr106 : RvkFixedBaseLadder.FixedStepRel 106 (rho 28423)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX105 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY105 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX106 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY106 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc106, seg30AccX106, seg30AccY106, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung106_wide (rho 28317 : Seg30.F) (rho 28423 : Seg30.F) (seg30AccX105 rho : Seg30.F) (seg30AccY105 rho : Seg30.F) (rho 29093 : Seg30.F) (rho 29094 : Seg30.F) (rho 29095 : Seg30.F) (rho 29096 : Seg30.F) (rho 29097 : Seg30.F) hacc106
        (by simpa using seg30_prefix_106_v2 rho r777)
        (by simpa using seg30_prefix_106_addX rho r778)
        (by simpa using seg30_prefix_106_addY rho r779)
        (by simpa using seg30_prefix_106_selX rho r780)
        (by simpa using seg30_prefix_106_selY rho r781)
        hbrow106
  obtain ⟨b106, hb106⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28423) hbrow106
  have hrb106 : RvkFixedBaseLadder.FixedStepRel 106 (toZMod b106)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX105 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY105 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX106 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY106 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb106]
    exact hr106
  have hp106 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX106 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY106 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 106 b106 _ _ hp105 hrb106).2
  have hbrow107 : (1*(rho 28424))*(1 + (-1)*(rho 28424)) = 0 := by
    simpa [Seg30.relationRow107] using r107
  have hacc107 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc107 (rho 28317 : Seg30.F)
      (seg30AccX106 rho : Seg30.F) (seg30AccY106 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc107] using hp106
  have hr107 : RvkFixedBaseLadder.FixedStepRel 107 (rho 28424)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX106 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY106 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX107 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY107 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc107, seg30AccX107, seg30AccY107, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung107_wide (rho 28317 : Seg30.F) (rho 28424 : Seg30.F) (seg30AccX106 rho : Seg30.F) (seg30AccY106 rho : Seg30.F) (rho 29098 : Seg30.F) (rho 29099 : Seg30.F) (rho 29100 : Seg30.F) (rho 29101 : Seg30.F) (rho 29102 : Seg30.F) hacc107
        (by simpa using seg30_prefix_107_v2 rho r782)
        (by simpa using seg30_prefix_107_addX rho r783)
        (by simpa using seg30_prefix_107_addY rho r784)
        (by simpa using seg30_prefix_107_selX rho r785)
        (by simpa using seg30_prefix_107_selY rho r786)
        hbrow107
  obtain ⟨b107, hb107⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28424) hbrow107
  have hrb107 : RvkFixedBaseLadder.FixedStepRel 107 (toZMod b107)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX106 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY106 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX107 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY107 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb107]
    exact hr107
  have hp107 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX107 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY107 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 107 b107 _ _ hp106 hrb107).2
  have hbrow108 : (1*(rho 28425))*(1 + (-1)*(rho 28425)) = 0 := by
    simpa [Seg30.relationRow108] using r108
  have hacc108 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc108 (rho 28317 : Seg30.F)
      (seg30AccX107 rho : Seg30.F) (seg30AccY107 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc108] using hp107
  have hr108 : RvkFixedBaseLadder.FixedStepRel 108 (rho 28425)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX107 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY107 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX108 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY108 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc108, seg30AccX108, seg30AccY108, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung108_wide (rho 28317 : Seg30.F) (rho 28425 : Seg30.F) (seg30AccX107 rho : Seg30.F) (seg30AccY107 rho : Seg30.F) (rho 29103 : Seg30.F) (rho 29104 : Seg30.F) (rho 29105 : Seg30.F) (rho 29106 : Seg30.F) (rho 29107 : Seg30.F) hacc108
        (by simpa using seg30_prefix_108_v2 rho r787)
        (by simpa using seg30_prefix_108_addX rho r788)
        (by simpa using seg30_prefix_108_addY rho r789)
        (by simpa using seg30_prefix_108_selX rho r790)
        (by simpa using seg30_prefix_108_selY rho r791)
        hbrow108
  obtain ⟨b108, hb108⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28425) hbrow108
  have hrb108 : RvkFixedBaseLadder.FixedStepRel 108 (toZMod b108)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX107 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY107 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX108 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY108 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb108]
    exact hr108
  have hp108 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX108 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY108 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 108 b108 _ _ hp107 hrb108).2
  have hbrow109 : (1*(rho 28426))*(1 + (-1)*(rho 28426)) = 0 := by
    simpa [Seg30.relationRow109] using r109
  have hacc109 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc109 (rho 28317 : Seg30.F)
      (seg30AccX108 rho : Seg30.F) (seg30AccY108 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc109] using hp108
  have hr109 : RvkFixedBaseLadder.FixedStepRel 109 (rho 28426)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX108 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY108 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX109 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY109 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc109, seg30AccX109, seg30AccY109, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung109_wide (rho 28317 : Seg30.F) (rho 28426 : Seg30.F) (seg30AccX108 rho : Seg30.F) (seg30AccY108 rho : Seg30.F) (rho 29108 : Seg30.F) (rho 29109 : Seg30.F) (rho 29110 : Seg30.F) (rho 29111 : Seg30.F) (rho 29112 : Seg30.F) hacc109
        (by simpa using seg30_prefix_109_v2 rho r792)
        (by simpa using seg30_prefix_109_addX rho r793)
        (by simpa using seg30_prefix_109_addY rho r794)
        (by simpa using seg30_prefix_109_selX rho r795)
        (by simpa using seg30_prefix_109_selY rho r796)
        hbrow109
  obtain ⟨b109, hb109⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28426) hbrow109
  have hrb109 : RvkFixedBaseLadder.FixedStepRel 109 (toZMod b109)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX108 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY108 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX109 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY109 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb109]
    exact hr109
  have hp109 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX109 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY109 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 109 b109 _ _ hp108 hrb109).2
  have hbrow110 : (1*(rho 28427))*(1 + (-1)*(rho 28427)) = 0 := by
    simpa [Seg30.relationRow110] using r110
  have hacc110 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc110 (rho 28317 : Seg30.F)
      (seg30AccX109 rho : Seg30.F) (seg30AccY109 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc110] using hp109
  have hr110 : RvkFixedBaseLadder.FixedStepRel 110 (rho 28427)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX109 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY109 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX110 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY110 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc110, seg30AccX110, seg30AccY110, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung110_wide (rho 28317 : Seg30.F) (rho 28427 : Seg30.F) (seg30AccX109 rho : Seg30.F) (seg30AccY109 rho : Seg30.F) (rho 29113 : Seg30.F) (rho 29114 : Seg30.F) (rho 29115 : Seg30.F) (rho 29116 : Seg30.F) (rho 29117 : Seg30.F) hacc110
        (by simpa using seg30_prefix_110_v2 rho r797)
        (by simpa using seg30_prefix_110_addX rho r798)
        (by simpa using seg30_prefix_110_addY rho r799)
        (by simpa using seg30_prefix_110_selX rho r800)
        (by simpa using seg30_prefix_110_selY rho r801)
        hbrow110
  obtain ⟨b110, hb110⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28427) hbrow110
  have hrb110 : RvkFixedBaseLadder.FixedStepRel 110 (toZMod b110)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX109 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY109 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX110 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY110 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb110]
    exact hr110
  have hp110 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX110 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY110 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 110 b110 _ _ hp109 hrb110).2
  exact hp110

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


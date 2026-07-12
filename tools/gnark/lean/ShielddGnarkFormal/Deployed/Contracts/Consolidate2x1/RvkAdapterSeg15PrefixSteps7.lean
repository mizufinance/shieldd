import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas7
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

theorem seg15_prefix_steps7 (rho : Nat -> Seg15.F)
    (hp70 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX70 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY70 rho : Seg15.F)⟩ : EdwardsBridge.Point))
    (r71 : Seg15.relationRow71 rho)
    (r602 : Seg15.relationRow602 rho)
    (r603 : Seg15.relationRow603 rho)
    (r604 : Seg15.relationRow604 rho)
    (r605 : Seg15.relationRow605 rho)
    (r606 : Seg15.relationRow606 rho)
    (r72 : Seg15.relationRow72 rho)
    (r607 : Seg15.relationRow607 rho)
    (r608 : Seg15.relationRow608 rho)
    (r609 : Seg15.relationRow609 rho)
    (r610 : Seg15.relationRow610 rho)
    (r611 : Seg15.relationRow611 rho)
    (r73 : Seg15.relationRow73 rho)
    (r612 : Seg15.relationRow612 rho)
    (r613 : Seg15.relationRow613 rho)
    (r614 : Seg15.relationRow614 rho)
    (r615 : Seg15.relationRow615 rho)
    (r616 : Seg15.relationRow616 rho)
    (r74 : Seg15.relationRow74 rho)
    (r617 : Seg15.relationRow617 rho)
    (r618 : Seg15.relationRow618 rho)
    (r619 : Seg15.relationRow619 rho)
    (r620 : Seg15.relationRow620 rho)
    (r621 : Seg15.relationRow621 rho)
    (r75 : Seg15.relationRow75 rho)
    (r622 : Seg15.relationRow622 rho)
    (r623 : Seg15.relationRow623 rho)
    (r624 : Seg15.relationRow624 rho)
    (r625 : Seg15.relationRow625 rho)
    (r626 : Seg15.relationRow626 rho)
    (r76 : Seg15.relationRow76 rho)
    (r627 : Seg15.relationRow627 rho)
    (r628 : Seg15.relationRow628 rho)
    (r629 : Seg15.relationRow629 rho)
    (r630 : Seg15.relationRow630 rho)
    (r631 : Seg15.relationRow631 rho)
    (r77 : Seg15.relationRow77 rho)
    (r632 : Seg15.relationRow632 rho)
    (r633 : Seg15.relationRow633 rho)
    (r634 : Seg15.relationRow634 rho)
    (r635 : Seg15.relationRow635 rho)
    (r636 : Seg15.relationRow636 rho)
    (r78 : Seg15.relationRow78 rho)
    (r637 : Seg15.relationRow637 rho)
    (r638 : Seg15.relationRow638 rho)
    (r639 : Seg15.relationRow639 rho)
    (r640 : Seg15.relationRow640 rho)
    (r641 : Seg15.relationRow641 rho)
    (r79 : Seg15.relationRow79 rho)
    (r642 : Seg15.relationRow642 rho)
    (r643 : Seg15.relationRow643 rho)
    (r644 : Seg15.relationRow644 rho)
    (r645 : Seg15.relationRow645 rho)
    (r646 : Seg15.relationRow646 rho)
    (r80 : Seg15.relationRow80 rho)
    (r647 : Seg15.relationRow647 rho)
    (r648 : Seg15.relationRow648 rho)
    (r649 : Seg15.relationRow649 rho)
    (r650 : Seg15.relationRow650 rho)
    (r651 : Seg15.relationRow651 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX80 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY80 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
  have hbrow71 : (1*(rho 16207))*(1 + (-1)*(rho 16207)) = 0 := by
    simpa [Seg15.relationRow71] using r71
  have hacc71 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc71 (rho 16136 : Seg15.F)
      (seg15AccX70 rho : Seg15.F) (seg15AccY70 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc71] using hp70
  have hr71 : RvkFixedBaseLadder.FixedStepRel 71 (rho 16207)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX70 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY70 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX71 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY71 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc71, seg15AccX71, seg15AccY71, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung71_wide (rho 16136 : Seg15.F) (rho 16207 : Seg15.F) (seg15AccX70 rho : Seg15.F) (seg15AccY70 rho : Seg15.F) (rho 16737 : Seg15.F) (rho 16738 : Seg15.F) (rho 16739 : Seg15.F) (rho 16740 : Seg15.F) (rho 16741 : Seg15.F) hacc71
        (by simpa using seg15_prefix_71_v2 rho r602)
        (by simpa using seg15_prefix_71_addX rho r603)
        (by simpa using seg15_prefix_71_addY rho r604)
        (by simpa using seg15_prefix_71_selX rho r605)
        (by simpa using seg15_prefix_71_selY rho r606)
        hbrow71
  obtain ⟨b71, hb71⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16207) hbrow71
  have hrb71 : RvkFixedBaseLadder.FixedStepRel 71 (toZMod b71)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX70 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY70 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX71 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY71 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb71]
    exact hr71
  have hp71 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX71 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY71 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 71 b71 _ _ hp70 hrb71).2
  have hbrow72 : (1*(rho 16208))*(1 + (-1)*(rho 16208)) = 0 := by
    simpa [Seg15.relationRow72] using r72
  have hacc72 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc72 (rho 16136 : Seg15.F)
      (seg15AccX71 rho : Seg15.F) (seg15AccY71 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc72] using hp71
  have hr72 : RvkFixedBaseLadder.FixedStepRel 72 (rho 16208)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX71 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY71 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX72 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY72 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc72, seg15AccX72, seg15AccY72, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung72_wide (rho 16136 : Seg15.F) (rho 16208 : Seg15.F) (seg15AccX71 rho : Seg15.F) (seg15AccY71 rho : Seg15.F) (rho 16742 : Seg15.F) (rho 16743 : Seg15.F) (rho 16744 : Seg15.F) (rho 16745 : Seg15.F) (rho 16746 : Seg15.F) hacc72
        (by simpa using seg15_prefix_72_v2 rho r607)
        (by simpa using seg15_prefix_72_addX rho r608)
        (by simpa using seg15_prefix_72_addY rho r609)
        (by simpa using seg15_prefix_72_selX rho r610)
        (by simpa using seg15_prefix_72_selY rho r611)
        hbrow72
  obtain ⟨b72, hb72⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16208) hbrow72
  have hrb72 : RvkFixedBaseLadder.FixedStepRel 72 (toZMod b72)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX71 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY71 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX72 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY72 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb72]
    exact hr72
  have hp72 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX72 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY72 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 72 b72 _ _ hp71 hrb72).2
  have hbrow73 : (1*(rho 16209))*(1 + (-1)*(rho 16209)) = 0 := by
    simpa [Seg15.relationRow73] using r73
  have hacc73 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc73 (rho 16136 : Seg15.F)
      (seg15AccX72 rho : Seg15.F) (seg15AccY72 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc73] using hp72
  have hr73 : RvkFixedBaseLadder.FixedStepRel 73 (rho 16209)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX72 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY72 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX73 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY73 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc73, seg15AccX73, seg15AccY73, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung73_wide (rho 16136 : Seg15.F) (rho 16209 : Seg15.F) (seg15AccX72 rho : Seg15.F) (seg15AccY72 rho : Seg15.F) (rho 16747 : Seg15.F) (rho 16748 : Seg15.F) (rho 16749 : Seg15.F) (rho 16750 : Seg15.F) (rho 16751 : Seg15.F) hacc73
        (by simpa using seg15_prefix_73_v2 rho r612)
        (by simpa using seg15_prefix_73_addX rho r613)
        (by simpa using seg15_prefix_73_addY rho r614)
        (by simpa using seg15_prefix_73_selX rho r615)
        (by simpa using seg15_prefix_73_selY rho r616)
        hbrow73
  obtain ⟨b73, hb73⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16209) hbrow73
  have hrb73 : RvkFixedBaseLadder.FixedStepRel 73 (toZMod b73)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX72 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY72 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX73 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY73 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb73]
    exact hr73
  have hp73 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX73 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY73 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 73 b73 _ _ hp72 hrb73).2
  have hbrow74 : (1*(rho 16210))*(1 + (-1)*(rho 16210)) = 0 := by
    simpa [Seg15.relationRow74] using r74
  have hacc74 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc74 (rho 16136 : Seg15.F)
      (seg15AccX73 rho : Seg15.F) (seg15AccY73 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc74] using hp73
  have hr74 : RvkFixedBaseLadder.FixedStepRel 74 (rho 16210)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX73 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY73 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX74 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY74 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc74, seg15AccX74, seg15AccY74, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung74_wide (rho 16136 : Seg15.F) (rho 16210 : Seg15.F) (seg15AccX73 rho : Seg15.F) (seg15AccY73 rho : Seg15.F) (rho 16752 : Seg15.F) (rho 16753 : Seg15.F) (rho 16754 : Seg15.F) (rho 16755 : Seg15.F) (rho 16756 : Seg15.F) hacc74
        (by simpa using seg15_prefix_74_v2 rho r617)
        (by simpa using seg15_prefix_74_addX rho r618)
        (by simpa using seg15_prefix_74_addY rho r619)
        (by simpa using seg15_prefix_74_selX rho r620)
        (by simpa using seg15_prefix_74_selY rho r621)
        hbrow74
  obtain ⟨b74, hb74⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16210) hbrow74
  have hrb74 : RvkFixedBaseLadder.FixedStepRel 74 (toZMod b74)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX73 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY73 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX74 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY74 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb74]
    exact hr74
  have hp74 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX74 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY74 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 74 b74 _ _ hp73 hrb74).2
  have hbrow75 : (1*(rho 16211))*(1 + (-1)*(rho 16211)) = 0 := by
    simpa [Seg15.relationRow75] using r75
  have hacc75 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc75 (rho 16136 : Seg15.F)
      (seg15AccX74 rho : Seg15.F) (seg15AccY74 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc75] using hp74
  have hr75 : RvkFixedBaseLadder.FixedStepRel 75 (rho 16211)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX74 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY74 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX75 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY75 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc75, seg15AccX75, seg15AccY75, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung75_wide (rho 16136 : Seg15.F) (rho 16211 : Seg15.F) (seg15AccX74 rho : Seg15.F) (seg15AccY74 rho : Seg15.F) (rho 16757 : Seg15.F) (rho 16758 : Seg15.F) (rho 16759 : Seg15.F) (rho 16760 : Seg15.F) (rho 16761 : Seg15.F) hacc75
        (by simpa using seg15_prefix_75_v2 rho r622)
        (by simpa using seg15_prefix_75_addX rho r623)
        (by simpa using seg15_prefix_75_addY rho r624)
        (by simpa using seg15_prefix_75_selX rho r625)
        (by simpa using seg15_prefix_75_selY rho r626)
        hbrow75
  obtain ⟨b75, hb75⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16211) hbrow75
  have hrb75 : RvkFixedBaseLadder.FixedStepRel 75 (toZMod b75)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX74 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY74 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX75 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY75 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb75]
    exact hr75
  have hp75 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX75 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY75 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 75 b75 _ _ hp74 hrb75).2
  have hbrow76 : (1*(rho 16212))*(1 + (-1)*(rho 16212)) = 0 := by
    simpa [Seg15.relationRow76] using r76
  have hacc76 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc76 (rho 16136 : Seg15.F)
      (seg15AccX75 rho : Seg15.F) (seg15AccY75 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc76] using hp75
  have hr76 : RvkFixedBaseLadder.FixedStepRel 76 (rho 16212)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX75 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY75 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX76 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY76 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc76, seg15AccX76, seg15AccY76, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung76_wide (rho 16136 : Seg15.F) (rho 16212 : Seg15.F) (seg15AccX75 rho : Seg15.F) (seg15AccY75 rho : Seg15.F) (rho 16762 : Seg15.F) (rho 16763 : Seg15.F) (rho 16764 : Seg15.F) (rho 16765 : Seg15.F) (rho 16766 : Seg15.F) hacc76
        (by simpa using seg15_prefix_76_v2 rho r627)
        (by simpa using seg15_prefix_76_addX rho r628)
        (by simpa using seg15_prefix_76_addY rho r629)
        (by simpa using seg15_prefix_76_selX rho r630)
        (by simpa using seg15_prefix_76_selY rho r631)
        hbrow76
  obtain ⟨b76, hb76⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16212) hbrow76
  have hrb76 : RvkFixedBaseLadder.FixedStepRel 76 (toZMod b76)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX75 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY75 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX76 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY76 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb76]
    exact hr76
  have hp76 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX76 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY76 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 76 b76 _ _ hp75 hrb76).2
  have hbrow77 : (1*(rho 16213))*(1 + (-1)*(rho 16213)) = 0 := by
    simpa [Seg15.relationRow77] using r77
  have hacc77 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc77 (rho 16136 : Seg15.F)
      (seg15AccX76 rho : Seg15.F) (seg15AccY76 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc77] using hp76
  have hr77 : RvkFixedBaseLadder.FixedStepRel 77 (rho 16213)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX76 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY76 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX77 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY77 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc77, seg15AccX77, seg15AccY77, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung77_wide (rho 16136 : Seg15.F) (rho 16213 : Seg15.F) (seg15AccX76 rho : Seg15.F) (seg15AccY76 rho : Seg15.F) (rho 16767 : Seg15.F) (rho 16768 : Seg15.F) (rho 16769 : Seg15.F) (rho 16770 : Seg15.F) (rho 16771 : Seg15.F) hacc77
        (by simpa using seg15_prefix_77_v2 rho r632)
        (by simpa using seg15_prefix_77_addX rho r633)
        (by simpa using seg15_prefix_77_addY rho r634)
        (by simpa using seg15_prefix_77_selX rho r635)
        (by simpa using seg15_prefix_77_selY rho r636)
        hbrow77
  obtain ⟨b77, hb77⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16213) hbrow77
  have hrb77 : RvkFixedBaseLadder.FixedStepRel 77 (toZMod b77)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX76 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY76 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX77 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY77 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb77]
    exact hr77
  have hp77 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX77 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY77 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 77 b77 _ _ hp76 hrb77).2
  have hbrow78 : (1*(rho 16214))*(1 + (-1)*(rho 16214)) = 0 := by
    simpa [Seg15.relationRow78] using r78
  have hacc78 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc78 (rho 16136 : Seg15.F)
      (seg15AccX77 rho : Seg15.F) (seg15AccY77 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc78] using hp77
  have hr78 : RvkFixedBaseLadder.FixedStepRel 78 (rho 16214)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX77 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY77 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX78 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY78 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc78, seg15AccX78, seg15AccY78, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung78_wide (rho 16136 : Seg15.F) (rho 16214 : Seg15.F) (seg15AccX77 rho : Seg15.F) (seg15AccY77 rho : Seg15.F) (rho 16772 : Seg15.F) (rho 16773 : Seg15.F) (rho 16774 : Seg15.F) (rho 16775 : Seg15.F) (rho 16776 : Seg15.F) hacc78
        (by simpa using seg15_prefix_78_v2 rho r637)
        (by simpa using seg15_prefix_78_addX rho r638)
        (by simpa using seg15_prefix_78_addY rho r639)
        (by simpa using seg15_prefix_78_selX rho r640)
        (by simpa using seg15_prefix_78_selY rho r641)
        hbrow78
  obtain ⟨b78, hb78⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16214) hbrow78
  have hrb78 : RvkFixedBaseLadder.FixedStepRel 78 (toZMod b78)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX77 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY77 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX78 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY78 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb78]
    exact hr78
  have hp78 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX78 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY78 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 78 b78 _ _ hp77 hrb78).2
  have hbrow79 : (1*(rho 16215))*(1 + (-1)*(rho 16215)) = 0 := by
    simpa [Seg15.relationRow79] using r79
  have hacc79 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc79 (rho 16136 : Seg15.F)
      (seg15AccX78 rho : Seg15.F) (seg15AccY78 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc79] using hp78
  have hr79 : RvkFixedBaseLadder.FixedStepRel 79 (rho 16215)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX78 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY78 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX79 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY79 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc79, seg15AccX79, seg15AccY79, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung79_wide (rho 16136 : Seg15.F) (rho 16215 : Seg15.F) (seg15AccX78 rho : Seg15.F) (seg15AccY78 rho : Seg15.F) (rho 16777 : Seg15.F) (rho 16778 : Seg15.F) (rho 16779 : Seg15.F) (rho 16780 : Seg15.F) (rho 16781 : Seg15.F) hacc79
        (by simpa using seg15_prefix_79_v2 rho r642)
        (by simpa using seg15_prefix_79_addX rho r643)
        (by simpa using seg15_prefix_79_addY rho r644)
        (by simpa using seg15_prefix_79_selX rho r645)
        (by simpa using seg15_prefix_79_selY rho r646)
        hbrow79
  obtain ⟨b79, hb79⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16215) hbrow79
  have hrb79 : RvkFixedBaseLadder.FixedStepRel 79 (toZMod b79)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX78 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY78 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX79 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY79 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb79]
    exact hr79
  have hp79 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX79 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY79 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 79 b79 _ _ hp78 hrb79).2
  have hbrow80 : (1*(rho 16216))*(1 + (-1)*(rho 16216)) = 0 := by
    simpa [Seg15.relationRow80] using r80
  have hacc80 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc80 (rho 16136 : Seg15.F)
      (seg15AccX79 rho : Seg15.F) (seg15AccY79 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc80] using hp79
  have hr80 : RvkFixedBaseLadder.FixedStepRel 80 (rho 16216)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX79 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY79 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX80 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY80 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc80, seg15AccX80, seg15AccY80, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung80_wide (rho 16136 : Seg15.F) (rho 16216 : Seg15.F) (seg15AccX79 rho : Seg15.F) (seg15AccY79 rho : Seg15.F) (rho 16782 : Seg15.F) (rho 16783 : Seg15.F) (rho 16784 : Seg15.F) (rho 16785 : Seg15.F) (rho 16786 : Seg15.F) hacc80
        (by simpa using seg15_prefix_80_v2 rho r647)
        (by simpa using seg15_prefix_80_addX rho r648)
        (by simpa using seg15_prefix_80_addY rho r649)
        (by simpa using seg15_prefix_80_selX rho r650)
        (by simpa using seg15_prefix_80_selY rho r651)
        hbrow80
  obtain ⟨b80, hb80⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16216) hbrow80
  have hrb80 : RvkFixedBaseLadder.FixedStepRel 80 (toZMod b80)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX79 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY79 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX80 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY80 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb80]
    exact hr80
  have hp80 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX80 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY80 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 80 b80 _ _ hp79 hrb80).2
  exact hp80

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


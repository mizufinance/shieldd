import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas7
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

theorem seg30_prefix_steps7 (rho : Nat -> Seg30.F)
    (hp70 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX70 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY70 rho : Seg30.F)⟩ : EdwardsBridge.Point))
    (r71 : Seg30.relationRow71 rho)
    (r602 : Seg30.relationRow602 rho)
    (r603 : Seg30.relationRow603 rho)
    (r604 : Seg30.relationRow604 rho)
    (r605 : Seg30.relationRow605 rho)
    (r606 : Seg30.relationRow606 rho)
    (r72 : Seg30.relationRow72 rho)
    (r607 : Seg30.relationRow607 rho)
    (r608 : Seg30.relationRow608 rho)
    (r609 : Seg30.relationRow609 rho)
    (r610 : Seg30.relationRow610 rho)
    (r611 : Seg30.relationRow611 rho)
    (r73 : Seg30.relationRow73 rho)
    (r612 : Seg30.relationRow612 rho)
    (r613 : Seg30.relationRow613 rho)
    (r614 : Seg30.relationRow614 rho)
    (r615 : Seg30.relationRow615 rho)
    (r616 : Seg30.relationRow616 rho)
    (r74 : Seg30.relationRow74 rho)
    (r617 : Seg30.relationRow617 rho)
    (r618 : Seg30.relationRow618 rho)
    (r619 : Seg30.relationRow619 rho)
    (r620 : Seg30.relationRow620 rho)
    (r621 : Seg30.relationRow621 rho)
    (r75 : Seg30.relationRow75 rho)
    (r622 : Seg30.relationRow622 rho)
    (r623 : Seg30.relationRow623 rho)
    (r624 : Seg30.relationRow624 rho)
    (r625 : Seg30.relationRow625 rho)
    (r626 : Seg30.relationRow626 rho)
    (r76 : Seg30.relationRow76 rho)
    (r627 : Seg30.relationRow627 rho)
    (r628 : Seg30.relationRow628 rho)
    (r629 : Seg30.relationRow629 rho)
    (r630 : Seg30.relationRow630 rho)
    (r631 : Seg30.relationRow631 rho)
    (r77 : Seg30.relationRow77 rho)
    (r632 : Seg30.relationRow632 rho)
    (r633 : Seg30.relationRow633 rho)
    (r634 : Seg30.relationRow634 rho)
    (r635 : Seg30.relationRow635 rho)
    (r636 : Seg30.relationRow636 rho)
    (r78 : Seg30.relationRow78 rho)
    (r637 : Seg30.relationRow637 rho)
    (r638 : Seg30.relationRow638 rho)
    (r639 : Seg30.relationRow639 rho)
    (r640 : Seg30.relationRow640 rho)
    (r641 : Seg30.relationRow641 rho)
    (r79 : Seg30.relationRow79 rho)
    (r642 : Seg30.relationRow642 rho)
    (r643 : Seg30.relationRow643 rho)
    (r644 : Seg30.relationRow644 rho)
    (r645 : Seg30.relationRow645 rho)
    (r646 : Seg30.relationRow646 rho)
    (r80 : Seg30.relationRow80 rho)
    (r647 : Seg30.relationRow647 rho)
    (r648 : Seg30.relationRow648 rho)
    (r649 : Seg30.relationRow649 rho)
    (r650 : Seg30.relationRow650 rho)
    (r651 : Seg30.relationRow651 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX80 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY80 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
  have hbrow71 : (1*(rho 28388))*(1 + (-1)*(rho 28388)) = 0 := by
    simpa [Seg30.relationRow71] using r71
  have hacc71 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc71 (rho 28317 : Seg30.F)
      (seg30AccX70 rho : Seg30.F) (seg30AccY70 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc71] using hp70
  have hr71 : RvkFixedBaseLadder.FixedStepRel 71 (rho 28388)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX70 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY70 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX71 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY71 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc71, seg30AccX71, seg30AccY71, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung71_wide (rho 28317 : Seg30.F) (rho 28388 : Seg30.F) (seg30AccX70 rho : Seg30.F) (seg30AccY70 rho : Seg30.F) (rho 28918 : Seg30.F) (rho 28919 : Seg30.F) (rho 28920 : Seg30.F) (rho 28921 : Seg30.F) (rho 28922 : Seg30.F) hacc71
        (by simpa using seg30_prefix_71_v2 rho r602)
        (by simpa using seg30_prefix_71_addX rho r603)
        (by simpa using seg30_prefix_71_addY rho r604)
        (by simpa using seg30_prefix_71_selX rho r605)
        (by simpa using seg30_prefix_71_selY rho r606)
        hbrow71
  obtain ⟨b71, hb71⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28388) hbrow71
  have hrb71 : RvkFixedBaseLadder.FixedStepRel 71 (toZMod b71)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX70 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY70 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX71 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY71 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb71]
    exact hr71
  have hp71 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX71 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY71 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 71 b71 _ _ hp70 hrb71).2
  have hbrow72 : (1*(rho 28389))*(1 + (-1)*(rho 28389)) = 0 := by
    simpa [Seg30.relationRow72] using r72
  have hacc72 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc72 (rho 28317 : Seg30.F)
      (seg30AccX71 rho : Seg30.F) (seg30AccY71 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc72] using hp71
  have hr72 : RvkFixedBaseLadder.FixedStepRel 72 (rho 28389)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX71 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY71 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX72 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY72 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc72, seg30AccX72, seg30AccY72, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung72_wide (rho 28317 : Seg30.F) (rho 28389 : Seg30.F) (seg30AccX71 rho : Seg30.F) (seg30AccY71 rho : Seg30.F) (rho 28923 : Seg30.F) (rho 28924 : Seg30.F) (rho 28925 : Seg30.F) (rho 28926 : Seg30.F) (rho 28927 : Seg30.F) hacc72
        (by simpa using seg30_prefix_72_v2 rho r607)
        (by simpa using seg30_prefix_72_addX rho r608)
        (by simpa using seg30_prefix_72_addY rho r609)
        (by simpa using seg30_prefix_72_selX rho r610)
        (by simpa using seg30_prefix_72_selY rho r611)
        hbrow72
  obtain ⟨b72, hb72⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28389) hbrow72
  have hrb72 : RvkFixedBaseLadder.FixedStepRel 72 (toZMod b72)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX71 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY71 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX72 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY72 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb72]
    exact hr72
  have hp72 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX72 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY72 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 72 b72 _ _ hp71 hrb72).2
  have hbrow73 : (1*(rho 28390))*(1 + (-1)*(rho 28390)) = 0 := by
    simpa [Seg30.relationRow73] using r73
  have hacc73 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc73 (rho 28317 : Seg30.F)
      (seg30AccX72 rho : Seg30.F) (seg30AccY72 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc73] using hp72
  have hr73 : RvkFixedBaseLadder.FixedStepRel 73 (rho 28390)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX72 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY72 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX73 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY73 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc73, seg30AccX73, seg30AccY73, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung73_wide (rho 28317 : Seg30.F) (rho 28390 : Seg30.F) (seg30AccX72 rho : Seg30.F) (seg30AccY72 rho : Seg30.F) (rho 28928 : Seg30.F) (rho 28929 : Seg30.F) (rho 28930 : Seg30.F) (rho 28931 : Seg30.F) (rho 28932 : Seg30.F) hacc73
        (by simpa using seg30_prefix_73_v2 rho r612)
        (by simpa using seg30_prefix_73_addX rho r613)
        (by simpa using seg30_prefix_73_addY rho r614)
        (by simpa using seg30_prefix_73_selX rho r615)
        (by simpa using seg30_prefix_73_selY rho r616)
        hbrow73
  obtain ⟨b73, hb73⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28390) hbrow73
  have hrb73 : RvkFixedBaseLadder.FixedStepRel 73 (toZMod b73)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX72 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY72 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX73 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY73 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb73]
    exact hr73
  have hp73 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX73 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY73 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 73 b73 _ _ hp72 hrb73).2
  have hbrow74 : (1*(rho 28391))*(1 + (-1)*(rho 28391)) = 0 := by
    simpa [Seg30.relationRow74] using r74
  have hacc74 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc74 (rho 28317 : Seg30.F)
      (seg30AccX73 rho : Seg30.F) (seg30AccY73 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc74] using hp73
  have hr74 : RvkFixedBaseLadder.FixedStepRel 74 (rho 28391)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX73 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY73 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX74 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY74 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc74, seg30AccX74, seg30AccY74, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung74_wide (rho 28317 : Seg30.F) (rho 28391 : Seg30.F) (seg30AccX73 rho : Seg30.F) (seg30AccY73 rho : Seg30.F) (rho 28933 : Seg30.F) (rho 28934 : Seg30.F) (rho 28935 : Seg30.F) (rho 28936 : Seg30.F) (rho 28937 : Seg30.F) hacc74
        (by simpa using seg30_prefix_74_v2 rho r617)
        (by simpa using seg30_prefix_74_addX rho r618)
        (by simpa using seg30_prefix_74_addY rho r619)
        (by simpa using seg30_prefix_74_selX rho r620)
        (by simpa using seg30_prefix_74_selY rho r621)
        hbrow74
  obtain ⟨b74, hb74⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28391) hbrow74
  have hrb74 : RvkFixedBaseLadder.FixedStepRel 74 (toZMod b74)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX73 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY73 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX74 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY74 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb74]
    exact hr74
  have hp74 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX74 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY74 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 74 b74 _ _ hp73 hrb74).2
  have hbrow75 : (1*(rho 28392))*(1 + (-1)*(rho 28392)) = 0 := by
    simpa [Seg30.relationRow75] using r75
  have hacc75 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc75 (rho 28317 : Seg30.F)
      (seg30AccX74 rho : Seg30.F) (seg30AccY74 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc75] using hp74
  have hr75 : RvkFixedBaseLadder.FixedStepRel 75 (rho 28392)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX74 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY74 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX75 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY75 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc75, seg30AccX75, seg30AccY75, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung75_wide (rho 28317 : Seg30.F) (rho 28392 : Seg30.F) (seg30AccX74 rho : Seg30.F) (seg30AccY74 rho : Seg30.F) (rho 28938 : Seg30.F) (rho 28939 : Seg30.F) (rho 28940 : Seg30.F) (rho 28941 : Seg30.F) (rho 28942 : Seg30.F) hacc75
        (by simpa using seg30_prefix_75_v2 rho r622)
        (by simpa using seg30_prefix_75_addX rho r623)
        (by simpa using seg30_prefix_75_addY rho r624)
        (by simpa using seg30_prefix_75_selX rho r625)
        (by simpa using seg30_prefix_75_selY rho r626)
        hbrow75
  obtain ⟨b75, hb75⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28392) hbrow75
  have hrb75 : RvkFixedBaseLadder.FixedStepRel 75 (toZMod b75)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX74 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY74 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX75 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY75 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb75]
    exact hr75
  have hp75 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX75 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY75 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 75 b75 _ _ hp74 hrb75).2
  have hbrow76 : (1*(rho 28393))*(1 + (-1)*(rho 28393)) = 0 := by
    simpa [Seg30.relationRow76] using r76
  have hacc76 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc76 (rho 28317 : Seg30.F)
      (seg30AccX75 rho : Seg30.F) (seg30AccY75 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc76] using hp75
  have hr76 : RvkFixedBaseLadder.FixedStepRel 76 (rho 28393)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX75 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY75 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX76 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY76 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc76, seg30AccX76, seg30AccY76, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung76_wide (rho 28317 : Seg30.F) (rho 28393 : Seg30.F) (seg30AccX75 rho : Seg30.F) (seg30AccY75 rho : Seg30.F) (rho 28943 : Seg30.F) (rho 28944 : Seg30.F) (rho 28945 : Seg30.F) (rho 28946 : Seg30.F) (rho 28947 : Seg30.F) hacc76
        (by simpa using seg30_prefix_76_v2 rho r627)
        (by simpa using seg30_prefix_76_addX rho r628)
        (by simpa using seg30_prefix_76_addY rho r629)
        (by simpa using seg30_prefix_76_selX rho r630)
        (by simpa using seg30_prefix_76_selY rho r631)
        hbrow76
  obtain ⟨b76, hb76⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28393) hbrow76
  have hrb76 : RvkFixedBaseLadder.FixedStepRel 76 (toZMod b76)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX75 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY75 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX76 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY76 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb76]
    exact hr76
  have hp76 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX76 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY76 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 76 b76 _ _ hp75 hrb76).2
  have hbrow77 : (1*(rho 28394))*(1 + (-1)*(rho 28394)) = 0 := by
    simpa [Seg30.relationRow77] using r77
  have hacc77 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc77 (rho 28317 : Seg30.F)
      (seg30AccX76 rho : Seg30.F) (seg30AccY76 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc77] using hp76
  have hr77 : RvkFixedBaseLadder.FixedStepRel 77 (rho 28394)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX76 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY76 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX77 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY77 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc77, seg30AccX77, seg30AccY77, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung77_wide (rho 28317 : Seg30.F) (rho 28394 : Seg30.F) (seg30AccX76 rho : Seg30.F) (seg30AccY76 rho : Seg30.F) (rho 28948 : Seg30.F) (rho 28949 : Seg30.F) (rho 28950 : Seg30.F) (rho 28951 : Seg30.F) (rho 28952 : Seg30.F) hacc77
        (by simpa using seg30_prefix_77_v2 rho r632)
        (by simpa using seg30_prefix_77_addX rho r633)
        (by simpa using seg30_prefix_77_addY rho r634)
        (by simpa using seg30_prefix_77_selX rho r635)
        (by simpa using seg30_prefix_77_selY rho r636)
        hbrow77
  obtain ⟨b77, hb77⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28394) hbrow77
  have hrb77 : RvkFixedBaseLadder.FixedStepRel 77 (toZMod b77)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX76 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY76 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX77 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY77 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb77]
    exact hr77
  have hp77 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX77 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY77 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 77 b77 _ _ hp76 hrb77).2
  have hbrow78 : (1*(rho 28395))*(1 + (-1)*(rho 28395)) = 0 := by
    simpa [Seg30.relationRow78] using r78
  have hacc78 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc78 (rho 28317 : Seg30.F)
      (seg30AccX77 rho : Seg30.F) (seg30AccY77 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc78] using hp77
  have hr78 : RvkFixedBaseLadder.FixedStepRel 78 (rho 28395)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX77 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY77 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX78 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY78 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc78, seg30AccX78, seg30AccY78, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung78_wide (rho 28317 : Seg30.F) (rho 28395 : Seg30.F) (seg30AccX77 rho : Seg30.F) (seg30AccY77 rho : Seg30.F) (rho 28953 : Seg30.F) (rho 28954 : Seg30.F) (rho 28955 : Seg30.F) (rho 28956 : Seg30.F) (rho 28957 : Seg30.F) hacc78
        (by simpa using seg30_prefix_78_v2 rho r637)
        (by simpa using seg30_prefix_78_addX rho r638)
        (by simpa using seg30_prefix_78_addY rho r639)
        (by simpa using seg30_prefix_78_selX rho r640)
        (by simpa using seg30_prefix_78_selY rho r641)
        hbrow78
  obtain ⟨b78, hb78⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28395) hbrow78
  have hrb78 : RvkFixedBaseLadder.FixedStepRel 78 (toZMod b78)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX77 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY77 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX78 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY78 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb78]
    exact hr78
  have hp78 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX78 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY78 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 78 b78 _ _ hp77 hrb78).2
  have hbrow79 : (1*(rho 28396))*(1 + (-1)*(rho 28396)) = 0 := by
    simpa [Seg30.relationRow79] using r79
  have hacc79 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc79 (rho 28317 : Seg30.F)
      (seg30AccX78 rho : Seg30.F) (seg30AccY78 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc79] using hp78
  have hr79 : RvkFixedBaseLadder.FixedStepRel 79 (rho 28396)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX78 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY78 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX79 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY79 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc79, seg30AccX79, seg30AccY79, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung79_wide (rho 28317 : Seg30.F) (rho 28396 : Seg30.F) (seg30AccX78 rho : Seg30.F) (seg30AccY78 rho : Seg30.F) (rho 28958 : Seg30.F) (rho 28959 : Seg30.F) (rho 28960 : Seg30.F) (rho 28961 : Seg30.F) (rho 28962 : Seg30.F) hacc79
        (by simpa using seg30_prefix_79_v2 rho r642)
        (by simpa using seg30_prefix_79_addX rho r643)
        (by simpa using seg30_prefix_79_addY rho r644)
        (by simpa using seg30_prefix_79_selX rho r645)
        (by simpa using seg30_prefix_79_selY rho r646)
        hbrow79
  obtain ⟨b79, hb79⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28396) hbrow79
  have hrb79 : RvkFixedBaseLadder.FixedStepRel 79 (toZMod b79)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX78 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY78 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX79 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY79 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb79]
    exact hr79
  have hp79 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX79 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY79 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 79 b79 _ _ hp78 hrb79).2
  have hbrow80 : (1*(rho 28397))*(1 + (-1)*(rho 28397)) = 0 := by
    simpa [Seg30.relationRow80] using r80
  have hacc80 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc80 (rho 28317 : Seg30.F)
      (seg30AccX79 rho : Seg30.F) (seg30AccY79 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc80] using hp79
  have hr80 : RvkFixedBaseLadder.FixedStepRel 80 (rho 28397)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX79 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY79 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX80 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY80 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc80, seg30AccX80, seg30AccY80, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung80_wide (rho 28317 : Seg30.F) (rho 28397 : Seg30.F) (seg30AccX79 rho : Seg30.F) (seg30AccY79 rho : Seg30.F) (rho 28963 : Seg30.F) (rho 28964 : Seg30.F) (rho 28965 : Seg30.F) (rho 28966 : Seg30.F) (rho 28967 : Seg30.F) hacc80
        (by simpa using seg30_prefix_80_v2 rho r647)
        (by simpa using seg30_prefix_80_addX rho r648)
        (by simpa using seg30_prefix_80_addY rho r649)
        (by simpa using seg30_prefix_80_selX rho r650)
        (by simpa using seg30_prefix_80_selY rho r651)
        hbrow80
  obtain ⟨b80, hb80⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28397) hbrow80
  have hrb80 : RvkFixedBaseLadder.FixedStepRel 80 (toZMod b80)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX79 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY79 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX80 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY80 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb80]
    exact hr80
  have hp80 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX80 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY80 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 80 b80 _ _ hp79 hrb80).2
  exact hp80

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg13PrefixLemmas12
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

theorem seg13_prefix_steps12 (rho : Nat -> Seg13.F)
    (hp120 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX120 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY120 rho : Seg13.F)⟩ : EdwardsBridge.Point))
    (r121 : Seg13.relationRow121 rho)
    (r852 : Seg13.relationRow852 rho)
    (r853 : Seg13.relationRow853 rho)
    (r854 : Seg13.relationRow854 rho)
    (r855 : Seg13.relationRow855 rho)
    (r856 : Seg13.relationRow856 rho)
    (r122 : Seg13.relationRow122 rho)
    (r857 : Seg13.relationRow857 rho)
    (r858 : Seg13.relationRow858 rho)
    (r859 : Seg13.relationRow859 rho)
    (r860 : Seg13.relationRow860 rho)
    (r861 : Seg13.relationRow861 rho)
    (r123 : Seg13.relationRow123 rho)
    (r862 : Seg13.relationRow862 rho)
    (r863 : Seg13.relationRow863 rho)
    (r864 : Seg13.relationRow864 rho)
    (r865 : Seg13.relationRow865 rho)
    (r866 : Seg13.relationRow866 rho)
    (r124 : Seg13.relationRow124 rho)
    (r867 : Seg13.relationRow867 rho)
    (r868 : Seg13.relationRow868 rho)
    (r869 : Seg13.relationRow869 rho)
    (r870 : Seg13.relationRow870 rho)
    (r871 : Seg13.relationRow871 rho)
    (r125 : Seg13.relationRow125 rho)
    (r872 : Seg13.relationRow872 rho)
    (r873 : Seg13.relationRow873 rho)
    (r874 : Seg13.relationRow874 rho)
    (r875 : Seg13.relationRow875 rho)
    (r876 : Seg13.relationRow876 rho)
    (r126 : Seg13.relationRow126 rho)
    (r877 : Seg13.relationRow877 rho)
    (r878 : Seg13.relationRow878 rho)
    (r879 : Seg13.relationRow879 rho)
    (r880 : Seg13.relationRow880 rho)
    (r881 : Seg13.relationRow881 rho)
    (r127 : Seg13.relationRow127 rho)
    (r882 : Seg13.relationRow882 rho)
    (r883 : Seg13.relationRow883 rho)
    (r884 : Seg13.relationRow884 rho)
    (r885 : Seg13.relationRow885 rho)
    (r886 : Seg13.relationRow886 rho)
    (r128 : Seg13.relationRow128 rho)
    (r887 : Seg13.relationRow887 rho)
    (r888 : Seg13.relationRow888 rho)
    (r889 : Seg13.relationRow889 rho)
    (r890 : Seg13.relationRow890 rho)
    (r891 : Seg13.relationRow891 rho)
    (r129 : Seg13.relationRow129 rho)
    (r892 : Seg13.relationRow892 rho)
    (r893 : Seg13.relationRow893 rho)
    (r894 : Seg13.relationRow894 rho)
    (r895 : Seg13.relationRow895 rho)
    (r896 : Seg13.relationRow896 rho)
    (r130 : Seg13.relationRow130 rho)
    (r897 : Seg13.relationRow897 rho)
    (r898 : Seg13.relationRow898 rho)
    (r899 : Seg13.relationRow899 rho)
    (r900 : Seg13.relationRow900 rho)
    (r901 : Seg13.relationRow901 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX130 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY130 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
  have hbrow121 : (1*(rho 10692))*(1 + (-1)*(rho 10692)) = 0 := by
    simpa [Seg13.relationRow121] using r121
  have hacc121 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc121 (rho 10571 : Seg13.F)
      (seg13AccX120 rho : Seg13.F) (seg13AccY120 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc121] using hp120
  have hr121 : RvkFixedBaseLadder.FixedStepRel 121 (rho 10692)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX120 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY120 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX121 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY121 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc121, seg13AccX121, seg13AccY121, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung121_wide (rho 10571 : Seg13.F) (rho 10692 : Seg13.F) (seg13AccX120 rho : Seg13.F) (seg13AccY120 rho : Seg13.F) (rho 11422 : Seg13.F) (rho 11423 : Seg13.F) (rho 11424 : Seg13.F) (rho 11425 : Seg13.F) (rho 11426 : Seg13.F) hacc121
        (by simpa using seg13_prefix_121_v2 rho r852)
        (by simpa using seg13_prefix_121_addX rho r853)
        (by simpa using seg13_prefix_121_addY rho r854)
        (by simpa using seg13_prefix_121_selX rho r855)
        (by simpa using seg13_prefix_121_selY rho r856)
        hbrow121
  obtain ⟨b121, hb121⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10692) hbrow121
  have hrb121 : RvkFixedBaseLadder.FixedStepRel 121 (toZMod b121)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX120 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY120 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX121 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY121 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb121]
    exact hr121
  have hp121 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX121 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY121 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 121 b121 _ _ hp120 hrb121).2
  have hbrow122 : (1*(rho 10693))*(1 + (-1)*(rho 10693)) = 0 := by
    simpa [Seg13.relationRow122] using r122
  have hacc122 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc122 (rho 10571 : Seg13.F)
      (seg13AccX121 rho : Seg13.F) (seg13AccY121 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc122] using hp121
  have hr122 : RvkFixedBaseLadder.FixedStepRel 122 (rho 10693)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX121 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY121 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX122 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY122 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc122, seg13AccX122, seg13AccY122, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung122_wide (rho 10571 : Seg13.F) (rho 10693 : Seg13.F) (seg13AccX121 rho : Seg13.F) (seg13AccY121 rho : Seg13.F) (rho 11427 : Seg13.F) (rho 11428 : Seg13.F) (rho 11429 : Seg13.F) (rho 11430 : Seg13.F) (rho 11431 : Seg13.F) hacc122
        (by simpa using seg13_prefix_122_v2 rho r857)
        (by simpa using seg13_prefix_122_addX rho r858)
        (by simpa using seg13_prefix_122_addY rho r859)
        (by simpa using seg13_prefix_122_selX rho r860)
        (by simpa using seg13_prefix_122_selY rho r861)
        hbrow122
  obtain ⟨b122, hb122⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10693) hbrow122
  have hrb122 : RvkFixedBaseLadder.FixedStepRel 122 (toZMod b122)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX121 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY121 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX122 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY122 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb122]
    exact hr122
  have hp122 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX122 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY122 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 122 b122 _ _ hp121 hrb122).2
  have hbrow123 : (1*(rho 10694))*(1 + (-1)*(rho 10694)) = 0 := by
    simpa [Seg13.relationRow123] using r123
  have hacc123 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc123 (rho 10571 : Seg13.F)
      (seg13AccX122 rho : Seg13.F) (seg13AccY122 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc123] using hp122
  have hr123 : RvkFixedBaseLadder.FixedStepRel 123 (rho 10694)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX122 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY122 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX123 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY123 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc123, seg13AccX123, seg13AccY123, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung123_wide (rho 10571 : Seg13.F) (rho 10694 : Seg13.F) (seg13AccX122 rho : Seg13.F) (seg13AccY122 rho : Seg13.F) (rho 11432 : Seg13.F) (rho 11433 : Seg13.F) (rho 11434 : Seg13.F) (rho 11435 : Seg13.F) (rho 11436 : Seg13.F) hacc123
        (by simpa using seg13_prefix_123_v2 rho r862)
        (by simpa using seg13_prefix_123_addX rho r863)
        (by simpa using seg13_prefix_123_addY rho r864)
        (by simpa using seg13_prefix_123_selX rho r865)
        (by simpa using seg13_prefix_123_selY rho r866)
        hbrow123
  obtain ⟨b123, hb123⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10694) hbrow123
  have hrb123 : RvkFixedBaseLadder.FixedStepRel 123 (toZMod b123)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX122 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY122 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX123 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY123 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb123]
    exact hr123
  have hp123 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX123 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY123 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 123 b123 _ _ hp122 hrb123).2
  have hbrow124 : (1*(rho 10695))*(1 + (-1)*(rho 10695)) = 0 := by
    simpa [Seg13.relationRow124] using r124
  have hacc124 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc124 (rho 10571 : Seg13.F)
      (seg13AccX123 rho : Seg13.F) (seg13AccY123 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc124] using hp123
  have hr124 : RvkFixedBaseLadder.FixedStepRel 124 (rho 10695)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX123 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY123 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX124 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY124 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc124, seg13AccX124, seg13AccY124, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung124_wide (rho 10571 : Seg13.F) (rho 10695 : Seg13.F) (seg13AccX123 rho : Seg13.F) (seg13AccY123 rho : Seg13.F) (rho 11437 : Seg13.F) (rho 11438 : Seg13.F) (rho 11439 : Seg13.F) (rho 11440 : Seg13.F) (rho 11441 : Seg13.F) hacc124
        (by simpa using seg13_prefix_124_v2 rho r867)
        (by simpa using seg13_prefix_124_addX rho r868)
        (by simpa using seg13_prefix_124_addY rho r869)
        (by simpa using seg13_prefix_124_selX rho r870)
        (by simpa using seg13_prefix_124_selY rho r871)
        hbrow124
  obtain ⟨b124, hb124⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10695) hbrow124
  have hrb124 : RvkFixedBaseLadder.FixedStepRel 124 (toZMod b124)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX123 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY123 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX124 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY124 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb124]
    exact hr124
  have hp124 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX124 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY124 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 124 b124 _ _ hp123 hrb124).2
  have hbrow125 : (1*(rho 10696))*(1 + (-1)*(rho 10696)) = 0 := by
    simpa [Seg13.relationRow125] using r125
  have hacc125 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc125 (rho 10571 : Seg13.F)
      (seg13AccX124 rho : Seg13.F) (seg13AccY124 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc125] using hp124
  have hr125 : RvkFixedBaseLadder.FixedStepRel 125 (rho 10696)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX124 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY124 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX125 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY125 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc125, seg13AccX125, seg13AccY125, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung125_wide (rho 10571 : Seg13.F) (rho 10696 : Seg13.F) (seg13AccX124 rho : Seg13.F) (seg13AccY124 rho : Seg13.F) (rho 11442 : Seg13.F) (rho 11443 : Seg13.F) (rho 11444 : Seg13.F) (rho 11445 : Seg13.F) (rho 11446 : Seg13.F) hacc125
        (by simpa using seg13_prefix_125_v2 rho r872)
        (by simpa using seg13_prefix_125_addX rho r873)
        (by simpa using seg13_prefix_125_addY rho r874)
        (by simpa using seg13_prefix_125_selX rho r875)
        (by simpa using seg13_prefix_125_selY rho r876)
        hbrow125
  obtain ⟨b125, hb125⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10696) hbrow125
  have hrb125 : RvkFixedBaseLadder.FixedStepRel 125 (toZMod b125)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX124 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY124 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX125 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY125 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb125]
    exact hr125
  have hp125 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX125 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY125 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 125 b125 _ _ hp124 hrb125).2
  have hbrow126 : (1*(rho 10697))*(1 + (-1)*(rho 10697)) = 0 := by
    simpa [Seg13.relationRow126] using r126
  have hacc126 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc126 (rho 10571 : Seg13.F)
      (seg13AccX125 rho : Seg13.F) (seg13AccY125 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc126] using hp125
  have hr126 : RvkFixedBaseLadder.FixedStepRel 126 (rho 10697)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX125 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY125 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX126 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY126 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc126, seg13AccX126, seg13AccY126, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung126_wide (rho 10571 : Seg13.F) (rho 10697 : Seg13.F) (seg13AccX125 rho : Seg13.F) (seg13AccY125 rho : Seg13.F) (rho 11447 : Seg13.F) (rho 11448 : Seg13.F) (rho 11449 : Seg13.F) (rho 11450 : Seg13.F) (rho 11451 : Seg13.F) hacc126
        (by simpa using seg13_prefix_126_v2 rho r877)
        (by simpa using seg13_prefix_126_addX rho r878)
        (by simpa using seg13_prefix_126_addY rho r879)
        (by simpa using seg13_prefix_126_selX rho r880)
        (by simpa using seg13_prefix_126_selY rho r881)
        hbrow126
  obtain ⟨b126, hb126⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10697) hbrow126
  have hrb126 : RvkFixedBaseLadder.FixedStepRel 126 (toZMod b126)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX125 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY125 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX126 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY126 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb126]
    exact hr126
  have hp126 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX126 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY126 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 126 b126 _ _ hp125 hrb126).2
  have hbrow127 : (1*(rho 10698))*(1 + (-1)*(rho 10698)) = 0 := by
    simpa [Seg13.relationRow127] using r127
  have hacc127 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc127 (rho 10571 : Seg13.F)
      (seg13AccX126 rho : Seg13.F) (seg13AccY126 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc127] using hp126
  have hr127 : RvkFixedBaseLadder.FixedStepRel 127 (rho 10698)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX126 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY126 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX127 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY127 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc127, seg13AccX127, seg13AccY127, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung127_wide (rho 10571 : Seg13.F) (rho 10698 : Seg13.F) (seg13AccX126 rho : Seg13.F) (seg13AccY126 rho : Seg13.F) (rho 11452 : Seg13.F) (rho 11453 : Seg13.F) (rho 11454 : Seg13.F) (rho 11455 : Seg13.F) (rho 11456 : Seg13.F) hacc127
        (by simpa using seg13_prefix_127_v2 rho r882)
        (by simpa using seg13_prefix_127_addX rho r883)
        (by simpa using seg13_prefix_127_addY rho r884)
        (by simpa using seg13_prefix_127_selX rho r885)
        (by simpa using seg13_prefix_127_selY rho r886)
        hbrow127
  obtain ⟨b127, hb127⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10698) hbrow127
  have hrb127 : RvkFixedBaseLadder.FixedStepRel 127 (toZMod b127)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX126 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY126 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX127 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY127 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb127]
    exact hr127
  have hp127 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX127 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY127 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 127 b127 _ _ hp126 hrb127).2
  have hbrow128 : (1*(rho 10699))*(1 + (-1)*(rho 10699)) = 0 := by
    simpa [Seg13.relationRow128] using r128
  have hacc128 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc128 (rho 10571 : Seg13.F)
      (seg13AccX127 rho : Seg13.F) (seg13AccY127 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc128] using hp127
  have hr128 : RvkFixedBaseLadder.FixedStepRel 128 (rho 10699)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX127 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY127 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX128 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY128 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc128, seg13AccX128, seg13AccY128, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung128_wide (rho 10571 : Seg13.F) (rho 10699 : Seg13.F) (seg13AccX127 rho : Seg13.F) (seg13AccY127 rho : Seg13.F) (rho 11457 : Seg13.F) (rho 11458 : Seg13.F) (rho 11459 : Seg13.F) (rho 11460 : Seg13.F) (rho 11461 : Seg13.F) hacc128
        (by simpa using seg13_prefix_128_v2 rho r887)
        (by simpa using seg13_prefix_128_addX rho r888)
        (by simpa using seg13_prefix_128_addY rho r889)
        (by simpa using seg13_prefix_128_selX rho r890)
        (by simpa using seg13_prefix_128_selY rho r891)
        hbrow128
  obtain ⟨b128, hb128⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10699) hbrow128
  have hrb128 : RvkFixedBaseLadder.FixedStepRel 128 (toZMod b128)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX127 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY127 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX128 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY128 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb128]
    exact hr128
  have hp128 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX128 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY128 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 128 b128 _ _ hp127 hrb128).2
  have hbrow129 : (1*(rho 10700))*(1 + (-1)*(rho 10700)) = 0 := by
    simpa [Seg13.relationRow129] using r129
  have hacc129 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc129 (rho 10571 : Seg13.F)
      (seg13AccX128 rho : Seg13.F) (seg13AccY128 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc129] using hp128
  have hr129 : RvkFixedBaseLadder.FixedStepRel 129 (rho 10700)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX128 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY128 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX129 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY129 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc129, seg13AccX129, seg13AccY129, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung129_wide (rho 10571 : Seg13.F) (rho 10700 : Seg13.F) (seg13AccX128 rho : Seg13.F) (seg13AccY128 rho : Seg13.F) (rho 11462 : Seg13.F) (rho 11463 : Seg13.F) (rho 11464 : Seg13.F) (rho 11465 : Seg13.F) (rho 11466 : Seg13.F) hacc129
        (by simpa using seg13_prefix_129_v2 rho r892)
        (by simpa using seg13_prefix_129_addX rho r893)
        (by simpa using seg13_prefix_129_addY rho r894)
        (by simpa using seg13_prefix_129_selX rho r895)
        (by simpa using seg13_prefix_129_selY rho r896)
        hbrow129
  obtain ⟨b129, hb129⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10700) hbrow129
  have hrb129 : RvkFixedBaseLadder.FixedStepRel 129 (toZMod b129)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX128 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY128 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX129 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY129 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb129]
    exact hr129
  have hp129 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX129 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY129 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 129 b129 _ _ hp128 hrb129).2
  have hbrow130 : (1*(rho 10701))*(1 + (-1)*(rho 10701)) = 0 := by
    simpa [Seg13.relationRow130] using r130
  have hacc130 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc130 (rho 10571 : Seg13.F)
      (seg13AccX129 rho : Seg13.F) (seg13AccY129 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc130] using hp129
  have hr130 : RvkFixedBaseLadder.FixedStepRel 130 (rho 10701)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX129 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY129 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX130 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY130 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc130, seg13AccX130, seg13AccY130, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung130_wide (rho 10571 : Seg13.F) (rho 10701 : Seg13.F) (seg13AccX129 rho : Seg13.F) (seg13AccY129 rho : Seg13.F) (rho 11467 : Seg13.F) (rho 11468 : Seg13.F) (rho 11469 : Seg13.F) (rho 11470 : Seg13.F) (rho 11471 : Seg13.F) hacc130
        (by simpa using seg13_prefix_130_v2 rho r897)
        (by simpa using seg13_prefix_130_addX rho r898)
        (by simpa using seg13_prefix_130_addY rho r899)
        (by simpa using seg13_prefix_130_selX rho r900)
        (by simpa using seg13_prefix_130_selY rho r901)
        hbrow130
  obtain ⟨b130, hb130⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10701) hbrow130
  have hrb130 : RvkFixedBaseLadder.FixedStepRel 130 (toZMod b130)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX129 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY129 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX130 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY130 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb130]
    exact hr130
  have hp130 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX130 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY130 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 130 b130 _ _ hp129 hrb130).2
  exact hp130

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


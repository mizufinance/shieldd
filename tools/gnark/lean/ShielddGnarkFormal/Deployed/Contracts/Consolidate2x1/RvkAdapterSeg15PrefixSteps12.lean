import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas12
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

theorem seg15_prefix_steps12 (rho : Nat -> Seg15.F)
    (hp120 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX120 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY120 rho : Seg15.F)⟩ : EdwardsBridge.Point))
    (r121 : Seg15.relationRow121 rho)
    (r852 : Seg15.relationRow852 rho)
    (r853 : Seg15.relationRow853 rho)
    (r854 : Seg15.relationRow854 rho)
    (r855 : Seg15.relationRow855 rho)
    (r856 : Seg15.relationRow856 rho)
    (r122 : Seg15.relationRow122 rho)
    (r857 : Seg15.relationRow857 rho)
    (r858 : Seg15.relationRow858 rho)
    (r859 : Seg15.relationRow859 rho)
    (r860 : Seg15.relationRow860 rho)
    (r861 : Seg15.relationRow861 rho)
    (r123 : Seg15.relationRow123 rho)
    (r862 : Seg15.relationRow862 rho)
    (r863 : Seg15.relationRow863 rho)
    (r864 : Seg15.relationRow864 rho)
    (r865 : Seg15.relationRow865 rho)
    (r866 : Seg15.relationRow866 rho)
    (r124 : Seg15.relationRow124 rho)
    (r867 : Seg15.relationRow867 rho)
    (r868 : Seg15.relationRow868 rho)
    (r869 : Seg15.relationRow869 rho)
    (r870 : Seg15.relationRow870 rho)
    (r871 : Seg15.relationRow871 rho)
    (r125 : Seg15.relationRow125 rho)
    (r872 : Seg15.relationRow872 rho)
    (r873 : Seg15.relationRow873 rho)
    (r874 : Seg15.relationRow874 rho)
    (r875 : Seg15.relationRow875 rho)
    (r876 : Seg15.relationRow876 rho)
    (r126 : Seg15.relationRow126 rho)
    (r877 : Seg15.relationRow877 rho)
    (r878 : Seg15.relationRow878 rho)
    (r879 : Seg15.relationRow879 rho)
    (r880 : Seg15.relationRow880 rho)
    (r881 : Seg15.relationRow881 rho)
    (r127 : Seg15.relationRow127 rho)
    (r882 : Seg15.relationRow882 rho)
    (r883 : Seg15.relationRow883 rho)
    (r884 : Seg15.relationRow884 rho)
    (r885 : Seg15.relationRow885 rho)
    (r886 : Seg15.relationRow886 rho)
    (r128 : Seg15.relationRow128 rho)
    (r887 : Seg15.relationRow887 rho)
    (r888 : Seg15.relationRow888 rho)
    (r889 : Seg15.relationRow889 rho)
    (r890 : Seg15.relationRow890 rho)
    (r891 : Seg15.relationRow891 rho)
    (r129 : Seg15.relationRow129 rho)
    (r892 : Seg15.relationRow892 rho)
    (r893 : Seg15.relationRow893 rho)
    (r894 : Seg15.relationRow894 rho)
    (r895 : Seg15.relationRow895 rho)
    (r896 : Seg15.relationRow896 rho)
    (r130 : Seg15.relationRow130 rho)
    (r897 : Seg15.relationRow897 rho)
    (r898 : Seg15.relationRow898 rho)
    (r899 : Seg15.relationRow899 rho)
    (r900 : Seg15.relationRow900 rho)
    (r901 : Seg15.relationRow901 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX130 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY130 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
  have hbrow121 : (1*(rho 16508))*(1 + (-1)*(rho 16508)) = 0 := by
    simpa [Seg15.relationRow121] using r121
  have hacc121 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc121 (rho 16387 : Seg15.F)
      (seg15AccX120 rho : Seg15.F) (seg15AccY120 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc121] using hp120
  have hr121 : RvkFixedBaseLadder.FixedStepRel 121 (rho 16508)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX120 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY120 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX121 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY121 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc121, seg15AccX121, seg15AccY121, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung121_wide (rho 16387 : Seg15.F) (rho 16508 : Seg15.F) (seg15AccX120 rho : Seg15.F) (seg15AccY120 rho : Seg15.F) (rho 17238 : Seg15.F) (rho 17239 : Seg15.F) (rho 17240 : Seg15.F) (rho 17241 : Seg15.F) (rho 17242 : Seg15.F) hacc121
        (by simpa using seg15_prefix_121_v2 rho r852)
        (by simpa using seg15_prefix_121_addX rho r853)
        (by simpa using seg15_prefix_121_addY rho r854)
        (by simpa using seg15_prefix_121_selX rho r855)
        (by simpa using seg15_prefix_121_selY rho r856)
        hbrow121
  obtain ⟨b121, hb121⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16508) hbrow121
  have hrb121 : RvkFixedBaseLadder.FixedStepRel 121 (toZMod b121)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX120 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY120 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX121 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY121 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb121]
    exact hr121
  have hp121 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX121 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY121 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 121 b121 _ _ hp120 hrb121).2
  have hbrow122 : (1*(rho 16509))*(1 + (-1)*(rho 16509)) = 0 := by
    simpa [Seg15.relationRow122] using r122
  have hacc122 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc122 (rho 16387 : Seg15.F)
      (seg15AccX121 rho : Seg15.F) (seg15AccY121 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc122] using hp121
  have hr122 : RvkFixedBaseLadder.FixedStepRel 122 (rho 16509)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX121 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY121 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX122 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY122 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc122, seg15AccX122, seg15AccY122, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung122_wide (rho 16387 : Seg15.F) (rho 16509 : Seg15.F) (seg15AccX121 rho : Seg15.F) (seg15AccY121 rho : Seg15.F) (rho 17243 : Seg15.F) (rho 17244 : Seg15.F) (rho 17245 : Seg15.F) (rho 17246 : Seg15.F) (rho 17247 : Seg15.F) hacc122
        (by simpa using seg15_prefix_122_v2 rho r857)
        (by simpa using seg15_prefix_122_addX rho r858)
        (by simpa using seg15_prefix_122_addY rho r859)
        (by simpa using seg15_prefix_122_selX rho r860)
        (by simpa using seg15_prefix_122_selY rho r861)
        hbrow122
  obtain ⟨b122, hb122⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16509) hbrow122
  have hrb122 : RvkFixedBaseLadder.FixedStepRel 122 (toZMod b122)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX121 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY121 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX122 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY122 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb122]
    exact hr122
  have hp122 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX122 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY122 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 122 b122 _ _ hp121 hrb122).2
  have hbrow123 : (1*(rho 16510))*(1 + (-1)*(rho 16510)) = 0 := by
    simpa [Seg15.relationRow123] using r123
  have hacc123 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc123 (rho 16387 : Seg15.F)
      (seg15AccX122 rho : Seg15.F) (seg15AccY122 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc123] using hp122
  have hr123 : RvkFixedBaseLadder.FixedStepRel 123 (rho 16510)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX122 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY122 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX123 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY123 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc123, seg15AccX123, seg15AccY123, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung123_wide (rho 16387 : Seg15.F) (rho 16510 : Seg15.F) (seg15AccX122 rho : Seg15.F) (seg15AccY122 rho : Seg15.F) (rho 17248 : Seg15.F) (rho 17249 : Seg15.F) (rho 17250 : Seg15.F) (rho 17251 : Seg15.F) (rho 17252 : Seg15.F) hacc123
        (by simpa using seg15_prefix_123_v2 rho r862)
        (by simpa using seg15_prefix_123_addX rho r863)
        (by simpa using seg15_prefix_123_addY rho r864)
        (by simpa using seg15_prefix_123_selX rho r865)
        (by simpa using seg15_prefix_123_selY rho r866)
        hbrow123
  obtain ⟨b123, hb123⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16510) hbrow123
  have hrb123 : RvkFixedBaseLadder.FixedStepRel 123 (toZMod b123)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX122 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY122 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX123 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY123 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb123]
    exact hr123
  have hp123 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX123 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY123 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 123 b123 _ _ hp122 hrb123).2
  have hbrow124 : (1*(rho 16511))*(1 + (-1)*(rho 16511)) = 0 := by
    simpa [Seg15.relationRow124] using r124
  have hacc124 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc124 (rho 16387 : Seg15.F)
      (seg15AccX123 rho : Seg15.F) (seg15AccY123 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc124] using hp123
  have hr124 : RvkFixedBaseLadder.FixedStepRel 124 (rho 16511)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX123 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY123 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX124 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY124 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc124, seg15AccX124, seg15AccY124, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung124_wide (rho 16387 : Seg15.F) (rho 16511 : Seg15.F) (seg15AccX123 rho : Seg15.F) (seg15AccY123 rho : Seg15.F) (rho 17253 : Seg15.F) (rho 17254 : Seg15.F) (rho 17255 : Seg15.F) (rho 17256 : Seg15.F) (rho 17257 : Seg15.F) hacc124
        (by simpa using seg15_prefix_124_v2 rho r867)
        (by simpa using seg15_prefix_124_addX rho r868)
        (by simpa using seg15_prefix_124_addY rho r869)
        (by simpa using seg15_prefix_124_selX rho r870)
        (by simpa using seg15_prefix_124_selY rho r871)
        hbrow124
  obtain ⟨b124, hb124⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16511) hbrow124
  have hrb124 : RvkFixedBaseLadder.FixedStepRel 124 (toZMod b124)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX123 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY123 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX124 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY124 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb124]
    exact hr124
  have hp124 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX124 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY124 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 124 b124 _ _ hp123 hrb124).2
  have hbrow125 : (1*(rho 16512))*(1 + (-1)*(rho 16512)) = 0 := by
    simpa [Seg15.relationRow125] using r125
  have hacc125 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc125 (rho 16387 : Seg15.F)
      (seg15AccX124 rho : Seg15.F) (seg15AccY124 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc125] using hp124
  have hr125 : RvkFixedBaseLadder.FixedStepRel 125 (rho 16512)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX124 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY124 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX125 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY125 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc125, seg15AccX125, seg15AccY125, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung125_wide (rho 16387 : Seg15.F) (rho 16512 : Seg15.F) (seg15AccX124 rho : Seg15.F) (seg15AccY124 rho : Seg15.F) (rho 17258 : Seg15.F) (rho 17259 : Seg15.F) (rho 17260 : Seg15.F) (rho 17261 : Seg15.F) (rho 17262 : Seg15.F) hacc125
        (by simpa using seg15_prefix_125_v2 rho r872)
        (by simpa using seg15_prefix_125_addX rho r873)
        (by simpa using seg15_prefix_125_addY rho r874)
        (by simpa using seg15_prefix_125_selX rho r875)
        (by simpa using seg15_prefix_125_selY rho r876)
        hbrow125
  obtain ⟨b125, hb125⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16512) hbrow125
  have hrb125 : RvkFixedBaseLadder.FixedStepRel 125 (toZMod b125)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX124 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY124 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX125 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY125 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb125]
    exact hr125
  have hp125 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX125 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY125 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 125 b125 _ _ hp124 hrb125).2
  have hbrow126 : (1*(rho 16513))*(1 + (-1)*(rho 16513)) = 0 := by
    simpa [Seg15.relationRow126] using r126
  have hacc126 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc126 (rho 16387 : Seg15.F)
      (seg15AccX125 rho : Seg15.F) (seg15AccY125 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc126] using hp125
  have hr126 : RvkFixedBaseLadder.FixedStepRel 126 (rho 16513)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX125 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY125 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX126 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY126 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc126, seg15AccX126, seg15AccY126, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung126_wide (rho 16387 : Seg15.F) (rho 16513 : Seg15.F) (seg15AccX125 rho : Seg15.F) (seg15AccY125 rho : Seg15.F) (rho 17263 : Seg15.F) (rho 17264 : Seg15.F) (rho 17265 : Seg15.F) (rho 17266 : Seg15.F) (rho 17267 : Seg15.F) hacc126
        (by simpa using seg15_prefix_126_v2 rho r877)
        (by simpa using seg15_prefix_126_addX rho r878)
        (by simpa using seg15_prefix_126_addY rho r879)
        (by simpa using seg15_prefix_126_selX rho r880)
        (by simpa using seg15_prefix_126_selY rho r881)
        hbrow126
  obtain ⟨b126, hb126⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16513) hbrow126
  have hrb126 : RvkFixedBaseLadder.FixedStepRel 126 (toZMod b126)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX125 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY125 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX126 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY126 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb126]
    exact hr126
  have hp126 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX126 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY126 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 126 b126 _ _ hp125 hrb126).2
  have hbrow127 : (1*(rho 16514))*(1 + (-1)*(rho 16514)) = 0 := by
    simpa [Seg15.relationRow127] using r127
  have hacc127 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc127 (rho 16387 : Seg15.F)
      (seg15AccX126 rho : Seg15.F) (seg15AccY126 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc127] using hp126
  have hr127 : RvkFixedBaseLadder.FixedStepRel 127 (rho 16514)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX126 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY126 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX127 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY127 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc127, seg15AccX127, seg15AccY127, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung127_wide (rho 16387 : Seg15.F) (rho 16514 : Seg15.F) (seg15AccX126 rho : Seg15.F) (seg15AccY126 rho : Seg15.F) (rho 17268 : Seg15.F) (rho 17269 : Seg15.F) (rho 17270 : Seg15.F) (rho 17271 : Seg15.F) (rho 17272 : Seg15.F) hacc127
        (by simpa using seg15_prefix_127_v2 rho r882)
        (by simpa using seg15_prefix_127_addX rho r883)
        (by simpa using seg15_prefix_127_addY rho r884)
        (by simpa using seg15_prefix_127_selX rho r885)
        (by simpa using seg15_prefix_127_selY rho r886)
        hbrow127
  obtain ⟨b127, hb127⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16514) hbrow127
  have hrb127 : RvkFixedBaseLadder.FixedStepRel 127 (toZMod b127)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX126 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY126 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX127 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY127 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb127]
    exact hr127
  have hp127 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX127 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY127 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 127 b127 _ _ hp126 hrb127).2
  have hbrow128 : (1*(rho 16515))*(1 + (-1)*(rho 16515)) = 0 := by
    simpa [Seg15.relationRow128] using r128
  have hacc128 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc128 (rho 16387 : Seg15.F)
      (seg15AccX127 rho : Seg15.F) (seg15AccY127 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc128] using hp127
  have hr128 : RvkFixedBaseLadder.FixedStepRel 128 (rho 16515)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX127 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY127 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX128 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY128 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc128, seg15AccX128, seg15AccY128, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung128_wide (rho 16387 : Seg15.F) (rho 16515 : Seg15.F) (seg15AccX127 rho : Seg15.F) (seg15AccY127 rho : Seg15.F) (rho 17273 : Seg15.F) (rho 17274 : Seg15.F) (rho 17275 : Seg15.F) (rho 17276 : Seg15.F) (rho 17277 : Seg15.F) hacc128
        (by simpa using seg15_prefix_128_v2 rho r887)
        (by simpa using seg15_prefix_128_addX rho r888)
        (by simpa using seg15_prefix_128_addY rho r889)
        (by simpa using seg15_prefix_128_selX rho r890)
        (by simpa using seg15_prefix_128_selY rho r891)
        hbrow128
  obtain ⟨b128, hb128⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16515) hbrow128
  have hrb128 : RvkFixedBaseLadder.FixedStepRel 128 (toZMod b128)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX127 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY127 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX128 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY128 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb128]
    exact hr128
  have hp128 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX128 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY128 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 128 b128 _ _ hp127 hrb128).2
  have hbrow129 : (1*(rho 16516))*(1 + (-1)*(rho 16516)) = 0 := by
    simpa [Seg15.relationRow129] using r129
  have hacc129 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc129 (rho 16387 : Seg15.F)
      (seg15AccX128 rho : Seg15.F) (seg15AccY128 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc129] using hp128
  have hr129 : RvkFixedBaseLadder.FixedStepRel 129 (rho 16516)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX128 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY128 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX129 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY129 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc129, seg15AccX129, seg15AccY129, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung129_wide (rho 16387 : Seg15.F) (rho 16516 : Seg15.F) (seg15AccX128 rho : Seg15.F) (seg15AccY128 rho : Seg15.F) (rho 17278 : Seg15.F) (rho 17279 : Seg15.F) (rho 17280 : Seg15.F) (rho 17281 : Seg15.F) (rho 17282 : Seg15.F) hacc129
        (by simpa using seg15_prefix_129_v2 rho r892)
        (by simpa using seg15_prefix_129_addX rho r893)
        (by simpa using seg15_prefix_129_addY rho r894)
        (by simpa using seg15_prefix_129_selX rho r895)
        (by simpa using seg15_prefix_129_selY rho r896)
        hbrow129
  obtain ⟨b129, hb129⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16516) hbrow129
  have hrb129 : RvkFixedBaseLadder.FixedStepRel 129 (toZMod b129)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX128 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY128 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX129 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY129 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb129]
    exact hr129
  have hp129 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX129 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY129 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 129 b129 _ _ hp128 hrb129).2
  have hbrow130 : (1*(rho 16517))*(1 + (-1)*(rho 16517)) = 0 := by
    simpa [Seg15.relationRow130] using r130
  have hacc130 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc130 (rho 16387 : Seg15.F)
      (seg15AccX129 rho : Seg15.F) (seg15AccY129 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc130] using hp129
  have hr130 : RvkFixedBaseLadder.FixedStepRel 130 (rho 16517)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX129 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY129 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX130 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY130 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc130, seg15AccX130, seg15AccY130, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung130_wide (rho 16387 : Seg15.F) (rho 16517 : Seg15.F) (seg15AccX129 rho : Seg15.F) (seg15AccY129 rho : Seg15.F) (rho 17283 : Seg15.F) (rho 17284 : Seg15.F) (rho 17285 : Seg15.F) (rho 17286 : Seg15.F) (rho 17287 : Seg15.F) hacc130
        (by simpa using seg15_prefix_130_v2 rho r897)
        (by simpa using seg15_prefix_130_addX rho r898)
        (by simpa using seg15_prefix_130_addY rho r899)
        (by simpa using seg15_prefix_130_selX rho r900)
        (by simpa using seg15_prefix_130_selY rho r901)
        hbrow130
  obtain ⟨b130, hb130⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16517) hbrow130
  have hrb130 : RvkFixedBaseLadder.FixedStepRel 130 (toZMod b130)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX129 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY129 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX130 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY130 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb130]
    exact hr130
  have hp130 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX130 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY130 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 130 b130 _ _ hp129 hrb130).2
  exact hp130

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


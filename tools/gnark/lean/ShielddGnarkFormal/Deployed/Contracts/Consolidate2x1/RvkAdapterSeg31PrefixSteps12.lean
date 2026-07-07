import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31PrefixLemmas12
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

theorem seg31_prefix_steps12 (rho : Nat -> Seg31.F)
    (hp120 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX120 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY120 rho : Seg31.F)⟩ : EdwardsBridge.Point))
    (r121 : Seg31.relationRow121 rho)
    (r852 : Seg31.relationRow852 rho)
    (r853 : Seg31.relationRow853 rho)
    (r854 : Seg31.relationRow854 rho)
    (r855 : Seg31.relationRow855 rho)
    (r856 : Seg31.relationRow856 rho)
    (r122 : Seg31.relationRow122 rho)
    (r857 : Seg31.relationRow857 rho)
    (r858 : Seg31.relationRow858 rho)
    (r859 : Seg31.relationRow859 rho)
    (r860 : Seg31.relationRow860 rho)
    (r861 : Seg31.relationRow861 rho)
    (r123 : Seg31.relationRow123 rho)
    (r862 : Seg31.relationRow862 rho)
    (r863 : Seg31.relationRow863 rho)
    (r864 : Seg31.relationRow864 rho)
    (r865 : Seg31.relationRow865 rho)
    (r866 : Seg31.relationRow866 rho)
    (r124 : Seg31.relationRow124 rho)
    (r867 : Seg31.relationRow867 rho)
    (r868 : Seg31.relationRow868 rho)
    (r869 : Seg31.relationRow869 rho)
    (r870 : Seg31.relationRow870 rho)
    (r871 : Seg31.relationRow871 rho)
    (r125 : Seg31.relationRow125 rho)
    (r872 : Seg31.relationRow872 rho)
    (r873 : Seg31.relationRow873 rho)
    (r874 : Seg31.relationRow874 rho)
    (r875 : Seg31.relationRow875 rho)
    (r876 : Seg31.relationRow876 rho)
    (r126 : Seg31.relationRow126 rho)
    (r877 : Seg31.relationRow877 rho)
    (r878 : Seg31.relationRow878 rho)
    (r879 : Seg31.relationRow879 rho)
    (r880 : Seg31.relationRow880 rho)
    (r881 : Seg31.relationRow881 rho)
    (r127 : Seg31.relationRow127 rho)
    (r882 : Seg31.relationRow882 rho)
    (r883 : Seg31.relationRow883 rho)
    (r884 : Seg31.relationRow884 rho)
    (r885 : Seg31.relationRow885 rho)
    (r886 : Seg31.relationRow886 rho)
    (r128 : Seg31.relationRow128 rho)
    (r887 : Seg31.relationRow887 rho)
    (r888 : Seg31.relationRow888 rho)
    (r889 : Seg31.relationRow889 rho)
    (r890 : Seg31.relationRow890 rho)
    (r891 : Seg31.relationRow891 rho)
    (r129 : Seg31.relationRow129 rho)
    (r892 : Seg31.relationRow892 rho)
    (r893 : Seg31.relationRow893 rho)
    (r894 : Seg31.relationRow894 rho)
    (r895 : Seg31.relationRow895 rho)
    (r896 : Seg31.relationRow896 rho)
    (r130 : Seg31.relationRow130 rho)
    (r897 : Seg31.relationRow897 rho)
    (r898 : Seg31.relationRow898 rho)
    (r899 : Seg31.relationRow899 rho)
    (r900 : Seg31.relationRow900 rho)
    (r901 : Seg31.relationRow901 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX130 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY130 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
  have hbrow121 : (1*(rho 29392))*(1 + (-1)*(rho 29392)) = 0 := by
    simpa [Seg31.relationRow121] using r121
  have hacc121 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc121 (rho 29271 : Seg31.F)
      (seg31AccX120 rho : Seg31.F) (seg31AccY120 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc121] using hp120
  have hr121 : RvkFixedBaseLadder.FixedStepRel 121 (rho 29392)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX120 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY120 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX121 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY121 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc121, seg31AccX121, seg31AccY121, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung121_wide (rho 29271 : Seg31.F) (rho 29392 : Seg31.F) (seg31AccX120 rho : Seg31.F) (seg31AccY120 rho : Seg31.F) (rho 30122 : Seg31.F) (rho 30123 : Seg31.F) (rho 30124 : Seg31.F) (rho 30125 : Seg31.F) (rho 30126 : Seg31.F) hacc121
        (by simpa using seg31_prefix_121_v2 rho r852)
        (by simpa using seg31_prefix_121_addX rho r853)
        (by simpa using seg31_prefix_121_addY rho r854)
        (by simpa using seg31_prefix_121_selX rho r855)
        (by simpa using seg31_prefix_121_selY rho r856)
        hbrow121
  obtain ⟨b121, hb121⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29392) hbrow121
  have hrb121 : RvkFixedBaseLadder.FixedStepRel 121 (toZMod b121)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX120 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY120 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX121 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY121 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb121]
    exact hr121
  have hp121 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX121 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY121 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 121 b121 _ _ hp120 hrb121).2
  have hbrow122 : (1*(rho 29393))*(1 + (-1)*(rho 29393)) = 0 := by
    simpa [Seg31.relationRow122] using r122
  have hacc122 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc122 (rho 29271 : Seg31.F)
      (seg31AccX121 rho : Seg31.F) (seg31AccY121 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc122] using hp121
  have hr122 : RvkFixedBaseLadder.FixedStepRel 122 (rho 29393)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX121 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY121 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX122 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY122 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc122, seg31AccX122, seg31AccY122, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung122_wide (rho 29271 : Seg31.F) (rho 29393 : Seg31.F) (seg31AccX121 rho : Seg31.F) (seg31AccY121 rho : Seg31.F) (rho 30127 : Seg31.F) (rho 30128 : Seg31.F) (rho 30129 : Seg31.F) (rho 30130 : Seg31.F) (rho 30131 : Seg31.F) hacc122
        (by simpa using seg31_prefix_122_v2 rho r857)
        (by simpa using seg31_prefix_122_addX rho r858)
        (by simpa using seg31_prefix_122_addY rho r859)
        (by simpa using seg31_prefix_122_selX rho r860)
        (by simpa using seg31_prefix_122_selY rho r861)
        hbrow122
  obtain ⟨b122, hb122⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29393) hbrow122
  have hrb122 : RvkFixedBaseLadder.FixedStepRel 122 (toZMod b122)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX121 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY121 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX122 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY122 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb122]
    exact hr122
  have hp122 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX122 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY122 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 122 b122 _ _ hp121 hrb122).2
  have hbrow123 : (1*(rho 29394))*(1 + (-1)*(rho 29394)) = 0 := by
    simpa [Seg31.relationRow123] using r123
  have hacc123 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc123 (rho 29271 : Seg31.F)
      (seg31AccX122 rho : Seg31.F) (seg31AccY122 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc123] using hp122
  have hr123 : RvkFixedBaseLadder.FixedStepRel 123 (rho 29394)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX122 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY122 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX123 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY123 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc123, seg31AccX123, seg31AccY123, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung123_wide (rho 29271 : Seg31.F) (rho 29394 : Seg31.F) (seg31AccX122 rho : Seg31.F) (seg31AccY122 rho : Seg31.F) (rho 30132 : Seg31.F) (rho 30133 : Seg31.F) (rho 30134 : Seg31.F) (rho 30135 : Seg31.F) (rho 30136 : Seg31.F) hacc123
        (by simpa using seg31_prefix_123_v2 rho r862)
        (by simpa using seg31_prefix_123_addX rho r863)
        (by simpa using seg31_prefix_123_addY rho r864)
        (by simpa using seg31_prefix_123_selX rho r865)
        (by simpa using seg31_prefix_123_selY rho r866)
        hbrow123
  obtain ⟨b123, hb123⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29394) hbrow123
  have hrb123 : RvkFixedBaseLadder.FixedStepRel 123 (toZMod b123)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX122 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY122 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX123 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY123 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb123]
    exact hr123
  have hp123 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX123 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY123 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 123 b123 _ _ hp122 hrb123).2
  have hbrow124 : (1*(rho 29395))*(1 + (-1)*(rho 29395)) = 0 := by
    simpa [Seg31.relationRow124] using r124
  have hacc124 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc124 (rho 29271 : Seg31.F)
      (seg31AccX123 rho : Seg31.F) (seg31AccY123 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc124] using hp123
  have hr124 : RvkFixedBaseLadder.FixedStepRel 124 (rho 29395)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX123 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY123 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX124 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY124 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc124, seg31AccX124, seg31AccY124, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung124_wide (rho 29271 : Seg31.F) (rho 29395 : Seg31.F) (seg31AccX123 rho : Seg31.F) (seg31AccY123 rho : Seg31.F) (rho 30137 : Seg31.F) (rho 30138 : Seg31.F) (rho 30139 : Seg31.F) (rho 30140 : Seg31.F) (rho 30141 : Seg31.F) hacc124
        (by simpa using seg31_prefix_124_v2 rho r867)
        (by simpa using seg31_prefix_124_addX rho r868)
        (by simpa using seg31_prefix_124_addY rho r869)
        (by simpa using seg31_prefix_124_selX rho r870)
        (by simpa using seg31_prefix_124_selY rho r871)
        hbrow124
  obtain ⟨b124, hb124⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29395) hbrow124
  have hrb124 : RvkFixedBaseLadder.FixedStepRel 124 (toZMod b124)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX123 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY123 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX124 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY124 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb124]
    exact hr124
  have hp124 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX124 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY124 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 124 b124 _ _ hp123 hrb124).2
  have hbrow125 : (1*(rho 29396))*(1 + (-1)*(rho 29396)) = 0 := by
    simpa [Seg31.relationRow125] using r125
  have hacc125 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc125 (rho 29271 : Seg31.F)
      (seg31AccX124 rho : Seg31.F) (seg31AccY124 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc125] using hp124
  have hr125 : RvkFixedBaseLadder.FixedStepRel 125 (rho 29396)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX124 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY124 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX125 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY125 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc125, seg31AccX125, seg31AccY125, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung125_wide (rho 29271 : Seg31.F) (rho 29396 : Seg31.F) (seg31AccX124 rho : Seg31.F) (seg31AccY124 rho : Seg31.F) (rho 30142 : Seg31.F) (rho 30143 : Seg31.F) (rho 30144 : Seg31.F) (rho 30145 : Seg31.F) (rho 30146 : Seg31.F) hacc125
        (by simpa using seg31_prefix_125_v2 rho r872)
        (by simpa using seg31_prefix_125_addX rho r873)
        (by simpa using seg31_prefix_125_addY rho r874)
        (by simpa using seg31_prefix_125_selX rho r875)
        (by simpa using seg31_prefix_125_selY rho r876)
        hbrow125
  obtain ⟨b125, hb125⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29396) hbrow125
  have hrb125 : RvkFixedBaseLadder.FixedStepRel 125 (toZMod b125)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX124 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY124 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX125 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY125 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb125]
    exact hr125
  have hp125 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX125 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY125 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 125 b125 _ _ hp124 hrb125).2
  have hbrow126 : (1*(rho 29397))*(1 + (-1)*(rho 29397)) = 0 := by
    simpa [Seg31.relationRow126] using r126
  have hacc126 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc126 (rho 29271 : Seg31.F)
      (seg31AccX125 rho : Seg31.F) (seg31AccY125 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc126] using hp125
  have hr126 : RvkFixedBaseLadder.FixedStepRel 126 (rho 29397)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX125 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY125 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX126 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY126 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc126, seg31AccX126, seg31AccY126, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung126_wide (rho 29271 : Seg31.F) (rho 29397 : Seg31.F) (seg31AccX125 rho : Seg31.F) (seg31AccY125 rho : Seg31.F) (rho 30147 : Seg31.F) (rho 30148 : Seg31.F) (rho 30149 : Seg31.F) (rho 30150 : Seg31.F) (rho 30151 : Seg31.F) hacc126
        (by simpa using seg31_prefix_126_v2 rho r877)
        (by simpa using seg31_prefix_126_addX rho r878)
        (by simpa using seg31_prefix_126_addY rho r879)
        (by simpa using seg31_prefix_126_selX rho r880)
        (by simpa using seg31_prefix_126_selY rho r881)
        hbrow126
  obtain ⟨b126, hb126⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29397) hbrow126
  have hrb126 : RvkFixedBaseLadder.FixedStepRel 126 (toZMod b126)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX125 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY125 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX126 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY126 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb126]
    exact hr126
  have hp126 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX126 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY126 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 126 b126 _ _ hp125 hrb126).2
  have hbrow127 : (1*(rho 29398))*(1 + (-1)*(rho 29398)) = 0 := by
    simpa [Seg31.relationRow127] using r127
  have hacc127 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc127 (rho 29271 : Seg31.F)
      (seg31AccX126 rho : Seg31.F) (seg31AccY126 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc127] using hp126
  have hr127 : RvkFixedBaseLadder.FixedStepRel 127 (rho 29398)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX126 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY126 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX127 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY127 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc127, seg31AccX127, seg31AccY127, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung127_wide (rho 29271 : Seg31.F) (rho 29398 : Seg31.F) (seg31AccX126 rho : Seg31.F) (seg31AccY126 rho : Seg31.F) (rho 30152 : Seg31.F) (rho 30153 : Seg31.F) (rho 30154 : Seg31.F) (rho 30155 : Seg31.F) (rho 30156 : Seg31.F) hacc127
        (by simpa using seg31_prefix_127_v2 rho r882)
        (by simpa using seg31_prefix_127_addX rho r883)
        (by simpa using seg31_prefix_127_addY rho r884)
        (by simpa using seg31_prefix_127_selX rho r885)
        (by simpa using seg31_prefix_127_selY rho r886)
        hbrow127
  obtain ⟨b127, hb127⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29398) hbrow127
  have hrb127 : RvkFixedBaseLadder.FixedStepRel 127 (toZMod b127)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX126 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY126 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX127 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY127 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb127]
    exact hr127
  have hp127 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX127 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY127 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 127 b127 _ _ hp126 hrb127).2
  have hbrow128 : (1*(rho 29399))*(1 + (-1)*(rho 29399)) = 0 := by
    simpa [Seg31.relationRow128] using r128
  have hacc128 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc128 (rho 29271 : Seg31.F)
      (seg31AccX127 rho : Seg31.F) (seg31AccY127 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc128] using hp127
  have hr128 : RvkFixedBaseLadder.FixedStepRel 128 (rho 29399)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX127 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY127 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX128 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY128 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc128, seg31AccX128, seg31AccY128, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung128_wide (rho 29271 : Seg31.F) (rho 29399 : Seg31.F) (seg31AccX127 rho : Seg31.F) (seg31AccY127 rho : Seg31.F) (rho 30157 : Seg31.F) (rho 30158 : Seg31.F) (rho 30159 : Seg31.F) (rho 30160 : Seg31.F) (rho 30161 : Seg31.F) hacc128
        (by simpa using seg31_prefix_128_v2 rho r887)
        (by simpa using seg31_prefix_128_addX rho r888)
        (by simpa using seg31_prefix_128_addY rho r889)
        (by simpa using seg31_prefix_128_selX rho r890)
        (by simpa using seg31_prefix_128_selY rho r891)
        hbrow128
  obtain ⟨b128, hb128⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29399) hbrow128
  have hrb128 : RvkFixedBaseLadder.FixedStepRel 128 (toZMod b128)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX127 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY127 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX128 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY128 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb128]
    exact hr128
  have hp128 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX128 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY128 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 128 b128 _ _ hp127 hrb128).2
  have hbrow129 : (1*(rho 29400))*(1 + (-1)*(rho 29400)) = 0 := by
    simpa [Seg31.relationRow129] using r129
  have hacc129 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc129 (rho 29271 : Seg31.F)
      (seg31AccX128 rho : Seg31.F) (seg31AccY128 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc129] using hp128
  have hr129 : RvkFixedBaseLadder.FixedStepRel 129 (rho 29400)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX128 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY128 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX129 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY129 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc129, seg31AccX129, seg31AccY129, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung129_wide (rho 29271 : Seg31.F) (rho 29400 : Seg31.F) (seg31AccX128 rho : Seg31.F) (seg31AccY128 rho : Seg31.F) (rho 30162 : Seg31.F) (rho 30163 : Seg31.F) (rho 30164 : Seg31.F) (rho 30165 : Seg31.F) (rho 30166 : Seg31.F) hacc129
        (by simpa using seg31_prefix_129_v2 rho r892)
        (by simpa using seg31_prefix_129_addX rho r893)
        (by simpa using seg31_prefix_129_addY rho r894)
        (by simpa using seg31_prefix_129_selX rho r895)
        (by simpa using seg31_prefix_129_selY rho r896)
        hbrow129
  obtain ⟨b129, hb129⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29400) hbrow129
  have hrb129 : RvkFixedBaseLadder.FixedStepRel 129 (toZMod b129)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX128 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY128 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX129 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY129 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb129]
    exact hr129
  have hp129 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX129 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY129 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 129 b129 _ _ hp128 hrb129).2
  have hbrow130 : (1*(rho 29401))*(1 + (-1)*(rho 29401)) = 0 := by
    simpa [Seg31.relationRow130] using r130
  have hacc130 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc130 (rho 29271 : Seg31.F)
      (seg31AccX129 rho : Seg31.F) (seg31AccY129 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc130] using hp129
  have hr130 : RvkFixedBaseLadder.FixedStepRel 130 (rho 29401)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX129 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY129 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX130 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY130 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc130, seg31AccX130, seg31AccY130, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung130_wide (rho 29271 : Seg31.F) (rho 29401 : Seg31.F) (seg31AccX129 rho : Seg31.F) (seg31AccY129 rho : Seg31.F) (rho 30167 : Seg31.F) (rho 30168 : Seg31.F) (rho 30169 : Seg31.F) (rho 30170 : Seg31.F) (rho 30171 : Seg31.F) hacc130
        (by simpa using seg31_prefix_130_v2 rho r897)
        (by simpa using seg31_prefix_130_addX rho r898)
        (by simpa using seg31_prefix_130_addY rho r899)
        (by simpa using seg31_prefix_130_selX rho r900)
        (by simpa using seg31_prefix_130_selY rho r901)
        hbrow130
  obtain ⟨b130, hb130⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29401) hbrow130
  have hrb130 : RvkFixedBaseLadder.FixedStepRel 130 (toZMod b130)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX129 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY129 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX130 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY130 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb130]
    exact hr130
  have hp130 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX130 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY130 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 130 b130 _ _ hp129 hrb130).2
  exact hp130

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas12
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

theorem seg30_prefix_steps12 (rho : Nat -> Seg30.F)
    (hp120 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX120 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY120 rho : Seg30.F)⟩ : EdwardsBridge.Point))
    (r121 : Seg30.relationRow121 rho)
    (r852 : Seg30.relationRow852 rho)
    (r853 : Seg30.relationRow853 rho)
    (r854 : Seg30.relationRow854 rho)
    (r855 : Seg30.relationRow855 rho)
    (r856 : Seg30.relationRow856 rho)
    (r122 : Seg30.relationRow122 rho)
    (r857 : Seg30.relationRow857 rho)
    (r858 : Seg30.relationRow858 rho)
    (r859 : Seg30.relationRow859 rho)
    (r860 : Seg30.relationRow860 rho)
    (r861 : Seg30.relationRow861 rho)
    (r123 : Seg30.relationRow123 rho)
    (r862 : Seg30.relationRow862 rho)
    (r863 : Seg30.relationRow863 rho)
    (r864 : Seg30.relationRow864 rho)
    (r865 : Seg30.relationRow865 rho)
    (r866 : Seg30.relationRow866 rho)
    (r124 : Seg30.relationRow124 rho)
    (r867 : Seg30.relationRow867 rho)
    (r868 : Seg30.relationRow868 rho)
    (r869 : Seg30.relationRow869 rho)
    (r870 : Seg30.relationRow870 rho)
    (r871 : Seg30.relationRow871 rho)
    (r125 : Seg30.relationRow125 rho)
    (r872 : Seg30.relationRow872 rho)
    (r873 : Seg30.relationRow873 rho)
    (r874 : Seg30.relationRow874 rho)
    (r875 : Seg30.relationRow875 rho)
    (r876 : Seg30.relationRow876 rho)
    (r126 : Seg30.relationRow126 rho)
    (r877 : Seg30.relationRow877 rho)
    (r878 : Seg30.relationRow878 rho)
    (r879 : Seg30.relationRow879 rho)
    (r880 : Seg30.relationRow880 rho)
    (r881 : Seg30.relationRow881 rho)
    (r127 : Seg30.relationRow127 rho)
    (r882 : Seg30.relationRow882 rho)
    (r883 : Seg30.relationRow883 rho)
    (r884 : Seg30.relationRow884 rho)
    (r885 : Seg30.relationRow885 rho)
    (r886 : Seg30.relationRow886 rho)
    (r128 : Seg30.relationRow128 rho)
    (r887 : Seg30.relationRow887 rho)
    (r888 : Seg30.relationRow888 rho)
    (r889 : Seg30.relationRow889 rho)
    (r890 : Seg30.relationRow890 rho)
    (r891 : Seg30.relationRow891 rho)
    (r129 : Seg30.relationRow129 rho)
    (r892 : Seg30.relationRow892 rho)
    (r893 : Seg30.relationRow893 rho)
    (r894 : Seg30.relationRow894 rho)
    (r895 : Seg30.relationRow895 rho)
    (r896 : Seg30.relationRow896 rho)
    (r130 : Seg30.relationRow130 rho)
    (r897 : Seg30.relationRow897 rho)
    (r898 : Seg30.relationRow898 rho)
    (r899 : Seg30.relationRow899 rho)
    (r900 : Seg30.relationRow900 rho)
    (r901 : Seg30.relationRow901 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX130 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY130 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
  have hbrow121 : (1*(rho 28438))*(1 + (-1)*(rho 28438)) = 0 := by
    simpa [Seg30.relationRow121] using r121
  have hacc121 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc121 (rho 28317 : Seg30.F)
      (seg30AccX120 rho : Seg30.F) (seg30AccY120 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc121] using hp120
  have hr121 : RvkFixedBaseLadder.FixedStepRel 121 (rho 28438)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX120 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY120 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX121 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY121 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc121, seg30AccX121, seg30AccY121, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung121_wide (rho 28317 : Seg30.F) (rho 28438 : Seg30.F) (seg30AccX120 rho : Seg30.F) (seg30AccY120 rho : Seg30.F) (rho 29168 : Seg30.F) (rho 29169 : Seg30.F) (rho 29170 : Seg30.F) (rho 29171 : Seg30.F) (rho 29172 : Seg30.F) hacc121
        (by simpa using seg30_prefix_121_v2 rho r852)
        (by simpa using seg30_prefix_121_addX rho r853)
        (by simpa using seg30_prefix_121_addY rho r854)
        (by simpa using seg30_prefix_121_selX rho r855)
        (by simpa using seg30_prefix_121_selY rho r856)
        hbrow121
  obtain ⟨b121, hb121⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28438) hbrow121
  have hrb121 : RvkFixedBaseLadder.FixedStepRel 121 (toZMod b121)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX120 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY120 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX121 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY121 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb121]
    exact hr121
  have hp121 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX121 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY121 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 121 b121 _ _ hp120 hrb121).2
  have hbrow122 : (1*(rho 28439))*(1 + (-1)*(rho 28439)) = 0 := by
    simpa [Seg30.relationRow122] using r122
  have hacc122 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc122 (rho 28317 : Seg30.F)
      (seg30AccX121 rho : Seg30.F) (seg30AccY121 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc122] using hp121
  have hr122 : RvkFixedBaseLadder.FixedStepRel 122 (rho 28439)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX121 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY121 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX122 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY122 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc122, seg30AccX122, seg30AccY122, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung122_wide (rho 28317 : Seg30.F) (rho 28439 : Seg30.F) (seg30AccX121 rho : Seg30.F) (seg30AccY121 rho : Seg30.F) (rho 29173 : Seg30.F) (rho 29174 : Seg30.F) (rho 29175 : Seg30.F) (rho 29176 : Seg30.F) (rho 29177 : Seg30.F) hacc122
        (by simpa using seg30_prefix_122_v2 rho r857)
        (by simpa using seg30_prefix_122_addX rho r858)
        (by simpa using seg30_prefix_122_addY rho r859)
        (by simpa using seg30_prefix_122_selX rho r860)
        (by simpa using seg30_prefix_122_selY rho r861)
        hbrow122
  obtain ⟨b122, hb122⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28439) hbrow122
  have hrb122 : RvkFixedBaseLadder.FixedStepRel 122 (toZMod b122)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX121 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY121 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX122 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY122 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb122]
    exact hr122
  have hp122 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX122 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY122 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 122 b122 _ _ hp121 hrb122).2
  have hbrow123 : (1*(rho 28440))*(1 + (-1)*(rho 28440)) = 0 := by
    simpa [Seg30.relationRow123] using r123
  have hacc123 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc123 (rho 28317 : Seg30.F)
      (seg30AccX122 rho : Seg30.F) (seg30AccY122 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc123] using hp122
  have hr123 : RvkFixedBaseLadder.FixedStepRel 123 (rho 28440)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX122 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY122 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX123 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY123 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc123, seg30AccX123, seg30AccY123, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung123_wide (rho 28317 : Seg30.F) (rho 28440 : Seg30.F) (seg30AccX122 rho : Seg30.F) (seg30AccY122 rho : Seg30.F) (rho 29178 : Seg30.F) (rho 29179 : Seg30.F) (rho 29180 : Seg30.F) (rho 29181 : Seg30.F) (rho 29182 : Seg30.F) hacc123
        (by simpa using seg30_prefix_123_v2 rho r862)
        (by simpa using seg30_prefix_123_addX rho r863)
        (by simpa using seg30_prefix_123_addY rho r864)
        (by simpa using seg30_prefix_123_selX rho r865)
        (by simpa using seg30_prefix_123_selY rho r866)
        hbrow123
  obtain ⟨b123, hb123⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28440) hbrow123
  have hrb123 : RvkFixedBaseLadder.FixedStepRel 123 (toZMod b123)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX122 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY122 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX123 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY123 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb123]
    exact hr123
  have hp123 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX123 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY123 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 123 b123 _ _ hp122 hrb123).2
  have hbrow124 : (1*(rho 28441))*(1 + (-1)*(rho 28441)) = 0 := by
    simpa [Seg30.relationRow124] using r124
  have hacc124 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc124 (rho 28317 : Seg30.F)
      (seg30AccX123 rho : Seg30.F) (seg30AccY123 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc124] using hp123
  have hr124 : RvkFixedBaseLadder.FixedStepRel 124 (rho 28441)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX123 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY123 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX124 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY124 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc124, seg30AccX124, seg30AccY124, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung124_wide (rho 28317 : Seg30.F) (rho 28441 : Seg30.F) (seg30AccX123 rho : Seg30.F) (seg30AccY123 rho : Seg30.F) (rho 29183 : Seg30.F) (rho 29184 : Seg30.F) (rho 29185 : Seg30.F) (rho 29186 : Seg30.F) (rho 29187 : Seg30.F) hacc124
        (by simpa using seg30_prefix_124_v2 rho r867)
        (by simpa using seg30_prefix_124_addX rho r868)
        (by simpa using seg30_prefix_124_addY rho r869)
        (by simpa using seg30_prefix_124_selX rho r870)
        (by simpa using seg30_prefix_124_selY rho r871)
        hbrow124
  obtain ⟨b124, hb124⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28441) hbrow124
  have hrb124 : RvkFixedBaseLadder.FixedStepRel 124 (toZMod b124)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX123 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY123 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX124 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY124 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb124]
    exact hr124
  have hp124 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX124 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY124 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 124 b124 _ _ hp123 hrb124).2
  have hbrow125 : (1*(rho 28442))*(1 + (-1)*(rho 28442)) = 0 := by
    simpa [Seg30.relationRow125] using r125
  have hacc125 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc125 (rho 28317 : Seg30.F)
      (seg30AccX124 rho : Seg30.F) (seg30AccY124 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc125] using hp124
  have hr125 : RvkFixedBaseLadder.FixedStepRel 125 (rho 28442)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX124 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY124 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX125 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY125 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc125, seg30AccX125, seg30AccY125, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung125_wide (rho 28317 : Seg30.F) (rho 28442 : Seg30.F) (seg30AccX124 rho : Seg30.F) (seg30AccY124 rho : Seg30.F) (rho 29188 : Seg30.F) (rho 29189 : Seg30.F) (rho 29190 : Seg30.F) (rho 29191 : Seg30.F) (rho 29192 : Seg30.F) hacc125
        (by simpa using seg30_prefix_125_v2 rho r872)
        (by simpa using seg30_prefix_125_addX rho r873)
        (by simpa using seg30_prefix_125_addY rho r874)
        (by simpa using seg30_prefix_125_selX rho r875)
        (by simpa using seg30_prefix_125_selY rho r876)
        hbrow125
  obtain ⟨b125, hb125⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28442) hbrow125
  have hrb125 : RvkFixedBaseLadder.FixedStepRel 125 (toZMod b125)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX124 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY124 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX125 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY125 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb125]
    exact hr125
  have hp125 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX125 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY125 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 125 b125 _ _ hp124 hrb125).2
  have hbrow126 : (1*(rho 28443))*(1 + (-1)*(rho 28443)) = 0 := by
    simpa [Seg30.relationRow126] using r126
  have hacc126 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc126 (rho 28317 : Seg30.F)
      (seg30AccX125 rho : Seg30.F) (seg30AccY125 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc126] using hp125
  have hr126 : RvkFixedBaseLadder.FixedStepRel 126 (rho 28443)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX125 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY125 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX126 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY126 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc126, seg30AccX126, seg30AccY126, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung126_wide (rho 28317 : Seg30.F) (rho 28443 : Seg30.F) (seg30AccX125 rho : Seg30.F) (seg30AccY125 rho : Seg30.F) (rho 29193 : Seg30.F) (rho 29194 : Seg30.F) (rho 29195 : Seg30.F) (rho 29196 : Seg30.F) (rho 29197 : Seg30.F) hacc126
        (by simpa using seg30_prefix_126_v2 rho r877)
        (by simpa using seg30_prefix_126_addX rho r878)
        (by simpa using seg30_prefix_126_addY rho r879)
        (by simpa using seg30_prefix_126_selX rho r880)
        (by simpa using seg30_prefix_126_selY rho r881)
        hbrow126
  obtain ⟨b126, hb126⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28443) hbrow126
  have hrb126 : RvkFixedBaseLadder.FixedStepRel 126 (toZMod b126)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX125 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY125 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX126 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY126 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb126]
    exact hr126
  have hp126 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX126 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY126 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 126 b126 _ _ hp125 hrb126).2
  have hbrow127 : (1*(rho 28444))*(1 + (-1)*(rho 28444)) = 0 := by
    simpa [Seg30.relationRow127] using r127
  have hacc127 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc127 (rho 28317 : Seg30.F)
      (seg30AccX126 rho : Seg30.F) (seg30AccY126 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc127] using hp126
  have hr127 : RvkFixedBaseLadder.FixedStepRel 127 (rho 28444)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX126 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY126 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX127 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY127 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc127, seg30AccX127, seg30AccY127, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung127_wide (rho 28317 : Seg30.F) (rho 28444 : Seg30.F) (seg30AccX126 rho : Seg30.F) (seg30AccY126 rho : Seg30.F) (rho 29198 : Seg30.F) (rho 29199 : Seg30.F) (rho 29200 : Seg30.F) (rho 29201 : Seg30.F) (rho 29202 : Seg30.F) hacc127
        (by simpa using seg30_prefix_127_v2 rho r882)
        (by simpa using seg30_prefix_127_addX rho r883)
        (by simpa using seg30_prefix_127_addY rho r884)
        (by simpa using seg30_prefix_127_selX rho r885)
        (by simpa using seg30_prefix_127_selY rho r886)
        hbrow127
  obtain ⟨b127, hb127⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28444) hbrow127
  have hrb127 : RvkFixedBaseLadder.FixedStepRel 127 (toZMod b127)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX126 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY126 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX127 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY127 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb127]
    exact hr127
  have hp127 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX127 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY127 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 127 b127 _ _ hp126 hrb127).2
  have hbrow128 : (1*(rho 28445))*(1 + (-1)*(rho 28445)) = 0 := by
    simpa [Seg30.relationRow128] using r128
  have hacc128 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc128 (rho 28317 : Seg30.F)
      (seg30AccX127 rho : Seg30.F) (seg30AccY127 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc128] using hp127
  have hr128 : RvkFixedBaseLadder.FixedStepRel 128 (rho 28445)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX127 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY127 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX128 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY128 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc128, seg30AccX128, seg30AccY128, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung128_wide (rho 28317 : Seg30.F) (rho 28445 : Seg30.F) (seg30AccX127 rho : Seg30.F) (seg30AccY127 rho : Seg30.F) (rho 29203 : Seg30.F) (rho 29204 : Seg30.F) (rho 29205 : Seg30.F) (rho 29206 : Seg30.F) (rho 29207 : Seg30.F) hacc128
        (by simpa using seg30_prefix_128_v2 rho r887)
        (by simpa using seg30_prefix_128_addX rho r888)
        (by simpa using seg30_prefix_128_addY rho r889)
        (by simpa using seg30_prefix_128_selX rho r890)
        (by simpa using seg30_prefix_128_selY rho r891)
        hbrow128
  obtain ⟨b128, hb128⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28445) hbrow128
  have hrb128 : RvkFixedBaseLadder.FixedStepRel 128 (toZMod b128)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX127 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY127 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX128 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY128 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb128]
    exact hr128
  have hp128 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX128 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY128 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 128 b128 _ _ hp127 hrb128).2
  have hbrow129 : (1*(rho 28446))*(1 + (-1)*(rho 28446)) = 0 := by
    simpa [Seg30.relationRow129] using r129
  have hacc129 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc129 (rho 28317 : Seg30.F)
      (seg30AccX128 rho : Seg30.F) (seg30AccY128 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc129] using hp128
  have hr129 : RvkFixedBaseLadder.FixedStepRel 129 (rho 28446)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX128 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY128 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX129 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY129 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc129, seg30AccX129, seg30AccY129, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung129_wide (rho 28317 : Seg30.F) (rho 28446 : Seg30.F) (seg30AccX128 rho : Seg30.F) (seg30AccY128 rho : Seg30.F) (rho 29208 : Seg30.F) (rho 29209 : Seg30.F) (rho 29210 : Seg30.F) (rho 29211 : Seg30.F) (rho 29212 : Seg30.F) hacc129
        (by simpa using seg30_prefix_129_v2 rho r892)
        (by simpa using seg30_prefix_129_addX rho r893)
        (by simpa using seg30_prefix_129_addY rho r894)
        (by simpa using seg30_prefix_129_selX rho r895)
        (by simpa using seg30_prefix_129_selY rho r896)
        hbrow129
  obtain ⟨b129, hb129⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28446) hbrow129
  have hrb129 : RvkFixedBaseLadder.FixedStepRel 129 (toZMod b129)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX128 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY128 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX129 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY129 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb129]
    exact hr129
  have hp129 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX129 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY129 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 129 b129 _ _ hp128 hrb129).2
  have hbrow130 : (1*(rho 28447))*(1 + (-1)*(rho 28447)) = 0 := by
    simpa [Seg30.relationRow130] using r130
  have hacc130 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc130 (rho 28317 : Seg30.F)
      (seg30AccX129 rho : Seg30.F) (seg30AccY129 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc130] using hp129
  have hr130 : RvkFixedBaseLadder.FixedStepRel 130 (rho 28447)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX129 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY129 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX130 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY130 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc130, seg30AccX130, seg30AccY130, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung130_wide (rho 28317 : Seg30.F) (rho 28447 : Seg30.F) (seg30AccX129 rho : Seg30.F) (seg30AccY129 rho : Seg30.F) (rho 29213 : Seg30.F) (rho 29214 : Seg30.F) (rho 29215 : Seg30.F) (rho 29216 : Seg30.F) (rho 29217 : Seg30.F) hacc130
        (by simpa using seg30_prefix_130_v2 rho r897)
        (by simpa using seg30_prefix_130_addX rho r898)
        (by simpa using seg30_prefix_130_addY rho r899)
        (by simpa using seg30_prefix_130_selX rho r900)
        (by simpa using seg30_prefix_130_selY rho r901)
        hbrow130
  obtain ⟨b130, hb130⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28447) hbrow130
  have hrb130 : RvkFixedBaseLadder.FixedStepRel 130 (toZMod b130)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX129 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY129 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX130 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY130 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb130]
    exact hr130
  have hp130 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX130 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY130 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 130 b130 _ _ hp129 hrb130).2
  exact hp130

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


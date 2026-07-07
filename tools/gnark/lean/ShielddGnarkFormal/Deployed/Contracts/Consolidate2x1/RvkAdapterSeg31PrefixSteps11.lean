import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31PrefixLemmas11
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

theorem seg31_prefix_steps11 (rho : Nat -> Seg31.F)
    (hp110 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX110 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY110 rho : Seg31.F)⟩ : EdwardsBridge.Point))
    (r111 : Seg31.relationRow111 rho)
    (r802 : Seg31.relationRow802 rho)
    (r803 : Seg31.relationRow803 rho)
    (r804 : Seg31.relationRow804 rho)
    (r805 : Seg31.relationRow805 rho)
    (r806 : Seg31.relationRow806 rho)
    (r112 : Seg31.relationRow112 rho)
    (r807 : Seg31.relationRow807 rho)
    (r808 : Seg31.relationRow808 rho)
    (r809 : Seg31.relationRow809 rho)
    (r810 : Seg31.relationRow810 rho)
    (r811 : Seg31.relationRow811 rho)
    (r113 : Seg31.relationRow113 rho)
    (r812 : Seg31.relationRow812 rho)
    (r813 : Seg31.relationRow813 rho)
    (r814 : Seg31.relationRow814 rho)
    (r815 : Seg31.relationRow815 rho)
    (r816 : Seg31.relationRow816 rho)
    (r114 : Seg31.relationRow114 rho)
    (r817 : Seg31.relationRow817 rho)
    (r818 : Seg31.relationRow818 rho)
    (r819 : Seg31.relationRow819 rho)
    (r820 : Seg31.relationRow820 rho)
    (r821 : Seg31.relationRow821 rho)
    (r115 : Seg31.relationRow115 rho)
    (r822 : Seg31.relationRow822 rho)
    (r823 : Seg31.relationRow823 rho)
    (r824 : Seg31.relationRow824 rho)
    (r825 : Seg31.relationRow825 rho)
    (r826 : Seg31.relationRow826 rho)
    (r116 : Seg31.relationRow116 rho)
    (r827 : Seg31.relationRow827 rho)
    (r828 : Seg31.relationRow828 rho)
    (r829 : Seg31.relationRow829 rho)
    (r830 : Seg31.relationRow830 rho)
    (r831 : Seg31.relationRow831 rho)
    (r117 : Seg31.relationRow117 rho)
    (r832 : Seg31.relationRow832 rho)
    (r833 : Seg31.relationRow833 rho)
    (r834 : Seg31.relationRow834 rho)
    (r835 : Seg31.relationRow835 rho)
    (r836 : Seg31.relationRow836 rho)
    (r118 : Seg31.relationRow118 rho)
    (r837 : Seg31.relationRow837 rho)
    (r838 : Seg31.relationRow838 rho)
    (r839 : Seg31.relationRow839 rho)
    (r840 : Seg31.relationRow840 rho)
    (r841 : Seg31.relationRow841 rho)
    (r119 : Seg31.relationRow119 rho)
    (r842 : Seg31.relationRow842 rho)
    (r843 : Seg31.relationRow843 rho)
    (r844 : Seg31.relationRow844 rho)
    (r845 : Seg31.relationRow845 rho)
    (r846 : Seg31.relationRow846 rho)
    (r120 : Seg31.relationRow120 rho)
    (r847 : Seg31.relationRow847 rho)
    (r848 : Seg31.relationRow848 rho)
    (r849 : Seg31.relationRow849 rho)
    (r850 : Seg31.relationRow850 rho)
    (r851 : Seg31.relationRow851 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX120 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY120 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
  have hbrow111 : (1*(rho 29382))*(1 + (-1)*(rho 29382)) = 0 := by
    simpa [Seg31.relationRow111] using r111
  have hacc111 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc111 (rho 29271 : Seg31.F)
      (seg31AccX110 rho : Seg31.F) (seg31AccY110 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc111] using hp110
  have hr111 : RvkFixedBaseLadder.FixedStepRel 111 (rho 29382)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX110 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY110 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX111 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY111 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc111, seg31AccX111, seg31AccY111, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung111_wide (rho 29271 : Seg31.F) (rho 29382 : Seg31.F) (seg31AccX110 rho : Seg31.F) (seg31AccY110 rho : Seg31.F) (rho 30072 : Seg31.F) (rho 30073 : Seg31.F) (rho 30074 : Seg31.F) (rho 30075 : Seg31.F) (rho 30076 : Seg31.F) hacc111
        (by simpa using seg31_prefix_111_v2 rho r802)
        (by simpa using seg31_prefix_111_addX rho r803)
        (by simpa using seg31_prefix_111_addY rho r804)
        (by simpa using seg31_prefix_111_selX rho r805)
        (by simpa using seg31_prefix_111_selY rho r806)
        hbrow111
  obtain ⟨b111, hb111⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29382) hbrow111
  have hrb111 : RvkFixedBaseLadder.FixedStepRel 111 (toZMod b111)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX110 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY110 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX111 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY111 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb111]
    exact hr111
  have hp111 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX111 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY111 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 111 b111 _ _ hp110 hrb111).2
  have hbrow112 : (1*(rho 29383))*(1 + (-1)*(rho 29383)) = 0 := by
    simpa [Seg31.relationRow112] using r112
  have hacc112 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc112 (rho 29271 : Seg31.F)
      (seg31AccX111 rho : Seg31.F) (seg31AccY111 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc112] using hp111
  have hr112 : RvkFixedBaseLadder.FixedStepRel 112 (rho 29383)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX111 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY111 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX112 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY112 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc112, seg31AccX112, seg31AccY112, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung112_wide (rho 29271 : Seg31.F) (rho 29383 : Seg31.F) (seg31AccX111 rho : Seg31.F) (seg31AccY111 rho : Seg31.F) (rho 30077 : Seg31.F) (rho 30078 : Seg31.F) (rho 30079 : Seg31.F) (rho 30080 : Seg31.F) (rho 30081 : Seg31.F) hacc112
        (by simpa using seg31_prefix_112_v2 rho r807)
        (by simpa using seg31_prefix_112_addX rho r808)
        (by simpa using seg31_prefix_112_addY rho r809)
        (by simpa using seg31_prefix_112_selX rho r810)
        (by simpa using seg31_prefix_112_selY rho r811)
        hbrow112
  obtain ⟨b112, hb112⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29383) hbrow112
  have hrb112 : RvkFixedBaseLadder.FixedStepRel 112 (toZMod b112)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX111 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY111 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX112 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY112 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb112]
    exact hr112
  have hp112 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX112 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY112 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 112 b112 _ _ hp111 hrb112).2
  have hbrow113 : (1*(rho 29384))*(1 + (-1)*(rho 29384)) = 0 := by
    simpa [Seg31.relationRow113] using r113
  have hacc113 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc113 (rho 29271 : Seg31.F)
      (seg31AccX112 rho : Seg31.F) (seg31AccY112 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc113] using hp112
  have hr113 : RvkFixedBaseLadder.FixedStepRel 113 (rho 29384)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX112 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY112 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX113 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY113 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc113, seg31AccX113, seg31AccY113, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung113_wide (rho 29271 : Seg31.F) (rho 29384 : Seg31.F) (seg31AccX112 rho : Seg31.F) (seg31AccY112 rho : Seg31.F) (rho 30082 : Seg31.F) (rho 30083 : Seg31.F) (rho 30084 : Seg31.F) (rho 30085 : Seg31.F) (rho 30086 : Seg31.F) hacc113
        (by simpa using seg31_prefix_113_v2 rho r812)
        (by simpa using seg31_prefix_113_addX rho r813)
        (by simpa using seg31_prefix_113_addY rho r814)
        (by simpa using seg31_prefix_113_selX rho r815)
        (by simpa using seg31_prefix_113_selY rho r816)
        hbrow113
  obtain ⟨b113, hb113⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29384) hbrow113
  have hrb113 : RvkFixedBaseLadder.FixedStepRel 113 (toZMod b113)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX112 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY112 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX113 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY113 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb113]
    exact hr113
  have hp113 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX113 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY113 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 113 b113 _ _ hp112 hrb113).2
  have hbrow114 : (1*(rho 29385))*(1 + (-1)*(rho 29385)) = 0 := by
    simpa [Seg31.relationRow114] using r114
  have hacc114 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc114 (rho 29271 : Seg31.F)
      (seg31AccX113 rho : Seg31.F) (seg31AccY113 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc114] using hp113
  have hr114 : RvkFixedBaseLadder.FixedStepRel 114 (rho 29385)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX113 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY113 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX114 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY114 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc114, seg31AccX114, seg31AccY114, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung114_wide (rho 29271 : Seg31.F) (rho 29385 : Seg31.F) (seg31AccX113 rho : Seg31.F) (seg31AccY113 rho : Seg31.F) (rho 30087 : Seg31.F) (rho 30088 : Seg31.F) (rho 30089 : Seg31.F) (rho 30090 : Seg31.F) (rho 30091 : Seg31.F) hacc114
        (by simpa using seg31_prefix_114_v2 rho r817)
        (by simpa using seg31_prefix_114_addX rho r818)
        (by simpa using seg31_prefix_114_addY rho r819)
        (by simpa using seg31_prefix_114_selX rho r820)
        (by simpa using seg31_prefix_114_selY rho r821)
        hbrow114
  obtain ⟨b114, hb114⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29385) hbrow114
  have hrb114 : RvkFixedBaseLadder.FixedStepRel 114 (toZMod b114)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX113 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY113 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX114 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY114 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb114]
    exact hr114
  have hp114 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX114 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY114 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 114 b114 _ _ hp113 hrb114).2
  have hbrow115 : (1*(rho 29386))*(1 + (-1)*(rho 29386)) = 0 := by
    simpa [Seg31.relationRow115] using r115
  have hacc115 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc115 (rho 29271 : Seg31.F)
      (seg31AccX114 rho : Seg31.F) (seg31AccY114 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc115] using hp114
  have hr115 : RvkFixedBaseLadder.FixedStepRel 115 (rho 29386)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX114 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY114 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX115 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY115 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc115, seg31AccX115, seg31AccY115, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung115_wide (rho 29271 : Seg31.F) (rho 29386 : Seg31.F) (seg31AccX114 rho : Seg31.F) (seg31AccY114 rho : Seg31.F) (rho 30092 : Seg31.F) (rho 30093 : Seg31.F) (rho 30094 : Seg31.F) (rho 30095 : Seg31.F) (rho 30096 : Seg31.F) hacc115
        (by simpa using seg31_prefix_115_v2 rho r822)
        (by simpa using seg31_prefix_115_addX rho r823)
        (by simpa using seg31_prefix_115_addY rho r824)
        (by simpa using seg31_prefix_115_selX rho r825)
        (by simpa using seg31_prefix_115_selY rho r826)
        hbrow115
  obtain ⟨b115, hb115⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29386) hbrow115
  have hrb115 : RvkFixedBaseLadder.FixedStepRel 115 (toZMod b115)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX114 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY114 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX115 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY115 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb115]
    exact hr115
  have hp115 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX115 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY115 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 115 b115 _ _ hp114 hrb115).2
  have hbrow116 : (1*(rho 29387))*(1 + (-1)*(rho 29387)) = 0 := by
    simpa [Seg31.relationRow116] using r116
  have hacc116 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc116 (rho 29271 : Seg31.F)
      (seg31AccX115 rho : Seg31.F) (seg31AccY115 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc116] using hp115
  have hr116 : RvkFixedBaseLadder.FixedStepRel 116 (rho 29387)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX115 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY115 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX116 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY116 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc116, seg31AccX116, seg31AccY116, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung116_wide (rho 29271 : Seg31.F) (rho 29387 : Seg31.F) (seg31AccX115 rho : Seg31.F) (seg31AccY115 rho : Seg31.F) (rho 30097 : Seg31.F) (rho 30098 : Seg31.F) (rho 30099 : Seg31.F) (rho 30100 : Seg31.F) (rho 30101 : Seg31.F) hacc116
        (by simpa using seg31_prefix_116_v2 rho r827)
        (by simpa using seg31_prefix_116_addX rho r828)
        (by simpa using seg31_prefix_116_addY rho r829)
        (by simpa using seg31_prefix_116_selX rho r830)
        (by simpa using seg31_prefix_116_selY rho r831)
        hbrow116
  obtain ⟨b116, hb116⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29387) hbrow116
  have hrb116 : RvkFixedBaseLadder.FixedStepRel 116 (toZMod b116)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX115 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY115 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX116 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY116 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb116]
    exact hr116
  have hp116 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX116 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY116 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 116 b116 _ _ hp115 hrb116).2
  have hbrow117 : (1*(rho 29388))*(1 + (-1)*(rho 29388)) = 0 := by
    simpa [Seg31.relationRow117] using r117
  have hacc117 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc117 (rho 29271 : Seg31.F)
      (seg31AccX116 rho : Seg31.F) (seg31AccY116 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc117] using hp116
  have hr117 : RvkFixedBaseLadder.FixedStepRel 117 (rho 29388)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX116 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY116 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX117 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY117 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc117, seg31AccX117, seg31AccY117, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung117_wide (rho 29271 : Seg31.F) (rho 29388 : Seg31.F) (seg31AccX116 rho : Seg31.F) (seg31AccY116 rho : Seg31.F) (rho 30102 : Seg31.F) (rho 30103 : Seg31.F) (rho 30104 : Seg31.F) (rho 30105 : Seg31.F) (rho 30106 : Seg31.F) hacc117
        (by simpa using seg31_prefix_117_v2 rho r832)
        (by simpa using seg31_prefix_117_addX rho r833)
        (by simpa using seg31_prefix_117_addY rho r834)
        (by simpa using seg31_prefix_117_selX rho r835)
        (by simpa using seg31_prefix_117_selY rho r836)
        hbrow117
  obtain ⟨b117, hb117⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29388) hbrow117
  have hrb117 : RvkFixedBaseLadder.FixedStepRel 117 (toZMod b117)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX116 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY116 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX117 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY117 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb117]
    exact hr117
  have hp117 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX117 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY117 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 117 b117 _ _ hp116 hrb117).2
  have hbrow118 : (1*(rho 29389))*(1 + (-1)*(rho 29389)) = 0 := by
    simpa [Seg31.relationRow118] using r118
  have hacc118 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc118 (rho 29271 : Seg31.F)
      (seg31AccX117 rho : Seg31.F) (seg31AccY117 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc118] using hp117
  have hr118 : RvkFixedBaseLadder.FixedStepRel 118 (rho 29389)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX117 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY117 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX118 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY118 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc118, seg31AccX118, seg31AccY118, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung118_wide (rho 29271 : Seg31.F) (rho 29389 : Seg31.F) (seg31AccX117 rho : Seg31.F) (seg31AccY117 rho : Seg31.F) (rho 30107 : Seg31.F) (rho 30108 : Seg31.F) (rho 30109 : Seg31.F) (rho 30110 : Seg31.F) (rho 30111 : Seg31.F) hacc118
        (by simpa using seg31_prefix_118_v2 rho r837)
        (by simpa using seg31_prefix_118_addX rho r838)
        (by simpa using seg31_prefix_118_addY rho r839)
        (by simpa using seg31_prefix_118_selX rho r840)
        (by simpa using seg31_prefix_118_selY rho r841)
        hbrow118
  obtain ⟨b118, hb118⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29389) hbrow118
  have hrb118 : RvkFixedBaseLadder.FixedStepRel 118 (toZMod b118)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX117 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY117 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX118 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY118 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb118]
    exact hr118
  have hp118 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX118 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY118 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 118 b118 _ _ hp117 hrb118).2
  have hbrow119 : (1*(rho 29390))*(1 + (-1)*(rho 29390)) = 0 := by
    simpa [Seg31.relationRow119] using r119
  have hacc119 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc119 (rho 29271 : Seg31.F)
      (seg31AccX118 rho : Seg31.F) (seg31AccY118 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc119] using hp118
  have hr119 : RvkFixedBaseLadder.FixedStepRel 119 (rho 29390)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX118 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY118 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX119 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY119 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc119, seg31AccX119, seg31AccY119, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung119_wide (rho 29271 : Seg31.F) (rho 29390 : Seg31.F) (seg31AccX118 rho : Seg31.F) (seg31AccY118 rho : Seg31.F) (rho 30112 : Seg31.F) (rho 30113 : Seg31.F) (rho 30114 : Seg31.F) (rho 30115 : Seg31.F) (rho 30116 : Seg31.F) hacc119
        (by simpa using seg31_prefix_119_v2 rho r842)
        (by simpa using seg31_prefix_119_addX rho r843)
        (by simpa using seg31_prefix_119_addY rho r844)
        (by simpa using seg31_prefix_119_selX rho r845)
        (by simpa using seg31_prefix_119_selY rho r846)
        hbrow119
  obtain ⟨b119, hb119⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29390) hbrow119
  have hrb119 : RvkFixedBaseLadder.FixedStepRel 119 (toZMod b119)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX118 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY118 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX119 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY119 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb119]
    exact hr119
  have hp119 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX119 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY119 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 119 b119 _ _ hp118 hrb119).2
  have hbrow120 : (1*(rho 29391))*(1 + (-1)*(rho 29391)) = 0 := by
    simpa [Seg31.relationRow120] using r120
  have hacc120 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc120 (rho 29271 : Seg31.F)
      (seg31AccX119 rho : Seg31.F) (seg31AccY119 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc120] using hp119
  have hr120 : RvkFixedBaseLadder.FixedStepRel 120 (rho 29391)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX119 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY119 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX120 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY120 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc120, seg31AccX120, seg31AccY120, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung120_wide (rho 29271 : Seg31.F) (rho 29391 : Seg31.F) (seg31AccX119 rho : Seg31.F) (seg31AccY119 rho : Seg31.F) (rho 30117 : Seg31.F) (rho 30118 : Seg31.F) (rho 30119 : Seg31.F) (rho 30120 : Seg31.F) (rho 30121 : Seg31.F) hacc120
        (by simpa using seg31_prefix_120_v2 rho r847)
        (by simpa using seg31_prefix_120_addX rho r848)
        (by simpa using seg31_prefix_120_addY rho r849)
        (by simpa using seg31_prefix_120_selX rho r850)
        (by simpa using seg31_prefix_120_selY rho r851)
        hbrow120
  obtain ⟨b120, hb120⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29391) hbrow120
  have hrb120 : RvkFixedBaseLadder.FixedStepRel 120 (toZMod b120)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX119 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY119 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX120 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY120 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb120]
    exact hr120
  have hp120 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX120 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY120 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 120 b120 _ _ hp119 hrb120).2
  exact hp120

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


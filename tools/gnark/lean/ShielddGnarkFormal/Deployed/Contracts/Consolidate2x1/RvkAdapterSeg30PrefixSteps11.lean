import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas11
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

theorem seg30_prefix_steps11 (rho : Nat -> Seg30.F)
    (hp110 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX110 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY110 rho : Seg30.F)⟩ : EdwardsBridge.Point))
    (r111 : Seg30.relationRow111 rho)
    (r802 : Seg30.relationRow802 rho)
    (r803 : Seg30.relationRow803 rho)
    (r804 : Seg30.relationRow804 rho)
    (r805 : Seg30.relationRow805 rho)
    (r806 : Seg30.relationRow806 rho)
    (r112 : Seg30.relationRow112 rho)
    (r807 : Seg30.relationRow807 rho)
    (r808 : Seg30.relationRow808 rho)
    (r809 : Seg30.relationRow809 rho)
    (r810 : Seg30.relationRow810 rho)
    (r811 : Seg30.relationRow811 rho)
    (r113 : Seg30.relationRow113 rho)
    (r812 : Seg30.relationRow812 rho)
    (r813 : Seg30.relationRow813 rho)
    (r814 : Seg30.relationRow814 rho)
    (r815 : Seg30.relationRow815 rho)
    (r816 : Seg30.relationRow816 rho)
    (r114 : Seg30.relationRow114 rho)
    (r817 : Seg30.relationRow817 rho)
    (r818 : Seg30.relationRow818 rho)
    (r819 : Seg30.relationRow819 rho)
    (r820 : Seg30.relationRow820 rho)
    (r821 : Seg30.relationRow821 rho)
    (r115 : Seg30.relationRow115 rho)
    (r822 : Seg30.relationRow822 rho)
    (r823 : Seg30.relationRow823 rho)
    (r824 : Seg30.relationRow824 rho)
    (r825 : Seg30.relationRow825 rho)
    (r826 : Seg30.relationRow826 rho)
    (r116 : Seg30.relationRow116 rho)
    (r827 : Seg30.relationRow827 rho)
    (r828 : Seg30.relationRow828 rho)
    (r829 : Seg30.relationRow829 rho)
    (r830 : Seg30.relationRow830 rho)
    (r831 : Seg30.relationRow831 rho)
    (r117 : Seg30.relationRow117 rho)
    (r832 : Seg30.relationRow832 rho)
    (r833 : Seg30.relationRow833 rho)
    (r834 : Seg30.relationRow834 rho)
    (r835 : Seg30.relationRow835 rho)
    (r836 : Seg30.relationRow836 rho)
    (r118 : Seg30.relationRow118 rho)
    (r837 : Seg30.relationRow837 rho)
    (r838 : Seg30.relationRow838 rho)
    (r839 : Seg30.relationRow839 rho)
    (r840 : Seg30.relationRow840 rho)
    (r841 : Seg30.relationRow841 rho)
    (r119 : Seg30.relationRow119 rho)
    (r842 : Seg30.relationRow842 rho)
    (r843 : Seg30.relationRow843 rho)
    (r844 : Seg30.relationRow844 rho)
    (r845 : Seg30.relationRow845 rho)
    (r846 : Seg30.relationRow846 rho)
    (r120 : Seg30.relationRow120 rho)
    (r847 : Seg30.relationRow847 rho)
    (r848 : Seg30.relationRow848 rho)
    (r849 : Seg30.relationRow849 rho)
    (r850 : Seg30.relationRow850 rho)
    (r851 : Seg30.relationRow851 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX120 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY120 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
  have hbrow111 : (1*(rho 28428))*(1 + (-1)*(rho 28428)) = 0 := by
    simpa [Seg30.relationRow111] using r111
  have hacc111 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc111 (rho 28317 : Seg30.F)
      (seg30AccX110 rho : Seg30.F) (seg30AccY110 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc111] using hp110
  have hr111 : RvkFixedBaseLadder.FixedStepRel 111 (rho 28428)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX110 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY110 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX111 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY111 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc111, seg30AccX111, seg30AccY111, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung111_wide (rho 28317 : Seg30.F) (rho 28428 : Seg30.F) (seg30AccX110 rho : Seg30.F) (seg30AccY110 rho : Seg30.F) (rho 29118 : Seg30.F) (rho 29119 : Seg30.F) (rho 29120 : Seg30.F) (rho 29121 : Seg30.F) (rho 29122 : Seg30.F) hacc111
        (by simpa using seg30_prefix_111_v2 rho r802)
        (by simpa using seg30_prefix_111_addX rho r803)
        (by simpa using seg30_prefix_111_addY rho r804)
        (by simpa using seg30_prefix_111_selX rho r805)
        (by simpa using seg30_prefix_111_selY rho r806)
        hbrow111
  obtain ⟨b111, hb111⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28428) hbrow111
  have hrb111 : RvkFixedBaseLadder.FixedStepRel 111 (toZMod b111)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX110 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY110 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX111 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY111 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb111]
    exact hr111
  have hp111 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX111 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY111 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 111 b111 _ _ hp110 hrb111).2
  have hbrow112 : (1*(rho 28429))*(1 + (-1)*(rho 28429)) = 0 := by
    simpa [Seg30.relationRow112] using r112
  have hacc112 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc112 (rho 28317 : Seg30.F)
      (seg30AccX111 rho : Seg30.F) (seg30AccY111 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc112] using hp111
  have hr112 : RvkFixedBaseLadder.FixedStepRel 112 (rho 28429)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX111 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY111 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX112 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY112 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc112, seg30AccX112, seg30AccY112, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung112_wide (rho 28317 : Seg30.F) (rho 28429 : Seg30.F) (seg30AccX111 rho : Seg30.F) (seg30AccY111 rho : Seg30.F) (rho 29123 : Seg30.F) (rho 29124 : Seg30.F) (rho 29125 : Seg30.F) (rho 29126 : Seg30.F) (rho 29127 : Seg30.F) hacc112
        (by simpa using seg30_prefix_112_v2 rho r807)
        (by simpa using seg30_prefix_112_addX rho r808)
        (by simpa using seg30_prefix_112_addY rho r809)
        (by simpa using seg30_prefix_112_selX rho r810)
        (by simpa using seg30_prefix_112_selY rho r811)
        hbrow112
  obtain ⟨b112, hb112⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28429) hbrow112
  have hrb112 : RvkFixedBaseLadder.FixedStepRel 112 (toZMod b112)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX111 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY111 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX112 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY112 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb112]
    exact hr112
  have hp112 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX112 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY112 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 112 b112 _ _ hp111 hrb112).2
  have hbrow113 : (1*(rho 28430))*(1 + (-1)*(rho 28430)) = 0 := by
    simpa [Seg30.relationRow113] using r113
  have hacc113 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc113 (rho 28317 : Seg30.F)
      (seg30AccX112 rho : Seg30.F) (seg30AccY112 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc113] using hp112
  have hr113 : RvkFixedBaseLadder.FixedStepRel 113 (rho 28430)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX112 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY112 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX113 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY113 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc113, seg30AccX113, seg30AccY113, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung113_wide (rho 28317 : Seg30.F) (rho 28430 : Seg30.F) (seg30AccX112 rho : Seg30.F) (seg30AccY112 rho : Seg30.F) (rho 29128 : Seg30.F) (rho 29129 : Seg30.F) (rho 29130 : Seg30.F) (rho 29131 : Seg30.F) (rho 29132 : Seg30.F) hacc113
        (by simpa using seg30_prefix_113_v2 rho r812)
        (by simpa using seg30_prefix_113_addX rho r813)
        (by simpa using seg30_prefix_113_addY rho r814)
        (by simpa using seg30_prefix_113_selX rho r815)
        (by simpa using seg30_prefix_113_selY rho r816)
        hbrow113
  obtain ⟨b113, hb113⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28430) hbrow113
  have hrb113 : RvkFixedBaseLadder.FixedStepRel 113 (toZMod b113)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX112 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY112 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX113 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY113 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb113]
    exact hr113
  have hp113 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX113 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY113 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 113 b113 _ _ hp112 hrb113).2
  have hbrow114 : (1*(rho 28431))*(1 + (-1)*(rho 28431)) = 0 := by
    simpa [Seg30.relationRow114] using r114
  have hacc114 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc114 (rho 28317 : Seg30.F)
      (seg30AccX113 rho : Seg30.F) (seg30AccY113 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc114] using hp113
  have hr114 : RvkFixedBaseLadder.FixedStepRel 114 (rho 28431)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX113 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY113 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX114 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY114 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc114, seg30AccX114, seg30AccY114, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung114_wide (rho 28317 : Seg30.F) (rho 28431 : Seg30.F) (seg30AccX113 rho : Seg30.F) (seg30AccY113 rho : Seg30.F) (rho 29133 : Seg30.F) (rho 29134 : Seg30.F) (rho 29135 : Seg30.F) (rho 29136 : Seg30.F) (rho 29137 : Seg30.F) hacc114
        (by simpa using seg30_prefix_114_v2 rho r817)
        (by simpa using seg30_prefix_114_addX rho r818)
        (by simpa using seg30_prefix_114_addY rho r819)
        (by simpa using seg30_prefix_114_selX rho r820)
        (by simpa using seg30_prefix_114_selY rho r821)
        hbrow114
  obtain ⟨b114, hb114⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28431) hbrow114
  have hrb114 : RvkFixedBaseLadder.FixedStepRel 114 (toZMod b114)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX113 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY113 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX114 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY114 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb114]
    exact hr114
  have hp114 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX114 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY114 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 114 b114 _ _ hp113 hrb114).2
  have hbrow115 : (1*(rho 28432))*(1 + (-1)*(rho 28432)) = 0 := by
    simpa [Seg30.relationRow115] using r115
  have hacc115 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc115 (rho 28317 : Seg30.F)
      (seg30AccX114 rho : Seg30.F) (seg30AccY114 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc115] using hp114
  have hr115 : RvkFixedBaseLadder.FixedStepRel 115 (rho 28432)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX114 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY114 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX115 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY115 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc115, seg30AccX115, seg30AccY115, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung115_wide (rho 28317 : Seg30.F) (rho 28432 : Seg30.F) (seg30AccX114 rho : Seg30.F) (seg30AccY114 rho : Seg30.F) (rho 29138 : Seg30.F) (rho 29139 : Seg30.F) (rho 29140 : Seg30.F) (rho 29141 : Seg30.F) (rho 29142 : Seg30.F) hacc115
        (by simpa using seg30_prefix_115_v2 rho r822)
        (by simpa using seg30_prefix_115_addX rho r823)
        (by simpa using seg30_prefix_115_addY rho r824)
        (by simpa using seg30_prefix_115_selX rho r825)
        (by simpa using seg30_prefix_115_selY rho r826)
        hbrow115
  obtain ⟨b115, hb115⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28432) hbrow115
  have hrb115 : RvkFixedBaseLadder.FixedStepRel 115 (toZMod b115)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX114 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY114 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX115 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY115 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb115]
    exact hr115
  have hp115 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX115 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY115 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 115 b115 _ _ hp114 hrb115).2
  have hbrow116 : (1*(rho 28433))*(1 + (-1)*(rho 28433)) = 0 := by
    simpa [Seg30.relationRow116] using r116
  have hacc116 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc116 (rho 28317 : Seg30.F)
      (seg30AccX115 rho : Seg30.F) (seg30AccY115 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc116] using hp115
  have hr116 : RvkFixedBaseLadder.FixedStepRel 116 (rho 28433)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX115 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY115 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX116 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY116 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc116, seg30AccX116, seg30AccY116, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung116_wide (rho 28317 : Seg30.F) (rho 28433 : Seg30.F) (seg30AccX115 rho : Seg30.F) (seg30AccY115 rho : Seg30.F) (rho 29143 : Seg30.F) (rho 29144 : Seg30.F) (rho 29145 : Seg30.F) (rho 29146 : Seg30.F) (rho 29147 : Seg30.F) hacc116
        (by simpa using seg30_prefix_116_v2 rho r827)
        (by simpa using seg30_prefix_116_addX rho r828)
        (by simpa using seg30_prefix_116_addY rho r829)
        (by simpa using seg30_prefix_116_selX rho r830)
        (by simpa using seg30_prefix_116_selY rho r831)
        hbrow116
  obtain ⟨b116, hb116⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28433) hbrow116
  have hrb116 : RvkFixedBaseLadder.FixedStepRel 116 (toZMod b116)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX115 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY115 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX116 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY116 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb116]
    exact hr116
  have hp116 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX116 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY116 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 116 b116 _ _ hp115 hrb116).2
  have hbrow117 : (1*(rho 28434))*(1 + (-1)*(rho 28434)) = 0 := by
    simpa [Seg30.relationRow117] using r117
  have hacc117 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc117 (rho 28317 : Seg30.F)
      (seg30AccX116 rho : Seg30.F) (seg30AccY116 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc117] using hp116
  have hr117 : RvkFixedBaseLadder.FixedStepRel 117 (rho 28434)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX116 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY116 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX117 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY117 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc117, seg30AccX117, seg30AccY117, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung117_wide (rho 28317 : Seg30.F) (rho 28434 : Seg30.F) (seg30AccX116 rho : Seg30.F) (seg30AccY116 rho : Seg30.F) (rho 29148 : Seg30.F) (rho 29149 : Seg30.F) (rho 29150 : Seg30.F) (rho 29151 : Seg30.F) (rho 29152 : Seg30.F) hacc117
        (by simpa using seg30_prefix_117_v2 rho r832)
        (by simpa using seg30_prefix_117_addX rho r833)
        (by simpa using seg30_prefix_117_addY rho r834)
        (by simpa using seg30_prefix_117_selX rho r835)
        (by simpa using seg30_prefix_117_selY rho r836)
        hbrow117
  obtain ⟨b117, hb117⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28434) hbrow117
  have hrb117 : RvkFixedBaseLadder.FixedStepRel 117 (toZMod b117)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX116 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY116 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX117 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY117 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb117]
    exact hr117
  have hp117 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX117 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY117 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 117 b117 _ _ hp116 hrb117).2
  have hbrow118 : (1*(rho 28435))*(1 + (-1)*(rho 28435)) = 0 := by
    simpa [Seg30.relationRow118] using r118
  have hacc118 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc118 (rho 28317 : Seg30.F)
      (seg30AccX117 rho : Seg30.F) (seg30AccY117 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc118] using hp117
  have hr118 : RvkFixedBaseLadder.FixedStepRel 118 (rho 28435)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX117 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY117 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX118 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY118 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc118, seg30AccX118, seg30AccY118, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung118_wide (rho 28317 : Seg30.F) (rho 28435 : Seg30.F) (seg30AccX117 rho : Seg30.F) (seg30AccY117 rho : Seg30.F) (rho 29153 : Seg30.F) (rho 29154 : Seg30.F) (rho 29155 : Seg30.F) (rho 29156 : Seg30.F) (rho 29157 : Seg30.F) hacc118
        (by simpa using seg30_prefix_118_v2 rho r837)
        (by simpa using seg30_prefix_118_addX rho r838)
        (by simpa using seg30_prefix_118_addY rho r839)
        (by simpa using seg30_prefix_118_selX rho r840)
        (by simpa using seg30_prefix_118_selY rho r841)
        hbrow118
  obtain ⟨b118, hb118⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28435) hbrow118
  have hrb118 : RvkFixedBaseLadder.FixedStepRel 118 (toZMod b118)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX117 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY117 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX118 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY118 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb118]
    exact hr118
  have hp118 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX118 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY118 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 118 b118 _ _ hp117 hrb118).2
  have hbrow119 : (1*(rho 28436))*(1 + (-1)*(rho 28436)) = 0 := by
    simpa [Seg30.relationRow119] using r119
  have hacc119 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc119 (rho 28317 : Seg30.F)
      (seg30AccX118 rho : Seg30.F) (seg30AccY118 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc119] using hp118
  have hr119 : RvkFixedBaseLadder.FixedStepRel 119 (rho 28436)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX118 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY118 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX119 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY119 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc119, seg30AccX119, seg30AccY119, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung119_wide (rho 28317 : Seg30.F) (rho 28436 : Seg30.F) (seg30AccX118 rho : Seg30.F) (seg30AccY118 rho : Seg30.F) (rho 29158 : Seg30.F) (rho 29159 : Seg30.F) (rho 29160 : Seg30.F) (rho 29161 : Seg30.F) (rho 29162 : Seg30.F) hacc119
        (by simpa using seg30_prefix_119_v2 rho r842)
        (by simpa using seg30_prefix_119_addX rho r843)
        (by simpa using seg30_prefix_119_addY rho r844)
        (by simpa using seg30_prefix_119_selX rho r845)
        (by simpa using seg30_prefix_119_selY rho r846)
        hbrow119
  obtain ⟨b119, hb119⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28436) hbrow119
  have hrb119 : RvkFixedBaseLadder.FixedStepRel 119 (toZMod b119)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX118 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY118 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX119 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY119 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb119]
    exact hr119
  have hp119 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX119 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY119 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 119 b119 _ _ hp118 hrb119).2
  have hbrow120 : (1*(rho 28437))*(1 + (-1)*(rho 28437)) = 0 := by
    simpa [Seg30.relationRow120] using r120
  have hacc120 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc120 (rho 28317 : Seg30.F)
      (seg30AccX119 rho : Seg30.F) (seg30AccY119 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc120] using hp119
  have hr120 : RvkFixedBaseLadder.FixedStepRel 120 (rho 28437)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX119 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY119 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX120 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY120 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc120, seg30AccX120, seg30AccY120, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung120_wide (rho 28317 : Seg30.F) (rho 28437 : Seg30.F) (seg30AccX119 rho : Seg30.F) (seg30AccY119 rho : Seg30.F) (rho 29163 : Seg30.F) (rho 29164 : Seg30.F) (rho 29165 : Seg30.F) (rho 29166 : Seg30.F) (rho 29167 : Seg30.F) hacc120
        (by simpa using seg30_prefix_120_v2 rho r847)
        (by simpa using seg30_prefix_120_addX rho r848)
        (by simpa using seg30_prefix_120_addY rho r849)
        (by simpa using seg30_prefix_120_selX rho r850)
        (by simpa using seg30_prefix_120_selY rho r851)
        hbrow120
  obtain ⟨b120, hb120⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28437) hbrow120
  have hrb120 : RvkFixedBaseLadder.FixedStepRel 120 (toZMod b120)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX119 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY119 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX120 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY120 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb120]
    exact hr120
  have hp120 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX120 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY120 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 120 b120 _ _ hp119 hrb120).2
  exact hp120

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


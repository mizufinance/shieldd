import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas11
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

theorem seg15_prefix_steps11 (rho : Nat -> Seg15.F)
    (hp110 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX110 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY110 rho : Seg15.F)⟩ : EdwardsBridge.Point))
    (r111 : Seg15.relationRow111 rho)
    (r802 : Seg15.relationRow802 rho)
    (r803 : Seg15.relationRow803 rho)
    (r804 : Seg15.relationRow804 rho)
    (r805 : Seg15.relationRow805 rho)
    (r806 : Seg15.relationRow806 rho)
    (r112 : Seg15.relationRow112 rho)
    (r807 : Seg15.relationRow807 rho)
    (r808 : Seg15.relationRow808 rho)
    (r809 : Seg15.relationRow809 rho)
    (r810 : Seg15.relationRow810 rho)
    (r811 : Seg15.relationRow811 rho)
    (r113 : Seg15.relationRow113 rho)
    (r812 : Seg15.relationRow812 rho)
    (r813 : Seg15.relationRow813 rho)
    (r814 : Seg15.relationRow814 rho)
    (r815 : Seg15.relationRow815 rho)
    (r816 : Seg15.relationRow816 rho)
    (r114 : Seg15.relationRow114 rho)
    (r817 : Seg15.relationRow817 rho)
    (r818 : Seg15.relationRow818 rho)
    (r819 : Seg15.relationRow819 rho)
    (r820 : Seg15.relationRow820 rho)
    (r821 : Seg15.relationRow821 rho)
    (r115 : Seg15.relationRow115 rho)
    (r822 : Seg15.relationRow822 rho)
    (r823 : Seg15.relationRow823 rho)
    (r824 : Seg15.relationRow824 rho)
    (r825 : Seg15.relationRow825 rho)
    (r826 : Seg15.relationRow826 rho)
    (r116 : Seg15.relationRow116 rho)
    (r827 : Seg15.relationRow827 rho)
    (r828 : Seg15.relationRow828 rho)
    (r829 : Seg15.relationRow829 rho)
    (r830 : Seg15.relationRow830 rho)
    (r831 : Seg15.relationRow831 rho)
    (r117 : Seg15.relationRow117 rho)
    (r832 : Seg15.relationRow832 rho)
    (r833 : Seg15.relationRow833 rho)
    (r834 : Seg15.relationRow834 rho)
    (r835 : Seg15.relationRow835 rho)
    (r836 : Seg15.relationRow836 rho)
    (r118 : Seg15.relationRow118 rho)
    (r837 : Seg15.relationRow837 rho)
    (r838 : Seg15.relationRow838 rho)
    (r839 : Seg15.relationRow839 rho)
    (r840 : Seg15.relationRow840 rho)
    (r841 : Seg15.relationRow841 rho)
    (r119 : Seg15.relationRow119 rho)
    (r842 : Seg15.relationRow842 rho)
    (r843 : Seg15.relationRow843 rho)
    (r844 : Seg15.relationRow844 rho)
    (r845 : Seg15.relationRow845 rho)
    (r846 : Seg15.relationRow846 rho)
    (r120 : Seg15.relationRow120 rho)
    (r847 : Seg15.relationRow847 rho)
    (r848 : Seg15.relationRow848 rho)
    (r849 : Seg15.relationRow849 rho)
    (r850 : Seg15.relationRow850 rho)
    (r851 : Seg15.relationRow851 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX120 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY120 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
  have hbrow111 : (1*(rho 16498))*(1 + (-1)*(rho 16498)) = 0 := by
    simpa [Seg15.relationRow111] using r111
  have hacc111 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc111 (rho 16387 : Seg15.F)
      (seg15AccX110 rho : Seg15.F) (seg15AccY110 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc111] using hp110
  have hr111 : RvkFixedBaseLadder.FixedStepRel 111 (rho 16498)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX110 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY110 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX111 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY111 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc111, seg15AccX111, seg15AccY111, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung111_wide (rho 16387 : Seg15.F) (rho 16498 : Seg15.F) (seg15AccX110 rho : Seg15.F) (seg15AccY110 rho : Seg15.F) (rho 17188 : Seg15.F) (rho 17189 : Seg15.F) (rho 17190 : Seg15.F) (rho 17191 : Seg15.F) (rho 17192 : Seg15.F) hacc111
        (by simpa using seg15_prefix_111_v2 rho r802)
        (by simpa using seg15_prefix_111_addX rho r803)
        (by simpa using seg15_prefix_111_addY rho r804)
        (by simpa using seg15_prefix_111_selX rho r805)
        (by simpa using seg15_prefix_111_selY rho r806)
        hbrow111
  obtain ⟨b111, hb111⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16498) hbrow111
  have hrb111 : RvkFixedBaseLadder.FixedStepRel 111 (toZMod b111)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX110 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY110 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX111 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY111 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb111]
    exact hr111
  have hp111 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX111 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY111 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 111 b111 _ _ hp110 hrb111).2
  have hbrow112 : (1*(rho 16499))*(1 + (-1)*(rho 16499)) = 0 := by
    simpa [Seg15.relationRow112] using r112
  have hacc112 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc112 (rho 16387 : Seg15.F)
      (seg15AccX111 rho : Seg15.F) (seg15AccY111 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc112] using hp111
  have hr112 : RvkFixedBaseLadder.FixedStepRel 112 (rho 16499)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX111 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY111 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX112 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY112 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc112, seg15AccX112, seg15AccY112, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung112_wide (rho 16387 : Seg15.F) (rho 16499 : Seg15.F) (seg15AccX111 rho : Seg15.F) (seg15AccY111 rho : Seg15.F) (rho 17193 : Seg15.F) (rho 17194 : Seg15.F) (rho 17195 : Seg15.F) (rho 17196 : Seg15.F) (rho 17197 : Seg15.F) hacc112
        (by simpa using seg15_prefix_112_v2 rho r807)
        (by simpa using seg15_prefix_112_addX rho r808)
        (by simpa using seg15_prefix_112_addY rho r809)
        (by simpa using seg15_prefix_112_selX rho r810)
        (by simpa using seg15_prefix_112_selY rho r811)
        hbrow112
  obtain ⟨b112, hb112⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16499) hbrow112
  have hrb112 : RvkFixedBaseLadder.FixedStepRel 112 (toZMod b112)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX111 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY111 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX112 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY112 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb112]
    exact hr112
  have hp112 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX112 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY112 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 112 b112 _ _ hp111 hrb112).2
  have hbrow113 : (1*(rho 16500))*(1 + (-1)*(rho 16500)) = 0 := by
    simpa [Seg15.relationRow113] using r113
  have hacc113 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc113 (rho 16387 : Seg15.F)
      (seg15AccX112 rho : Seg15.F) (seg15AccY112 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc113] using hp112
  have hr113 : RvkFixedBaseLadder.FixedStepRel 113 (rho 16500)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX112 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY112 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX113 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY113 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc113, seg15AccX113, seg15AccY113, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung113_wide (rho 16387 : Seg15.F) (rho 16500 : Seg15.F) (seg15AccX112 rho : Seg15.F) (seg15AccY112 rho : Seg15.F) (rho 17198 : Seg15.F) (rho 17199 : Seg15.F) (rho 17200 : Seg15.F) (rho 17201 : Seg15.F) (rho 17202 : Seg15.F) hacc113
        (by simpa using seg15_prefix_113_v2 rho r812)
        (by simpa using seg15_prefix_113_addX rho r813)
        (by simpa using seg15_prefix_113_addY rho r814)
        (by simpa using seg15_prefix_113_selX rho r815)
        (by simpa using seg15_prefix_113_selY rho r816)
        hbrow113
  obtain ⟨b113, hb113⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16500) hbrow113
  have hrb113 : RvkFixedBaseLadder.FixedStepRel 113 (toZMod b113)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX112 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY112 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX113 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY113 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb113]
    exact hr113
  have hp113 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX113 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY113 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 113 b113 _ _ hp112 hrb113).2
  have hbrow114 : (1*(rho 16501))*(1 + (-1)*(rho 16501)) = 0 := by
    simpa [Seg15.relationRow114] using r114
  have hacc114 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc114 (rho 16387 : Seg15.F)
      (seg15AccX113 rho : Seg15.F) (seg15AccY113 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc114] using hp113
  have hr114 : RvkFixedBaseLadder.FixedStepRel 114 (rho 16501)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX113 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY113 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX114 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY114 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc114, seg15AccX114, seg15AccY114, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung114_wide (rho 16387 : Seg15.F) (rho 16501 : Seg15.F) (seg15AccX113 rho : Seg15.F) (seg15AccY113 rho : Seg15.F) (rho 17203 : Seg15.F) (rho 17204 : Seg15.F) (rho 17205 : Seg15.F) (rho 17206 : Seg15.F) (rho 17207 : Seg15.F) hacc114
        (by simpa using seg15_prefix_114_v2 rho r817)
        (by simpa using seg15_prefix_114_addX rho r818)
        (by simpa using seg15_prefix_114_addY rho r819)
        (by simpa using seg15_prefix_114_selX rho r820)
        (by simpa using seg15_prefix_114_selY rho r821)
        hbrow114
  obtain ⟨b114, hb114⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16501) hbrow114
  have hrb114 : RvkFixedBaseLadder.FixedStepRel 114 (toZMod b114)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX113 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY113 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX114 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY114 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb114]
    exact hr114
  have hp114 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX114 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY114 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 114 b114 _ _ hp113 hrb114).2
  have hbrow115 : (1*(rho 16502))*(1 + (-1)*(rho 16502)) = 0 := by
    simpa [Seg15.relationRow115] using r115
  have hacc115 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc115 (rho 16387 : Seg15.F)
      (seg15AccX114 rho : Seg15.F) (seg15AccY114 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc115] using hp114
  have hr115 : RvkFixedBaseLadder.FixedStepRel 115 (rho 16502)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX114 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY114 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX115 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY115 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc115, seg15AccX115, seg15AccY115, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung115_wide (rho 16387 : Seg15.F) (rho 16502 : Seg15.F) (seg15AccX114 rho : Seg15.F) (seg15AccY114 rho : Seg15.F) (rho 17208 : Seg15.F) (rho 17209 : Seg15.F) (rho 17210 : Seg15.F) (rho 17211 : Seg15.F) (rho 17212 : Seg15.F) hacc115
        (by simpa using seg15_prefix_115_v2 rho r822)
        (by simpa using seg15_prefix_115_addX rho r823)
        (by simpa using seg15_prefix_115_addY rho r824)
        (by simpa using seg15_prefix_115_selX rho r825)
        (by simpa using seg15_prefix_115_selY rho r826)
        hbrow115
  obtain ⟨b115, hb115⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16502) hbrow115
  have hrb115 : RvkFixedBaseLadder.FixedStepRel 115 (toZMod b115)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX114 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY114 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX115 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY115 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb115]
    exact hr115
  have hp115 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX115 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY115 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 115 b115 _ _ hp114 hrb115).2
  have hbrow116 : (1*(rho 16503))*(1 + (-1)*(rho 16503)) = 0 := by
    simpa [Seg15.relationRow116] using r116
  have hacc116 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc116 (rho 16387 : Seg15.F)
      (seg15AccX115 rho : Seg15.F) (seg15AccY115 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc116] using hp115
  have hr116 : RvkFixedBaseLadder.FixedStepRel 116 (rho 16503)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX115 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY115 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX116 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY116 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc116, seg15AccX116, seg15AccY116, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung116_wide (rho 16387 : Seg15.F) (rho 16503 : Seg15.F) (seg15AccX115 rho : Seg15.F) (seg15AccY115 rho : Seg15.F) (rho 17213 : Seg15.F) (rho 17214 : Seg15.F) (rho 17215 : Seg15.F) (rho 17216 : Seg15.F) (rho 17217 : Seg15.F) hacc116
        (by simpa using seg15_prefix_116_v2 rho r827)
        (by simpa using seg15_prefix_116_addX rho r828)
        (by simpa using seg15_prefix_116_addY rho r829)
        (by simpa using seg15_prefix_116_selX rho r830)
        (by simpa using seg15_prefix_116_selY rho r831)
        hbrow116
  obtain ⟨b116, hb116⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16503) hbrow116
  have hrb116 : RvkFixedBaseLadder.FixedStepRel 116 (toZMod b116)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX115 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY115 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX116 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY116 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb116]
    exact hr116
  have hp116 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX116 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY116 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 116 b116 _ _ hp115 hrb116).2
  have hbrow117 : (1*(rho 16504))*(1 + (-1)*(rho 16504)) = 0 := by
    simpa [Seg15.relationRow117] using r117
  have hacc117 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc117 (rho 16387 : Seg15.F)
      (seg15AccX116 rho : Seg15.F) (seg15AccY116 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc117] using hp116
  have hr117 : RvkFixedBaseLadder.FixedStepRel 117 (rho 16504)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX116 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY116 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX117 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY117 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc117, seg15AccX117, seg15AccY117, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung117_wide (rho 16387 : Seg15.F) (rho 16504 : Seg15.F) (seg15AccX116 rho : Seg15.F) (seg15AccY116 rho : Seg15.F) (rho 17218 : Seg15.F) (rho 17219 : Seg15.F) (rho 17220 : Seg15.F) (rho 17221 : Seg15.F) (rho 17222 : Seg15.F) hacc117
        (by simpa using seg15_prefix_117_v2 rho r832)
        (by simpa using seg15_prefix_117_addX rho r833)
        (by simpa using seg15_prefix_117_addY rho r834)
        (by simpa using seg15_prefix_117_selX rho r835)
        (by simpa using seg15_prefix_117_selY rho r836)
        hbrow117
  obtain ⟨b117, hb117⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16504) hbrow117
  have hrb117 : RvkFixedBaseLadder.FixedStepRel 117 (toZMod b117)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX116 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY116 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX117 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY117 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb117]
    exact hr117
  have hp117 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX117 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY117 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 117 b117 _ _ hp116 hrb117).2
  have hbrow118 : (1*(rho 16505))*(1 + (-1)*(rho 16505)) = 0 := by
    simpa [Seg15.relationRow118] using r118
  have hacc118 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc118 (rho 16387 : Seg15.F)
      (seg15AccX117 rho : Seg15.F) (seg15AccY117 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc118] using hp117
  have hr118 : RvkFixedBaseLadder.FixedStepRel 118 (rho 16505)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX117 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY117 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX118 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY118 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc118, seg15AccX118, seg15AccY118, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung118_wide (rho 16387 : Seg15.F) (rho 16505 : Seg15.F) (seg15AccX117 rho : Seg15.F) (seg15AccY117 rho : Seg15.F) (rho 17223 : Seg15.F) (rho 17224 : Seg15.F) (rho 17225 : Seg15.F) (rho 17226 : Seg15.F) (rho 17227 : Seg15.F) hacc118
        (by simpa using seg15_prefix_118_v2 rho r837)
        (by simpa using seg15_prefix_118_addX rho r838)
        (by simpa using seg15_prefix_118_addY rho r839)
        (by simpa using seg15_prefix_118_selX rho r840)
        (by simpa using seg15_prefix_118_selY rho r841)
        hbrow118
  obtain ⟨b118, hb118⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16505) hbrow118
  have hrb118 : RvkFixedBaseLadder.FixedStepRel 118 (toZMod b118)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX117 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY117 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX118 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY118 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb118]
    exact hr118
  have hp118 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX118 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY118 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 118 b118 _ _ hp117 hrb118).2
  have hbrow119 : (1*(rho 16506))*(1 + (-1)*(rho 16506)) = 0 := by
    simpa [Seg15.relationRow119] using r119
  have hacc119 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc119 (rho 16387 : Seg15.F)
      (seg15AccX118 rho : Seg15.F) (seg15AccY118 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc119] using hp118
  have hr119 : RvkFixedBaseLadder.FixedStepRel 119 (rho 16506)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX118 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY118 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX119 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY119 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc119, seg15AccX119, seg15AccY119, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung119_wide (rho 16387 : Seg15.F) (rho 16506 : Seg15.F) (seg15AccX118 rho : Seg15.F) (seg15AccY118 rho : Seg15.F) (rho 17228 : Seg15.F) (rho 17229 : Seg15.F) (rho 17230 : Seg15.F) (rho 17231 : Seg15.F) (rho 17232 : Seg15.F) hacc119
        (by simpa using seg15_prefix_119_v2 rho r842)
        (by simpa using seg15_prefix_119_addX rho r843)
        (by simpa using seg15_prefix_119_addY rho r844)
        (by simpa using seg15_prefix_119_selX rho r845)
        (by simpa using seg15_prefix_119_selY rho r846)
        hbrow119
  obtain ⟨b119, hb119⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16506) hbrow119
  have hrb119 : RvkFixedBaseLadder.FixedStepRel 119 (toZMod b119)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX118 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY118 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX119 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY119 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb119]
    exact hr119
  have hp119 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX119 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY119 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 119 b119 _ _ hp118 hrb119).2
  have hbrow120 : (1*(rho 16507))*(1 + (-1)*(rho 16507)) = 0 := by
    simpa [Seg15.relationRow120] using r120
  have hacc120 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc120 (rho 16387 : Seg15.F)
      (seg15AccX119 rho : Seg15.F) (seg15AccY119 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc120] using hp119
  have hr120 : RvkFixedBaseLadder.FixedStepRel 120 (rho 16507)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX119 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY119 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX120 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY120 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc120, seg15AccX120, seg15AccY120, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung120_wide (rho 16387 : Seg15.F) (rho 16507 : Seg15.F) (seg15AccX119 rho : Seg15.F) (seg15AccY119 rho : Seg15.F) (rho 17233 : Seg15.F) (rho 17234 : Seg15.F) (rho 17235 : Seg15.F) (rho 17236 : Seg15.F) (rho 17237 : Seg15.F) hacc120
        (by simpa using seg15_prefix_120_v2 rho r847)
        (by simpa using seg15_prefix_120_addX rho r848)
        (by simpa using seg15_prefix_120_addY rho r849)
        (by simpa using seg15_prefix_120_selX rho r850)
        (by simpa using seg15_prefix_120_selY rho r851)
        hbrow120
  obtain ⟨b120, hb120⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16507) hbrow120
  have hrb120 : RvkFixedBaseLadder.FixedStepRel 120 (toZMod b120)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX119 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY119 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX120 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY120 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb120]
    exact hr120
  have hp120 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX120 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY120 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 120 b120 _ _ hp119 hrb120).2
  exact hp120

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


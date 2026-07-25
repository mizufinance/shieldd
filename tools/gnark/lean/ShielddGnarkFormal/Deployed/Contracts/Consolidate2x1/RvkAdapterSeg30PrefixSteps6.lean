import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas6
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

theorem seg30_prefix_steps6 (rho : Nat -> Seg30.F)
    (hp60 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX60 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY60 rho : Seg30.F)⟩ : EdwardsBridge.Point))
    (r61 : Seg30.relationRow61 rho)
    (r552 : Seg30.relationRow552 rho)
    (r553 : Seg30.relationRow553 rho)
    (r554 : Seg30.relationRow554 rho)
    (r555 : Seg30.relationRow555 rho)
    (r556 : Seg30.relationRow556 rho)
    (r62 : Seg30.relationRow62 rho)
    (r557 : Seg30.relationRow557 rho)
    (r558 : Seg30.relationRow558 rho)
    (r559 : Seg30.relationRow559 rho)
    (r560 : Seg30.relationRow560 rho)
    (r561 : Seg30.relationRow561 rho)
    (r63 : Seg30.relationRow63 rho)
    (r562 : Seg30.relationRow562 rho)
    (r563 : Seg30.relationRow563 rho)
    (r564 : Seg30.relationRow564 rho)
    (r565 : Seg30.relationRow565 rho)
    (r566 : Seg30.relationRow566 rho)
    (r64 : Seg30.relationRow64 rho)
    (r567 : Seg30.relationRow567 rho)
    (r568 : Seg30.relationRow568 rho)
    (r569 : Seg30.relationRow569 rho)
    (r570 : Seg30.relationRow570 rho)
    (r571 : Seg30.relationRow571 rho)
    (r65 : Seg30.relationRow65 rho)
    (r572 : Seg30.relationRow572 rho)
    (r573 : Seg30.relationRow573 rho)
    (r574 : Seg30.relationRow574 rho)
    (r575 : Seg30.relationRow575 rho)
    (r576 : Seg30.relationRow576 rho)
    (r66 : Seg30.relationRow66 rho)
    (r577 : Seg30.relationRow577 rho)
    (r578 : Seg30.relationRow578 rho)
    (r579 : Seg30.relationRow579 rho)
    (r580 : Seg30.relationRow580 rho)
    (r581 : Seg30.relationRow581 rho)
    (r67 : Seg30.relationRow67 rho)
    (r582 : Seg30.relationRow582 rho)
    (r583 : Seg30.relationRow583 rho)
    (r584 : Seg30.relationRow584 rho)
    (r585 : Seg30.relationRow585 rho)
    (r586 : Seg30.relationRow586 rho)
    (r68 : Seg30.relationRow68 rho)
    (r587 : Seg30.relationRow587 rho)
    (r588 : Seg30.relationRow588 rho)
    (r589 : Seg30.relationRow589 rho)
    (r590 : Seg30.relationRow590 rho)
    (r591 : Seg30.relationRow591 rho)
    (r69 : Seg30.relationRow69 rho)
    (r592 : Seg30.relationRow592 rho)
    (r593 : Seg30.relationRow593 rho)
    (r594 : Seg30.relationRow594 rho)
    (r595 : Seg30.relationRow595 rho)
    (r596 : Seg30.relationRow596 rho)
    (r70 : Seg30.relationRow70 rho)
    (r597 : Seg30.relationRow597 rho)
    (r598 : Seg30.relationRow598 rho)
    (r599 : Seg30.relationRow599 rho)
    (r600 : Seg30.relationRow600 rho)
    (r601 : Seg30.relationRow601 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX70 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY70 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
  have hbrow61 : (1*(rho 28378))*(1 + (-1)*(rho 28378)) = 0 := by
    simpa [Seg30.relationRow61] using r61
  have hacc61 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc61 (rho 28317 : Seg30.F)
      (seg30AccX60 rho : Seg30.F) (seg30AccY60 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc61] using hp60
  have hr61 : RvkFixedBaseLadder.FixedStepRel 61 (rho 28378)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX60 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY60 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX61 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY61 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc61, seg30AccX61, seg30AccY61, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung61_wide (rho 28317 : Seg30.F) (rho 28378 : Seg30.F) (seg30AccX60 rho : Seg30.F) (seg30AccY60 rho : Seg30.F) (rho 28868 : Seg30.F) (rho 28869 : Seg30.F) (rho 28870 : Seg30.F) (rho 28871 : Seg30.F) (rho 28872 : Seg30.F) hacc61
        (by simpa using seg30_prefix_61_v2 rho r552)
        (by simpa using seg30_prefix_61_addX rho r553)
        (by simpa using seg30_prefix_61_addY rho r554)
        (by simpa using seg30_prefix_61_selX rho r555)
        (by simpa using seg30_prefix_61_selY rho r556)
        hbrow61
  obtain ⟨b61, hb61⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28378) hbrow61
  have hrb61 : RvkFixedBaseLadder.FixedStepRel 61 (toZMod b61)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX60 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY60 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX61 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY61 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb61]
    exact hr61
  have hp61 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX61 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY61 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 61 b61 _ _ hp60 hrb61).2
  have hbrow62 : (1*(rho 28379))*(1 + (-1)*(rho 28379)) = 0 := by
    simpa [Seg30.relationRow62] using r62
  have hacc62 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc62 (rho 28317 : Seg30.F)
      (seg30AccX61 rho : Seg30.F) (seg30AccY61 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc62] using hp61
  have hr62 : RvkFixedBaseLadder.FixedStepRel 62 (rho 28379)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX61 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY61 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX62 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY62 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc62, seg30AccX62, seg30AccY62, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung62_wide (rho 28317 : Seg30.F) (rho 28379 : Seg30.F) (seg30AccX61 rho : Seg30.F) (seg30AccY61 rho : Seg30.F) (rho 28873 : Seg30.F) (rho 28874 : Seg30.F) (rho 28875 : Seg30.F) (rho 28876 : Seg30.F) (rho 28877 : Seg30.F) hacc62
        (by simpa using seg30_prefix_62_v2 rho r557)
        (by simpa using seg30_prefix_62_addX rho r558)
        (by simpa using seg30_prefix_62_addY rho r559)
        (by simpa using seg30_prefix_62_selX rho r560)
        (by simpa using seg30_prefix_62_selY rho r561)
        hbrow62
  obtain ⟨b62, hb62⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28379) hbrow62
  have hrb62 : RvkFixedBaseLadder.FixedStepRel 62 (toZMod b62)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX61 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY61 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX62 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY62 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb62]
    exact hr62
  have hp62 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX62 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY62 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 62 b62 _ _ hp61 hrb62).2
  have hbrow63 : (1*(rho 28380))*(1 + (-1)*(rho 28380)) = 0 := by
    simpa [Seg30.relationRow63] using r63
  have hacc63 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc63 (rho 28317 : Seg30.F)
      (seg30AccX62 rho : Seg30.F) (seg30AccY62 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc63] using hp62
  have hr63 : RvkFixedBaseLadder.FixedStepRel 63 (rho 28380)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX62 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY62 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX63 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY63 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc63, seg30AccX63, seg30AccY63, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung63_wide (rho 28317 : Seg30.F) (rho 28380 : Seg30.F) (seg30AccX62 rho : Seg30.F) (seg30AccY62 rho : Seg30.F) (rho 28878 : Seg30.F) (rho 28879 : Seg30.F) (rho 28880 : Seg30.F) (rho 28881 : Seg30.F) (rho 28882 : Seg30.F) hacc63
        (by simpa using seg30_prefix_63_v2 rho r562)
        (by simpa using seg30_prefix_63_addX rho r563)
        (by simpa using seg30_prefix_63_addY rho r564)
        (by simpa using seg30_prefix_63_selX rho r565)
        (by simpa using seg30_prefix_63_selY rho r566)
        hbrow63
  obtain ⟨b63, hb63⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28380) hbrow63
  have hrb63 : RvkFixedBaseLadder.FixedStepRel 63 (toZMod b63)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX62 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY62 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX63 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY63 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb63]
    exact hr63
  have hp63 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX63 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY63 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 63 b63 _ _ hp62 hrb63).2
  have hbrow64 : (1*(rho 28381))*(1 + (-1)*(rho 28381)) = 0 := by
    simpa [Seg30.relationRow64] using r64
  have hacc64 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc64 (rho 28317 : Seg30.F)
      (seg30AccX63 rho : Seg30.F) (seg30AccY63 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc64] using hp63
  have hr64 : RvkFixedBaseLadder.FixedStepRel 64 (rho 28381)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX63 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY63 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX64 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY64 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc64, seg30AccX64, seg30AccY64, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung64_wide (rho 28317 : Seg30.F) (rho 28381 : Seg30.F) (seg30AccX63 rho : Seg30.F) (seg30AccY63 rho : Seg30.F) (rho 28883 : Seg30.F) (rho 28884 : Seg30.F) (rho 28885 : Seg30.F) (rho 28886 : Seg30.F) (rho 28887 : Seg30.F) hacc64
        (by simpa using seg30_prefix_64_v2 rho r567)
        (by simpa using seg30_prefix_64_addX rho r568)
        (by simpa using seg30_prefix_64_addY rho r569)
        (by simpa using seg30_prefix_64_selX rho r570)
        (by simpa using seg30_prefix_64_selY rho r571)
        hbrow64
  obtain ⟨b64, hb64⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28381) hbrow64
  have hrb64 : RvkFixedBaseLadder.FixedStepRel 64 (toZMod b64)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX63 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY63 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX64 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY64 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb64]
    exact hr64
  have hp64 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX64 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY64 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 64 b64 _ _ hp63 hrb64).2
  have hbrow65 : (1*(rho 28382))*(1 + (-1)*(rho 28382)) = 0 := by
    simpa [Seg30.relationRow65] using r65
  have hacc65 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc65 (rho 28317 : Seg30.F)
      (seg30AccX64 rho : Seg30.F) (seg30AccY64 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc65] using hp64
  have hr65 : RvkFixedBaseLadder.FixedStepRel 65 (rho 28382)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX64 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY64 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX65 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY65 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc65, seg30AccX65, seg30AccY65, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung65_wide (rho 28317 : Seg30.F) (rho 28382 : Seg30.F) (seg30AccX64 rho : Seg30.F) (seg30AccY64 rho : Seg30.F) (rho 28888 : Seg30.F) (rho 28889 : Seg30.F) (rho 28890 : Seg30.F) (rho 28891 : Seg30.F) (rho 28892 : Seg30.F) hacc65
        (by simpa using seg30_prefix_65_v2 rho r572)
        (by simpa using seg30_prefix_65_addX rho r573)
        (by simpa using seg30_prefix_65_addY rho r574)
        (by simpa using seg30_prefix_65_selX rho r575)
        (by simpa using seg30_prefix_65_selY rho r576)
        hbrow65
  obtain ⟨b65, hb65⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28382) hbrow65
  have hrb65 : RvkFixedBaseLadder.FixedStepRel 65 (toZMod b65)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX64 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY64 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX65 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY65 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb65]
    exact hr65
  have hp65 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX65 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY65 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 65 b65 _ _ hp64 hrb65).2
  have hbrow66 : (1*(rho 28383))*(1 + (-1)*(rho 28383)) = 0 := by
    simpa [Seg30.relationRow66] using r66
  have hacc66 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc66 (rho 28317 : Seg30.F)
      (seg30AccX65 rho : Seg30.F) (seg30AccY65 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc66] using hp65
  have hr66 : RvkFixedBaseLadder.FixedStepRel 66 (rho 28383)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX65 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY65 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX66 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY66 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc66, seg30AccX66, seg30AccY66, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung66_wide (rho 28317 : Seg30.F) (rho 28383 : Seg30.F) (seg30AccX65 rho : Seg30.F) (seg30AccY65 rho : Seg30.F) (rho 28893 : Seg30.F) (rho 28894 : Seg30.F) (rho 28895 : Seg30.F) (rho 28896 : Seg30.F) (rho 28897 : Seg30.F) hacc66
        (by simpa using seg30_prefix_66_v2 rho r577)
        (by simpa using seg30_prefix_66_addX rho r578)
        (by simpa using seg30_prefix_66_addY rho r579)
        (by simpa using seg30_prefix_66_selX rho r580)
        (by simpa using seg30_prefix_66_selY rho r581)
        hbrow66
  obtain ⟨b66, hb66⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28383) hbrow66
  have hrb66 : RvkFixedBaseLadder.FixedStepRel 66 (toZMod b66)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX65 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY65 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX66 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY66 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb66]
    exact hr66
  have hp66 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX66 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY66 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 66 b66 _ _ hp65 hrb66).2
  have hbrow67 : (1*(rho 28384))*(1 + (-1)*(rho 28384)) = 0 := by
    simpa [Seg30.relationRow67] using r67
  have hacc67 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc67 (rho 28317 : Seg30.F)
      (seg30AccX66 rho : Seg30.F) (seg30AccY66 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc67] using hp66
  have hr67 : RvkFixedBaseLadder.FixedStepRel 67 (rho 28384)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX66 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY66 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX67 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY67 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc67, seg30AccX67, seg30AccY67, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung67_wide (rho 28317 : Seg30.F) (rho 28384 : Seg30.F) (seg30AccX66 rho : Seg30.F) (seg30AccY66 rho : Seg30.F) (rho 28898 : Seg30.F) (rho 28899 : Seg30.F) (rho 28900 : Seg30.F) (rho 28901 : Seg30.F) (rho 28902 : Seg30.F) hacc67
        (by simpa using seg30_prefix_67_v2 rho r582)
        (by simpa using seg30_prefix_67_addX rho r583)
        (by simpa using seg30_prefix_67_addY rho r584)
        (by simpa using seg30_prefix_67_selX rho r585)
        (by simpa using seg30_prefix_67_selY rho r586)
        hbrow67
  obtain ⟨b67, hb67⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28384) hbrow67
  have hrb67 : RvkFixedBaseLadder.FixedStepRel 67 (toZMod b67)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX66 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY66 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX67 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY67 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb67]
    exact hr67
  have hp67 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX67 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY67 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 67 b67 _ _ hp66 hrb67).2
  have hbrow68 : (1*(rho 28385))*(1 + (-1)*(rho 28385)) = 0 := by
    simpa [Seg30.relationRow68] using r68
  have hacc68 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc68 (rho 28317 : Seg30.F)
      (seg30AccX67 rho : Seg30.F) (seg30AccY67 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc68] using hp67
  have hr68 : RvkFixedBaseLadder.FixedStepRel 68 (rho 28385)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX67 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY67 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX68 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY68 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc68, seg30AccX68, seg30AccY68, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung68_wide (rho 28317 : Seg30.F) (rho 28385 : Seg30.F) (seg30AccX67 rho : Seg30.F) (seg30AccY67 rho : Seg30.F) (rho 28903 : Seg30.F) (rho 28904 : Seg30.F) (rho 28905 : Seg30.F) (rho 28906 : Seg30.F) (rho 28907 : Seg30.F) hacc68
        (by simpa using seg30_prefix_68_v2 rho r587)
        (by simpa using seg30_prefix_68_addX rho r588)
        (by simpa using seg30_prefix_68_addY rho r589)
        (by simpa using seg30_prefix_68_selX rho r590)
        (by simpa using seg30_prefix_68_selY rho r591)
        hbrow68
  obtain ⟨b68, hb68⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28385) hbrow68
  have hrb68 : RvkFixedBaseLadder.FixedStepRel 68 (toZMod b68)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX67 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY67 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX68 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY68 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb68]
    exact hr68
  have hp68 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX68 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY68 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 68 b68 _ _ hp67 hrb68).2
  have hbrow69 : (1*(rho 28386))*(1 + (-1)*(rho 28386)) = 0 := by
    simpa [Seg30.relationRow69] using r69
  have hacc69 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc69 (rho 28317 : Seg30.F)
      (seg30AccX68 rho : Seg30.F) (seg30AccY68 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc69] using hp68
  have hr69 : RvkFixedBaseLadder.FixedStepRel 69 (rho 28386)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX68 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY68 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX69 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY69 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc69, seg30AccX69, seg30AccY69, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung69_wide (rho 28317 : Seg30.F) (rho 28386 : Seg30.F) (seg30AccX68 rho : Seg30.F) (seg30AccY68 rho : Seg30.F) (rho 28908 : Seg30.F) (rho 28909 : Seg30.F) (rho 28910 : Seg30.F) (rho 28911 : Seg30.F) (rho 28912 : Seg30.F) hacc69
        (by simpa using seg30_prefix_69_v2 rho r592)
        (by simpa using seg30_prefix_69_addX rho r593)
        (by simpa using seg30_prefix_69_addY rho r594)
        (by simpa using seg30_prefix_69_selX rho r595)
        (by simpa using seg30_prefix_69_selY rho r596)
        hbrow69
  obtain ⟨b69, hb69⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28386) hbrow69
  have hrb69 : RvkFixedBaseLadder.FixedStepRel 69 (toZMod b69)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX68 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY68 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX69 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY69 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb69]
    exact hr69
  have hp69 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX69 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY69 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 69 b69 _ _ hp68 hrb69).2
  have hbrow70 : (1*(rho 28387))*(1 + (-1)*(rho 28387)) = 0 := by
    simpa [Seg30.relationRow70] using r70
  have hacc70 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc70 (rho 28317 : Seg30.F)
      (seg30AccX69 rho : Seg30.F) (seg30AccY69 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc70] using hp69
  have hr70 : RvkFixedBaseLadder.FixedStepRel 70 (rho 28387)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX69 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY69 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX70 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY70 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc70, seg30AccX70, seg30AccY70, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung70_wide (rho 28317 : Seg30.F) (rho 28387 : Seg30.F) (seg30AccX69 rho : Seg30.F) (seg30AccY69 rho : Seg30.F) (rho 28913 : Seg30.F) (rho 28914 : Seg30.F) (rho 28915 : Seg30.F) (rho 28916 : Seg30.F) (rho 28917 : Seg30.F) hacc70
        (by simpa using seg30_prefix_70_v2 rho r597)
        (by simpa using seg30_prefix_70_addX rho r598)
        (by simpa using seg30_prefix_70_addY rho r599)
        (by simpa using seg30_prefix_70_selX rho r600)
        (by simpa using seg30_prefix_70_selY rho r601)
        hbrow70
  obtain ⟨b70, hb70⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28387) hbrow70
  have hrb70 : RvkFixedBaseLadder.FixedStepRel 70 (toZMod b70)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX69 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY69 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX70 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY70 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb70]
    exact hr70
  have hp70 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX70 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY70 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 70 b70 _ _ hp69 hrb70).2
  exact hp70

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


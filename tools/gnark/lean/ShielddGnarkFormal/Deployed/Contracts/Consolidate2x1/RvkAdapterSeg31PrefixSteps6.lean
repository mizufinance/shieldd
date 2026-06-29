import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31PrefixLemmas6
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

theorem seg31_prefix_steps6 (rho : Nat -> Seg31.F)
    (hp60 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX60 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY60 rho : Seg31.F)⟩ : EdwardsBridge.Point))
    (r61 : Seg31.relationRow61 rho)
    (r552 : Seg31.relationRow552 rho)
    (r553 : Seg31.relationRow553 rho)
    (r554 : Seg31.relationRow554 rho)
    (r555 : Seg31.relationRow555 rho)
    (r556 : Seg31.relationRow556 rho)
    (r62 : Seg31.relationRow62 rho)
    (r557 : Seg31.relationRow557 rho)
    (r558 : Seg31.relationRow558 rho)
    (r559 : Seg31.relationRow559 rho)
    (r560 : Seg31.relationRow560 rho)
    (r561 : Seg31.relationRow561 rho)
    (r63 : Seg31.relationRow63 rho)
    (r562 : Seg31.relationRow562 rho)
    (r563 : Seg31.relationRow563 rho)
    (r564 : Seg31.relationRow564 rho)
    (r565 : Seg31.relationRow565 rho)
    (r566 : Seg31.relationRow566 rho)
    (r64 : Seg31.relationRow64 rho)
    (r567 : Seg31.relationRow567 rho)
    (r568 : Seg31.relationRow568 rho)
    (r569 : Seg31.relationRow569 rho)
    (r570 : Seg31.relationRow570 rho)
    (r571 : Seg31.relationRow571 rho)
    (r65 : Seg31.relationRow65 rho)
    (r572 : Seg31.relationRow572 rho)
    (r573 : Seg31.relationRow573 rho)
    (r574 : Seg31.relationRow574 rho)
    (r575 : Seg31.relationRow575 rho)
    (r576 : Seg31.relationRow576 rho)
    (r66 : Seg31.relationRow66 rho)
    (r577 : Seg31.relationRow577 rho)
    (r578 : Seg31.relationRow578 rho)
    (r579 : Seg31.relationRow579 rho)
    (r580 : Seg31.relationRow580 rho)
    (r581 : Seg31.relationRow581 rho)
    (r67 : Seg31.relationRow67 rho)
    (r582 : Seg31.relationRow582 rho)
    (r583 : Seg31.relationRow583 rho)
    (r584 : Seg31.relationRow584 rho)
    (r585 : Seg31.relationRow585 rho)
    (r586 : Seg31.relationRow586 rho)
    (r68 : Seg31.relationRow68 rho)
    (r587 : Seg31.relationRow587 rho)
    (r588 : Seg31.relationRow588 rho)
    (r589 : Seg31.relationRow589 rho)
    (r590 : Seg31.relationRow590 rho)
    (r591 : Seg31.relationRow591 rho)
    (r69 : Seg31.relationRow69 rho)
    (r592 : Seg31.relationRow592 rho)
    (r593 : Seg31.relationRow593 rho)
    (r594 : Seg31.relationRow594 rho)
    (r595 : Seg31.relationRow595 rho)
    (r596 : Seg31.relationRow596 rho)
    (r70 : Seg31.relationRow70 rho)
    (r597 : Seg31.relationRow597 rho)
    (r598 : Seg31.relationRow598 rho)
    (r599 : Seg31.relationRow599 rho)
    (r600 : Seg31.relationRow600 rho)
    (r601 : Seg31.relationRow601 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX70 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY70 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
  have hbrow61 : (1*(rho 29332))*(1 + (-1)*(rho 29332)) = 0 := by
    simpa [Seg31.relationRow61] using r61
  have hacc61 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc61 (rho 29271 : Seg31.F)
      (seg31AccX60 rho : Seg31.F) (seg31AccY60 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc61] using hp60
  have hr61 : RvkFixedBaseLadder.FixedStepRel 61 (rho 29332)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX60 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY60 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX61 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY61 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc61, seg31AccX61, seg31AccY61, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung61_wide (rho 29271 : Seg31.F) (rho 29332 : Seg31.F) (seg31AccX60 rho : Seg31.F) (seg31AccY60 rho : Seg31.F) (rho 29822 : Seg31.F) (rho 29823 : Seg31.F) (rho 29824 : Seg31.F) (rho 29825 : Seg31.F) (rho 29826 : Seg31.F) hacc61
        (by simpa using seg31_prefix_61_v2 rho r552)
        (by simpa using seg31_prefix_61_addX rho r553)
        (by simpa using seg31_prefix_61_addY rho r554)
        (by simpa using seg31_prefix_61_selX rho r555)
        (by simpa using seg31_prefix_61_selY rho r556)
        hbrow61
  obtain ⟨b61, hb61⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29332) hbrow61
  have hrb61 : RvkFixedBaseLadder.FixedStepRel 61 (toZMod b61)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX60 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY60 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX61 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY61 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb61]
    exact hr61
  have hp61 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX61 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY61 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 61 b61 _ _ hp60 hrb61).2
  have hbrow62 : (1*(rho 29333))*(1 + (-1)*(rho 29333)) = 0 := by
    simpa [Seg31.relationRow62] using r62
  have hacc62 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc62 (rho 29271 : Seg31.F)
      (seg31AccX61 rho : Seg31.F) (seg31AccY61 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc62] using hp61
  have hr62 : RvkFixedBaseLadder.FixedStepRel 62 (rho 29333)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX61 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY61 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX62 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY62 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc62, seg31AccX62, seg31AccY62, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung62_wide (rho 29271 : Seg31.F) (rho 29333 : Seg31.F) (seg31AccX61 rho : Seg31.F) (seg31AccY61 rho : Seg31.F) (rho 29827 : Seg31.F) (rho 29828 : Seg31.F) (rho 29829 : Seg31.F) (rho 29830 : Seg31.F) (rho 29831 : Seg31.F) hacc62
        (by simpa using seg31_prefix_62_v2 rho r557)
        (by simpa using seg31_prefix_62_addX rho r558)
        (by simpa using seg31_prefix_62_addY rho r559)
        (by simpa using seg31_prefix_62_selX rho r560)
        (by simpa using seg31_prefix_62_selY rho r561)
        hbrow62
  obtain ⟨b62, hb62⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29333) hbrow62
  have hrb62 : RvkFixedBaseLadder.FixedStepRel 62 (toZMod b62)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX61 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY61 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX62 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY62 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb62]
    exact hr62
  have hp62 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX62 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY62 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 62 b62 _ _ hp61 hrb62).2
  have hbrow63 : (1*(rho 29334))*(1 + (-1)*(rho 29334)) = 0 := by
    simpa [Seg31.relationRow63] using r63
  have hacc63 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc63 (rho 29271 : Seg31.F)
      (seg31AccX62 rho : Seg31.F) (seg31AccY62 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc63] using hp62
  have hr63 : RvkFixedBaseLadder.FixedStepRel 63 (rho 29334)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX62 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY62 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX63 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY63 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc63, seg31AccX63, seg31AccY63, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung63_wide (rho 29271 : Seg31.F) (rho 29334 : Seg31.F) (seg31AccX62 rho : Seg31.F) (seg31AccY62 rho : Seg31.F) (rho 29832 : Seg31.F) (rho 29833 : Seg31.F) (rho 29834 : Seg31.F) (rho 29835 : Seg31.F) (rho 29836 : Seg31.F) hacc63
        (by simpa using seg31_prefix_63_v2 rho r562)
        (by simpa using seg31_prefix_63_addX rho r563)
        (by simpa using seg31_prefix_63_addY rho r564)
        (by simpa using seg31_prefix_63_selX rho r565)
        (by simpa using seg31_prefix_63_selY rho r566)
        hbrow63
  obtain ⟨b63, hb63⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29334) hbrow63
  have hrb63 : RvkFixedBaseLadder.FixedStepRel 63 (toZMod b63)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX62 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY62 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX63 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY63 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb63]
    exact hr63
  have hp63 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX63 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY63 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 63 b63 _ _ hp62 hrb63).2
  have hbrow64 : (1*(rho 29335))*(1 + (-1)*(rho 29335)) = 0 := by
    simpa [Seg31.relationRow64] using r64
  have hacc64 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc64 (rho 29271 : Seg31.F)
      (seg31AccX63 rho : Seg31.F) (seg31AccY63 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc64] using hp63
  have hr64 : RvkFixedBaseLadder.FixedStepRel 64 (rho 29335)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX63 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY63 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX64 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY64 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc64, seg31AccX64, seg31AccY64, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung64_wide (rho 29271 : Seg31.F) (rho 29335 : Seg31.F) (seg31AccX63 rho : Seg31.F) (seg31AccY63 rho : Seg31.F) (rho 29837 : Seg31.F) (rho 29838 : Seg31.F) (rho 29839 : Seg31.F) (rho 29840 : Seg31.F) (rho 29841 : Seg31.F) hacc64
        (by simpa using seg31_prefix_64_v2 rho r567)
        (by simpa using seg31_prefix_64_addX rho r568)
        (by simpa using seg31_prefix_64_addY rho r569)
        (by simpa using seg31_prefix_64_selX rho r570)
        (by simpa using seg31_prefix_64_selY rho r571)
        hbrow64
  obtain ⟨b64, hb64⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29335) hbrow64
  have hrb64 : RvkFixedBaseLadder.FixedStepRel 64 (toZMod b64)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX63 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY63 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX64 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY64 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb64]
    exact hr64
  have hp64 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX64 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY64 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 64 b64 _ _ hp63 hrb64).2
  have hbrow65 : (1*(rho 29336))*(1 + (-1)*(rho 29336)) = 0 := by
    simpa [Seg31.relationRow65] using r65
  have hacc65 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc65 (rho 29271 : Seg31.F)
      (seg31AccX64 rho : Seg31.F) (seg31AccY64 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc65] using hp64
  have hr65 : RvkFixedBaseLadder.FixedStepRel 65 (rho 29336)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX64 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY64 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX65 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY65 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc65, seg31AccX65, seg31AccY65, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung65_wide (rho 29271 : Seg31.F) (rho 29336 : Seg31.F) (seg31AccX64 rho : Seg31.F) (seg31AccY64 rho : Seg31.F) (rho 29842 : Seg31.F) (rho 29843 : Seg31.F) (rho 29844 : Seg31.F) (rho 29845 : Seg31.F) (rho 29846 : Seg31.F) hacc65
        (by simpa using seg31_prefix_65_v2 rho r572)
        (by simpa using seg31_prefix_65_addX rho r573)
        (by simpa using seg31_prefix_65_addY rho r574)
        (by simpa using seg31_prefix_65_selX rho r575)
        (by simpa using seg31_prefix_65_selY rho r576)
        hbrow65
  obtain ⟨b65, hb65⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29336) hbrow65
  have hrb65 : RvkFixedBaseLadder.FixedStepRel 65 (toZMod b65)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX64 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY64 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX65 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY65 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb65]
    exact hr65
  have hp65 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX65 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY65 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 65 b65 _ _ hp64 hrb65).2
  have hbrow66 : (1*(rho 29337))*(1 + (-1)*(rho 29337)) = 0 := by
    simpa [Seg31.relationRow66] using r66
  have hacc66 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc66 (rho 29271 : Seg31.F)
      (seg31AccX65 rho : Seg31.F) (seg31AccY65 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc66] using hp65
  have hr66 : RvkFixedBaseLadder.FixedStepRel 66 (rho 29337)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX65 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY65 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX66 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY66 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc66, seg31AccX66, seg31AccY66, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung66_wide (rho 29271 : Seg31.F) (rho 29337 : Seg31.F) (seg31AccX65 rho : Seg31.F) (seg31AccY65 rho : Seg31.F) (rho 29847 : Seg31.F) (rho 29848 : Seg31.F) (rho 29849 : Seg31.F) (rho 29850 : Seg31.F) (rho 29851 : Seg31.F) hacc66
        (by simpa using seg31_prefix_66_v2 rho r577)
        (by simpa using seg31_prefix_66_addX rho r578)
        (by simpa using seg31_prefix_66_addY rho r579)
        (by simpa using seg31_prefix_66_selX rho r580)
        (by simpa using seg31_prefix_66_selY rho r581)
        hbrow66
  obtain ⟨b66, hb66⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29337) hbrow66
  have hrb66 : RvkFixedBaseLadder.FixedStepRel 66 (toZMod b66)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX65 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY65 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX66 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY66 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb66]
    exact hr66
  have hp66 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX66 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY66 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 66 b66 _ _ hp65 hrb66).2
  have hbrow67 : (1*(rho 29338))*(1 + (-1)*(rho 29338)) = 0 := by
    simpa [Seg31.relationRow67] using r67
  have hacc67 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc67 (rho 29271 : Seg31.F)
      (seg31AccX66 rho : Seg31.F) (seg31AccY66 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc67] using hp66
  have hr67 : RvkFixedBaseLadder.FixedStepRel 67 (rho 29338)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX66 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY66 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX67 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY67 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc67, seg31AccX67, seg31AccY67, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung67_wide (rho 29271 : Seg31.F) (rho 29338 : Seg31.F) (seg31AccX66 rho : Seg31.F) (seg31AccY66 rho : Seg31.F) (rho 29852 : Seg31.F) (rho 29853 : Seg31.F) (rho 29854 : Seg31.F) (rho 29855 : Seg31.F) (rho 29856 : Seg31.F) hacc67
        (by simpa using seg31_prefix_67_v2 rho r582)
        (by simpa using seg31_prefix_67_addX rho r583)
        (by simpa using seg31_prefix_67_addY rho r584)
        (by simpa using seg31_prefix_67_selX rho r585)
        (by simpa using seg31_prefix_67_selY rho r586)
        hbrow67
  obtain ⟨b67, hb67⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29338) hbrow67
  have hrb67 : RvkFixedBaseLadder.FixedStepRel 67 (toZMod b67)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX66 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY66 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX67 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY67 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb67]
    exact hr67
  have hp67 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX67 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY67 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 67 b67 _ _ hp66 hrb67).2
  have hbrow68 : (1*(rho 29339))*(1 + (-1)*(rho 29339)) = 0 := by
    simpa [Seg31.relationRow68] using r68
  have hacc68 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc68 (rho 29271 : Seg31.F)
      (seg31AccX67 rho : Seg31.F) (seg31AccY67 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc68] using hp67
  have hr68 : RvkFixedBaseLadder.FixedStepRel 68 (rho 29339)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX67 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY67 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX68 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY68 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc68, seg31AccX68, seg31AccY68, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung68_wide (rho 29271 : Seg31.F) (rho 29339 : Seg31.F) (seg31AccX67 rho : Seg31.F) (seg31AccY67 rho : Seg31.F) (rho 29857 : Seg31.F) (rho 29858 : Seg31.F) (rho 29859 : Seg31.F) (rho 29860 : Seg31.F) (rho 29861 : Seg31.F) hacc68
        (by simpa using seg31_prefix_68_v2 rho r587)
        (by simpa using seg31_prefix_68_addX rho r588)
        (by simpa using seg31_prefix_68_addY rho r589)
        (by simpa using seg31_prefix_68_selX rho r590)
        (by simpa using seg31_prefix_68_selY rho r591)
        hbrow68
  obtain ⟨b68, hb68⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29339) hbrow68
  have hrb68 : RvkFixedBaseLadder.FixedStepRel 68 (toZMod b68)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX67 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY67 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX68 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY68 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb68]
    exact hr68
  have hp68 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX68 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY68 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 68 b68 _ _ hp67 hrb68).2
  have hbrow69 : (1*(rho 29340))*(1 + (-1)*(rho 29340)) = 0 := by
    simpa [Seg31.relationRow69] using r69
  have hacc69 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc69 (rho 29271 : Seg31.F)
      (seg31AccX68 rho : Seg31.F) (seg31AccY68 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc69] using hp68
  have hr69 : RvkFixedBaseLadder.FixedStepRel 69 (rho 29340)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX68 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY68 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX69 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY69 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc69, seg31AccX69, seg31AccY69, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung69_wide (rho 29271 : Seg31.F) (rho 29340 : Seg31.F) (seg31AccX68 rho : Seg31.F) (seg31AccY68 rho : Seg31.F) (rho 29862 : Seg31.F) (rho 29863 : Seg31.F) (rho 29864 : Seg31.F) (rho 29865 : Seg31.F) (rho 29866 : Seg31.F) hacc69
        (by simpa using seg31_prefix_69_v2 rho r592)
        (by simpa using seg31_prefix_69_addX rho r593)
        (by simpa using seg31_prefix_69_addY rho r594)
        (by simpa using seg31_prefix_69_selX rho r595)
        (by simpa using seg31_prefix_69_selY rho r596)
        hbrow69
  obtain ⟨b69, hb69⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29340) hbrow69
  have hrb69 : RvkFixedBaseLadder.FixedStepRel 69 (toZMod b69)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX68 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY68 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX69 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY69 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb69]
    exact hr69
  have hp69 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX69 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY69 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 69 b69 _ _ hp68 hrb69).2
  have hbrow70 : (1*(rho 29341))*(1 + (-1)*(rho 29341)) = 0 := by
    simpa [Seg31.relationRow70] using r70
  have hacc70 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc70 (rho 29271 : Seg31.F)
      (seg31AccX69 rho : Seg31.F) (seg31AccY69 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc70] using hp69
  have hr70 : RvkFixedBaseLadder.FixedStepRel 70 (rho 29341)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX69 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY69 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX70 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY70 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc70, seg31AccX70, seg31AccY70, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung70_wide (rho 29271 : Seg31.F) (rho 29341 : Seg31.F) (seg31AccX69 rho : Seg31.F) (seg31AccY69 rho : Seg31.F) (rho 29867 : Seg31.F) (rho 29868 : Seg31.F) (rho 29869 : Seg31.F) (rho 29870 : Seg31.F) (rho 29871 : Seg31.F) hacc70
        (by simpa using seg31_prefix_70_v2 rho r597)
        (by simpa using seg31_prefix_70_addX rho r598)
        (by simpa using seg31_prefix_70_addY rho r599)
        (by simpa using seg31_prefix_70_selX rho r600)
        (by simpa using seg31_prefix_70_selY rho r601)
        hbrow70
  obtain ⟨b70, hb70⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29341) hbrow70
  have hrb70 : RvkFixedBaseLadder.FixedStepRel 70 (toZMod b70)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX69 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY69 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX70 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY70 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb70]
    exact hr70
  have hp70 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX70 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY70 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 70 b70 _ _ hp69 hrb70).2
  exact hp70

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


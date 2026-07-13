import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas6
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

theorem seg15_prefix_steps6 (rho : Nat -> Seg15.F)
    (hp60 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX60 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY60 rho : Seg15.F)⟩ : EdwardsBridge.Point))
    (r61 : Seg15.relationRow61 rho)
    (r552 : Seg15.relationRow552 rho)
    (r553 : Seg15.relationRow553 rho)
    (r554 : Seg15.relationRow554 rho)
    (r555 : Seg15.relationRow555 rho)
    (r556 : Seg15.relationRow556 rho)
    (r62 : Seg15.relationRow62 rho)
    (r557 : Seg15.relationRow557 rho)
    (r558 : Seg15.relationRow558 rho)
    (r559 : Seg15.relationRow559 rho)
    (r560 : Seg15.relationRow560 rho)
    (r561 : Seg15.relationRow561 rho)
    (r63 : Seg15.relationRow63 rho)
    (r562 : Seg15.relationRow562 rho)
    (r563 : Seg15.relationRow563 rho)
    (r564 : Seg15.relationRow564 rho)
    (r565 : Seg15.relationRow565 rho)
    (r566 : Seg15.relationRow566 rho)
    (r64 : Seg15.relationRow64 rho)
    (r567 : Seg15.relationRow567 rho)
    (r568 : Seg15.relationRow568 rho)
    (r569 : Seg15.relationRow569 rho)
    (r570 : Seg15.relationRow570 rho)
    (r571 : Seg15.relationRow571 rho)
    (r65 : Seg15.relationRow65 rho)
    (r572 : Seg15.relationRow572 rho)
    (r573 : Seg15.relationRow573 rho)
    (r574 : Seg15.relationRow574 rho)
    (r575 : Seg15.relationRow575 rho)
    (r576 : Seg15.relationRow576 rho)
    (r66 : Seg15.relationRow66 rho)
    (r577 : Seg15.relationRow577 rho)
    (r578 : Seg15.relationRow578 rho)
    (r579 : Seg15.relationRow579 rho)
    (r580 : Seg15.relationRow580 rho)
    (r581 : Seg15.relationRow581 rho)
    (r67 : Seg15.relationRow67 rho)
    (r582 : Seg15.relationRow582 rho)
    (r583 : Seg15.relationRow583 rho)
    (r584 : Seg15.relationRow584 rho)
    (r585 : Seg15.relationRow585 rho)
    (r586 : Seg15.relationRow586 rho)
    (r68 : Seg15.relationRow68 rho)
    (r587 : Seg15.relationRow587 rho)
    (r588 : Seg15.relationRow588 rho)
    (r589 : Seg15.relationRow589 rho)
    (r590 : Seg15.relationRow590 rho)
    (r591 : Seg15.relationRow591 rho)
    (r69 : Seg15.relationRow69 rho)
    (r592 : Seg15.relationRow592 rho)
    (r593 : Seg15.relationRow593 rho)
    (r594 : Seg15.relationRow594 rho)
    (r595 : Seg15.relationRow595 rho)
    (r596 : Seg15.relationRow596 rho)
    (r70 : Seg15.relationRow70 rho)
    (r597 : Seg15.relationRow597 rho)
    (r598 : Seg15.relationRow598 rho)
    (r599 : Seg15.relationRow599 rho)
    (r600 : Seg15.relationRow600 rho)
    (r601 : Seg15.relationRow601 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX70 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY70 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
  have hbrow61 : (1*(rho 16197))*(1 + (-1)*(rho 16197)) = 0 := by
    simpa [Seg15.relationRow61] using r61
  have hacc61 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc61 (rho 16136 : Seg15.F)
      (seg15AccX60 rho : Seg15.F) (seg15AccY60 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc61] using hp60
  have hr61 : RvkFixedBaseLadder.FixedStepRel 61 (rho 16197)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX60 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY60 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX61 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY61 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc61, seg15AccX61, seg15AccY61, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung61_wide (rho 16136 : Seg15.F) (rho 16197 : Seg15.F) (seg15AccX60 rho : Seg15.F) (seg15AccY60 rho : Seg15.F) (rho 16687 : Seg15.F) (rho 16688 : Seg15.F) (rho 16689 : Seg15.F) (rho 16690 : Seg15.F) (rho 16691 : Seg15.F) hacc61
        (by simpa using seg15_prefix_61_v2 rho r552)
        (by simpa using seg15_prefix_61_addX rho r553)
        (by simpa using seg15_prefix_61_addY rho r554)
        (by simpa using seg15_prefix_61_selX rho r555)
        (by simpa using seg15_prefix_61_selY rho r556)
        hbrow61
  obtain ⟨b61, hb61⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16197) hbrow61
  have hrb61 : RvkFixedBaseLadder.FixedStepRel 61 (toZMod b61)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX60 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY60 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX61 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY61 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb61]
    exact hr61
  have hp61 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX61 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY61 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 61 b61 _ _ hp60 hrb61).2
  have hbrow62 : (1*(rho 16198))*(1 + (-1)*(rho 16198)) = 0 := by
    simpa [Seg15.relationRow62] using r62
  have hacc62 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc62 (rho 16136 : Seg15.F)
      (seg15AccX61 rho : Seg15.F) (seg15AccY61 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc62] using hp61
  have hr62 : RvkFixedBaseLadder.FixedStepRel 62 (rho 16198)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX61 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY61 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX62 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY62 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc62, seg15AccX62, seg15AccY62, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung62_wide (rho 16136 : Seg15.F) (rho 16198 : Seg15.F) (seg15AccX61 rho : Seg15.F) (seg15AccY61 rho : Seg15.F) (rho 16692 : Seg15.F) (rho 16693 : Seg15.F) (rho 16694 : Seg15.F) (rho 16695 : Seg15.F) (rho 16696 : Seg15.F) hacc62
        (by simpa using seg15_prefix_62_v2 rho r557)
        (by simpa using seg15_prefix_62_addX rho r558)
        (by simpa using seg15_prefix_62_addY rho r559)
        (by simpa using seg15_prefix_62_selX rho r560)
        (by simpa using seg15_prefix_62_selY rho r561)
        hbrow62
  obtain ⟨b62, hb62⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16198) hbrow62
  have hrb62 : RvkFixedBaseLadder.FixedStepRel 62 (toZMod b62)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX61 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY61 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX62 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY62 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb62]
    exact hr62
  have hp62 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX62 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY62 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 62 b62 _ _ hp61 hrb62).2
  have hbrow63 : (1*(rho 16199))*(1 + (-1)*(rho 16199)) = 0 := by
    simpa [Seg15.relationRow63] using r63
  have hacc63 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc63 (rho 16136 : Seg15.F)
      (seg15AccX62 rho : Seg15.F) (seg15AccY62 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc63] using hp62
  have hr63 : RvkFixedBaseLadder.FixedStepRel 63 (rho 16199)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX62 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY62 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX63 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY63 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc63, seg15AccX63, seg15AccY63, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung63_wide (rho 16136 : Seg15.F) (rho 16199 : Seg15.F) (seg15AccX62 rho : Seg15.F) (seg15AccY62 rho : Seg15.F) (rho 16697 : Seg15.F) (rho 16698 : Seg15.F) (rho 16699 : Seg15.F) (rho 16700 : Seg15.F) (rho 16701 : Seg15.F) hacc63
        (by simpa using seg15_prefix_63_v2 rho r562)
        (by simpa using seg15_prefix_63_addX rho r563)
        (by simpa using seg15_prefix_63_addY rho r564)
        (by simpa using seg15_prefix_63_selX rho r565)
        (by simpa using seg15_prefix_63_selY rho r566)
        hbrow63
  obtain ⟨b63, hb63⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16199) hbrow63
  have hrb63 : RvkFixedBaseLadder.FixedStepRel 63 (toZMod b63)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX62 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY62 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX63 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY63 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb63]
    exact hr63
  have hp63 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX63 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY63 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 63 b63 _ _ hp62 hrb63).2
  have hbrow64 : (1*(rho 16200))*(1 + (-1)*(rho 16200)) = 0 := by
    simpa [Seg15.relationRow64] using r64
  have hacc64 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc64 (rho 16136 : Seg15.F)
      (seg15AccX63 rho : Seg15.F) (seg15AccY63 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc64] using hp63
  have hr64 : RvkFixedBaseLadder.FixedStepRel 64 (rho 16200)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX63 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY63 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX64 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY64 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc64, seg15AccX64, seg15AccY64, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung64_wide (rho 16136 : Seg15.F) (rho 16200 : Seg15.F) (seg15AccX63 rho : Seg15.F) (seg15AccY63 rho : Seg15.F) (rho 16702 : Seg15.F) (rho 16703 : Seg15.F) (rho 16704 : Seg15.F) (rho 16705 : Seg15.F) (rho 16706 : Seg15.F) hacc64
        (by simpa using seg15_prefix_64_v2 rho r567)
        (by simpa using seg15_prefix_64_addX rho r568)
        (by simpa using seg15_prefix_64_addY rho r569)
        (by simpa using seg15_prefix_64_selX rho r570)
        (by simpa using seg15_prefix_64_selY rho r571)
        hbrow64
  obtain ⟨b64, hb64⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16200) hbrow64
  have hrb64 : RvkFixedBaseLadder.FixedStepRel 64 (toZMod b64)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX63 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY63 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX64 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY64 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb64]
    exact hr64
  have hp64 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX64 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY64 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 64 b64 _ _ hp63 hrb64).2
  have hbrow65 : (1*(rho 16201))*(1 + (-1)*(rho 16201)) = 0 := by
    simpa [Seg15.relationRow65] using r65
  have hacc65 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc65 (rho 16136 : Seg15.F)
      (seg15AccX64 rho : Seg15.F) (seg15AccY64 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc65] using hp64
  have hr65 : RvkFixedBaseLadder.FixedStepRel 65 (rho 16201)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX64 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY64 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX65 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY65 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc65, seg15AccX65, seg15AccY65, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung65_wide (rho 16136 : Seg15.F) (rho 16201 : Seg15.F) (seg15AccX64 rho : Seg15.F) (seg15AccY64 rho : Seg15.F) (rho 16707 : Seg15.F) (rho 16708 : Seg15.F) (rho 16709 : Seg15.F) (rho 16710 : Seg15.F) (rho 16711 : Seg15.F) hacc65
        (by simpa using seg15_prefix_65_v2 rho r572)
        (by simpa using seg15_prefix_65_addX rho r573)
        (by simpa using seg15_prefix_65_addY rho r574)
        (by simpa using seg15_prefix_65_selX rho r575)
        (by simpa using seg15_prefix_65_selY rho r576)
        hbrow65
  obtain ⟨b65, hb65⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16201) hbrow65
  have hrb65 : RvkFixedBaseLadder.FixedStepRel 65 (toZMod b65)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX64 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY64 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX65 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY65 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb65]
    exact hr65
  have hp65 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX65 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY65 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 65 b65 _ _ hp64 hrb65).2
  have hbrow66 : (1*(rho 16202))*(1 + (-1)*(rho 16202)) = 0 := by
    simpa [Seg15.relationRow66] using r66
  have hacc66 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc66 (rho 16136 : Seg15.F)
      (seg15AccX65 rho : Seg15.F) (seg15AccY65 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc66] using hp65
  have hr66 : RvkFixedBaseLadder.FixedStepRel 66 (rho 16202)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX65 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY65 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX66 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY66 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc66, seg15AccX66, seg15AccY66, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung66_wide (rho 16136 : Seg15.F) (rho 16202 : Seg15.F) (seg15AccX65 rho : Seg15.F) (seg15AccY65 rho : Seg15.F) (rho 16712 : Seg15.F) (rho 16713 : Seg15.F) (rho 16714 : Seg15.F) (rho 16715 : Seg15.F) (rho 16716 : Seg15.F) hacc66
        (by simpa using seg15_prefix_66_v2 rho r577)
        (by simpa using seg15_prefix_66_addX rho r578)
        (by simpa using seg15_prefix_66_addY rho r579)
        (by simpa using seg15_prefix_66_selX rho r580)
        (by simpa using seg15_prefix_66_selY rho r581)
        hbrow66
  obtain ⟨b66, hb66⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16202) hbrow66
  have hrb66 : RvkFixedBaseLadder.FixedStepRel 66 (toZMod b66)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX65 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY65 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX66 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY66 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb66]
    exact hr66
  have hp66 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX66 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY66 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 66 b66 _ _ hp65 hrb66).2
  have hbrow67 : (1*(rho 16203))*(1 + (-1)*(rho 16203)) = 0 := by
    simpa [Seg15.relationRow67] using r67
  have hacc67 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc67 (rho 16136 : Seg15.F)
      (seg15AccX66 rho : Seg15.F) (seg15AccY66 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc67] using hp66
  have hr67 : RvkFixedBaseLadder.FixedStepRel 67 (rho 16203)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX66 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY66 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX67 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY67 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc67, seg15AccX67, seg15AccY67, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung67_wide (rho 16136 : Seg15.F) (rho 16203 : Seg15.F) (seg15AccX66 rho : Seg15.F) (seg15AccY66 rho : Seg15.F) (rho 16717 : Seg15.F) (rho 16718 : Seg15.F) (rho 16719 : Seg15.F) (rho 16720 : Seg15.F) (rho 16721 : Seg15.F) hacc67
        (by simpa using seg15_prefix_67_v2 rho r582)
        (by simpa using seg15_prefix_67_addX rho r583)
        (by simpa using seg15_prefix_67_addY rho r584)
        (by simpa using seg15_prefix_67_selX rho r585)
        (by simpa using seg15_prefix_67_selY rho r586)
        hbrow67
  obtain ⟨b67, hb67⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16203) hbrow67
  have hrb67 : RvkFixedBaseLadder.FixedStepRel 67 (toZMod b67)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX66 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY66 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX67 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY67 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb67]
    exact hr67
  have hp67 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX67 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY67 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 67 b67 _ _ hp66 hrb67).2
  have hbrow68 : (1*(rho 16204))*(1 + (-1)*(rho 16204)) = 0 := by
    simpa [Seg15.relationRow68] using r68
  have hacc68 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc68 (rho 16136 : Seg15.F)
      (seg15AccX67 rho : Seg15.F) (seg15AccY67 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc68] using hp67
  have hr68 : RvkFixedBaseLadder.FixedStepRel 68 (rho 16204)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX67 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY67 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX68 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY68 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc68, seg15AccX68, seg15AccY68, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung68_wide (rho 16136 : Seg15.F) (rho 16204 : Seg15.F) (seg15AccX67 rho : Seg15.F) (seg15AccY67 rho : Seg15.F) (rho 16722 : Seg15.F) (rho 16723 : Seg15.F) (rho 16724 : Seg15.F) (rho 16725 : Seg15.F) (rho 16726 : Seg15.F) hacc68
        (by simpa using seg15_prefix_68_v2 rho r587)
        (by simpa using seg15_prefix_68_addX rho r588)
        (by simpa using seg15_prefix_68_addY rho r589)
        (by simpa using seg15_prefix_68_selX rho r590)
        (by simpa using seg15_prefix_68_selY rho r591)
        hbrow68
  obtain ⟨b68, hb68⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16204) hbrow68
  have hrb68 : RvkFixedBaseLadder.FixedStepRel 68 (toZMod b68)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX67 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY67 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX68 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY68 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb68]
    exact hr68
  have hp68 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX68 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY68 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 68 b68 _ _ hp67 hrb68).2
  have hbrow69 : (1*(rho 16205))*(1 + (-1)*(rho 16205)) = 0 := by
    simpa [Seg15.relationRow69] using r69
  have hacc69 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc69 (rho 16136 : Seg15.F)
      (seg15AccX68 rho : Seg15.F) (seg15AccY68 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc69] using hp68
  have hr69 : RvkFixedBaseLadder.FixedStepRel 69 (rho 16205)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX68 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY68 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX69 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY69 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc69, seg15AccX69, seg15AccY69, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung69_wide (rho 16136 : Seg15.F) (rho 16205 : Seg15.F) (seg15AccX68 rho : Seg15.F) (seg15AccY68 rho : Seg15.F) (rho 16727 : Seg15.F) (rho 16728 : Seg15.F) (rho 16729 : Seg15.F) (rho 16730 : Seg15.F) (rho 16731 : Seg15.F) hacc69
        (by simpa using seg15_prefix_69_v2 rho r592)
        (by simpa using seg15_prefix_69_addX rho r593)
        (by simpa using seg15_prefix_69_addY rho r594)
        (by simpa using seg15_prefix_69_selX rho r595)
        (by simpa using seg15_prefix_69_selY rho r596)
        hbrow69
  obtain ⟨b69, hb69⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16205) hbrow69
  have hrb69 : RvkFixedBaseLadder.FixedStepRel 69 (toZMod b69)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX68 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY68 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX69 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY69 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb69]
    exact hr69
  have hp69 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX69 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY69 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 69 b69 _ _ hp68 hrb69).2
  have hbrow70 : (1*(rho 16206))*(1 + (-1)*(rho 16206)) = 0 := by
    simpa [Seg15.relationRow70] using r70
  have hacc70 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc70 (rho 16136 : Seg15.F)
      (seg15AccX69 rho : Seg15.F) (seg15AccY69 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc70] using hp69
  have hr70 : RvkFixedBaseLadder.FixedStepRel 70 (rho 16206)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX69 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY69 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX70 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY70 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc70, seg15AccX70, seg15AccY70, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung70_wide (rho 16136 : Seg15.F) (rho 16206 : Seg15.F) (seg15AccX69 rho : Seg15.F) (seg15AccY69 rho : Seg15.F) (rho 16732 : Seg15.F) (rho 16733 : Seg15.F) (rho 16734 : Seg15.F) (rho 16735 : Seg15.F) (rho 16736 : Seg15.F) hacc70
        (by simpa using seg15_prefix_70_v2 rho r597)
        (by simpa using seg15_prefix_70_addX rho r598)
        (by simpa using seg15_prefix_70_addY rho r599)
        (by simpa using seg15_prefix_70_selX rho r600)
        (by simpa using seg15_prefix_70_selY rho r601)
        hbrow70
  obtain ⟨b70, hb70⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16206) hbrow70
  have hrb70 : RvkFixedBaseLadder.FixedStepRel 70 (toZMod b70)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX69 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY69 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX70 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY70 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb70]
    exact hr70
  have hp70 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX70 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY70 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 70 b70 _ _ hp69 hrb70).2
  exact hp70

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


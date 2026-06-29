import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg13PrefixLemmas6
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

theorem seg13_prefix_steps6 (rho : Nat -> Seg13.F)
    (hp60 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX60 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY60 rho : Seg13.F)⟩ : EdwardsBridge.Point))
    (r61 : Seg13.relationRow61 rho)
    (r552 : Seg13.relationRow552 rho)
    (r553 : Seg13.relationRow553 rho)
    (r554 : Seg13.relationRow554 rho)
    (r555 : Seg13.relationRow555 rho)
    (r556 : Seg13.relationRow556 rho)
    (r62 : Seg13.relationRow62 rho)
    (r557 : Seg13.relationRow557 rho)
    (r558 : Seg13.relationRow558 rho)
    (r559 : Seg13.relationRow559 rho)
    (r560 : Seg13.relationRow560 rho)
    (r561 : Seg13.relationRow561 rho)
    (r63 : Seg13.relationRow63 rho)
    (r562 : Seg13.relationRow562 rho)
    (r563 : Seg13.relationRow563 rho)
    (r564 : Seg13.relationRow564 rho)
    (r565 : Seg13.relationRow565 rho)
    (r566 : Seg13.relationRow566 rho)
    (r64 : Seg13.relationRow64 rho)
    (r567 : Seg13.relationRow567 rho)
    (r568 : Seg13.relationRow568 rho)
    (r569 : Seg13.relationRow569 rho)
    (r570 : Seg13.relationRow570 rho)
    (r571 : Seg13.relationRow571 rho)
    (r65 : Seg13.relationRow65 rho)
    (r572 : Seg13.relationRow572 rho)
    (r573 : Seg13.relationRow573 rho)
    (r574 : Seg13.relationRow574 rho)
    (r575 : Seg13.relationRow575 rho)
    (r576 : Seg13.relationRow576 rho)
    (r66 : Seg13.relationRow66 rho)
    (r577 : Seg13.relationRow577 rho)
    (r578 : Seg13.relationRow578 rho)
    (r579 : Seg13.relationRow579 rho)
    (r580 : Seg13.relationRow580 rho)
    (r581 : Seg13.relationRow581 rho)
    (r67 : Seg13.relationRow67 rho)
    (r582 : Seg13.relationRow582 rho)
    (r583 : Seg13.relationRow583 rho)
    (r584 : Seg13.relationRow584 rho)
    (r585 : Seg13.relationRow585 rho)
    (r586 : Seg13.relationRow586 rho)
    (r68 : Seg13.relationRow68 rho)
    (r587 : Seg13.relationRow587 rho)
    (r588 : Seg13.relationRow588 rho)
    (r589 : Seg13.relationRow589 rho)
    (r590 : Seg13.relationRow590 rho)
    (r591 : Seg13.relationRow591 rho)
    (r69 : Seg13.relationRow69 rho)
    (r592 : Seg13.relationRow592 rho)
    (r593 : Seg13.relationRow593 rho)
    (r594 : Seg13.relationRow594 rho)
    (r595 : Seg13.relationRow595 rho)
    (r596 : Seg13.relationRow596 rho)
    (r70 : Seg13.relationRow70 rho)
    (r597 : Seg13.relationRow597 rho)
    (r598 : Seg13.relationRow598 rho)
    (r599 : Seg13.relationRow599 rho)
    (r600 : Seg13.relationRow600 rho)
    (r601 : Seg13.relationRow601 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX70 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY70 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
  have hbrow61 : (1*(rho 10632))*(1 + (-1)*(rho 10632)) = 0 := by
    simpa [Seg13.relationRow61] using r61
  have hacc61 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc61 (rho 10571 : Seg13.F)
      (seg13AccX60 rho : Seg13.F) (seg13AccY60 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc61] using hp60
  have hr61 : RvkFixedBaseLadder.FixedStepRel 61 (rho 10632)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX60 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY60 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX61 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY61 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc61, seg13AccX61, seg13AccY61, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung61_wide (rho 10571 : Seg13.F) (rho 10632 : Seg13.F) (seg13AccX60 rho : Seg13.F) (seg13AccY60 rho : Seg13.F) (rho 11122 : Seg13.F) (rho 11123 : Seg13.F) (rho 11124 : Seg13.F) (rho 11125 : Seg13.F) (rho 11126 : Seg13.F) hacc61
        (by simpa using seg13_prefix_61_v2 rho r552)
        (by simpa using seg13_prefix_61_addX rho r553)
        (by simpa using seg13_prefix_61_addY rho r554)
        (by simpa using seg13_prefix_61_selX rho r555)
        (by simpa using seg13_prefix_61_selY rho r556)
        hbrow61
  obtain ⟨b61, hb61⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10632) hbrow61
  have hrb61 : RvkFixedBaseLadder.FixedStepRel 61 (toZMod b61)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX60 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY60 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX61 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY61 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb61]
    exact hr61
  have hp61 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX61 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY61 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 61 b61 _ _ hp60 hrb61).2
  have hbrow62 : (1*(rho 10633))*(1 + (-1)*(rho 10633)) = 0 := by
    simpa [Seg13.relationRow62] using r62
  have hacc62 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc62 (rho 10571 : Seg13.F)
      (seg13AccX61 rho : Seg13.F) (seg13AccY61 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc62] using hp61
  have hr62 : RvkFixedBaseLadder.FixedStepRel 62 (rho 10633)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX61 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY61 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX62 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY62 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc62, seg13AccX62, seg13AccY62, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung62_wide (rho 10571 : Seg13.F) (rho 10633 : Seg13.F) (seg13AccX61 rho : Seg13.F) (seg13AccY61 rho : Seg13.F) (rho 11127 : Seg13.F) (rho 11128 : Seg13.F) (rho 11129 : Seg13.F) (rho 11130 : Seg13.F) (rho 11131 : Seg13.F) hacc62
        (by simpa using seg13_prefix_62_v2 rho r557)
        (by simpa using seg13_prefix_62_addX rho r558)
        (by simpa using seg13_prefix_62_addY rho r559)
        (by simpa using seg13_prefix_62_selX rho r560)
        (by simpa using seg13_prefix_62_selY rho r561)
        hbrow62
  obtain ⟨b62, hb62⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10633) hbrow62
  have hrb62 : RvkFixedBaseLadder.FixedStepRel 62 (toZMod b62)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX61 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY61 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX62 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY62 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb62]
    exact hr62
  have hp62 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX62 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY62 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 62 b62 _ _ hp61 hrb62).2
  have hbrow63 : (1*(rho 10634))*(1 + (-1)*(rho 10634)) = 0 := by
    simpa [Seg13.relationRow63] using r63
  have hacc63 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc63 (rho 10571 : Seg13.F)
      (seg13AccX62 rho : Seg13.F) (seg13AccY62 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc63] using hp62
  have hr63 : RvkFixedBaseLadder.FixedStepRel 63 (rho 10634)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX62 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY62 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX63 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY63 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc63, seg13AccX63, seg13AccY63, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung63_wide (rho 10571 : Seg13.F) (rho 10634 : Seg13.F) (seg13AccX62 rho : Seg13.F) (seg13AccY62 rho : Seg13.F) (rho 11132 : Seg13.F) (rho 11133 : Seg13.F) (rho 11134 : Seg13.F) (rho 11135 : Seg13.F) (rho 11136 : Seg13.F) hacc63
        (by simpa using seg13_prefix_63_v2 rho r562)
        (by simpa using seg13_prefix_63_addX rho r563)
        (by simpa using seg13_prefix_63_addY rho r564)
        (by simpa using seg13_prefix_63_selX rho r565)
        (by simpa using seg13_prefix_63_selY rho r566)
        hbrow63
  obtain ⟨b63, hb63⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10634) hbrow63
  have hrb63 : RvkFixedBaseLadder.FixedStepRel 63 (toZMod b63)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX62 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY62 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX63 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY63 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb63]
    exact hr63
  have hp63 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX63 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY63 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 63 b63 _ _ hp62 hrb63).2
  have hbrow64 : (1*(rho 10635))*(1 + (-1)*(rho 10635)) = 0 := by
    simpa [Seg13.relationRow64] using r64
  have hacc64 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc64 (rho 10571 : Seg13.F)
      (seg13AccX63 rho : Seg13.F) (seg13AccY63 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc64] using hp63
  have hr64 : RvkFixedBaseLadder.FixedStepRel 64 (rho 10635)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX63 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY63 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX64 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY64 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc64, seg13AccX64, seg13AccY64, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung64_wide (rho 10571 : Seg13.F) (rho 10635 : Seg13.F) (seg13AccX63 rho : Seg13.F) (seg13AccY63 rho : Seg13.F) (rho 11137 : Seg13.F) (rho 11138 : Seg13.F) (rho 11139 : Seg13.F) (rho 11140 : Seg13.F) (rho 11141 : Seg13.F) hacc64
        (by simpa using seg13_prefix_64_v2 rho r567)
        (by simpa using seg13_prefix_64_addX rho r568)
        (by simpa using seg13_prefix_64_addY rho r569)
        (by simpa using seg13_prefix_64_selX rho r570)
        (by simpa using seg13_prefix_64_selY rho r571)
        hbrow64
  obtain ⟨b64, hb64⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10635) hbrow64
  have hrb64 : RvkFixedBaseLadder.FixedStepRel 64 (toZMod b64)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX63 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY63 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX64 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY64 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb64]
    exact hr64
  have hp64 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX64 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY64 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 64 b64 _ _ hp63 hrb64).2
  have hbrow65 : (1*(rho 10636))*(1 + (-1)*(rho 10636)) = 0 := by
    simpa [Seg13.relationRow65] using r65
  have hacc65 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc65 (rho 10571 : Seg13.F)
      (seg13AccX64 rho : Seg13.F) (seg13AccY64 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc65] using hp64
  have hr65 : RvkFixedBaseLadder.FixedStepRel 65 (rho 10636)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX64 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY64 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX65 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY65 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc65, seg13AccX65, seg13AccY65, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung65_wide (rho 10571 : Seg13.F) (rho 10636 : Seg13.F) (seg13AccX64 rho : Seg13.F) (seg13AccY64 rho : Seg13.F) (rho 11142 : Seg13.F) (rho 11143 : Seg13.F) (rho 11144 : Seg13.F) (rho 11145 : Seg13.F) (rho 11146 : Seg13.F) hacc65
        (by simpa using seg13_prefix_65_v2 rho r572)
        (by simpa using seg13_prefix_65_addX rho r573)
        (by simpa using seg13_prefix_65_addY rho r574)
        (by simpa using seg13_prefix_65_selX rho r575)
        (by simpa using seg13_prefix_65_selY rho r576)
        hbrow65
  obtain ⟨b65, hb65⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10636) hbrow65
  have hrb65 : RvkFixedBaseLadder.FixedStepRel 65 (toZMod b65)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX64 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY64 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX65 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY65 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb65]
    exact hr65
  have hp65 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX65 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY65 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 65 b65 _ _ hp64 hrb65).2
  have hbrow66 : (1*(rho 10637))*(1 + (-1)*(rho 10637)) = 0 := by
    simpa [Seg13.relationRow66] using r66
  have hacc66 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc66 (rho 10571 : Seg13.F)
      (seg13AccX65 rho : Seg13.F) (seg13AccY65 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc66] using hp65
  have hr66 : RvkFixedBaseLadder.FixedStepRel 66 (rho 10637)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX65 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY65 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX66 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY66 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc66, seg13AccX66, seg13AccY66, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung66_wide (rho 10571 : Seg13.F) (rho 10637 : Seg13.F) (seg13AccX65 rho : Seg13.F) (seg13AccY65 rho : Seg13.F) (rho 11147 : Seg13.F) (rho 11148 : Seg13.F) (rho 11149 : Seg13.F) (rho 11150 : Seg13.F) (rho 11151 : Seg13.F) hacc66
        (by simpa using seg13_prefix_66_v2 rho r577)
        (by simpa using seg13_prefix_66_addX rho r578)
        (by simpa using seg13_prefix_66_addY rho r579)
        (by simpa using seg13_prefix_66_selX rho r580)
        (by simpa using seg13_prefix_66_selY rho r581)
        hbrow66
  obtain ⟨b66, hb66⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10637) hbrow66
  have hrb66 : RvkFixedBaseLadder.FixedStepRel 66 (toZMod b66)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX65 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY65 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX66 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY66 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb66]
    exact hr66
  have hp66 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX66 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY66 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 66 b66 _ _ hp65 hrb66).2
  have hbrow67 : (1*(rho 10638))*(1 + (-1)*(rho 10638)) = 0 := by
    simpa [Seg13.relationRow67] using r67
  have hacc67 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc67 (rho 10571 : Seg13.F)
      (seg13AccX66 rho : Seg13.F) (seg13AccY66 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc67] using hp66
  have hr67 : RvkFixedBaseLadder.FixedStepRel 67 (rho 10638)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX66 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY66 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX67 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY67 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc67, seg13AccX67, seg13AccY67, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung67_wide (rho 10571 : Seg13.F) (rho 10638 : Seg13.F) (seg13AccX66 rho : Seg13.F) (seg13AccY66 rho : Seg13.F) (rho 11152 : Seg13.F) (rho 11153 : Seg13.F) (rho 11154 : Seg13.F) (rho 11155 : Seg13.F) (rho 11156 : Seg13.F) hacc67
        (by simpa using seg13_prefix_67_v2 rho r582)
        (by simpa using seg13_prefix_67_addX rho r583)
        (by simpa using seg13_prefix_67_addY rho r584)
        (by simpa using seg13_prefix_67_selX rho r585)
        (by simpa using seg13_prefix_67_selY rho r586)
        hbrow67
  obtain ⟨b67, hb67⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10638) hbrow67
  have hrb67 : RvkFixedBaseLadder.FixedStepRel 67 (toZMod b67)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX66 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY66 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX67 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY67 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb67]
    exact hr67
  have hp67 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX67 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY67 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 67 b67 _ _ hp66 hrb67).2
  have hbrow68 : (1*(rho 10639))*(1 + (-1)*(rho 10639)) = 0 := by
    simpa [Seg13.relationRow68] using r68
  have hacc68 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc68 (rho 10571 : Seg13.F)
      (seg13AccX67 rho : Seg13.F) (seg13AccY67 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc68] using hp67
  have hr68 : RvkFixedBaseLadder.FixedStepRel 68 (rho 10639)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX67 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY67 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX68 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY68 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc68, seg13AccX68, seg13AccY68, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung68_wide (rho 10571 : Seg13.F) (rho 10639 : Seg13.F) (seg13AccX67 rho : Seg13.F) (seg13AccY67 rho : Seg13.F) (rho 11157 : Seg13.F) (rho 11158 : Seg13.F) (rho 11159 : Seg13.F) (rho 11160 : Seg13.F) (rho 11161 : Seg13.F) hacc68
        (by simpa using seg13_prefix_68_v2 rho r587)
        (by simpa using seg13_prefix_68_addX rho r588)
        (by simpa using seg13_prefix_68_addY rho r589)
        (by simpa using seg13_prefix_68_selX rho r590)
        (by simpa using seg13_prefix_68_selY rho r591)
        hbrow68
  obtain ⟨b68, hb68⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10639) hbrow68
  have hrb68 : RvkFixedBaseLadder.FixedStepRel 68 (toZMod b68)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX67 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY67 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX68 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY68 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb68]
    exact hr68
  have hp68 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX68 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY68 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 68 b68 _ _ hp67 hrb68).2
  have hbrow69 : (1*(rho 10640))*(1 + (-1)*(rho 10640)) = 0 := by
    simpa [Seg13.relationRow69] using r69
  have hacc69 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc69 (rho 10571 : Seg13.F)
      (seg13AccX68 rho : Seg13.F) (seg13AccY68 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc69] using hp68
  have hr69 : RvkFixedBaseLadder.FixedStepRel 69 (rho 10640)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX68 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY68 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX69 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY69 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc69, seg13AccX69, seg13AccY69, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung69_wide (rho 10571 : Seg13.F) (rho 10640 : Seg13.F) (seg13AccX68 rho : Seg13.F) (seg13AccY68 rho : Seg13.F) (rho 11162 : Seg13.F) (rho 11163 : Seg13.F) (rho 11164 : Seg13.F) (rho 11165 : Seg13.F) (rho 11166 : Seg13.F) hacc69
        (by simpa using seg13_prefix_69_v2 rho r592)
        (by simpa using seg13_prefix_69_addX rho r593)
        (by simpa using seg13_prefix_69_addY rho r594)
        (by simpa using seg13_prefix_69_selX rho r595)
        (by simpa using seg13_prefix_69_selY rho r596)
        hbrow69
  obtain ⟨b69, hb69⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10640) hbrow69
  have hrb69 : RvkFixedBaseLadder.FixedStepRel 69 (toZMod b69)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX68 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY68 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX69 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY69 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb69]
    exact hr69
  have hp69 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX69 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY69 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 69 b69 _ _ hp68 hrb69).2
  have hbrow70 : (1*(rho 10641))*(1 + (-1)*(rho 10641)) = 0 := by
    simpa [Seg13.relationRow70] using r70
  have hacc70 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc70 (rho 10571 : Seg13.F)
      (seg13AccX69 rho : Seg13.F) (seg13AccY69 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc70] using hp69
  have hr70 : RvkFixedBaseLadder.FixedStepRel 70 (rho 10641)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX69 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY69 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX70 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY70 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc70, seg13AccX70, seg13AccY70, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung70_wide (rho 10571 : Seg13.F) (rho 10641 : Seg13.F) (seg13AccX69 rho : Seg13.F) (seg13AccY69 rho : Seg13.F) (rho 11167 : Seg13.F) (rho 11168 : Seg13.F) (rho 11169 : Seg13.F) (rho 11170 : Seg13.F) (rho 11171 : Seg13.F) hacc70
        (by simpa using seg13_prefix_70_v2 rho r597)
        (by simpa using seg13_prefix_70_addX rho r598)
        (by simpa using seg13_prefix_70_addY rho r599)
        (by simpa using seg13_prefix_70_selX rho r600)
        (by simpa using seg13_prefix_70_selY rho r601)
        hbrow70
  obtain ⟨b70, hb70⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10641) hbrow70
  have hrb70 : RvkFixedBaseLadder.FixedStepRel 70 (toZMod b70)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX69 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY69 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX70 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY70 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb70]
    exact hr70
  have hp70 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX70 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY70 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 70 b70 _ _ hp69 hrb70).2
  exact hp70

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas8
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

theorem seg15_prefix_steps8 (rho : Nat -> Seg15.F)
    (hp80 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX80 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY80 rho : Seg15.F)⟩ : EdwardsBridge.Point))
    (r81 : Seg15.relationRow81 rho)
    (r652 : Seg15.relationRow652 rho)
    (r653 : Seg15.relationRow653 rho)
    (r654 : Seg15.relationRow654 rho)
    (r655 : Seg15.relationRow655 rho)
    (r656 : Seg15.relationRow656 rho)
    (r82 : Seg15.relationRow82 rho)
    (r657 : Seg15.relationRow657 rho)
    (r658 : Seg15.relationRow658 rho)
    (r659 : Seg15.relationRow659 rho)
    (r660 : Seg15.relationRow660 rho)
    (r661 : Seg15.relationRow661 rho)
    (r83 : Seg15.relationRow83 rho)
    (r662 : Seg15.relationRow662 rho)
    (r663 : Seg15.relationRow663 rho)
    (r664 : Seg15.relationRow664 rho)
    (r665 : Seg15.relationRow665 rho)
    (r666 : Seg15.relationRow666 rho)
    (r84 : Seg15.relationRow84 rho)
    (r667 : Seg15.relationRow667 rho)
    (r668 : Seg15.relationRow668 rho)
    (r669 : Seg15.relationRow669 rho)
    (r670 : Seg15.relationRow670 rho)
    (r671 : Seg15.relationRow671 rho)
    (r85 : Seg15.relationRow85 rho)
    (r672 : Seg15.relationRow672 rho)
    (r673 : Seg15.relationRow673 rho)
    (r674 : Seg15.relationRow674 rho)
    (r675 : Seg15.relationRow675 rho)
    (r676 : Seg15.relationRow676 rho)
    (r86 : Seg15.relationRow86 rho)
    (r677 : Seg15.relationRow677 rho)
    (r678 : Seg15.relationRow678 rho)
    (r679 : Seg15.relationRow679 rho)
    (r680 : Seg15.relationRow680 rho)
    (r681 : Seg15.relationRow681 rho)
    (r87 : Seg15.relationRow87 rho)
    (r682 : Seg15.relationRow682 rho)
    (r683 : Seg15.relationRow683 rho)
    (r684 : Seg15.relationRow684 rho)
    (r685 : Seg15.relationRow685 rho)
    (r686 : Seg15.relationRow686 rho)
    (r88 : Seg15.relationRow88 rho)
    (r687 : Seg15.relationRow687 rho)
    (r688 : Seg15.relationRow688 rho)
    (r689 : Seg15.relationRow689 rho)
    (r690 : Seg15.relationRow690 rho)
    (r691 : Seg15.relationRow691 rho)
    (r89 : Seg15.relationRow89 rho)
    (r692 : Seg15.relationRow692 rho)
    (r693 : Seg15.relationRow693 rho)
    (r694 : Seg15.relationRow694 rho)
    (r695 : Seg15.relationRow695 rho)
    (r696 : Seg15.relationRow696 rho)
    (r90 : Seg15.relationRow90 rho)
    (r697 : Seg15.relationRow697 rho)
    (r698 : Seg15.relationRow698 rho)
    (r699 : Seg15.relationRow699 rho)
    (r700 : Seg15.relationRow700 rho)
    (r701 : Seg15.relationRow701 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX90 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY90 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
  have hbrow81 : (1*(rho 16468))*(1 + (-1)*(rho 16468)) = 0 := by
    simpa [Seg15.relationRow81] using r81
  have hacc81 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc81 (rho 16387 : Seg15.F)
      (seg15AccX80 rho : Seg15.F) (seg15AccY80 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc81] using hp80
  have hr81 : RvkFixedBaseLadder.FixedStepRel 81 (rho 16468)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX80 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY80 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX81 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY81 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc81, seg15AccX81, seg15AccY81, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung81_wide (rho 16387 : Seg15.F) (rho 16468 : Seg15.F) (seg15AccX80 rho : Seg15.F) (seg15AccY80 rho : Seg15.F) (rho 17038 : Seg15.F) (rho 17039 : Seg15.F) (rho 17040 : Seg15.F) (rho 17041 : Seg15.F) (rho 17042 : Seg15.F) hacc81
        (by simpa using seg15_prefix_81_v2 rho r652)
        (by simpa using seg15_prefix_81_addX rho r653)
        (by simpa using seg15_prefix_81_addY rho r654)
        (by simpa using seg15_prefix_81_selX rho r655)
        (by simpa using seg15_prefix_81_selY rho r656)
        hbrow81
  obtain ⟨b81, hb81⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16468) hbrow81
  have hrb81 : RvkFixedBaseLadder.FixedStepRel 81 (toZMod b81)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX80 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY80 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX81 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY81 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb81]
    exact hr81
  have hp81 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX81 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY81 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 81 b81 _ _ hp80 hrb81).2
  have hbrow82 : (1*(rho 16469))*(1 + (-1)*(rho 16469)) = 0 := by
    simpa [Seg15.relationRow82] using r82
  have hacc82 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc82 (rho 16387 : Seg15.F)
      (seg15AccX81 rho : Seg15.F) (seg15AccY81 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc82] using hp81
  have hr82 : RvkFixedBaseLadder.FixedStepRel 82 (rho 16469)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX81 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY81 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX82 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY82 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc82, seg15AccX82, seg15AccY82, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung82_wide (rho 16387 : Seg15.F) (rho 16469 : Seg15.F) (seg15AccX81 rho : Seg15.F) (seg15AccY81 rho : Seg15.F) (rho 17043 : Seg15.F) (rho 17044 : Seg15.F) (rho 17045 : Seg15.F) (rho 17046 : Seg15.F) (rho 17047 : Seg15.F) hacc82
        (by simpa using seg15_prefix_82_v2 rho r657)
        (by simpa using seg15_prefix_82_addX rho r658)
        (by simpa using seg15_prefix_82_addY rho r659)
        (by simpa using seg15_prefix_82_selX rho r660)
        (by simpa using seg15_prefix_82_selY rho r661)
        hbrow82
  obtain ⟨b82, hb82⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16469) hbrow82
  have hrb82 : RvkFixedBaseLadder.FixedStepRel 82 (toZMod b82)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX81 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY81 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX82 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY82 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb82]
    exact hr82
  have hp82 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX82 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY82 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 82 b82 _ _ hp81 hrb82).2
  have hbrow83 : (1*(rho 16470))*(1 + (-1)*(rho 16470)) = 0 := by
    simpa [Seg15.relationRow83] using r83
  have hacc83 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc83 (rho 16387 : Seg15.F)
      (seg15AccX82 rho : Seg15.F) (seg15AccY82 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc83] using hp82
  have hr83 : RvkFixedBaseLadder.FixedStepRel 83 (rho 16470)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX82 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY82 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX83 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY83 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc83, seg15AccX83, seg15AccY83, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung83_wide (rho 16387 : Seg15.F) (rho 16470 : Seg15.F) (seg15AccX82 rho : Seg15.F) (seg15AccY82 rho : Seg15.F) (rho 17048 : Seg15.F) (rho 17049 : Seg15.F) (rho 17050 : Seg15.F) (rho 17051 : Seg15.F) (rho 17052 : Seg15.F) hacc83
        (by simpa using seg15_prefix_83_v2 rho r662)
        (by simpa using seg15_prefix_83_addX rho r663)
        (by simpa using seg15_prefix_83_addY rho r664)
        (by simpa using seg15_prefix_83_selX rho r665)
        (by simpa using seg15_prefix_83_selY rho r666)
        hbrow83
  obtain ⟨b83, hb83⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16470) hbrow83
  have hrb83 : RvkFixedBaseLadder.FixedStepRel 83 (toZMod b83)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX82 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY82 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX83 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY83 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb83]
    exact hr83
  have hp83 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX83 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY83 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 83 b83 _ _ hp82 hrb83).2
  have hbrow84 : (1*(rho 16471))*(1 + (-1)*(rho 16471)) = 0 := by
    simpa [Seg15.relationRow84] using r84
  have hacc84 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc84 (rho 16387 : Seg15.F)
      (seg15AccX83 rho : Seg15.F) (seg15AccY83 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc84] using hp83
  have hr84 : RvkFixedBaseLadder.FixedStepRel 84 (rho 16471)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX83 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY83 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX84 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY84 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc84, seg15AccX84, seg15AccY84, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung84_wide (rho 16387 : Seg15.F) (rho 16471 : Seg15.F) (seg15AccX83 rho : Seg15.F) (seg15AccY83 rho : Seg15.F) (rho 17053 : Seg15.F) (rho 17054 : Seg15.F) (rho 17055 : Seg15.F) (rho 17056 : Seg15.F) (rho 17057 : Seg15.F) hacc84
        (by simpa using seg15_prefix_84_v2 rho r667)
        (by simpa using seg15_prefix_84_addX rho r668)
        (by simpa using seg15_prefix_84_addY rho r669)
        (by simpa using seg15_prefix_84_selX rho r670)
        (by simpa using seg15_prefix_84_selY rho r671)
        hbrow84
  obtain ⟨b84, hb84⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16471) hbrow84
  have hrb84 : RvkFixedBaseLadder.FixedStepRel 84 (toZMod b84)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX83 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY83 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX84 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY84 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb84]
    exact hr84
  have hp84 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX84 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY84 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 84 b84 _ _ hp83 hrb84).2
  have hbrow85 : (1*(rho 16472))*(1 + (-1)*(rho 16472)) = 0 := by
    simpa [Seg15.relationRow85] using r85
  have hacc85 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc85 (rho 16387 : Seg15.F)
      (seg15AccX84 rho : Seg15.F) (seg15AccY84 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc85] using hp84
  have hr85 : RvkFixedBaseLadder.FixedStepRel 85 (rho 16472)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX84 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY84 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX85 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY85 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc85, seg15AccX85, seg15AccY85, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung85_wide (rho 16387 : Seg15.F) (rho 16472 : Seg15.F) (seg15AccX84 rho : Seg15.F) (seg15AccY84 rho : Seg15.F) (rho 17058 : Seg15.F) (rho 17059 : Seg15.F) (rho 17060 : Seg15.F) (rho 17061 : Seg15.F) (rho 17062 : Seg15.F) hacc85
        (by simpa using seg15_prefix_85_v2 rho r672)
        (by simpa using seg15_prefix_85_addX rho r673)
        (by simpa using seg15_prefix_85_addY rho r674)
        (by simpa using seg15_prefix_85_selX rho r675)
        (by simpa using seg15_prefix_85_selY rho r676)
        hbrow85
  obtain ⟨b85, hb85⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16472) hbrow85
  have hrb85 : RvkFixedBaseLadder.FixedStepRel 85 (toZMod b85)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX84 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY84 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX85 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY85 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb85]
    exact hr85
  have hp85 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX85 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY85 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 85 b85 _ _ hp84 hrb85).2
  have hbrow86 : (1*(rho 16473))*(1 + (-1)*(rho 16473)) = 0 := by
    simpa [Seg15.relationRow86] using r86
  have hacc86 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc86 (rho 16387 : Seg15.F)
      (seg15AccX85 rho : Seg15.F) (seg15AccY85 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc86] using hp85
  have hr86 : RvkFixedBaseLadder.FixedStepRel 86 (rho 16473)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX85 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY85 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX86 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY86 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc86, seg15AccX86, seg15AccY86, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung86_wide (rho 16387 : Seg15.F) (rho 16473 : Seg15.F) (seg15AccX85 rho : Seg15.F) (seg15AccY85 rho : Seg15.F) (rho 17063 : Seg15.F) (rho 17064 : Seg15.F) (rho 17065 : Seg15.F) (rho 17066 : Seg15.F) (rho 17067 : Seg15.F) hacc86
        (by simpa using seg15_prefix_86_v2 rho r677)
        (by simpa using seg15_prefix_86_addX rho r678)
        (by simpa using seg15_prefix_86_addY rho r679)
        (by simpa using seg15_prefix_86_selX rho r680)
        (by simpa using seg15_prefix_86_selY rho r681)
        hbrow86
  obtain ⟨b86, hb86⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16473) hbrow86
  have hrb86 : RvkFixedBaseLadder.FixedStepRel 86 (toZMod b86)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX85 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY85 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX86 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY86 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb86]
    exact hr86
  have hp86 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX86 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY86 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 86 b86 _ _ hp85 hrb86).2
  have hbrow87 : (1*(rho 16474))*(1 + (-1)*(rho 16474)) = 0 := by
    simpa [Seg15.relationRow87] using r87
  have hacc87 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc87 (rho 16387 : Seg15.F)
      (seg15AccX86 rho : Seg15.F) (seg15AccY86 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc87] using hp86
  have hr87 : RvkFixedBaseLadder.FixedStepRel 87 (rho 16474)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX86 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY86 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX87 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY87 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc87, seg15AccX87, seg15AccY87, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung87_wide (rho 16387 : Seg15.F) (rho 16474 : Seg15.F) (seg15AccX86 rho : Seg15.F) (seg15AccY86 rho : Seg15.F) (rho 17068 : Seg15.F) (rho 17069 : Seg15.F) (rho 17070 : Seg15.F) (rho 17071 : Seg15.F) (rho 17072 : Seg15.F) hacc87
        (by simpa using seg15_prefix_87_v2 rho r682)
        (by simpa using seg15_prefix_87_addX rho r683)
        (by simpa using seg15_prefix_87_addY rho r684)
        (by simpa using seg15_prefix_87_selX rho r685)
        (by simpa using seg15_prefix_87_selY rho r686)
        hbrow87
  obtain ⟨b87, hb87⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16474) hbrow87
  have hrb87 : RvkFixedBaseLadder.FixedStepRel 87 (toZMod b87)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX86 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY86 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX87 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY87 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb87]
    exact hr87
  have hp87 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX87 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY87 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 87 b87 _ _ hp86 hrb87).2
  have hbrow88 : (1*(rho 16475))*(1 + (-1)*(rho 16475)) = 0 := by
    simpa [Seg15.relationRow88] using r88
  have hacc88 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc88 (rho 16387 : Seg15.F)
      (seg15AccX87 rho : Seg15.F) (seg15AccY87 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc88] using hp87
  have hr88 : RvkFixedBaseLadder.FixedStepRel 88 (rho 16475)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX87 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY87 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX88 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY88 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc88, seg15AccX88, seg15AccY88, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung88_wide (rho 16387 : Seg15.F) (rho 16475 : Seg15.F) (seg15AccX87 rho : Seg15.F) (seg15AccY87 rho : Seg15.F) (rho 17073 : Seg15.F) (rho 17074 : Seg15.F) (rho 17075 : Seg15.F) (rho 17076 : Seg15.F) (rho 17077 : Seg15.F) hacc88
        (by simpa using seg15_prefix_88_v2 rho r687)
        (by simpa using seg15_prefix_88_addX rho r688)
        (by simpa using seg15_prefix_88_addY rho r689)
        (by simpa using seg15_prefix_88_selX rho r690)
        (by simpa using seg15_prefix_88_selY rho r691)
        hbrow88
  obtain ⟨b88, hb88⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16475) hbrow88
  have hrb88 : RvkFixedBaseLadder.FixedStepRel 88 (toZMod b88)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX87 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY87 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX88 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY88 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb88]
    exact hr88
  have hp88 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX88 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY88 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 88 b88 _ _ hp87 hrb88).2
  have hbrow89 : (1*(rho 16476))*(1 + (-1)*(rho 16476)) = 0 := by
    simpa [Seg15.relationRow89] using r89
  have hacc89 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc89 (rho 16387 : Seg15.F)
      (seg15AccX88 rho : Seg15.F) (seg15AccY88 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc89] using hp88
  have hr89 : RvkFixedBaseLadder.FixedStepRel 89 (rho 16476)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX88 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY88 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX89 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY89 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc89, seg15AccX89, seg15AccY89, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung89_wide (rho 16387 : Seg15.F) (rho 16476 : Seg15.F) (seg15AccX88 rho : Seg15.F) (seg15AccY88 rho : Seg15.F) (rho 17078 : Seg15.F) (rho 17079 : Seg15.F) (rho 17080 : Seg15.F) (rho 17081 : Seg15.F) (rho 17082 : Seg15.F) hacc89
        (by simpa using seg15_prefix_89_v2 rho r692)
        (by simpa using seg15_prefix_89_addX rho r693)
        (by simpa using seg15_prefix_89_addY rho r694)
        (by simpa using seg15_prefix_89_selX rho r695)
        (by simpa using seg15_prefix_89_selY rho r696)
        hbrow89
  obtain ⟨b89, hb89⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16476) hbrow89
  have hrb89 : RvkFixedBaseLadder.FixedStepRel 89 (toZMod b89)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX88 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY88 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX89 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY89 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb89]
    exact hr89
  have hp89 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX89 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY89 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 89 b89 _ _ hp88 hrb89).2
  have hbrow90 : (1*(rho 16477))*(1 + (-1)*(rho 16477)) = 0 := by
    simpa [Seg15.relationRow90] using r90
  have hacc90 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc90 (rho 16387 : Seg15.F)
      (seg15AccX89 rho : Seg15.F) (seg15AccY89 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc90] using hp89
  have hr90 : RvkFixedBaseLadder.FixedStepRel 90 (rho 16477)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX89 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY89 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX90 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY90 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc90, seg15AccX90, seg15AccY90, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung90_wide (rho 16387 : Seg15.F) (rho 16477 : Seg15.F) (seg15AccX89 rho : Seg15.F) (seg15AccY89 rho : Seg15.F) (rho 17083 : Seg15.F) (rho 17084 : Seg15.F) (rho 17085 : Seg15.F) (rho 17086 : Seg15.F) (rho 17087 : Seg15.F) hacc90
        (by simpa using seg15_prefix_90_v2 rho r697)
        (by simpa using seg15_prefix_90_addX rho r698)
        (by simpa using seg15_prefix_90_addY rho r699)
        (by simpa using seg15_prefix_90_selX rho r700)
        (by simpa using seg15_prefix_90_selY rho r701)
        hbrow90
  obtain ⟨b90, hb90⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16477) hbrow90
  have hrb90 : RvkFixedBaseLadder.FixedStepRel 90 (toZMod b90)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX89 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY89 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX90 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY90 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb90]
    exact hr90
  have hp90 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX90 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY90 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 90 b90 _ _ hp89 hrb90).2
  exact hp90

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


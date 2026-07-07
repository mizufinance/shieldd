import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg13PrefixLemmas8
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

theorem seg13_prefix_steps8 (rho : Nat -> Seg13.F)
    (hp80 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX80 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY80 rho : Seg13.F)⟩ : EdwardsBridge.Point))
    (r81 : Seg13.relationRow81 rho)
    (r652 : Seg13.relationRow652 rho)
    (r653 : Seg13.relationRow653 rho)
    (r654 : Seg13.relationRow654 rho)
    (r655 : Seg13.relationRow655 rho)
    (r656 : Seg13.relationRow656 rho)
    (r82 : Seg13.relationRow82 rho)
    (r657 : Seg13.relationRow657 rho)
    (r658 : Seg13.relationRow658 rho)
    (r659 : Seg13.relationRow659 rho)
    (r660 : Seg13.relationRow660 rho)
    (r661 : Seg13.relationRow661 rho)
    (r83 : Seg13.relationRow83 rho)
    (r662 : Seg13.relationRow662 rho)
    (r663 : Seg13.relationRow663 rho)
    (r664 : Seg13.relationRow664 rho)
    (r665 : Seg13.relationRow665 rho)
    (r666 : Seg13.relationRow666 rho)
    (r84 : Seg13.relationRow84 rho)
    (r667 : Seg13.relationRow667 rho)
    (r668 : Seg13.relationRow668 rho)
    (r669 : Seg13.relationRow669 rho)
    (r670 : Seg13.relationRow670 rho)
    (r671 : Seg13.relationRow671 rho)
    (r85 : Seg13.relationRow85 rho)
    (r672 : Seg13.relationRow672 rho)
    (r673 : Seg13.relationRow673 rho)
    (r674 : Seg13.relationRow674 rho)
    (r675 : Seg13.relationRow675 rho)
    (r676 : Seg13.relationRow676 rho)
    (r86 : Seg13.relationRow86 rho)
    (r677 : Seg13.relationRow677 rho)
    (r678 : Seg13.relationRow678 rho)
    (r679 : Seg13.relationRow679 rho)
    (r680 : Seg13.relationRow680 rho)
    (r681 : Seg13.relationRow681 rho)
    (r87 : Seg13.relationRow87 rho)
    (r682 : Seg13.relationRow682 rho)
    (r683 : Seg13.relationRow683 rho)
    (r684 : Seg13.relationRow684 rho)
    (r685 : Seg13.relationRow685 rho)
    (r686 : Seg13.relationRow686 rho)
    (r88 : Seg13.relationRow88 rho)
    (r687 : Seg13.relationRow687 rho)
    (r688 : Seg13.relationRow688 rho)
    (r689 : Seg13.relationRow689 rho)
    (r690 : Seg13.relationRow690 rho)
    (r691 : Seg13.relationRow691 rho)
    (r89 : Seg13.relationRow89 rho)
    (r692 : Seg13.relationRow692 rho)
    (r693 : Seg13.relationRow693 rho)
    (r694 : Seg13.relationRow694 rho)
    (r695 : Seg13.relationRow695 rho)
    (r696 : Seg13.relationRow696 rho)
    (r90 : Seg13.relationRow90 rho)
    (r697 : Seg13.relationRow697 rho)
    (r698 : Seg13.relationRow698 rho)
    (r699 : Seg13.relationRow699 rho)
    (r700 : Seg13.relationRow700 rho)
    (r701 : Seg13.relationRow701 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX90 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY90 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
  have hbrow81 : (1*(rho 10652))*(1 + (-1)*(rho 10652)) = 0 := by
    simpa [Seg13.relationRow81] using r81
  have hacc81 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc81 (rho 10571 : Seg13.F)
      (seg13AccX80 rho : Seg13.F) (seg13AccY80 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc81] using hp80
  have hr81 : RvkFixedBaseLadder.FixedStepRel 81 (rho 10652)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX80 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY80 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX81 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY81 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc81, seg13AccX81, seg13AccY81, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung81_wide (rho 10571 : Seg13.F) (rho 10652 : Seg13.F) (seg13AccX80 rho : Seg13.F) (seg13AccY80 rho : Seg13.F) (rho 11222 : Seg13.F) (rho 11223 : Seg13.F) (rho 11224 : Seg13.F) (rho 11225 : Seg13.F) (rho 11226 : Seg13.F) hacc81
        (by simpa using seg13_prefix_81_v2 rho r652)
        (by simpa using seg13_prefix_81_addX rho r653)
        (by simpa using seg13_prefix_81_addY rho r654)
        (by simpa using seg13_prefix_81_selX rho r655)
        (by simpa using seg13_prefix_81_selY rho r656)
        hbrow81
  obtain ⟨b81, hb81⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10652) hbrow81
  have hrb81 : RvkFixedBaseLadder.FixedStepRel 81 (toZMod b81)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX80 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY80 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX81 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY81 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb81]
    exact hr81
  have hp81 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX81 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY81 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 81 b81 _ _ hp80 hrb81).2
  have hbrow82 : (1*(rho 10653))*(1 + (-1)*(rho 10653)) = 0 := by
    simpa [Seg13.relationRow82] using r82
  have hacc82 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc82 (rho 10571 : Seg13.F)
      (seg13AccX81 rho : Seg13.F) (seg13AccY81 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc82] using hp81
  have hr82 : RvkFixedBaseLadder.FixedStepRel 82 (rho 10653)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX81 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY81 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX82 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY82 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc82, seg13AccX82, seg13AccY82, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung82_wide (rho 10571 : Seg13.F) (rho 10653 : Seg13.F) (seg13AccX81 rho : Seg13.F) (seg13AccY81 rho : Seg13.F) (rho 11227 : Seg13.F) (rho 11228 : Seg13.F) (rho 11229 : Seg13.F) (rho 11230 : Seg13.F) (rho 11231 : Seg13.F) hacc82
        (by simpa using seg13_prefix_82_v2 rho r657)
        (by simpa using seg13_prefix_82_addX rho r658)
        (by simpa using seg13_prefix_82_addY rho r659)
        (by simpa using seg13_prefix_82_selX rho r660)
        (by simpa using seg13_prefix_82_selY rho r661)
        hbrow82
  obtain ⟨b82, hb82⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10653) hbrow82
  have hrb82 : RvkFixedBaseLadder.FixedStepRel 82 (toZMod b82)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX81 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY81 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX82 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY82 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb82]
    exact hr82
  have hp82 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX82 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY82 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 82 b82 _ _ hp81 hrb82).2
  have hbrow83 : (1*(rho 10654))*(1 + (-1)*(rho 10654)) = 0 := by
    simpa [Seg13.relationRow83] using r83
  have hacc83 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc83 (rho 10571 : Seg13.F)
      (seg13AccX82 rho : Seg13.F) (seg13AccY82 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc83] using hp82
  have hr83 : RvkFixedBaseLadder.FixedStepRel 83 (rho 10654)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX82 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY82 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX83 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY83 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc83, seg13AccX83, seg13AccY83, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung83_wide (rho 10571 : Seg13.F) (rho 10654 : Seg13.F) (seg13AccX82 rho : Seg13.F) (seg13AccY82 rho : Seg13.F) (rho 11232 : Seg13.F) (rho 11233 : Seg13.F) (rho 11234 : Seg13.F) (rho 11235 : Seg13.F) (rho 11236 : Seg13.F) hacc83
        (by simpa using seg13_prefix_83_v2 rho r662)
        (by simpa using seg13_prefix_83_addX rho r663)
        (by simpa using seg13_prefix_83_addY rho r664)
        (by simpa using seg13_prefix_83_selX rho r665)
        (by simpa using seg13_prefix_83_selY rho r666)
        hbrow83
  obtain ⟨b83, hb83⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10654) hbrow83
  have hrb83 : RvkFixedBaseLadder.FixedStepRel 83 (toZMod b83)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX82 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY82 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX83 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY83 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb83]
    exact hr83
  have hp83 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX83 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY83 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 83 b83 _ _ hp82 hrb83).2
  have hbrow84 : (1*(rho 10655))*(1 + (-1)*(rho 10655)) = 0 := by
    simpa [Seg13.relationRow84] using r84
  have hacc84 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc84 (rho 10571 : Seg13.F)
      (seg13AccX83 rho : Seg13.F) (seg13AccY83 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc84] using hp83
  have hr84 : RvkFixedBaseLadder.FixedStepRel 84 (rho 10655)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX83 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY83 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX84 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY84 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc84, seg13AccX84, seg13AccY84, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung84_wide (rho 10571 : Seg13.F) (rho 10655 : Seg13.F) (seg13AccX83 rho : Seg13.F) (seg13AccY83 rho : Seg13.F) (rho 11237 : Seg13.F) (rho 11238 : Seg13.F) (rho 11239 : Seg13.F) (rho 11240 : Seg13.F) (rho 11241 : Seg13.F) hacc84
        (by simpa using seg13_prefix_84_v2 rho r667)
        (by simpa using seg13_prefix_84_addX rho r668)
        (by simpa using seg13_prefix_84_addY rho r669)
        (by simpa using seg13_prefix_84_selX rho r670)
        (by simpa using seg13_prefix_84_selY rho r671)
        hbrow84
  obtain ⟨b84, hb84⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10655) hbrow84
  have hrb84 : RvkFixedBaseLadder.FixedStepRel 84 (toZMod b84)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX83 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY83 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX84 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY84 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb84]
    exact hr84
  have hp84 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX84 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY84 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 84 b84 _ _ hp83 hrb84).2
  have hbrow85 : (1*(rho 10656))*(1 + (-1)*(rho 10656)) = 0 := by
    simpa [Seg13.relationRow85] using r85
  have hacc85 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc85 (rho 10571 : Seg13.F)
      (seg13AccX84 rho : Seg13.F) (seg13AccY84 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc85] using hp84
  have hr85 : RvkFixedBaseLadder.FixedStepRel 85 (rho 10656)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX84 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY84 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX85 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY85 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc85, seg13AccX85, seg13AccY85, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung85_wide (rho 10571 : Seg13.F) (rho 10656 : Seg13.F) (seg13AccX84 rho : Seg13.F) (seg13AccY84 rho : Seg13.F) (rho 11242 : Seg13.F) (rho 11243 : Seg13.F) (rho 11244 : Seg13.F) (rho 11245 : Seg13.F) (rho 11246 : Seg13.F) hacc85
        (by simpa using seg13_prefix_85_v2 rho r672)
        (by simpa using seg13_prefix_85_addX rho r673)
        (by simpa using seg13_prefix_85_addY rho r674)
        (by simpa using seg13_prefix_85_selX rho r675)
        (by simpa using seg13_prefix_85_selY rho r676)
        hbrow85
  obtain ⟨b85, hb85⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10656) hbrow85
  have hrb85 : RvkFixedBaseLadder.FixedStepRel 85 (toZMod b85)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX84 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY84 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX85 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY85 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb85]
    exact hr85
  have hp85 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX85 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY85 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 85 b85 _ _ hp84 hrb85).2
  have hbrow86 : (1*(rho 10657))*(1 + (-1)*(rho 10657)) = 0 := by
    simpa [Seg13.relationRow86] using r86
  have hacc86 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc86 (rho 10571 : Seg13.F)
      (seg13AccX85 rho : Seg13.F) (seg13AccY85 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc86] using hp85
  have hr86 : RvkFixedBaseLadder.FixedStepRel 86 (rho 10657)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX85 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY85 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX86 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY86 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc86, seg13AccX86, seg13AccY86, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung86_wide (rho 10571 : Seg13.F) (rho 10657 : Seg13.F) (seg13AccX85 rho : Seg13.F) (seg13AccY85 rho : Seg13.F) (rho 11247 : Seg13.F) (rho 11248 : Seg13.F) (rho 11249 : Seg13.F) (rho 11250 : Seg13.F) (rho 11251 : Seg13.F) hacc86
        (by simpa using seg13_prefix_86_v2 rho r677)
        (by simpa using seg13_prefix_86_addX rho r678)
        (by simpa using seg13_prefix_86_addY rho r679)
        (by simpa using seg13_prefix_86_selX rho r680)
        (by simpa using seg13_prefix_86_selY rho r681)
        hbrow86
  obtain ⟨b86, hb86⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10657) hbrow86
  have hrb86 : RvkFixedBaseLadder.FixedStepRel 86 (toZMod b86)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX85 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY85 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX86 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY86 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb86]
    exact hr86
  have hp86 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX86 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY86 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 86 b86 _ _ hp85 hrb86).2
  have hbrow87 : (1*(rho 10658))*(1 + (-1)*(rho 10658)) = 0 := by
    simpa [Seg13.relationRow87] using r87
  have hacc87 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc87 (rho 10571 : Seg13.F)
      (seg13AccX86 rho : Seg13.F) (seg13AccY86 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc87] using hp86
  have hr87 : RvkFixedBaseLadder.FixedStepRel 87 (rho 10658)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX86 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY86 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX87 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY87 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc87, seg13AccX87, seg13AccY87, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung87_wide (rho 10571 : Seg13.F) (rho 10658 : Seg13.F) (seg13AccX86 rho : Seg13.F) (seg13AccY86 rho : Seg13.F) (rho 11252 : Seg13.F) (rho 11253 : Seg13.F) (rho 11254 : Seg13.F) (rho 11255 : Seg13.F) (rho 11256 : Seg13.F) hacc87
        (by simpa using seg13_prefix_87_v2 rho r682)
        (by simpa using seg13_prefix_87_addX rho r683)
        (by simpa using seg13_prefix_87_addY rho r684)
        (by simpa using seg13_prefix_87_selX rho r685)
        (by simpa using seg13_prefix_87_selY rho r686)
        hbrow87
  obtain ⟨b87, hb87⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10658) hbrow87
  have hrb87 : RvkFixedBaseLadder.FixedStepRel 87 (toZMod b87)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX86 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY86 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX87 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY87 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb87]
    exact hr87
  have hp87 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX87 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY87 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 87 b87 _ _ hp86 hrb87).2
  have hbrow88 : (1*(rho 10659))*(1 + (-1)*(rho 10659)) = 0 := by
    simpa [Seg13.relationRow88] using r88
  have hacc88 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc88 (rho 10571 : Seg13.F)
      (seg13AccX87 rho : Seg13.F) (seg13AccY87 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc88] using hp87
  have hr88 : RvkFixedBaseLadder.FixedStepRel 88 (rho 10659)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX87 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY87 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX88 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY88 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc88, seg13AccX88, seg13AccY88, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung88_wide (rho 10571 : Seg13.F) (rho 10659 : Seg13.F) (seg13AccX87 rho : Seg13.F) (seg13AccY87 rho : Seg13.F) (rho 11257 : Seg13.F) (rho 11258 : Seg13.F) (rho 11259 : Seg13.F) (rho 11260 : Seg13.F) (rho 11261 : Seg13.F) hacc88
        (by simpa using seg13_prefix_88_v2 rho r687)
        (by simpa using seg13_prefix_88_addX rho r688)
        (by simpa using seg13_prefix_88_addY rho r689)
        (by simpa using seg13_prefix_88_selX rho r690)
        (by simpa using seg13_prefix_88_selY rho r691)
        hbrow88
  obtain ⟨b88, hb88⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10659) hbrow88
  have hrb88 : RvkFixedBaseLadder.FixedStepRel 88 (toZMod b88)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX87 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY87 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX88 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY88 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb88]
    exact hr88
  have hp88 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX88 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY88 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 88 b88 _ _ hp87 hrb88).2
  have hbrow89 : (1*(rho 10660))*(1 + (-1)*(rho 10660)) = 0 := by
    simpa [Seg13.relationRow89] using r89
  have hacc89 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc89 (rho 10571 : Seg13.F)
      (seg13AccX88 rho : Seg13.F) (seg13AccY88 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc89] using hp88
  have hr89 : RvkFixedBaseLadder.FixedStepRel 89 (rho 10660)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX88 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY88 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX89 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY89 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc89, seg13AccX89, seg13AccY89, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung89_wide (rho 10571 : Seg13.F) (rho 10660 : Seg13.F) (seg13AccX88 rho : Seg13.F) (seg13AccY88 rho : Seg13.F) (rho 11262 : Seg13.F) (rho 11263 : Seg13.F) (rho 11264 : Seg13.F) (rho 11265 : Seg13.F) (rho 11266 : Seg13.F) hacc89
        (by simpa using seg13_prefix_89_v2 rho r692)
        (by simpa using seg13_prefix_89_addX rho r693)
        (by simpa using seg13_prefix_89_addY rho r694)
        (by simpa using seg13_prefix_89_selX rho r695)
        (by simpa using seg13_prefix_89_selY rho r696)
        hbrow89
  obtain ⟨b89, hb89⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10660) hbrow89
  have hrb89 : RvkFixedBaseLadder.FixedStepRel 89 (toZMod b89)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX88 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY88 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX89 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY89 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb89]
    exact hr89
  have hp89 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX89 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY89 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 89 b89 _ _ hp88 hrb89).2
  have hbrow90 : (1*(rho 10661))*(1 + (-1)*(rho 10661)) = 0 := by
    simpa [Seg13.relationRow90] using r90
  have hacc90 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc90 (rho 10571 : Seg13.F)
      (seg13AccX89 rho : Seg13.F) (seg13AccY89 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc90] using hp89
  have hr90 : RvkFixedBaseLadder.FixedStepRel 90 (rho 10661)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX89 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY89 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX90 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY90 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc90, seg13AccX90, seg13AccY90, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung90_wide (rho 10571 : Seg13.F) (rho 10661 : Seg13.F) (seg13AccX89 rho : Seg13.F) (seg13AccY89 rho : Seg13.F) (rho 11267 : Seg13.F) (rho 11268 : Seg13.F) (rho 11269 : Seg13.F) (rho 11270 : Seg13.F) (rho 11271 : Seg13.F) hacc90
        (by simpa using seg13_prefix_90_v2 rho r697)
        (by simpa using seg13_prefix_90_addX rho r698)
        (by simpa using seg13_prefix_90_addY rho r699)
        (by simpa using seg13_prefix_90_selX rho r700)
        (by simpa using seg13_prefix_90_selY rho r701)
        hbrow90
  obtain ⟨b90, hb90⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10661) hbrow90
  have hrb90 : RvkFixedBaseLadder.FixedStepRel 90 (toZMod b90)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX89 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY89 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX90 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY90 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb90]
    exact hr90
  have hp90 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX90 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY90 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 90 b90 _ _ hp89 hrb90).2
  exact hp90

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


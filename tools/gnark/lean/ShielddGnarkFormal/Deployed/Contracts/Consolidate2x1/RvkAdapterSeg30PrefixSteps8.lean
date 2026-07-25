import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas8
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

theorem seg30_prefix_steps8 (rho : Nat -> Seg30.F)
    (hp80 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX80 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY80 rho : Seg30.F)⟩ : EdwardsBridge.Point))
    (r81 : Seg30.relationRow81 rho)
    (r652 : Seg30.relationRow652 rho)
    (r653 : Seg30.relationRow653 rho)
    (r654 : Seg30.relationRow654 rho)
    (r655 : Seg30.relationRow655 rho)
    (r656 : Seg30.relationRow656 rho)
    (r82 : Seg30.relationRow82 rho)
    (r657 : Seg30.relationRow657 rho)
    (r658 : Seg30.relationRow658 rho)
    (r659 : Seg30.relationRow659 rho)
    (r660 : Seg30.relationRow660 rho)
    (r661 : Seg30.relationRow661 rho)
    (r83 : Seg30.relationRow83 rho)
    (r662 : Seg30.relationRow662 rho)
    (r663 : Seg30.relationRow663 rho)
    (r664 : Seg30.relationRow664 rho)
    (r665 : Seg30.relationRow665 rho)
    (r666 : Seg30.relationRow666 rho)
    (r84 : Seg30.relationRow84 rho)
    (r667 : Seg30.relationRow667 rho)
    (r668 : Seg30.relationRow668 rho)
    (r669 : Seg30.relationRow669 rho)
    (r670 : Seg30.relationRow670 rho)
    (r671 : Seg30.relationRow671 rho)
    (r85 : Seg30.relationRow85 rho)
    (r672 : Seg30.relationRow672 rho)
    (r673 : Seg30.relationRow673 rho)
    (r674 : Seg30.relationRow674 rho)
    (r675 : Seg30.relationRow675 rho)
    (r676 : Seg30.relationRow676 rho)
    (r86 : Seg30.relationRow86 rho)
    (r677 : Seg30.relationRow677 rho)
    (r678 : Seg30.relationRow678 rho)
    (r679 : Seg30.relationRow679 rho)
    (r680 : Seg30.relationRow680 rho)
    (r681 : Seg30.relationRow681 rho)
    (r87 : Seg30.relationRow87 rho)
    (r682 : Seg30.relationRow682 rho)
    (r683 : Seg30.relationRow683 rho)
    (r684 : Seg30.relationRow684 rho)
    (r685 : Seg30.relationRow685 rho)
    (r686 : Seg30.relationRow686 rho)
    (r88 : Seg30.relationRow88 rho)
    (r687 : Seg30.relationRow687 rho)
    (r688 : Seg30.relationRow688 rho)
    (r689 : Seg30.relationRow689 rho)
    (r690 : Seg30.relationRow690 rho)
    (r691 : Seg30.relationRow691 rho)
    (r89 : Seg30.relationRow89 rho)
    (r692 : Seg30.relationRow692 rho)
    (r693 : Seg30.relationRow693 rho)
    (r694 : Seg30.relationRow694 rho)
    (r695 : Seg30.relationRow695 rho)
    (r696 : Seg30.relationRow696 rho)
    (r90 : Seg30.relationRow90 rho)
    (r697 : Seg30.relationRow697 rho)
    (r698 : Seg30.relationRow698 rho)
    (r699 : Seg30.relationRow699 rho)
    (r700 : Seg30.relationRow700 rho)
    (r701 : Seg30.relationRow701 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX90 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY90 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
  have hbrow81 : (1*(rho 28398))*(1 + (-1)*(rho 28398)) = 0 := by
    simpa [Seg30.relationRow81] using r81
  have hacc81 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc81 (rho 28317 : Seg30.F)
      (seg30AccX80 rho : Seg30.F) (seg30AccY80 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc81] using hp80
  have hr81 : RvkFixedBaseLadder.FixedStepRel 81 (rho 28398)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX80 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY80 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX81 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY81 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc81, seg30AccX81, seg30AccY81, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung81_wide (rho 28317 : Seg30.F) (rho 28398 : Seg30.F) (seg30AccX80 rho : Seg30.F) (seg30AccY80 rho : Seg30.F) (rho 28968 : Seg30.F) (rho 28969 : Seg30.F) (rho 28970 : Seg30.F) (rho 28971 : Seg30.F) (rho 28972 : Seg30.F) hacc81
        (by simpa using seg30_prefix_81_v2 rho r652)
        (by simpa using seg30_prefix_81_addX rho r653)
        (by simpa using seg30_prefix_81_addY rho r654)
        (by simpa using seg30_prefix_81_selX rho r655)
        (by simpa using seg30_prefix_81_selY rho r656)
        hbrow81
  obtain ⟨b81, hb81⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28398) hbrow81
  have hrb81 : RvkFixedBaseLadder.FixedStepRel 81 (toZMod b81)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX80 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY80 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX81 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY81 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb81]
    exact hr81
  have hp81 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX81 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY81 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 81 b81 _ _ hp80 hrb81).2
  have hbrow82 : (1*(rho 28399))*(1 + (-1)*(rho 28399)) = 0 := by
    simpa [Seg30.relationRow82] using r82
  have hacc82 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc82 (rho 28317 : Seg30.F)
      (seg30AccX81 rho : Seg30.F) (seg30AccY81 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc82] using hp81
  have hr82 : RvkFixedBaseLadder.FixedStepRel 82 (rho 28399)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX81 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY81 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX82 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY82 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc82, seg30AccX82, seg30AccY82, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung82_wide (rho 28317 : Seg30.F) (rho 28399 : Seg30.F) (seg30AccX81 rho : Seg30.F) (seg30AccY81 rho : Seg30.F) (rho 28973 : Seg30.F) (rho 28974 : Seg30.F) (rho 28975 : Seg30.F) (rho 28976 : Seg30.F) (rho 28977 : Seg30.F) hacc82
        (by simpa using seg30_prefix_82_v2 rho r657)
        (by simpa using seg30_prefix_82_addX rho r658)
        (by simpa using seg30_prefix_82_addY rho r659)
        (by simpa using seg30_prefix_82_selX rho r660)
        (by simpa using seg30_prefix_82_selY rho r661)
        hbrow82
  obtain ⟨b82, hb82⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28399) hbrow82
  have hrb82 : RvkFixedBaseLadder.FixedStepRel 82 (toZMod b82)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX81 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY81 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX82 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY82 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb82]
    exact hr82
  have hp82 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX82 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY82 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 82 b82 _ _ hp81 hrb82).2
  have hbrow83 : (1*(rho 28400))*(1 + (-1)*(rho 28400)) = 0 := by
    simpa [Seg30.relationRow83] using r83
  have hacc83 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc83 (rho 28317 : Seg30.F)
      (seg30AccX82 rho : Seg30.F) (seg30AccY82 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc83] using hp82
  have hr83 : RvkFixedBaseLadder.FixedStepRel 83 (rho 28400)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX82 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY82 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX83 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY83 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc83, seg30AccX83, seg30AccY83, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung83_wide (rho 28317 : Seg30.F) (rho 28400 : Seg30.F) (seg30AccX82 rho : Seg30.F) (seg30AccY82 rho : Seg30.F) (rho 28978 : Seg30.F) (rho 28979 : Seg30.F) (rho 28980 : Seg30.F) (rho 28981 : Seg30.F) (rho 28982 : Seg30.F) hacc83
        (by simpa using seg30_prefix_83_v2 rho r662)
        (by simpa using seg30_prefix_83_addX rho r663)
        (by simpa using seg30_prefix_83_addY rho r664)
        (by simpa using seg30_prefix_83_selX rho r665)
        (by simpa using seg30_prefix_83_selY rho r666)
        hbrow83
  obtain ⟨b83, hb83⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28400) hbrow83
  have hrb83 : RvkFixedBaseLadder.FixedStepRel 83 (toZMod b83)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX82 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY82 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX83 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY83 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb83]
    exact hr83
  have hp83 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX83 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY83 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 83 b83 _ _ hp82 hrb83).2
  have hbrow84 : (1*(rho 28401))*(1 + (-1)*(rho 28401)) = 0 := by
    simpa [Seg30.relationRow84] using r84
  have hacc84 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc84 (rho 28317 : Seg30.F)
      (seg30AccX83 rho : Seg30.F) (seg30AccY83 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc84] using hp83
  have hr84 : RvkFixedBaseLadder.FixedStepRel 84 (rho 28401)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX83 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY83 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX84 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY84 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc84, seg30AccX84, seg30AccY84, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung84_wide (rho 28317 : Seg30.F) (rho 28401 : Seg30.F) (seg30AccX83 rho : Seg30.F) (seg30AccY83 rho : Seg30.F) (rho 28983 : Seg30.F) (rho 28984 : Seg30.F) (rho 28985 : Seg30.F) (rho 28986 : Seg30.F) (rho 28987 : Seg30.F) hacc84
        (by simpa using seg30_prefix_84_v2 rho r667)
        (by simpa using seg30_prefix_84_addX rho r668)
        (by simpa using seg30_prefix_84_addY rho r669)
        (by simpa using seg30_prefix_84_selX rho r670)
        (by simpa using seg30_prefix_84_selY rho r671)
        hbrow84
  obtain ⟨b84, hb84⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28401) hbrow84
  have hrb84 : RvkFixedBaseLadder.FixedStepRel 84 (toZMod b84)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX83 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY83 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX84 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY84 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb84]
    exact hr84
  have hp84 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX84 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY84 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 84 b84 _ _ hp83 hrb84).2
  have hbrow85 : (1*(rho 28402))*(1 + (-1)*(rho 28402)) = 0 := by
    simpa [Seg30.relationRow85] using r85
  have hacc85 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc85 (rho 28317 : Seg30.F)
      (seg30AccX84 rho : Seg30.F) (seg30AccY84 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc85] using hp84
  have hr85 : RvkFixedBaseLadder.FixedStepRel 85 (rho 28402)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX84 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY84 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX85 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY85 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc85, seg30AccX85, seg30AccY85, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung85_wide (rho 28317 : Seg30.F) (rho 28402 : Seg30.F) (seg30AccX84 rho : Seg30.F) (seg30AccY84 rho : Seg30.F) (rho 28988 : Seg30.F) (rho 28989 : Seg30.F) (rho 28990 : Seg30.F) (rho 28991 : Seg30.F) (rho 28992 : Seg30.F) hacc85
        (by simpa using seg30_prefix_85_v2 rho r672)
        (by simpa using seg30_prefix_85_addX rho r673)
        (by simpa using seg30_prefix_85_addY rho r674)
        (by simpa using seg30_prefix_85_selX rho r675)
        (by simpa using seg30_prefix_85_selY rho r676)
        hbrow85
  obtain ⟨b85, hb85⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28402) hbrow85
  have hrb85 : RvkFixedBaseLadder.FixedStepRel 85 (toZMod b85)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX84 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY84 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX85 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY85 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb85]
    exact hr85
  have hp85 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX85 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY85 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 85 b85 _ _ hp84 hrb85).2
  have hbrow86 : (1*(rho 28403))*(1 + (-1)*(rho 28403)) = 0 := by
    simpa [Seg30.relationRow86] using r86
  have hacc86 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc86 (rho 28317 : Seg30.F)
      (seg30AccX85 rho : Seg30.F) (seg30AccY85 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc86] using hp85
  have hr86 : RvkFixedBaseLadder.FixedStepRel 86 (rho 28403)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX85 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY85 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX86 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY86 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc86, seg30AccX86, seg30AccY86, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung86_wide (rho 28317 : Seg30.F) (rho 28403 : Seg30.F) (seg30AccX85 rho : Seg30.F) (seg30AccY85 rho : Seg30.F) (rho 28993 : Seg30.F) (rho 28994 : Seg30.F) (rho 28995 : Seg30.F) (rho 28996 : Seg30.F) (rho 28997 : Seg30.F) hacc86
        (by simpa using seg30_prefix_86_v2 rho r677)
        (by simpa using seg30_prefix_86_addX rho r678)
        (by simpa using seg30_prefix_86_addY rho r679)
        (by simpa using seg30_prefix_86_selX rho r680)
        (by simpa using seg30_prefix_86_selY rho r681)
        hbrow86
  obtain ⟨b86, hb86⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28403) hbrow86
  have hrb86 : RvkFixedBaseLadder.FixedStepRel 86 (toZMod b86)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX85 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY85 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX86 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY86 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb86]
    exact hr86
  have hp86 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX86 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY86 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 86 b86 _ _ hp85 hrb86).2
  have hbrow87 : (1*(rho 28404))*(1 + (-1)*(rho 28404)) = 0 := by
    simpa [Seg30.relationRow87] using r87
  have hacc87 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc87 (rho 28317 : Seg30.F)
      (seg30AccX86 rho : Seg30.F) (seg30AccY86 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc87] using hp86
  have hr87 : RvkFixedBaseLadder.FixedStepRel 87 (rho 28404)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX86 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY86 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX87 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY87 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc87, seg30AccX87, seg30AccY87, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung87_wide (rho 28317 : Seg30.F) (rho 28404 : Seg30.F) (seg30AccX86 rho : Seg30.F) (seg30AccY86 rho : Seg30.F) (rho 28998 : Seg30.F) (rho 28999 : Seg30.F) (rho 29000 : Seg30.F) (rho 29001 : Seg30.F) (rho 29002 : Seg30.F) hacc87
        (by simpa using seg30_prefix_87_v2 rho r682)
        (by simpa using seg30_prefix_87_addX rho r683)
        (by simpa using seg30_prefix_87_addY rho r684)
        (by simpa using seg30_prefix_87_selX rho r685)
        (by simpa using seg30_prefix_87_selY rho r686)
        hbrow87
  obtain ⟨b87, hb87⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28404) hbrow87
  have hrb87 : RvkFixedBaseLadder.FixedStepRel 87 (toZMod b87)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX86 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY86 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX87 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY87 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb87]
    exact hr87
  have hp87 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX87 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY87 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 87 b87 _ _ hp86 hrb87).2
  have hbrow88 : (1*(rho 28405))*(1 + (-1)*(rho 28405)) = 0 := by
    simpa [Seg30.relationRow88] using r88
  have hacc88 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc88 (rho 28317 : Seg30.F)
      (seg30AccX87 rho : Seg30.F) (seg30AccY87 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc88] using hp87
  have hr88 : RvkFixedBaseLadder.FixedStepRel 88 (rho 28405)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX87 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY87 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX88 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY88 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc88, seg30AccX88, seg30AccY88, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung88_wide (rho 28317 : Seg30.F) (rho 28405 : Seg30.F) (seg30AccX87 rho : Seg30.F) (seg30AccY87 rho : Seg30.F) (rho 29003 : Seg30.F) (rho 29004 : Seg30.F) (rho 29005 : Seg30.F) (rho 29006 : Seg30.F) (rho 29007 : Seg30.F) hacc88
        (by simpa using seg30_prefix_88_v2 rho r687)
        (by simpa using seg30_prefix_88_addX rho r688)
        (by simpa using seg30_prefix_88_addY rho r689)
        (by simpa using seg30_prefix_88_selX rho r690)
        (by simpa using seg30_prefix_88_selY rho r691)
        hbrow88
  obtain ⟨b88, hb88⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28405) hbrow88
  have hrb88 : RvkFixedBaseLadder.FixedStepRel 88 (toZMod b88)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX87 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY87 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX88 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY88 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb88]
    exact hr88
  have hp88 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX88 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY88 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 88 b88 _ _ hp87 hrb88).2
  have hbrow89 : (1*(rho 28406))*(1 + (-1)*(rho 28406)) = 0 := by
    simpa [Seg30.relationRow89] using r89
  have hacc89 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc89 (rho 28317 : Seg30.F)
      (seg30AccX88 rho : Seg30.F) (seg30AccY88 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc89] using hp88
  have hr89 : RvkFixedBaseLadder.FixedStepRel 89 (rho 28406)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX88 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY88 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX89 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY89 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc89, seg30AccX89, seg30AccY89, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung89_wide (rho 28317 : Seg30.F) (rho 28406 : Seg30.F) (seg30AccX88 rho : Seg30.F) (seg30AccY88 rho : Seg30.F) (rho 29008 : Seg30.F) (rho 29009 : Seg30.F) (rho 29010 : Seg30.F) (rho 29011 : Seg30.F) (rho 29012 : Seg30.F) hacc89
        (by simpa using seg30_prefix_89_v2 rho r692)
        (by simpa using seg30_prefix_89_addX rho r693)
        (by simpa using seg30_prefix_89_addY rho r694)
        (by simpa using seg30_prefix_89_selX rho r695)
        (by simpa using seg30_prefix_89_selY rho r696)
        hbrow89
  obtain ⟨b89, hb89⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28406) hbrow89
  have hrb89 : RvkFixedBaseLadder.FixedStepRel 89 (toZMod b89)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX88 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY88 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX89 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY89 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb89]
    exact hr89
  have hp89 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX89 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY89 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 89 b89 _ _ hp88 hrb89).2
  have hbrow90 : (1*(rho 28407))*(1 + (-1)*(rho 28407)) = 0 := by
    simpa [Seg30.relationRow90] using r90
  have hacc90 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc90 (rho 28317 : Seg30.F)
      (seg30AccX89 rho : Seg30.F) (seg30AccY89 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc90] using hp89
  have hr90 : RvkFixedBaseLadder.FixedStepRel 90 (rho 28407)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX89 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY89 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX90 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY90 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc90, seg30AccX90, seg30AccY90, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung90_wide (rho 28317 : Seg30.F) (rho 28407 : Seg30.F) (seg30AccX89 rho : Seg30.F) (seg30AccY89 rho : Seg30.F) (rho 29013 : Seg30.F) (rho 29014 : Seg30.F) (rho 29015 : Seg30.F) (rho 29016 : Seg30.F) (rho 29017 : Seg30.F) hacc90
        (by simpa using seg30_prefix_90_v2 rho r697)
        (by simpa using seg30_prefix_90_addX rho r698)
        (by simpa using seg30_prefix_90_addY rho r699)
        (by simpa using seg30_prefix_90_selX rho r700)
        (by simpa using seg30_prefix_90_selY rho r701)
        hbrow90
  obtain ⟨b90, hb90⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28407) hbrow90
  have hrb90 : RvkFixedBaseLadder.FixedStepRel 90 (toZMod b90)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX89 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY89 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX90 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY90 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb90]
    exact hr90
  have hp90 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX90 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY90 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 90 b90 _ _ hp89 hrb90).2
  exact hp90

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


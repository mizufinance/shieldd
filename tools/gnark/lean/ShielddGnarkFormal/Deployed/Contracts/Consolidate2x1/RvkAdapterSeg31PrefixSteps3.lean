import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31PrefixLemmas3
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

theorem seg31_prefix_steps3 (rho : Nat -> Seg31.F)
    (hp30 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX30 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY30 rho : Seg31.F)⟩ : EdwardsBridge.Point))
    (r31 : Seg31.relationRow31 rho)
    (r402 : Seg31.relationRow402 rho)
    (r403 : Seg31.relationRow403 rho)
    (r404 : Seg31.relationRow404 rho)
    (r405 : Seg31.relationRow405 rho)
    (r406 : Seg31.relationRow406 rho)
    (r32 : Seg31.relationRow32 rho)
    (r407 : Seg31.relationRow407 rho)
    (r408 : Seg31.relationRow408 rho)
    (r409 : Seg31.relationRow409 rho)
    (r410 : Seg31.relationRow410 rho)
    (r411 : Seg31.relationRow411 rho)
    (r33 : Seg31.relationRow33 rho)
    (r412 : Seg31.relationRow412 rho)
    (r413 : Seg31.relationRow413 rho)
    (r414 : Seg31.relationRow414 rho)
    (r415 : Seg31.relationRow415 rho)
    (r416 : Seg31.relationRow416 rho)
    (r34 : Seg31.relationRow34 rho)
    (r417 : Seg31.relationRow417 rho)
    (r418 : Seg31.relationRow418 rho)
    (r419 : Seg31.relationRow419 rho)
    (r420 : Seg31.relationRow420 rho)
    (r421 : Seg31.relationRow421 rho)
    (r35 : Seg31.relationRow35 rho)
    (r422 : Seg31.relationRow422 rho)
    (r423 : Seg31.relationRow423 rho)
    (r424 : Seg31.relationRow424 rho)
    (r425 : Seg31.relationRow425 rho)
    (r426 : Seg31.relationRow426 rho)
    (r36 : Seg31.relationRow36 rho)
    (r427 : Seg31.relationRow427 rho)
    (r428 : Seg31.relationRow428 rho)
    (r429 : Seg31.relationRow429 rho)
    (r430 : Seg31.relationRow430 rho)
    (r431 : Seg31.relationRow431 rho)
    (r37 : Seg31.relationRow37 rho)
    (r432 : Seg31.relationRow432 rho)
    (r433 : Seg31.relationRow433 rho)
    (r434 : Seg31.relationRow434 rho)
    (r435 : Seg31.relationRow435 rho)
    (r436 : Seg31.relationRow436 rho)
    (r38 : Seg31.relationRow38 rho)
    (r437 : Seg31.relationRow437 rho)
    (r438 : Seg31.relationRow438 rho)
    (r439 : Seg31.relationRow439 rho)
    (r440 : Seg31.relationRow440 rho)
    (r441 : Seg31.relationRow441 rho)
    (r39 : Seg31.relationRow39 rho)
    (r442 : Seg31.relationRow442 rho)
    (r443 : Seg31.relationRow443 rho)
    (r444 : Seg31.relationRow444 rho)
    (r445 : Seg31.relationRow445 rho)
    (r446 : Seg31.relationRow446 rho)
    (r40 : Seg31.relationRow40 rho)
    (r447 : Seg31.relationRow447 rho)
    (r448 : Seg31.relationRow448 rho)
    (r449 : Seg31.relationRow449 rho)
    (r450 : Seg31.relationRow450 rho)
    (r451 : Seg31.relationRow451 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX40 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY40 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
  have hbrow31 : (1*(rho 29302))*(1 + (-1)*(rho 29302)) = 0 := by
    simpa [Seg31.relationRow31] using r31
  have hacc31 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc31 (rho 29271 : Seg31.F)
      (seg31AccX30 rho : Seg31.F) (seg31AccY30 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc31] using hp30
  have hr31 : RvkFixedBaseLadder.FixedStepRel 31 (rho 29302)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX30 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY30 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX31 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY31 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc31, seg31AccX31, seg31AccY31, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung31_wide (rho 29271 : Seg31.F) (rho 29302 : Seg31.F) (seg31AccX30 rho : Seg31.F) (seg31AccY30 rho : Seg31.F) (rho 29672 : Seg31.F) (rho 29673 : Seg31.F) (rho 29674 : Seg31.F) (rho 29675 : Seg31.F) (rho 29676 : Seg31.F) hacc31
        (by simpa using seg31_prefix_31_v2 rho r402)
        (by simpa using seg31_prefix_31_addX rho r403)
        (by simpa using seg31_prefix_31_addY rho r404)
        (by simpa using seg31_prefix_31_selX rho r405)
        (by simpa using seg31_prefix_31_selY rho r406)
        hbrow31
  obtain ⟨b31, hb31⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29302) hbrow31
  have hrb31 : RvkFixedBaseLadder.FixedStepRel 31 (toZMod b31)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX30 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY30 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX31 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY31 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb31]
    exact hr31
  have hp31 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX31 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY31 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 31 b31 _ _ hp30 hrb31).2
  have hbrow32 : (1*(rho 29303))*(1 + (-1)*(rho 29303)) = 0 := by
    simpa [Seg31.relationRow32] using r32
  have hacc32 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc32 (rho 29271 : Seg31.F)
      (seg31AccX31 rho : Seg31.F) (seg31AccY31 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc32] using hp31
  have hr32 : RvkFixedBaseLadder.FixedStepRel 32 (rho 29303)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX31 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY31 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX32 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY32 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc32, seg31AccX32, seg31AccY32, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung32_wide (rho 29271 : Seg31.F) (rho 29303 : Seg31.F) (seg31AccX31 rho : Seg31.F) (seg31AccY31 rho : Seg31.F) (rho 29677 : Seg31.F) (rho 29678 : Seg31.F) (rho 29679 : Seg31.F) (rho 29680 : Seg31.F) (rho 29681 : Seg31.F) hacc32
        (by simpa using seg31_prefix_32_v2 rho r407)
        (by simpa using seg31_prefix_32_addX rho r408)
        (by simpa using seg31_prefix_32_addY rho r409)
        (by simpa using seg31_prefix_32_selX rho r410)
        (by simpa using seg31_prefix_32_selY rho r411)
        hbrow32
  obtain ⟨b32, hb32⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29303) hbrow32
  have hrb32 : RvkFixedBaseLadder.FixedStepRel 32 (toZMod b32)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX31 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY31 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX32 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY32 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb32]
    exact hr32
  have hp32 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX32 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY32 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 32 b32 _ _ hp31 hrb32).2
  have hbrow33 : (1*(rho 29304))*(1 + (-1)*(rho 29304)) = 0 := by
    simpa [Seg31.relationRow33] using r33
  have hacc33 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc33 (rho 29271 : Seg31.F)
      (seg31AccX32 rho : Seg31.F) (seg31AccY32 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc33] using hp32
  have hr33 : RvkFixedBaseLadder.FixedStepRel 33 (rho 29304)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX32 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY32 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX33 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY33 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc33, seg31AccX33, seg31AccY33, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung33_wide (rho 29271 : Seg31.F) (rho 29304 : Seg31.F) (seg31AccX32 rho : Seg31.F) (seg31AccY32 rho : Seg31.F) (rho 29682 : Seg31.F) (rho 29683 : Seg31.F) (rho 29684 : Seg31.F) (rho 29685 : Seg31.F) (rho 29686 : Seg31.F) hacc33
        (by simpa using seg31_prefix_33_v2 rho r412)
        (by simpa using seg31_prefix_33_addX rho r413)
        (by simpa using seg31_prefix_33_addY rho r414)
        (by simpa using seg31_prefix_33_selX rho r415)
        (by simpa using seg31_prefix_33_selY rho r416)
        hbrow33
  obtain ⟨b33, hb33⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29304) hbrow33
  have hrb33 : RvkFixedBaseLadder.FixedStepRel 33 (toZMod b33)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX32 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY32 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX33 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY33 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb33]
    exact hr33
  have hp33 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX33 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY33 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 33 b33 _ _ hp32 hrb33).2
  have hbrow34 : (1*(rho 29305))*(1 + (-1)*(rho 29305)) = 0 := by
    simpa [Seg31.relationRow34] using r34
  have hacc34 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc34 (rho 29271 : Seg31.F)
      (seg31AccX33 rho : Seg31.F) (seg31AccY33 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc34] using hp33
  have hr34 : RvkFixedBaseLadder.FixedStepRel 34 (rho 29305)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX33 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY33 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX34 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY34 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc34, seg31AccX34, seg31AccY34, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung34_wide (rho 29271 : Seg31.F) (rho 29305 : Seg31.F) (seg31AccX33 rho : Seg31.F) (seg31AccY33 rho : Seg31.F) (rho 29687 : Seg31.F) (rho 29688 : Seg31.F) (rho 29689 : Seg31.F) (rho 29690 : Seg31.F) (rho 29691 : Seg31.F) hacc34
        (by simpa using seg31_prefix_34_v2 rho r417)
        (by simpa using seg31_prefix_34_addX rho r418)
        (by simpa using seg31_prefix_34_addY rho r419)
        (by simpa using seg31_prefix_34_selX rho r420)
        (by simpa using seg31_prefix_34_selY rho r421)
        hbrow34
  obtain ⟨b34, hb34⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29305) hbrow34
  have hrb34 : RvkFixedBaseLadder.FixedStepRel 34 (toZMod b34)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX33 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY33 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX34 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY34 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb34]
    exact hr34
  have hp34 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX34 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY34 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 34 b34 _ _ hp33 hrb34).2
  have hbrow35 : (1*(rho 29306))*(1 + (-1)*(rho 29306)) = 0 := by
    simpa [Seg31.relationRow35] using r35
  have hacc35 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc35 (rho 29271 : Seg31.F)
      (seg31AccX34 rho : Seg31.F) (seg31AccY34 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc35] using hp34
  have hr35 : RvkFixedBaseLadder.FixedStepRel 35 (rho 29306)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX34 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY34 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX35 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY35 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc35, seg31AccX35, seg31AccY35, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung35_wide (rho 29271 : Seg31.F) (rho 29306 : Seg31.F) (seg31AccX34 rho : Seg31.F) (seg31AccY34 rho : Seg31.F) (rho 29692 : Seg31.F) (rho 29693 : Seg31.F) (rho 29694 : Seg31.F) (rho 29695 : Seg31.F) (rho 29696 : Seg31.F) hacc35
        (by simpa using seg31_prefix_35_v2 rho r422)
        (by simpa using seg31_prefix_35_addX rho r423)
        (by simpa using seg31_prefix_35_addY rho r424)
        (by simpa using seg31_prefix_35_selX rho r425)
        (by simpa using seg31_prefix_35_selY rho r426)
        hbrow35
  obtain ⟨b35, hb35⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29306) hbrow35
  have hrb35 : RvkFixedBaseLadder.FixedStepRel 35 (toZMod b35)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX34 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY34 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX35 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY35 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb35]
    exact hr35
  have hp35 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX35 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY35 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 35 b35 _ _ hp34 hrb35).2
  have hbrow36 : (1*(rho 29307))*(1 + (-1)*(rho 29307)) = 0 := by
    simpa [Seg31.relationRow36] using r36
  have hacc36 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc36 (rho 29271 : Seg31.F)
      (seg31AccX35 rho : Seg31.F) (seg31AccY35 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc36] using hp35
  have hr36 : RvkFixedBaseLadder.FixedStepRel 36 (rho 29307)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX35 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY35 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX36 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY36 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc36, seg31AccX36, seg31AccY36, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung36_wide (rho 29271 : Seg31.F) (rho 29307 : Seg31.F) (seg31AccX35 rho : Seg31.F) (seg31AccY35 rho : Seg31.F) (rho 29697 : Seg31.F) (rho 29698 : Seg31.F) (rho 29699 : Seg31.F) (rho 29700 : Seg31.F) (rho 29701 : Seg31.F) hacc36
        (by simpa using seg31_prefix_36_v2 rho r427)
        (by simpa using seg31_prefix_36_addX rho r428)
        (by simpa using seg31_prefix_36_addY rho r429)
        (by simpa using seg31_prefix_36_selX rho r430)
        (by simpa using seg31_prefix_36_selY rho r431)
        hbrow36
  obtain ⟨b36, hb36⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29307) hbrow36
  have hrb36 : RvkFixedBaseLadder.FixedStepRel 36 (toZMod b36)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX35 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY35 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX36 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY36 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb36]
    exact hr36
  have hp36 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX36 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY36 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 36 b36 _ _ hp35 hrb36).2
  have hbrow37 : (1*(rho 29308))*(1 + (-1)*(rho 29308)) = 0 := by
    simpa [Seg31.relationRow37] using r37
  have hacc37 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc37 (rho 29271 : Seg31.F)
      (seg31AccX36 rho : Seg31.F) (seg31AccY36 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc37] using hp36
  have hr37 : RvkFixedBaseLadder.FixedStepRel 37 (rho 29308)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX36 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY36 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX37 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY37 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc37, seg31AccX37, seg31AccY37, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung37_wide (rho 29271 : Seg31.F) (rho 29308 : Seg31.F) (seg31AccX36 rho : Seg31.F) (seg31AccY36 rho : Seg31.F) (rho 29702 : Seg31.F) (rho 29703 : Seg31.F) (rho 29704 : Seg31.F) (rho 29705 : Seg31.F) (rho 29706 : Seg31.F) hacc37
        (by simpa using seg31_prefix_37_v2 rho r432)
        (by simpa using seg31_prefix_37_addX rho r433)
        (by simpa using seg31_prefix_37_addY rho r434)
        (by simpa using seg31_prefix_37_selX rho r435)
        (by simpa using seg31_prefix_37_selY rho r436)
        hbrow37
  obtain ⟨b37, hb37⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29308) hbrow37
  have hrb37 : RvkFixedBaseLadder.FixedStepRel 37 (toZMod b37)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX36 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY36 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX37 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY37 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb37]
    exact hr37
  have hp37 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX37 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY37 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 37 b37 _ _ hp36 hrb37).2
  have hbrow38 : (1*(rho 29309))*(1 + (-1)*(rho 29309)) = 0 := by
    simpa [Seg31.relationRow38] using r38
  have hacc38 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc38 (rho 29271 : Seg31.F)
      (seg31AccX37 rho : Seg31.F) (seg31AccY37 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc38] using hp37
  have hr38 : RvkFixedBaseLadder.FixedStepRel 38 (rho 29309)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX37 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY37 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX38 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY38 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc38, seg31AccX38, seg31AccY38, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung38_wide (rho 29271 : Seg31.F) (rho 29309 : Seg31.F) (seg31AccX37 rho : Seg31.F) (seg31AccY37 rho : Seg31.F) (rho 29707 : Seg31.F) (rho 29708 : Seg31.F) (rho 29709 : Seg31.F) (rho 29710 : Seg31.F) (rho 29711 : Seg31.F) hacc38
        (by simpa using seg31_prefix_38_v2 rho r437)
        (by simpa using seg31_prefix_38_addX rho r438)
        (by simpa using seg31_prefix_38_addY rho r439)
        (by simpa using seg31_prefix_38_selX rho r440)
        (by simpa using seg31_prefix_38_selY rho r441)
        hbrow38
  obtain ⟨b38, hb38⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29309) hbrow38
  have hrb38 : RvkFixedBaseLadder.FixedStepRel 38 (toZMod b38)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX37 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY37 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX38 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY38 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb38]
    exact hr38
  have hp38 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX38 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY38 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 38 b38 _ _ hp37 hrb38).2
  have hbrow39 : (1*(rho 29310))*(1 + (-1)*(rho 29310)) = 0 := by
    simpa [Seg31.relationRow39] using r39
  have hacc39 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc39 (rho 29271 : Seg31.F)
      (seg31AccX38 rho : Seg31.F) (seg31AccY38 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc39] using hp38
  have hr39 : RvkFixedBaseLadder.FixedStepRel 39 (rho 29310)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX38 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY38 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX39 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY39 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc39, seg31AccX39, seg31AccY39, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung39_wide (rho 29271 : Seg31.F) (rho 29310 : Seg31.F) (seg31AccX38 rho : Seg31.F) (seg31AccY38 rho : Seg31.F) (rho 29712 : Seg31.F) (rho 29713 : Seg31.F) (rho 29714 : Seg31.F) (rho 29715 : Seg31.F) (rho 29716 : Seg31.F) hacc39
        (by simpa using seg31_prefix_39_v2 rho r442)
        (by simpa using seg31_prefix_39_addX rho r443)
        (by simpa using seg31_prefix_39_addY rho r444)
        (by simpa using seg31_prefix_39_selX rho r445)
        (by simpa using seg31_prefix_39_selY rho r446)
        hbrow39
  obtain ⟨b39, hb39⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29310) hbrow39
  have hrb39 : RvkFixedBaseLadder.FixedStepRel 39 (toZMod b39)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX38 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY38 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX39 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY39 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb39]
    exact hr39
  have hp39 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX39 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY39 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 39 b39 _ _ hp38 hrb39).2
  have hbrow40 : (1*(rho 29311))*(1 + (-1)*(rho 29311)) = 0 := by
    simpa [Seg31.relationRow40] using r40
  have hacc40 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc40 (rho 29271 : Seg31.F)
      (seg31AccX39 rho : Seg31.F) (seg31AccY39 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc40] using hp39
  have hr40 : RvkFixedBaseLadder.FixedStepRel 40 (rho 29311)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX39 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY39 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX40 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY40 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc40, seg31AccX40, seg31AccY40, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung40_wide (rho 29271 : Seg31.F) (rho 29311 : Seg31.F) (seg31AccX39 rho : Seg31.F) (seg31AccY39 rho : Seg31.F) (rho 29717 : Seg31.F) (rho 29718 : Seg31.F) (rho 29719 : Seg31.F) (rho 29720 : Seg31.F) (rho 29721 : Seg31.F) hacc40
        (by simpa using seg31_prefix_40_v2 rho r447)
        (by simpa using seg31_prefix_40_addX rho r448)
        (by simpa using seg31_prefix_40_addY rho r449)
        (by simpa using seg31_prefix_40_selX rho r450)
        (by simpa using seg31_prefix_40_selY rho r451)
        hbrow40
  obtain ⟨b40, hb40⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29311) hbrow40
  have hrb40 : RvkFixedBaseLadder.FixedStepRel 40 (toZMod b40)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX39 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY39 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX40 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY40 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb40]
    exact hr40
  have hp40 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX40 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY40 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 40 b40 _ _ hp39 hrb40).2
  exact hp40

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


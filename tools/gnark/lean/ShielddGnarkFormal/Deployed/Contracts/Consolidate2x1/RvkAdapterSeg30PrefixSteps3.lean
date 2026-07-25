import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas3
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

theorem seg30_prefix_steps3 (rho : Nat -> Seg30.F)
    (hp30 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX30 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY30 rho : Seg30.F)⟩ : EdwardsBridge.Point))
    (r31 : Seg30.relationRow31 rho)
    (r402 : Seg30.relationRow402 rho)
    (r403 : Seg30.relationRow403 rho)
    (r404 : Seg30.relationRow404 rho)
    (r405 : Seg30.relationRow405 rho)
    (r406 : Seg30.relationRow406 rho)
    (r32 : Seg30.relationRow32 rho)
    (r407 : Seg30.relationRow407 rho)
    (r408 : Seg30.relationRow408 rho)
    (r409 : Seg30.relationRow409 rho)
    (r410 : Seg30.relationRow410 rho)
    (r411 : Seg30.relationRow411 rho)
    (r33 : Seg30.relationRow33 rho)
    (r412 : Seg30.relationRow412 rho)
    (r413 : Seg30.relationRow413 rho)
    (r414 : Seg30.relationRow414 rho)
    (r415 : Seg30.relationRow415 rho)
    (r416 : Seg30.relationRow416 rho)
    (r34 : Seg30.relationRow34 rho)
    (r417 : Seg30.relationRow417 rho)
    (r418 : Seg30.relationRow418 rho)
    (r419 : Seg30.relationRow419 rho)
    (r420 : Seg30.relationRow420 rho)
    (r421 : Seg30.relationRow421 rho)
    (r35 : Seg30.relationRow35 rho)
    (r422 : Seg30.relationRow422 rho)
    (r423 : Seg30.relationRow423 rho)
    (r424 : Seg30.relationRow424 rho)
    (r425 : Seg30.relationRow425 rho)
    (r426 : Seg30.relationRow426 rho)
    (r36 : Seg30.relationRow36 rho)
    (r427 : Seg30.relationRow427 rho)
    (r428 : Seg30.relationRow428 rho)
    (r429 : Seg30.relationRow429 rho)
    (r430 : Seg30.relationRow430 rho)
    (r431 : Seg30.relationRow431 rho)
    (r37 : Seg30.relationRow37 rho)
    (r432 : Seg30.relationRow432 rho)
    (r433 : Seg30.relationRow433 rho)
    (r434 : Seg30.relationRow434 rho)
    (r435 : Seg30.relationRow435 rho)
    (r436 : Seg30.relationRow436 rho)
    (r38 : Seg30.relationRow38 rho)
    (r437 : Seg30.relationRow437 rho)
    (r438 : Seg30.relationRow438 rho)
    (r439 : Seg30.relationRow439 rho)
    (r440 : Seg30.relationRow440 rho)
    (r441 : Seg30.relationRow441 rho)
    (r39 : Seg30.relationRow39 rho)
    (r442 : Seg30.relationRow442 rho)
    (r443 : Seg30.relationRow443 rho)
    (r444 : Seg30.relationRow444 rho)
    (r445 : Seg30.relationRow445 rho)
    (r446 : Seg30.relationRow446 rho)
    (r40 : Seg30.relationRow40 rho)
    (r447 : Seg30.relationRow447 rho)
    (r448 : Seg30.relationRow448 rho)
    (r449 : Seg30.relationRow449 rho)
    (r450 : Seg30.relationRow450 rho)
    (r451 : Seg30.relationRow451 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX40 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY40 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
  have hbrow31 : (1*(rho 28348))*(1 + (-1)*(rho 28348)) = 0 := by
    simpa [Seg30.relationRow31] using r31
  have hacc31 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc31 (rho 28317 : Seg30.F)
      (seg30AccX30 rho : Seg30.F) (seg30AccY30 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc31] using hp30
  have hr31 : RvkFixedBaseLadder.FixedStepRel 31 (rho 28348)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX30 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY30 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX31 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY31 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc31, seg30AccX31, seg30AccY31, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung31_wide (rho 28317 : Seg30.F) (rho 28348 : Seg30.F) (seg30AccX30 rho : Seg30.F) (seg30AccY30 rho : Seg30.F) (rho 28718 : Seg30.F) (rho 28719 : Seg30.F) (rho 28720 : Seg30.F) (rho 28721 : Seg30.F) (rho 28722 : Seg30.F) hacc31
        (by simpa using seg30_prefix_31_v2 rho r402)
        (by simpa using seg30_prefix_31_addX rho r403)
        (by simpa using seg30_prefix_31_addY rho r404)
        (by simpa using seg30_prefix_31_selX rho r405)
        (by simpa using seg30_prefix_31_selY rho r406)
        hbrow31
  obtain ⟨b31, hb31⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28348) hbrow31
  have hrb31 : RvkFixedBaseLadder.FixedStepRel 31 (toZMod b31)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX30 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY30 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX31 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY31 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb31]
    exact hr31
  have hp31 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX31 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY31 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 31 b31 _ _ hp30 hrb31).2
  have hbrow32 : (1*(rho 28349))*(1 + (-1)*(rho 28349)) = 0 := by
    simpa [Seg30.relationRow32] using r32
  have hacc32 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc32 (rho 28317 : Seg30.F)
      (seg30AccX31 rho : Seg30.F) (seg30AccY31 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc32] using hp31
  have hr32 : RvkFixedBaseLadder.FixedStepRel 32 (rho 28349)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX31 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY31 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX32 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY32 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc32, seg30AccX32, seg30AccY32, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung32_wide (rho 28317 : Seg30.F) (rho 28349 : Seg30.F) (seg30AccX31 rho : Seg30.F) (seg30AccY31 rho : Seg30.F) (rho 28723 : Seg30.F) (rho 28724 : Seg30.F) (rho 28725 : Seg30.F) (rho 28726 : Seg30.F) (rho 28727 : Seg30.F) hacc32
        (by simpa using seg30_prefix_32_v2 rho r407)
        (by simpa using seg30_prefix_32_addX rho r408)
        (by simpa using seg30_prefix_32_addY rho r409)
        (by simpa using seg30_prefix_32_selX rho r410)
        (by simpa using seg30_prefix_32_selY rho r411)
        hbrow32
  obtain ⟨b32, hb32⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28349) hbrow32
  have hrb32 : RvkFixedBaseLadder.FixedStepRel 32 (toZMod b32)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX31 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY31 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX32 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY32 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb32]
    exact hr32
  have hp32 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX32 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY32 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 32 b32 _ _ hp31 hrb32).2
  have hbrow33 : (1*(rho 28350))*(1 + (-1)*(rho 28350)) = 0 := by
    simpa [Seg30.relationRow33] using r33
  have hacc33 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc33 (rho 28317 : Seg30.F)
      (seg30AccX32 rho : Seg30.F) (seg30AccY32 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc33] using hp32
  have hr33 : RvkFixedBaseLadder.FixedStepRel 33 (rho 28350)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX32 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY32 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX33 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY33 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc33, seg30AccX33, seg30AccY33, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung33_wide (rho 28317 : Seg30.F) (rho 28350 : Seg30.F) (seg30AccX32 rho : Seg30.F) (seg30AccY32 rho : Seg30.F) (rho 28728 : Seg30.F) (rho 28729 : Seg30.F) (rho 28730 : Seg30.F) (rho 28731 : Seg30.F) (rho 28732 : Seg30.F) hacc33
        (by simpa using seg30_prefix_33_v2 rho r412)
        (by simpa using seg30_prefix_33_addX rho r413)
        (by simpa using seg30_prefix_33_addY rho r414)
        (by simpa using seg30_prefix_33_selX rho r415)
        (by simpa using seg30_prefix_33_selY rho r416)
        hbrow33
  obtain ⟨b33, hb33⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28350) hbrow33
  have hrb33 : RvkFixedBaseLadder.FixedStepRel 33 (toZMod b33)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX32 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY32 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX33 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY33 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb33]
    exact hr33
  have hp33 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX33 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY33 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 33 b33 _ _ hp32 hrb33).2
  have hbrow34 : (1*(rho 28351))*(1 + (-1)*(rho 28351)) = 0 := by
    simpa [Seg30.relationRow34] using r34
  have hacc34 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc34 (rho 28317 : Seg30.F)
      (seg30AccX33 rho : Seg30.F) (seg30AccY33 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc34] using hp33
  have hr34 : RvkFixedBaseLadder.FixedStepRel 34 (rho 28351)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX33 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY33 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX34 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY34 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc34, seg30AccX34, seg30AccY34, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung34_wide (rho 28317 : Seg30.F) (rho 28351 : Seg30.F) (seg30AccX33 rho : Seg30.F) (seg30AccY33 rho : Seg30.F) (rho 28733 : Seg30.F) (rho 28734 : Seg30.F) (rho 28735 : Seg30.F) (rho 28736 : Seg30.F) (rho 28737 : Seg30.F) hacc34
        (by simpa using seg30_prefix_34_v2 rho r417)
        (by simpa using seg30_prefix_34_addX rho r418)
        (by simpa using seg30_prefix_34_addY rho r419)
        (by simpa using seg30_prefix_34_selX rho r420)
        (by simpa using seg30_prefix_34_selY rho r421)
        hbrow34
  obtain ⟨b34, hb34⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28351) hbrow34
  have hrb34 : RvkFixedBaseLadder.FixedStepRel 34 (toZMod b34)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX33 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY33 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX34 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY34 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb34]
    exact hr34
  have hp34 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX34 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY34 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 34 b34 _ _ hp33 hrb34).2
  have hbrow35 : (1*(rho 28352))*(1 + (-1)*(rho 28352)) = 0 := by
    simpa [Seg30.relationRow35] using r35
  have hacc35 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc35 (rho 28317 : Seg30.F)
      (seg30AccX34 rho : Seg30.F) (seg30AccY34 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc35] using hp34
  have hr35 : RvkFixedBaseLadder.FixedStepRel 35 (rho 28352)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX34 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY34 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX35 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY35 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc35, seg30AccX35, seg30AccY35, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung35_wide (rho 28317 : Seg30.F) (rho 28352 : Seg30.F) (seg30AccX34 rho : Seg30.F) (seg30AccY34 rho : Seg30.F) (rho 28738 : Seg30.F) (rho 28739 : Seg30.F) (rho 28740 : Seg30.F) (rho 28741 : Seg30.F) (rho 28742 : Seg30.F) hacc35
        (by simpa using seg30_prefix_35_v2 rho r422)
        (by simpa using seg30_prefix_35_addX rho r423)
        (by simpa using seg30_prefix_35_addY rho r424)
        (by simpa using seg30_prefix_35_selX rho r425)
        (by simpa using seg30_prefix_35_selY rho r426)
        hbrow35
  obtain ⟨b35, hb35⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28352) hbrow35
  have hrb35 : RvkFixedBaseLadder.FixedStepRel 35 (toZMod b35)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX34 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY34 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX35 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY35 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb35]
    exact hr35
  have hp35 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX35 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY35 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 35 b35 _ _ hp34 hrb35).2
  have hbrow36 : (1*(rho 28353))*(1 + (-1)*(rho 28353)) = 0 := by
    simpa [Seg30.relationRow36] using r36
  have hacc36 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc36 (rho 28317 : Seg30.F)
      (seg30AccX35 rho : Seg30.F) (seg30AccY35 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc36] using hp35
  have hr36 : RvkFixedBaseLadder.FixedStepRel 36 (rho 28353)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX35 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY35 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX36 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY36 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc36, seg30AccX36, seg30AccY36, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung36_wide (rho 28317 : Seg30.F) (rho 28353 : Seg30.F) (seg30AccX35 rho : Seg30.F) (seg30AccY35 rho : Seg30.F) (rho 28743 : Seg30.F) (rho 28744 : Seg30.F) (rho 28745 : Seg30.F) (rho 28746 : Seg30.F) (rho 28747 : Seg30.F) hacc36
        (by simpa using seg30_prefix_36_v2 rho r427)
        (by simpa using seg30_prefix_36_addX rho r428)
        (by simpa using seg30_prefix_36_addY rho r429)
        (by simpa using seg30_prefix_36_selX rho r430)
        (by simpa using seg30_prefix_36_selY rho r431)
        hbrow36
  obtain ⟨b36, hb36⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28353) hbrow36
  have hrb36 : RvkFixedBaseLadder.FixedStepRel 36 (toZMod b36)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX35 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY35 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX36 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY36 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb36]
    exact hr36
  have hp36 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX36 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY36 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 36 b36 _ _ hp35 hrb36).2
  have hbrow37 : (1*(rho 28354))*(1 + (-1)*(rho 28354)) = 0 := by
    simpa [Seg30.relationRow37] using r37
  have hacc37 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc37 (rho 28317 : Seg30.F)
      (seg30AccX36 rho : Seg30.F) (seg30AccY36 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc37] using hp36
  have hr37 : RvkFixedBaseLadder.FixedStepRel 37 (rho 28354)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX36 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY36 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX37 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY37 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc37, seg30AccX37, seg30AccY37, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung37_wide (rho 28317 : Seg30.F) (rho 28354 : Seg30.F) (seg30AccX36 rho : Seg30.F) (seg30AccY36 rho : Seg30.F) (rho 28748 : Seg30.F) (rho 28749 : Seg30.F) (rho 28750 : Seg30.F) (rho 28751 : Seg30.F) (rho 28752 : Seg30.F) hacc37
        (by simpa using seg30_prefix_37_v2 rho r432)
        (by simpa using seg30_prefix_37_addX rho r433)
        (by simpa using seg30_prefix_37_addY rho r434)
        (by simpa using seg30_prefix_37_selX rho r435)
        (by simpa using seg30_prefix_37_selY rho r436)
        hbrow37
  obtain ⟨b37, hb37⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28354) hbrow37
  have hrb37 : RvkFixedBaseLadder.FixedStepRel 37 (toZMod b37)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX36 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY36 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX37 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY37 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb37]
    exact hr37
  have hp37 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX37 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY37 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 37 b37 _ _ hp36 hrb37).2
  have hbrow38 : (1*(rho 28355))*(1 + (-1)*(rho 28355)) = 0 := by
    simpa [Seg30.relationRow38] using r38
  have hacc38 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc38 (rho 28317 : Seg30.F)
      (seg30AccX37 rho : Seg30.F) (seg30AccY37 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc38] using hp37
  have hr38 : RvkFixedBaseLadder.FixedStepRel 38 (rho 28355)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX37 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY37 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX38 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY38 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc38, seg30AccX38, seg30AccY38, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung38_wide (rho 28317 : Seg30.F) (rho 28355 : Seg30.F) (seg30AccX37 rho : Seg30.F) (seg30AccY37 rho : Seg30.F) (rho 28753 : Seg30.F) (rho 28754 : Seg30.F) (rho 28755 : Seg30.F) (rho 28756 : Seg30.F) (rho 28757 : Seg30.F) hacc38
        (by simpa using seg30_prefix_38_v2 rho r437)
        (by simpa using seg30_prefix_38_addX rho r438)
        (by simpa using seg30_prefix_38_addY rho r439)
        (by simpa using seg30_prefix_38_selX rho r440)
        (by simpa using seg30_prefix_38_selY rho r441)
        hbrow38
  obtain ⟨b38, hb38⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28355) hbrow38
  have hrb38 : RvkFixedBaseLadder.FixedStepRel 38 (toZMod b38)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX37 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY37 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX38 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY38 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb38]
    exact hr38
  have hp38 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX38 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY38 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 38 b38 _ _ hp37 hrb38).2
  have hbrow39 : (1*(rho 28356))*(1 + (-1)*(rho 28356)) = 0 := by
    simpa [Seg30.relationRow39] using r39
  have hacc39 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc39 (rho 28317 : Seg30.F)
      (seg30AccX38 rho : Seg30.F) (seg30AccY38 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc39] using hp38
  have hr39 : RvkFixedBaseLadder.FixedStepRel 39 (rho 28356)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX38 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY38 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX39 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY39 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc39, seg30AccX39, seg30AccY39, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung39_wide (rho 28317 : Seg30.F) (rho 28356 : Seg30.F) (seg30AccX38 rho : Seg30.F) (seg30AccY38 rho : Seg30.F) (rho 28758 : Seg30.F) (rho 28759 : Seg30.F) (rho 28760 : Seg30.F) (rho 28761 : Seg30.F) (rho 28762 : Seg30.F) hacc39
        (by simpa using seg30_prefix_39_v2 rho r442)
        (by simpa using seg30_prefix_39_addX rho r443)
        (by simpa using seg30_prefix_39_addY rho r444)
        (by simpa using seg30_prefix_39_selX rho r445)
        (by simpa using seg30_prefix_39_selY rho r446)
        hbrow39
  obtain ⟨b39, hb39⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28356) hbrow39
  have hrb39 : RvkFixedBaseLadder.FixedStepRel 39 (toZMod b39)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX38 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY38 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX39 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY39 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb39]
    exact hr39
  have hp39 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX39 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY39 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 39 b39 _ _ hp38 hrb39).2
  have hbrow40 : (1*(rho 28357))*(1 + (-1)*(rho 28357)) = 0 := by
    simpa [Seg30.relationRow40] using r40
  have hacc40 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc40 (rho 28317 : Seg30.F)
      (seg30AccX39 rho : Seg30.F) (seg30AccY39 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc40] using hp39
  have hr40 : RvkFixedBaseLadder.FixedStepRel 40 (rho 28357)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX39 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY39 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX40 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY40 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc40, seg30AccX40, seg30AccY40, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung40_wide (rho 28317 : Seg30.F) (rho 28357 : Seg30.F) (seg30AccX39 rho : Seg30.F) (seg30AccY39 rho : Seg30.F) (rho 28763 : Seg30.F) (rho 28764 : Seg30.F) (rho 28765 : Seg30.F) (rho 28766 : Seg30.F) (rho 28767 : Seg30.F) hacc40
        (by simpa using seg30_prefix_40_v2 rho r447)
        (by simpa using seg30_prefix_40_addX rho r448)
        (by simpa using seg30_prefix_40_addY rho r449)
        (by simpa using seg30_prefix_40_selX rho r450)
        (by simpa using seg30_prefix_40_selY rho r451)
        hbrow40
  obtain ⟨b40, hb40⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28357) hbrow40
  have hrb40 : RvkFixedBaseLadder.FixedStepRel 40 (toZMod b40)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX39 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY39 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX40 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY40 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb40]
    exact hr40
  have hp40 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX40 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY40 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 40 b40 _ _ hp39 hrb40).2
  exact hp40

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


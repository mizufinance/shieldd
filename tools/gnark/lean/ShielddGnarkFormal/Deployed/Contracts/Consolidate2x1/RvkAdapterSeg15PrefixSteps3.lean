import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas3
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

theorem seg15_prefix_steps3 (rho : Nat -> Seg15.F)
    (hp30 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX30 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY30 rho : Seg15.F)⟩ : EdwardsBridge.Point))
    (r31 : Seg15.relationRow31 rho)
    (r402 : Seg15.relationRow402 rho)
    (r403 : Seg15.relationRow403 rho)
    (r404 : Seg15.relationRow404 rho)
    (r405 : Seg15.relationRow405 rho)
    (r406 : Seg15.relationRow406 rho)
    (r32 : Seg15.relationRow32 rho)
    (r407 : Seg15.relationRow407 rho)
    (r408 : Seg15.relationRow408 rho)
    (r409 : Seg15.relationRow409 rho)
    (r410 : Seg15.relationRow410 rho)
    (r411 : Seg15.relationRow411 rho)
    (r33 : Seg15.relationRow33 rho)
    (r412 : Seg15.relationRow412 rho)
    (r413 : Seg15.relationRow413 rho)
    (r414 : Seg15.relationRow414 rho)
    (r415 : Seg15.relationRow415 rho)
    (r416 : Seg15.relationRow416 rho)
    (r34 : Seg15.relationRow34 rho)
    (r417 : Seg15.relationRow417 rho)
    (r418 : Seg15.relationRow418 rho)
    (r419 : Seg15.relationRow419 rho)
    (r420 : Seg15.relationRow420 rho)
    (r421 : Seg15.relationRow421 rho)
    (r35 : Seg15.relationRow35 rho)
    (r422 : Seg15.relationRow422 rho)
    (r423 : Seg15.relationRow423 rho)
    (r424 : Seg15.relationRow424 rho)
    (r425 : Seg15.relationRow425 rho)
    (r426 : Seg15.relationRow426 rho)
    (r36 : Seg15.relationRow36 rho)
    (r427 : Seg15.relationRow427 rho)
    (r428 : Seg15.relationRow428 rho)
    (r429 : Seg15.relationRow429 rho)
    (r430 : Seg15.relationRow430 rho)
    (r431 : Seg15.relationRow431 rho)
    (r37 : Seg15.relationRow37 rho)
    (r432 : Seg15.relationRow432 rho)
    (r433 : Seg15.relationRow433 rho)
    (r434 : Seg15.relationRow434 rho)
    (r435 : Seg15.relationRow435 rho)
    (r436 : Seg15.relationRow436 rho)
    (r38 : Seg15.relationRow38 rho)
    (r437 : Seg15.relationRow437 rho)
    (r438 : Seg15.relationRow438 rho)
    (r439 : Seg15.relationRow439 rho)
    (r440 : Seg15.relationRow440 rho)
    (r441 : Seg15.relationRow441 rho)
    (r39 : Seg15.relationRow39 rho)
    (r442 : Seg15.relationRow442 rho)
    (r443 : Seg15.relationRow443 rho)
    (r444 : Seg15.relationRow444 rho)
    (r445 : Seg15.relationRow445 rho)
    (r446 : Seg15.relationRow446 rho)
    (r40 : Seg15.relationRow40 rho)
    (r447 : Seg15.relationRow447 rho)
    (r448 : Seg15.relationRow448 rho)
    (r449 : Seg15.relationRow449 rho)
    (r450 : Seg15.relationRow450 rho)
    (r451 : Seg15.relationRow451 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX40 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY40 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
  have hbrow31 : (1*(rho 16418))*(1 + (-1)*(rho 16418)) = 0 := by
    simpa [Seg15.relationRow31] using r31
  have hacc31 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc31 (rho 16387 : Seg15.F)
      (seg15AccX30 rho : Seg15.F) (seg15AccY30 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc31] using hp30
  have hr31 : RvkFixedBaseLadder.FixedStepRel 31 (rho 16418)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX30 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY30 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX31 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY31 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc31, seg15AccX31, seg15AccY31, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung31_wide (rho 16387 : Seg15.F) (rho 16418 : Seg15.F) (seg15AccX30 rho : Seg15.F) (seg15AccY30 rho : Seg15.F) (rho 16788 : Seg15.F) (rho 16789 : Seg15.F) (rho 16790 : Seg15.F) (rho 16791 : Seg15.F) (rho 16792 : Seg15.F) hacc31
        (by simpa using seg15_prefix_31_v2 rho r402)
        (by simpa using seg15_prefix_31_addX rho r403)
        (by simpa using seg15_prefix_31_addY rho r404)
        (by simpa using seg15_prefix_31_selX rho r405)
        (by simpa using seg15_prefix_31_selY rho r406)
        hbrow31
  obtain ⟨b31, hb31⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16418) hbrow31
  have hrb31 : RvkFixedBaseLadder.FixedStepRel 31 (toZMod b31)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX30 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY30 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX31 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY31 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb31]
    exact hr31
  have hp31 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX31 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY31 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 31 b31 _ _ hp30 hrb31).2
  have hbrow32 : (1*(rho 16419))*(1 + (-1)*(rho 16419)) = 0 := by
    simpa [Seg15.relationRow32] using r32
  have hacc32 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc32 (rho 16387 : Seg15.F)
      (seg15AccX31 rho : Seg15.F) (seg15AccY31 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc32] using hp31
  have hr32 : RvkFixedBaseLadder.FixedStepRel 32 (rho 16419)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX31 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY31 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX32 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY32 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc32, seg15AccX32, seg15AccY32, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung32_wide (rho 16387 : Seg15.F) (rho 16419 : Seg15.F) (seg15AccX31 rho : Seg15.F) (seg15AccY31 rho : Seg15.F) (rho 16793 : Seg15.F) (rho 16794 : Seg15.F) (rho 16795 : Seg15.F) (rho 16796 : Seg15.F) (rho 16797 : Seg15.F) hacc32
        (by simpa using seg15_prefix_32_v2 rho r407)
        (by simpa using seg15_prefix_32_addX rho r408)
        (by simpa using seg15_prefix_32_addY rho r409)
        (by simpa using seg15_prefix_32_selX rho r410)
        (by simpa using seg15_prefix_32_selY rho r411)
        hbrow32
  obtain ⟨b32, hb32⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16419) hbrow32
  have hrb32 : RvkFixedBaseLadder.FixedStepRel 32 (toZMod b32)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX31 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY31 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX32 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY32 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb32]
    exact hr32
  have hp32 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX32 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY32 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 32 b32 _ _ hp31 hrb32).2
  have hbrow33 : (1*(rho 16420))*(1 + (-1)*(rho 16420)) = 0 := by
    simpa [Seg15.relationRow33] using r33
  have hacc33 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc33 (rho 16387 : Seg15.F)
      (seg15AccX32 rho : Seg15.F) (seg15AccY32 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc33] using hp32
  have hr33 : RvkFixedBaseLadder.FixedStepRel 33 (rho 16420)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX32 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY32 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX33 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY33 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc33, seg15AccX33, seg15AccY33, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung33_wide (rho 16387 : Seg15.F) (rho 16420 : Seg15.F) (seg15AccX32 rho : Seg15.F) (seg15AccY32 rho : Seg15.F) (rho 16798 : Seg15.F) (rho 16799 : Seg15.F) (rho 16800 : Seg15.F) (rho 16801 : Seg15.F) (rho 16802 : Seg15.F) hacc33
        (by simpa using seg15_prefix_33_v2 rho r412)
        (by simpa using seg15_prefix_33_addX rho r413)
        (by simpa using seg15_prefix_33_addY rho r414)
        (by simpa using seg15_prefix_33_selX rho r415)
        (by simpa using seg15_prefix_33_selY rho r416)
        hbrow33
  obtain ⟨b33, hb33⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16420) hbrow33
  have hrb33 : RvkFixedBaseLadder.FixedStepRel 33 (toZMod b33)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX32 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY32 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX33 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY33 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb33]
    exact hr33
  have hp33 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX33 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY33 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 33 b33 _ _ hp32 hrb33).2
  have hbrow34 : (1*(rho 16421))*(1 + (-1)*(rho 16421)) = 0 := by
    simpa [Seg15.relationRow34] using r34
  have hacc34 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc34 (rho 16387 : Seg15.F)
      (seg15AccX33 rho : Seg15.F) (seg15AccY33 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc34] using hp33
  have hr34 : RvkFixedBaseLadder.FixedStepRel 34 (rho 16421)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX33 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY33 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX34 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY34 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc34, seg15AccX34, seg15AccY34, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung34_wide (rho 16387 : Seg15.F) (rho 16421 : Seg15.F) (seg15AccX33 rho : Seg15.F) (seg15AccY33 rho : Seg15.F) (rho 16803 : Seg15.F) (rho 16804 : Seg15.F) (rho 16805 : Seg15.F) (rho 16806 : Seg15.F) (rho 16807 : Seg15.F) hacc34
        (by simpa using seg15_prefix_34_v2 rho r417)
        (by simpa using seg15_prefix_34_addX rho r418)
        (by simpa using seg15_prefix_34_addY rho r419)
        (by simpa using seg15_prefix_34_selX rho r420)
        (by simpa using seg15_prefix_34_selY rho r421)
        hbrow34
  obtain ⟨b34, hb34⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16421) hbrow34
  have hrb34 : RvkFixedBaseLadder.FixedStepRel 34 (toZMod b34)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX33 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY33 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX34 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY34 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb34]
    exact hr34
  have hp34 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX34 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY34 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 34 b34 _ _ hp33 hrb34).2
  have hbrow35 : (1*(rho 16422))*(1 + (-1)*(rho 16422)) = 0 := by
    simpa [Seg15.relationRow35] using r35
  have hacc35 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc35 (rho 16387 : Seg15.F)
      (seg15AccX34 rho : Seg15.F) (seg15AccY34 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc35] using hp34
  have hr35 : RvkFixedBaseLadder.FixedStepRel 35 (rho 16422)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX34 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY34 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX35 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY35 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc35, seg15AccX35, seg15AccY35, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung35_wide (rho 16387 : Seg15.F) (rho 16422 : Seg15.F) (seg15AccX34 rho : Seg15.F) (seg15AccY34 rho : Seg15.F) (rho 16808 : Seg15.F) (rho 16809 : Seg15.F) (rho 16810 : Seg15.F) (rho 16811 : Seg15.F) (rho 16812 : Seg15.F) hacc35
        (by simpa using seg15_prefix_35_v2 rho r422)
        (by simpa using seg15_prefix_35_addX rho r423)
        (by simpa using seg15_prefix_35_addY rho r424)
        (by simpa using seg15_prefix_35_selX rho r425)
        (by simpa using seg15_prefix_35_selY rho r426)
        hbrow35
  obtain ⟨b35, hb35⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16422) hbrow35
  have hrb35 : RvkFixedBaseLadder.FixedStepRel 35 (toZMod b35)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX34 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY34 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX35 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY35 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb35]
    exact hr35
  have hp35 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX35 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY35 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 35 b35 _ _ hp34 hrb35).2
  have hbrow36 : (1*(rho 16423))*(1 + (-1)*(rho 16423)) = 0 := by
    simpa [Seg15.relationRow36] using r36
  have hacc36 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc36 (rho 16387 : Seg15.F)
      (seg15AccX35 rho : Seg15.F) (seg15AccY35 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc36] using hp35
  have hr36 : RvkFixedBaseLadder.FixedStepRel 36 (rho 16423)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX35 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY35 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX36 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY36 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc36, seg15AccX36, seg15AccY36, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung36_wide (rho 16387 : Seg15.F) (rho 16423 : Seg15.F) (seg15AccX35 rho : Seg15.F) (seg15AccY35 rho : Seg15.F) (rho 16813 : Seg15.F) (rho 16814 : Seg15.F) (rho 16815 : Seg15.F) (rho 16816 : Seg15.F) (rho 16817 : Seg15.F) hacc36
        (by simpa using seg15_prefix_36_v2 rho r427)
        (by simpa using seg15_prefix_36_addX rho r428)
        (by simpa using seg15_prefix_36_addY rho r429)
        (by simpa using seg15_prefix_36_selX rho r430)
        (by simpa using seg15_prefix_36_selY rho r431)
        hbrow36
  obtain ⟨b36, hb36⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16423) hbrow36
  have hrb36 : RvkFixedBaseLadder.FixedStepRel 36 (toZMod b36)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX35 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY35 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX36 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY36 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb36]
    exact hr36
  have hp36 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX36 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY36 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 36 b36 _ _ hp35 hrb36).2
  have hbrow37 : (1*(rho 16424))*(1 + (-1)*(rho 16424)) = 0 := by
    simpa [Seg15.relationRow37] using r37
  have hacc37 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc37 (rho 16387 : Seg15.F)
      (seg15AccX36 rho : Seg15.F) (seg15AccY36 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc37] using hp36
  have hr37 : RvkFixedBaseLadder.FixedStepRel 37 (rho 16424)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX36 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY36 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX37 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY37 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc37, seg15AccX37, seg15AccY37, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung37_wide (rho 16387 : Seg15.F) (rho 16424 : Seg15.F) (seg15AccX36 rho : Seg15.F) (seg15AccY36 rho : Seg15.F) (rho 16818 : Seg15.F) (rho 16819 : Seg15.F) (rho 16820 : Seg15.F) (rho 16821 : Seg15.F) (rho 16822 : Seg15.F) hacc37
        (by simpa using seg15_prefix_37_v2 rho r432)
        (by simpa using seg15_prefix_37_addX rho r433)
        (by simpa using seg15_prefix_37_addY rho r434)
        (by simpa using seg15_prefix_37_selX rho r435)
        (by simpa using seg15_prefix_37_selY rho r436)
        hbrow37
  obtain ⟨b37, hb37⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16424) hbrow37
  have hrb37 : RvkFixedBaseLadder.FixedStepRel 37 (toZMod b37)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX36 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY36 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX37 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY37 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb37]
    exact hr37
  have hp37 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX37 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY37 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 37 b37 _ _ hp36 hrb37).2
  have hbrow38 : (1*(rho 16425))*(1 + (-1)*(rho 16425)) = 0 := by
    simpa [Seg15.relationRow38] using r38
  have hacc38 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc38 (rho 16387 : Seg15.F)
      (seg15AccX37 rho : Seg15.F) (seg15AccY37 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc38] using hp37
  have hr38 : RvkFixedBaseLadder.FixedStepRel 38 (rho 16425)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX37 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY37 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX38 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY38 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc38, seg15AccX38, seg15AccY38, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung38_wide (rho 16387 : Seg15.F) (rho 16425 : Seg15.F) (seg15AccX37 rho : Seg15.F) (seg15AccY37 rho : Seg15.F) (rho 16823 : Seg15.F) (rho 16824 : Seg15.F) (rho 16825 : Seg15.F) (rho 16826 : Seg15.F) (rho 16827 : Seg15.F) hacc38
        (by simpa using seg15_prefix_38_v2 rho r437)
        (by simpa using seg15_prefix_38_addX rho r438)
        (by simpa using seg15_prefix_38_addY rho r439)
        (by simpa using seg15_prefix_38_selX rho r440)
        (by simpa using seg15_prefix_38_selY rho r441)
        hbrow38
  obtain ⟨b38, hb38⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16425) hbrow38
  have hrb38 : RvkFixedBaseLadder.FixedStepRel 38 (toZMod b38)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX37 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY37 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX38 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY38 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb38]
    exact hr38
  have hp38 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX38 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY38 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 38 b38 _ _ hp37 hrb38).2
  have hbrow39 : (1*(rho 16426))*(1 + (-1)*(rho 16426)) = 0 := by
    simpa [Seg15.relationRow39] using r39
  have hacc39 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc39 (rho 16387 : Seg15.F)
      (seg15AccX38 rho : Seg15.F) (seg15AccY38 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc39] using hp38
  have hr39 : RvkFixedBaseLadder.FixedStepRel 39 (rho 16426)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX38 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY38 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX39 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY39 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc39, seg15AccX39, seg15AccY39, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung39_wide (rho 16387 : Seg15.F) (rho 16426 : Seg15.F) (seg15AccX38 rho : Seg15.F) (seg15AccY38 rho : Seg15.F) (rho 16828 : Seg15.F) (rho 16829 : Seg15.F) (rho 16830 : Seg15.F) (rho 16831 : Seg15.F) (rho 16832 : Seg15.F) hacc39
        (by simpa using seg15_prefix_39_v2 rho r442)
        (by simpa using seg15_prefix_39_addX rho r443)
        (by simpa using seg15_prefix_39_addY rho r444)
        (by simpa using seg15_prefix_39_selX rho r445)
        (by simpa using seg15_prefix_39_selY rho r446)
        hbrow39
  obtain ⟨b39, hb39⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16426) hbrow39
  have hrb39 : RvkFixedBaseLadder.FixedStepRel 39 (toZMod b39)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX38 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY38 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX39 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY39 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb39]
    exact hr39
  have hp39 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX39 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY39 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 39 b39 _ _ hp38 hrb39).2
  have hbrow40 : (1*(rho 16427))*(1 + (-1)*(rho 16427)) = 0 := by
    simpa [Seg15.relationRow40] using r40
  have hacc40 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc40 (rho 16387 : Seg15.F)
      (seg15AccX39 rho : Seg15.F) (seg15AccY39 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc40] using hp39
  have hr40 : RvkFixedBaseLadder.FixedStepRel 40 (rho 16427)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX39 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY39 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX40 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY40 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc40, seg15AccX40, seg15AccY40, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung40_wide (rho 16387 : Seg15.F) (rho 16427 : Seg15.F) (seg15AccX39 rho : Seg15.F) (seg15AccY39 rho : Seg15.F) (rho 16833 : Seg15.F) (rho 16834 : Seg15.F) (rho 16835 : Seg15.F) (rho 16836 : Seg15.F) (rho 16837 : Seg15.F) hacc40
        (by simpa using seg15_prefix_40_v2 rho r447)
        (by simpa using seg15_prefix_40_addX rho r448)
        (by simpa using seg15_prefix_40_addY rho r449)
        (by simpa using seg15_prefix_40_selX rho r450)
        (by simpa using seg15_prefix_40_selY rho r451)
        hbrow40
  obtain ⟨b40, hb40⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16427) hbrow40
  have hrb40 : RvkFixedBaseLadder.FixedStepRel 40 (toZMod b40)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX39 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY39 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX40 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY40 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb40]
    exact hr40
  have hp40 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX40 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY40 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 40 b40 _ _ hp39 hrb40).2
  exact hp40

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


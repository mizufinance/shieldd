import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg13PrefixLemmas3
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

theorem seg13_prefix_steps3 (rho : Nat -> Seg13.F)
    (hp30 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX30 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY30 rho : Seg13.F)⟩ : EdwardsBridge.Point))
    (r31 : Seg13.relationRow31 rho)
    (r402 : Seg13.relationRow402 rho)
    (r403 : Seg13.relationRow403 rho)
    (r404 : Seg13.relationRow404 rho)
    (r405 : Seg13.relationRow405 rho)
    (r406 : Seg13.relationRow406 rho)
    (r32 : Seg13.relationRow32 rho)
    (r407 : Seg13.relationRow407 rho)
    (r408 : Seg13.relationRow408 rho)
    (r409 : Seg13.relationRow409 rho)
    (r410 : Seg13.relationRow410 rho)
    (r411 : Seg13.relationRow411 rho)
    (r33 : Seg13.relationRow33 rho)
    (r412 : Seg13.relationRow412 rho)
    (r413 : Seg13.relationRow413 rho)
    (r414 : Seg13.relationRow414 rho)
    (r415 : Seg13.relationRow415 rho)
    (r416 : Seg13.relationRow416 rho)
    (r34 : Seg13.relationRow34 rho)
    (r417 : Seg13.relationRow417 rho)
    (r418 : Seg13.relationRow418 rho)
    (r419 : Seg13.relationRow419 rho)
    (r420 : Seg13.relationRow420 rho)
    (r421 : Seg13.relationRow421 rho)
    (r35 : Seg13.relationRow35 rho)
    (r422 : Seg13.relationRow422 rho)
    (r423 : Seg13.relationRow423 rho)
    (r424 : Seg13.relationRow424 rho)
    (r425 : Seg13.relationRow425 rho)
    (r426 : Seg13.relationRow426 rho)
    (r36 : Seg13.relationRow36 rho)
    (r427 : Seg13.relationRow427 rho)
    (r428 : Seg13.relationRow428 rho)
    (r429 : Seg13.relationRow429 rho)
    (r430 : Seg13.relationRow430 rho)
    (r431 : Seg13.relationRow431 rho)
    (r37 : Seg13.relationRow37 rho)
    (r432 : Seg13.relationRow432 rho)
    (r433 : Seg13.relationRow433 rho)
    (r434 : Seg13.relationRow434 rho)
    (r435 : Seg13.relationRow435 rho)
    (r436 : Seg13.relationRow436 rho)
    (r38 : Seg13.relationRow38 rho)
    (r437 : Seg13.relationRow437 rho)
    (r438 : Seg13.relationRow438 rho)
    (r439 : Seg13.relationRow439 rho)
    (r440 : Seg13.relationRow440 rho)
    (r441 : Seg13.relationRow441 rho)
    (r39 : Seg13.relationRow39 rho)
    (r442 : Seg13.relationRow442 rho)
    (r443 : Seg13.relationRow443 rho)
    (r444 : Seg13.relationRow444 rho)
    (r445 : Seg13.relationRow445 rho)
    (r446 : Seg13.relationRow446 rho)
    (r40 : Seg13.relationRow40 rho)
    (r447 : Seg13.relationRow447 rho)
    (r448 : Seg13.relationRow448 rho)
    (r449 : Seg13.relationRow449 rho)
    (r450 : Seg13.relationRow450 rho)
    (r451 : Seg13.relationRow451 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX40 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY40 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
  have hbrow31 : (1*(rho 10602))*(1 + (-1)*(rho 10602)) = 0 := by
    simpa [Seg13.relationRow31] using r31
  have hacc31 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc31 (rho 10571 : Seg13.F)
      (seg13AccX30 rho : Seg13.F) (seg13AccY30 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc31] using hp30
  have hr31 : RvkFixedBaseLadder.FixedStepRel 31 (rho 10602)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX30 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY30 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX31 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY31 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc31, seg13AccX31, seg13AccY31, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung31_wide (rho 10571 : Seg13.F) (rho 10602 : Seg13.F) (seg13AccX30 rho : Seg13.F) (seg13AccY30 rho : Seg13.F) (rho 10972 : Seg13.F) (rho 10973 : Seg13.F) (rho 10974 : Seg13.F) (rho 10975 : Seg13.F) (rho 10976 : Seg13.F) hacc31
        (by simpa using seg13_prefix_31_v2 rho r402)
        (by simpa using seg13_prefix_31_addX rho r403)
        (by simpa using seg13_prefix_31_addY rho r404)
        (by simpa using seg13_prefix_31_selX rho r405)
        (by simpa using seg13_prefix_31_selY rho r406)
        hbrow31
  obtain ⟨b31, hb31⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10602) hbrow31
  have hrb31 : RvkFixedBaseLadder.FixedStepRel 31 (toZMod b31)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX30 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY30 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX31 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY31 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb31]
    exact hr31
  have hp31 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX31 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY31 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 31 b31 _ _ hp30 hrb31).2
  have hbrow32 : (1*(rho 10603))*(1 + (-1)*(rho 10603)) = 0 := by
    simpa [Seg13.relationRow32] using r32
  have hacc32 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc32 (rho 10571 : Seg13.F)
      (seg13AccX31 rho : Seg13.F) (seg13AccY31 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc32] using hp31
  have hr32 : RvkFixedBaseLadder.FixedStepRel 32 (rho 10603)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX31 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY31 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX32 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY32 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc32, seg13AccX32, seg13AccY32, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung32_wide (rho 10571 : Seg13.F) (rho 10603 : Seg13.F) (seg13AccX31 rho : Seg13.F) (seg13AccY31 rho : Seg13.F) (rho 10977 : Seg13.F) (rho 10978 : Seg13.F) (rho 10979 : Seg13.F) (rho 10980 : Seg13.F) (rho 10981 : Seg13.F) hacc32
        (by simpa using seg13_prefix_32_v2 rho r407)
        (by simpa using seg13_prefix_32_addX rho r408)
        (by simpa using seg13_prefix_32_addY rho r409)
        (by simpa using seg13_prefix_32_selX rho r410)
        (by simpa using seg13_prefix_32_selY rho r411)
        hbrow32
  obtain ⟨b32, hb32⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10603) hbrow32
  have hrb32 : RvkFixedBaseLadder.FixedStepRel 32 (toZMod b32)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX31 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY31 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX32 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY32 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb32]
    exact hr32
  have hp32 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX32 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY32 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 32 b32 _ _ hp31 hrb32).2
  have hbrow33 : (1*(rho 10604))*(1 + (-1)*(rho 10604)) = 0 := by
    simpa [Seg13.relationRow33] using r33
  have hacc33 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc33 (rho 10571 : Seg13.F)
      (seg13AccX32 rho : Seg13.F) (seg13AccY32 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc33] using hp32
  have hr33 : RvkFixedBaseLadder.FixedStepRel 33 (rho 10604)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX32 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY32 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX33 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY33 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc33, seg13AccX33, seg13AccY33, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung33_wide (rho 10571 : Seg13.F) (rho 10604 : Seg13.F) (seg13AccX32 rho : Seg13.F) (seg13AccY32 rho : Seg13.F) (rho 10982 : Seg13.F) (rho 10983 : Seg13.F) (rho 10984 : Seg13.F) (rho 10985 : Seg13.F) (rho 10986 : Seg13.F) hacc33
        (by simpa using seg13_prefix_33_v2 rho r412)
        (by simpa using seg13_prefix_33_addX rho r413)
        (by simpa using seg13_prefix_33_addY rho r414)
        (by simpa using seg13_prefix_33_selX rho r415)
        (by simpa using seg13_prefix_33_selY rho r416)
        hbrow33
  obtain ⟨b33, hb33⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10604) hbrow33
  have hrb33 : RvkFixedBaseLadder.FixedStepRel 33 (toZMod b33)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX32 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY32 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX33 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY33 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb33]
    exact hr33
  have hp33 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX33 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY33 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 33 b33 _ _ hp32 hrb33).2
  have hbrow34 : (1*(rho 10605))*(1 + (-1)*(rho 10605)) = 0 := by
    simpa [Seg13.relationRow34] using r34
  have hacc34 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc34 (rho 10571 : Seg13.F)
      (seg13AccX33 rho : Seg13.F) (seg13AccY33 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc34] using hp33
  have hr34 : RvkFixedBaseLadder.FixedStepRel 34 (rho 10605)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX33 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY33 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX34 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY34 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc34, seg13AccX34, seg13AccY34, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung34_wide (rho 10571 : Seg13.F) (rho 10605 : Seg13.F) (seg13AccX33 rho : Seg13.F) (seg13AccY33 rho : Seg13.F) (rho 10987 : Seg13.F) (rho 10988 : Seg13.F) (rho 10989 : Seg13.F) (rho 10990 : Seg13.F) (rho 10991 : Seg13.F) hacc34
        (by simpa using seg13_prefix_34_v2 rho r417)
        (by simpa using seg13_prefix_34_addX rho r418)
        (by simpa using seg13_prefix_34_addY rho r419)
        (by simpa using seg13_prefix_34_selX rho r420)
        (by simpa using seg13_prefix_34_selY rho r421)
        hbrow34
  obtain ⟨b34, hb34⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10605) hbrow34
  have hrb34 : RvkFixedBaseLadder.FixedStepRel 34 (toZMod b34)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX33 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY33 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX34 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY34 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb34]
    exact hr34
  have hp34 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX34 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY34 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 34 b34 _ _ hp33 hrb34).2
  have hbrow35 : (1*(rho 10606))*(1 + (-1)*(rho 10606)) = 0 := by
    simpa [Seg13.relationRow35] using r35
  have hacc35 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc35 (rho 10571 : Seg13.F)
      (seg13AccX34 rho : Seg13.F) (seg13AccY34 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc35] using hp34
  have hr35 : RvkFixedBaseLadder.FixedStepRel 35 (rho 10606)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX34 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY34 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX35 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY35 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc35, seg13AccX35, seg13AccY35, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung35_wide (rho 10571 : Seg13.F) (rho 10606 : Seg13.F) (seg13AccX34 rho : Seg13.F) (seg13AccY34 rho : Seg13.F) (rho 10992 : Seg13.F) (rho 10993 : Seg13.F) (rho 10994 : Seg13.F) (rho 10995 : Seg13.F) (rho 10996 : Seg13.F) hacc35
        (by simpa using seg13_prefix_35_v2 rho r422)
        (by simpa using seg13_prefix_35_addX rho r423)
        (by simpa using seg13_prefix_35_addY rho r424)
        (by simpa using seg13_prefix_35_selX rho r425)
        (by simpa using seg13_prefix_35_selY rho r426)
        hbrow35
  obtain ⟨b35, hb35⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10606) hbrow35
  have hrb35 : RvkFixedBaseLadder.FixedStepRel 35 (toZMod b35)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX34 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY34 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX35 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY35 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb35]
    exact hr35
  have hp35 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX35 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY35 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 35 b35 _ _ hp34 hrb35).2
  have hbrow36 : (1*(rho 10607))*(1 + (-1)*(rho 10607)) = 0 := by
    simpa [Seg13.relationRow36] using r36
  have hacc36 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc36 (rho 10571 : Seg13.F)
      (seg13AccX35 rho : Seg13.F) (seg13AccY35 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc36] using hp35
  have hr36 : RvkFixedBaseLadder.FixedStepRel 36 (rho 10607)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX35 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY35 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX36 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY36 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc36, seg13AccX36, seg13AccY36, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung36_wide (rho 10571 : Seg13.F) (rho 10607 : Seg13.F) (seg13AccX35 rho : Seg13.F) (seg13AccY35 rho : Seg13.F) (rho 10997 : Seg13.F) (rho 10998 : Seg13.F) (rho 10999 : Seg13.F) (rho 11000 : Seg13.F) (rho 11001 : Seg13.F) hacc36
        (by simpa using seg13_prefix_36_v2 rho r427)
        (by simpa using seg13_prefix_36_addX rho r428)
        (by simpa using seg13_prefix_36_addY rho r429)
        (by simpa using seg13_prefix_36_selX rho r430)
        (by simpa using seg13_prefix_36_selY rho r431)
        hbrow36
  obtain ⟨b36, hb36⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10607) hbrow36
  have hrb36 : RvkFixedBaseLadder.FixedStepRel 36 (toZMod b36)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX35 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY35 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX36 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY36 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb36]
    exact hr36
  have hp36 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX36 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY36 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 36 b36 _ _ hp35 hrb36).2
  have hbrow37 : (1*(rho 10608))*(1 + (-1)*(rho 10608)) = 0 := by
    simpa [Seg13.relationRow37] using r37
  have hacc37 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc37 (rho 10571 : Seg13.F)
      (seg13AccX36 rho : Seg13.F) (seg13AccY36 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc37] using hp36
  have hr37 : RvkFixedBaseLadder.FixedStepRel 37 (rho 10608)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX36 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY36 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX37 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY37 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc37, seg13AccX37, seg13AccY37, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung37_wide (rho 10571 : Seg13.F) (rho 10608 : Seg13.F) (seg13AccX36 rho : Seg13.F) (seg13AccY36 rho : Seg13.F) (rho 11002 : Seg13.F) (rho 11003 : Seg13.F) (rho 11004 : Seg13.F) (rho 11005 : Seg13.F) (rho 11006 : Seg13.F) hacc37
        (by simpa using seg13_prefix_37_v2 rho r432)
        (by simpa using seg13_prefix_37_addX rho r433)
        (by simpa using seg13_prefix_37_addY rho r434)
        (by simpa using seg13_prefix_37_selX rho r435)
        (by simpa using seg13_prefix_37_selY rho r436)
        hbrow37
  obtain ⟨b37, hb37⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10608) hbrow37
  have hrb37 : RvkFixedBaseLadder.FixedStepRel 37 (toZMod b37)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX36 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY36 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX37 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY37 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb37]
    exact hr37
  have hp37 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX37 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY37 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 37 b37 _ _ hp36 hrb37).2
  have hbrow38 : (1*(rho 10609))*(1 + (-1)*(rho 10609)) = 0 := by
    simpa [Seg13.relationRow38] using r38
  have hacc38 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc38 (rho 10571 : Seg13.F)
      (seg13AccX37 rho : Seg13.F) (seg13AccY37 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc38] using hp37
  have hr38 : RvkFixedBaseLadder.FixedStepRel 38 (rho 10609)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX37 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY37 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX38 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY38 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc38, seg13AccX38, seg13AccY38, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung38_wide (rho 10571 : Seg13.F) (rho 10609 : Seg13.F) (seg13AccX37 rho : Seg13.F) (seg13AccY37 rho : Seg13.F) (rho 11007 : Seg13.F) (rho 11008 : Seg13.F) (rho 11009 : Seg13.F) (rho 11010 : Seg13.F) (rho 11011 : Seg13.F) hacc38
        (by simpa using seg13_prefix_38_v2 rho r437)
        (by simpa using seg13_prefix_38_addX rho r438)
        (by simpa using seg13_prefix_38_addY rho r439)
        (by simpa using seg13_prefix_38_selX rho r440)
        (by simpa using seg13_prefix_38_selY rho r441)
        hbrow38
  obtain ⟨b38, hb38⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10609) hbrow38
  have hrb38 : RvkFixedBaseLadder.FixedStepRel 38 (toZMod b38)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX37 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY37 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX38 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY38 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb38]
    exact hr38
  have hp38 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX38 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY38 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 38 b38 _ _ hp37 hrb38).2
  have hbrow39 : (1*(rho 10610))*(1 + (-1)*(rho 10610)) = 0 := by
    simpa [Seg13.relationRow39] using r39
  have hacc39 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc39 (rho 10571 : Seg13.F)
      (seg13AccX38 rho : Seg13.F) (seg13AccY38 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc39] using hp38
  have hr39 : RvkFixedBaseLadder.FixedStepRel 39 (rho 10610)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX38 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY38 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX39 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY39 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc39, seg13AccX39, seg13AccY39, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung39_wide (rho 10571 : Seg13.F) (rho 10610 : Seg13.F) (seg13AccX38 rho : Seg13.F) (seg13AccY38 rho : Seg13.F) (rho 11012 : Seg13.F) (rho 11013 : Seg13.F) (rho 11014 : Seg13.F) (rho 11015 : Seg13.F) (rho 11016 : Seg13.F) hacc39
        (by simpa using seg13_prefix_39_v2 rho r442)
        (by simpa using seg13_prefix_39_addX rho r443)
        (by simpa using seg13_prefix_39_addY rho r444)
        (by simpa using seg13_prefix_39_selX rho r445)
        (by simpa using seg13_prefix_39_selY rho r446)
        hbrow39
  obtain ⟨b39, hb39⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10610) hbrow39
  have hrb39 : RvkFixedBaseLadder.FixedStepRel 39 (toZMod b39)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX38 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY38 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX39 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY39 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb39]
    exact hr39
  have hp39 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX39 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY39 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 39 b39 _ _ hp38 hrb39).2
  have hbrow40 : (1*(rho 10611))*(1 + (-1)*(rho 10611)) = 0 := by
    simpa [Seg13.relationRow40] using r40
  have hacc40 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc40 (rho 10571 : Seg13.F)
      (seg13AccX39 rho : Seg13.F) (seg13AccY39 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc40] using hp39
  have hr40 : RvkFixedBaseLadder.FixedStepRel 40 (rho 10611)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX39 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY39 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX40 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY40 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc40, seg13AccX40, seg13AccY40, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung40_wide (rho 10571 : Seg13.F) (rho 10611 : Seg13.F) (seg13AccX39 rho : Seg13.F) (seg13AccY39 rho : Seg13.F) (rho 11017 : Seg13.F) (rho 11018 : Seg13.F) (rho 11019 : Seg13.F) (rho 11020 : Seg13.F) (rho 11021 : Seg13.F) hacc40
        (by simpa using seg13_prefix_40_v2 rho r447)
        (by simpa using seg13_prefix_40_addX rho r448)
        (by simpa using seg13_prefix_40_addY rho r449)
        (by simpa using seg13_prefix_40_selX rho r450)
        (by simpa using seg13_prefix_40_selY rho r451)
        hbrow40
  obtain ⟨b40, hb40⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10611) hbrow40
  have hrb40 : RvkFixedBaseLadder.FixedStepRel 40 (toZMod b40)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX39 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY39 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX40 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY40 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb40]
    exact hr40
  have hp40 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX40 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY40 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 40 b40 _ _ hp39 hrb40).2
  exact hp40

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


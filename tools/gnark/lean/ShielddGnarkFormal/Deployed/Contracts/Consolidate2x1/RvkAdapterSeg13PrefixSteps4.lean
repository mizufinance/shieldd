import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg13PrefixLemmas4
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

theorem seg13_prefix_steps4 (rho : Nat -> Seg13.F)
    (hp40 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX40 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY40 rho : Seg13.F)⟩ : EdwardsBridge.Point))
    (r41 : Seg13.relationRow41 rho)
    (r452 : Seg13.relationRow452 rho)
    (r453 : Seg13.relationRow453 rho)
    (r454 : Seg13.relationRow454 rho)
    (r455 : Seg13.relationRow455 rho)
    (r456 : Seg13.relationRow456 rho)
    (r42 : Seg13.relationRow42 rho)
    (r457 : Seg13.relationRow457 rho)
    (r458 : Seg13.relationRow458 rho)
    (r459 : Seg13.relationRow459 rho)
    (r460 : Seg13.relationRow460 rho)
    (r461 : Seg13.relationRow461 rho)
    (r43 : Seg13.relationRow43 rho)
    (r462 : Seg13.relationRow462 rho)
    (r463 : Seg13.relationRow463 rho)
    (r464 : Seg13.relationRow464 rho)
    (r465 : Seg13.relationRow465 rho)
    (r466 : Seg13.relationRow466 rho)
    (r44 : Seg13.relationRow44 rho)
    (r467 : Seg13.relationRow467 rho)
    (r468 : Seg13.relationRow468 rho)
    (r469 : Seg13.relationRow469 rho)
    (r470 : Seg13.relationRow470 rho)
    (r471 : Seg13.relationRow471 rho)
    (r45 : Seg13.relationRow45 rho)
    (r472 : Seg13.relationRow472 rho)
    (r473 : Seg13.relationRow473 rho)
    (r474 : Seg13.relationRow474 rho)
    (r475 : Seg13.relationRow475 rho)
    (r476 : Seg13.relationRow476 rho)
    (r46 : Seg13.relationRow46 rho)
    (r477 : Seg13.relationRow477 rho)
    (r478 : Seg13.relationRow478 rho)
    (r479 : Seg13.relationRow479 rho)
    (r480 : Seg13.relationRow480 rho)
    (r481 : Seg13.relationRow481 rho)
    (r47 : Seg13.relationRow47 rho)
    (r482 : Seg13.relationRow482 rho)
    (r483 : Seg13.relationRow483 rho)
    (r484 : Seg13.relationRow484 rho)
    (r485 : Seg13.relationRow485 rho)
    (r486 : Seg13.relationRow486 rho)
    (r48 : Seg13.relationRow48 rho)
    (r487 : Seg13.relationRow487 rho)
    (r488 : Seg13.relationRow488 rho)
    (r489 : Seg13.relationRow489 rho)
    (r490 : Seg13.relationRow490 rho)
    (r491 : Seg13.relationRow491 rho)
    (r49 : Seg13.relationRow49 rho)
    (r492 : Seg13.relationRow492 rho)
    (r493 : Seg13.relationRow493 rho)
    (r494 : Seg13.relationRow494 rho)
    (r495 : Seg13.relationRow495 rho)
    (r496 : Seg13.relationRow496 rho)
    (r50 : Seg13.relationRow50 rho)
    (r497 : Seg13.relationRow497 rho)
    (r498 : Seg13.relationRow498 rho)
    (r499 : Seg13.relationRow499 rho)
    (r500 : Seg13.relationRow500 rho)
    (r501 : Seg13.relationRow501 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX50 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY50 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
  have hbrow41 : (1*(rho 10612))*(1 + (-1)*(rho 10612)) = 0 := by
    simpa [Seg13.relationRow41] using r41
  have hacc41 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc41 (rho 10571 : Seg13.F)
      (seg13AccX40 rho : Seg13.F) (seg13AccY40 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc41] using hp40
  have hr41 : RvkFixedBaseLadder.FixedStepRel 41 (rho 10612)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX40 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY40 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX41 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY41 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc41, seg13AccX41, seg13AccY41, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung41_wide (rho 10571 : Seg13.F) (rho 10612 : Seg13.F) (seg13AccX40 rho : Seg13.F) (seg13AccY40 rho : Seg13.F) (rho 11022 : Seg13.F) (rho 11023 : Seg13.F) (rho 11024 : Seg13.F) (rho 11025 : Seg13.F) (rho 11026 : Seg13.F) hacc41
        (by simpa using seg13_prefix_41_v2 rho r452)
        (by simpa using seg13_prefix_41_addX rho r453)
        (by simpa using seg13_prefix_41_addY rho r454)
        (by simpa using seg13_prefix_41_selX rho r455)
        (by simpa using seg13_prefix_41_selY rho r456)
        hbrow41
  obtain ⟨b41, hb41⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10612) hbrow41
  have hrb41 : RvkFixedBaseLadder.FixedStepRel 41 (toZMod b41)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX40 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY40 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX41 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY41 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb41]
    exact hr41
  have hp41 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX41 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY41 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 41 b41 _ _ hp40 hrb41).2
  have hbrow42 : (1*(rho 10613))*(1 + (-1)*(rho 10613)) = 0 := by
    simpa [Seg13.relationRow42] using r42
  have hacc42 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc42 (rho 10571 : Seg13.F)
      (seg13AccX41 rho : Seg13.F) (seg13AccY41 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc42] using hp41
  have hr42 : RvkFixedBaseLadder.FixedStepRel 42 (rho 10613)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX41 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY41 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX42 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY42 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc42, seg13AccX42, seg13AccY42, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung42_wide (rho 10571 : Seg13.F) (rho 10613 : Seg13.F) (seg13AccX41 rho : Seg13.F) (seg13AccY41 rho : Seg13.F) (rho 11027 : Seg13.F) (rho 11028 : Seg13.F) (rho 11029 : Seg13.F) (rho 11030 : Seg13.F) (rho 11031 : Seg13.F) hacc42
        (by simpa using seg13_prefix_42_v2 rho r457)
        (by simpa using seg13_prefix_42_addX rho r458)
        (by simpa using seg13_prefix_42_addY rho r459)
        (by simpa using seg13_prefix_42_selX rho r460)
        (by simpa using seg13_prefix_42_selY rho r461)
        hbrow42
  obtain ⟨b42, hb42⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10613) hbrow42
  have hrb42 : RvkFixedBaseLadder.FixedStepRel 42 (toZMod b42)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX41 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY41 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX42 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY42 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb42]
    exact hr42
  have hp42 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX42 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY42 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 42 b42 _ _ hp41 hrb42).2
  have hbrow43 : (1*(rho 10614))*(1 + (-1)*(rho 10614)) = 0 := by
    simpa [Seg13.relationRow43] using r43
  have hacc43 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc43 (rho 10571 : Seg13.F)
      (seg13AccX42 rho : Seg13.F) (seg13AccY42 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc43] using hp42
  have hr43 : RvkFixedBaseLadder.FixedStepRel 43 (rho 10614)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX42 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY42 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX43 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY43 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc43, seg13AccX43, seg13AccY43, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung43_wide (rho 10571 : Seg13.F) (rho 10614 : Seg13.F) (seg13AccX42 rho : Seg13.F) (seg13AccY42 rho : Seg13.F) (rho 11032 : Seg13.F) (rho 11033 : Seg13.F) (rho 11034 : Seg13.F) (rho 11035 : Seg13.F) (rho 11036 : Seg13.F) hacc43
        (by simpa using seg13_prefix_43_v2 rho r462)
        (by simpa using seg13_prefix_43_addX rho r463)
        (by simpa using seg13_prefix_43_addY rho r464)
        (by simpa using seg13_prefix_43_selX rho r465)
        (by simpa using seg13_prefix_43_selY rho r466)
        hbrow43
  obtain ⟨b43, hb43⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10614) hbrow43
  have hrb43 : RvkFixedBaseLadder.FixedStepRel 43 (toZMod b43)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX42 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY42 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX43 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY43 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb43]
    exact hr43
  have hp43 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX43 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY43 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 43 b43 _ _ hp42 hrb43).2
  have hbrow44 : (1*(rho 10615))*(1 + (-1)*(rho 10615)) = 0 := by
    simpa [Seg13.relationRow44] using r44
  have hacc44 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc44 (rho 10571 : Seg13.F)
      (seg13AccX43 rho : Seg13.F) (seg13AccY43 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc44] using hp43
  have hr44 : RvkFixedBaseLadder.FixedStepRel 44 (rho 10615)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX43 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY43 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX44 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY44 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc44, seg13AccX44, seg13AccY44, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung44_wide (rho 10571 : Seg13.F) (rho 10615 : Seg13.F) (seg13AccX43 rho : Seg13.F) (seg13AccY43 rho : Seg13.F) (rho 11037 : Seg13.F) (rho 11038 : Seg13.F) (rho 11039 : Seg13.F) (rho 11040 : Seg13.F) (rho 11041 : Seg13.F) hacc44
        (by simpa using seg13_prefix_44_v2 rho r467)
        (by simpa using seg13_prefix_44_addX rho r468)
        (by simpa using seg13_prefix_44_addY rho r469)
        (by simpa using seg13_prefix_44_selX rho r470)
        (by simpa using seg13_prefix_44_selY rho r471)
        hbrow44
  obtain ⟨b44, hb44⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10615) hbrow44
  have hrb44 : RvkFixedBaseLadder.FixedStepRel 44 (toZMod b44)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX43 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY43 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX44 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY44 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb44]
    exact hr44
  have hp44 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX44 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY44 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 44 b44 _ _ hp43 hrb44).2
  have hbrow45 : (1*(rho 10616))*(1 + (-1)*(rho 10616)) = 0 := by
    simpa [Seg13.relationRow45] using r45
  have hacc45 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc45 (rho 10571 : Seg13.F)
      (seg13AccX44 rho : Seg13.F) (seg13AccY44 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc45] using hp44
  have hr45 : RvkFixedBaseLadder.FixedStepRel 45 (rho 10616)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX44 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY44 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX45 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY45 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc45, seg13AccX45, seg13AccY45, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung45_wide (rho 10571 : Seg13.F) (rho 10616 : Seg13.F) (seg13AccX44 rho : Seg13.F) (seg13AccY44 rho : Seg13.F) (rho 11042 : Seg13.F) (rho 11043 : Seg13.F) (rho 11044 : Seg13.F) (rho 11045 : Seg13.F) (rho 11046 : Seg13.F) hacc45
        (by simpa using seg13_prefix_45_v2 rho r472)
        (by simpa using seg13_prefix_45_addX rho r473)
        (by simpa using seg13_prefix_45_addY rho r474)
        (by simpa using seg13_prefix_45_selX rho r475)
        (by simpa using seg13_prefix_45_selY rho r476)
        hbrow45
  obtain ⟨b45, hb45⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10616) hbrow45
  have hrb45 : RvkFixedBaseLadder.FixedStepRel 45 (toZMod b45)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX44 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY44 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX45 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY45 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb45]
    exact hr45
  have hp45 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX45 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY45 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 45 b45 _ _ hp44 hrb45).2
  have hbrow46 : (1*(rho 10617))*(1 + (-1)*(rho 10617)) = 0 := by
    simpa [Seg13.relationRow46] using r46
  have hacc46 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc46 (rho 10571 : Seg13.F)
      (seg13AccX45 rho : Seg13.F) (seg13AccY45 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc46] using hp45
  have hr46 : RvkFixedBaseLadder.FixedStepRel 46 (rho 10617)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX45 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY45 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX46 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY46 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc46, seg13AccX46, seg13AccY46, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung46_wide (rho 10571 : Seg13.F) (rho 10617 : Seg13.F) (seg13AccX45 rho : Seg13.F) (seg13AccY45 rho : Seg13.F) (rho 11047 : Seg13.F) (rho 11048 : Seg13.F) (rho 11049 : Seg13.F) (rho 11050 : Seg13.F) (rho 11051 : Seg13.F) hacc46
        (by simpa using seg13_prefix_46_v2 rho r477)
        (by simpa using seg13_prefix_46_addX rho r478)
        (by simpa using seg13_prefix_46_addY rho r479)
        (by simpa using seg13_prefix_46_selX rho r480)
        (by simpa using seg13_prefix_46_selY rho r481)
        hbrow46
  obtain ⟨b46, hb46⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10617) hbrow46
  have hrb46 : RvkFixedBaseLadder.FixedStepRel 46 (toZMod b46)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX45 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY45 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX46 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY46 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb46]
    exact hr46
  have hp46 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX46 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY46 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 46 b46 _ _ hp45 hrb46).2
  have hbrow47 : (1*(rho 10618))*(1 + (-1)*(rho 10618)) = 0 := by
    simpa [Seg13.relationRow47] using r47
  have hacc47 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc47 (rho 10571 : Seg13.F)
      (seg13AccX46 rho : Seg13.F) (seg13AccY46 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc47] using hp46
  have hr47 : RvkFixedBaseLadder.FixedStepRel 47 (rho 10618)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX46 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY46 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX47 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY47 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc47, seg13AccX47, seg13AccY47, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung47_wide (rho 10571 : Seg13.F) (rho 10618 : Seg13.F) (seg13AccX46 rho : Seg13.F) (seg13AccY46 rho : Seg13.F) (rho 11052 : Seg13.F) (rho 11053 : Seg13.F) (rho 11054 : Seg13.F) (rho 11055 : Seg13.F) (rho 11056 : Seg13.F) hacc47
        (by simpa using seg13_prefix_47_v2 rho r482)
        (by simpa using seg13_prefix_47_addX rho r483)
        (by simpa using seg13_prefix_47_addY rho r484)
        (by simpa using seg13_prefix_47_selX rho r485)
        (by simpa using seg13_prefix_47_selY rho r486)
        hbrow47
  obtain ⟨b47, hb47⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10618) hbrow47
  have hrb47 : RvkFixedBaseLadder.FixedStepRel 47 (toZMod b47)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX46 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY46 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX47 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY47 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb47]
    exact hr47
  have hp47 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX47 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY47 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 47 b47 _ _ hp46 hrb47).2
  have hbrow48 : (1*(rho 10619))*(1 + (-1)*(rho 10619)) = 0 := by
    simpa [Seg13.relationRow48] using r48
  have hacc48 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc48 (rho 10571 : Seg13.F)
      (seg13AccX47 rho : Seg13.F) (seg13AccY47 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc48] using hp47
  have hr48 : RvkFixedBaseLadder.FixedStepRel 48 (rho 10619)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX47 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY47 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX48 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY48 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc48, seg13AccX48, seg13AccY48, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung48_wide (rho 10571 : Seg13.F) (rho 10619 : Seg13.F) (seg13AccX47 rho : Seg13.F) (seg13AccY47 rho : Seg13.F) (rho 11057 : Seg13.F) (rho 11058 : Seg13.F) (rho 11059 : Seg13.F) (rho 11060 : Seg13.F) (rho 11061 : Seg13.F) hacc48
        (by simpa using seg13_prefix_48_v2 rho r487)
        (by simpa using seg13_prefix_48_addX rho r488)
        (by simpa using seg13_prefix_48_addY rho r489)
        (by simpa using seg13_prefix_48_selX rho r490)
        (by simpa using seg13_prefix_48_selY rho r491)
        hbrow48
  obtain ⟨b48, hb48⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10619) hbrow48
  have hrb48 : RvkFixedBaseLadder.FixedStepRel 48 (toZMod b48)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX47 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY47 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX48 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY48 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb48]
    exact hr48
  have hp48 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX48 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY48 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 48 b48 _ _ hp47 hrb48).2
  have hbrow49 : (1*(rho 10620))*(1 + (-1)*(rho 10620)) = 0 := by
    simpa [Seg13.relationRow49] using r49
  have hacc49 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc49 (rho 10571 : Seg13.F)
      (seg13AccX48 rho : Seg13.F) (seg13AccY48 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc49] using hp48
  have hr49 : RvkFixedBaseLadder.FixedStepRel 49 (rho 10620)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX48 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY48 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX49 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY49 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc49, seg13AccX49, seg13AccY49, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung49_wide (rho 10571 : Seg13.F) (rho 10620 : Seg13.F) (seg13AccX48 rho : Seg13.F) (seg13AccY48 rho : Seg13.F) (rho 11062 : Seg13.F) (rho 11063 : Seg13.F) (rho 11064 : Seg13.F) (rho 11065 : Seg13.F) (rho 11066 : Seg13.F) hacc49
        (by simpa using seg13_prefix_49_v2 rho r492)
        (by simpa using seg13_prefix_49_addX rho r493)
        (by simpa using seg13_prefix_49_addY rho r494)
        (by simpa using seg13_prefix_49_selX rho r495)
        (by simpa using seg13_prefix_49_selY rho r496)
        hbrow49
  obtain ⟨b49, hb49⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10620) hbrow49
  have hrb49 : RvkFixedBaseLadder.FixedStepRel 49 (toZMod b49)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX48 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY48 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX49 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY49 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb49]
    exact hr49
  have hp49 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX49 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY49 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 49 b49 _ _ hp48 hrb49).2
  have hbrow50 : (1*(rho 10621))*(1 + (-1)*(rho 10621)) = 0 := by
    simpa [Seg13.relationRow50] using r50
  have hacc50 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc50 (rho 10571 : Seg13.F)
      (seg13AccX49 rho : Seg13.F) (seg13AccY49 rho : Seg13.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc50] using hp49
  have hr50 : RvkFixedBaseLadder.FixedStepRel 50 (rho 10621)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX49 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY49 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX50 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY50 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc50, seg13AccX50, seg13AccY50, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung50_wide (rho 10571 : Seg13.F) (rho 10621 : Seg13.F) (seg13AccX49 rho : Seg13.F) (seg13AccY49 rho : Seg13.F) (rho 11067 : Seg13.F) (rho 11068 : Seg13.F) (rho 11069 : Seg13.F) (rho 11070 : Seg13.F) (rho 11071 : Seg13.F) hacc50
        (by simpa using seg13_prefix_50_v2 rho r497)
        (by simpa using seg13_prefix_50_addX rho r498)
        (by simpa using seg13_prefix_50_addY rho r499)
        (by simpa using seg13_prefix_50_selX rho r500)
        (by simpa using seg13_prefix_50_selY rho r501)
        hbrow50
  obtain ⟨b50, hb50⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 10621) hbrow50
  have hrb50 : RvkFixedBaseLadder.FixedStepRel 50 (toZMod b50)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX49 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY49 rho : Seg13.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX50 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY50 rho : Seg13.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb50]
    exact hr50
  have hp50 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX50 rho : Seg13.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY50 rho : Seg13.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 50 b50 _ _ hp49 hrb50).2
  exact hp50

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


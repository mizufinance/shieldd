import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31PrefixLemmas4
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

theorem seg31_prefix_steps4 (rho : Nat -> Seg31.F)
    (hp40 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX40 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY40 rho : Seg31.F)⟩ : EdwardsBridge.Point))
    (r41 : Seg31.relationRow41 rho)
    (r452 : Seg31.relationRow452 rho)
    (r453 : Seg31.relationRow453 rho)
    (r454 : Seg31.relationRow454 rho)
    (r455 : Seg31.relationRow455 rho)
    (r456 : Seg31.relationRow456 rho)
    (r42 : Seg31.relationRow42 rho)
    (r457 : Seg31.relationRow457 rho)
    (r458 : Seg31.relationRow458 rho)
    (r459 : Seg31.relationRow459 rho)
    (r460 : Seg31.relationRow460 rho)
    (r461 : Seg31.relationRow461 rho)
    (r43 : Seg31.relationRow43 rho)
    (r462 : Seg31.relationRow462 rho)
    (r463 : Seg31.relationRow463 rho)
    (r464 : Seg31.relationRow464 rho)
    (r465 : Seg31.relationRow465 rho)
    (r466 : Seg31.relationRow466 rho)
    (r44 : Seg31.relationRow44 rho)
    (r467 : Seg31.relationRow467 rho)
    (r468 : Seg31.relationRow468 rho)
    (r469 : Seg31.relationRow469 rho)
    (r470 : Seg31.relationRow470 rho)
    (r471 : Seg31.relationRow471 rho)
    (r45 : Seg31.relationRow45 rho)
    (r472 : Seg31.relationRow472 rho)
    (r473 : Seg31.relationRow473 rho)
    (r474 : Seg31.relationRow474 rho)
    (r475 : Seg31.relationRow475 rho)
    (r476 : Seg31.relationRow476 rho)
    (r46 : Seg31.relationRow46 rho)
    (r477 : Seg31.relationRow477 rho)
    (r478 : Seg31.relationRow478 rho)
    (r479 : Seg31.relationRow479 rho)
    (r480 : Seg31.relationRow480 rho)
    (r481 : Seg31.relationRow481 rho)
    (r47 : Seg31.relationRow47 rho)
    (r482 : Seg31.relationRow482 rho)
    (r483 : Seg31.relationRow483 rho)
    (r484 : Seg31.relationRow484 rho)
    (r485 : Seg31.relationRow485 rho)
    (r486 : Seg31.relationRow486 rho)
    (r48 : Seg31.relationRow48 rho)
    (r487 : Seg31.relationRow487 rho)
    (r488 : Seg31.relationRow488 rho)
    (r489 : Seg31.relationRow489 rho)
    (r490 : Seg31.relationRow490 rho)
    (r491 : Seg31.relationRow491 rho)
    (r49 : Seg31.relationRow49 rho)
    (r492 : Seg31.relationRow492 rho)
    (r493 : Seg31.relationRow493 rho)
    (r494 : Seg31.relationRow494 rho)
    (r495 : Seg31.relationRow495 rho)
    (r496 : Seg31.relationRow496 rho)
    (r50 : Seg31.relationRow50 rho)
    (r497 : Seg31.relationRow497 rho)
    (r498 : Seg31.relationRow498 rho)
    (r499 : Seg31.relationRow499 rho)
    (r500 : Seg31.relationRow500 rho)
    (r501 : Seg31.relationRow501 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX50 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY50 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
  have hbrow41 : (1*(rho 29312))*(1 + (-1)*(rho 29312)) = 0 := by
    simpa [Seg31.relationRow41] using r41
  have hacc41 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc41 (rho 29271 : Seg31.F)
      (seg31AccX40 rho : Seg31.F) (seg31AccY40 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc41] using hp40
  have hr41 : RvkFixedBaseLadder.FixedStepRel 41 (rho 29312)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX40 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY40 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX41 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY41 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc41, seg31AccX41, seg31AccY41, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung41_wide (rho 29271 : Seg31.F) (rho 29312 : Seg31.F) (seg31AccX40 rho : Seg31.F) (seg31AccY40 rho : Seg31.F) (rho 29722 : Seg31.F) (rho 29723 : Seg31.F) (rho 29724 : Seg31.F) (rho 29725 : Seg31.F) (rho 29726 : Seg31.F) hacc41
        (by simpa using seg31_prefix_41_v2 rho r452)
        (by simpa using seg31_prefix_41_addX rho r453)
        (by simpa using seg31_prefix_41_addY rho r454)
        (by simpa using seg31_prefix_41_selX rho r455)
        (by simpa using seg31_prefix_41_selY rho r456)
        hbrow41
  obtain ⟨b41, hb41⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29312) hbrow41
  have hrb41 : RvkFixedBaseLadder.FixedStepRel 41 (toZMod b41)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX40 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY40 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX41 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY41 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb41]
    exact hr41
  have hp41 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX41 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY41 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 41 b41 _ _ hp40 hrb41).2
  have hbrow42 : (1*(rho 29313))*(1 + (-1)*(rho 29313)) = 0 := by
    simpa [Seg31.relationRow42] using r42
  have hacc42 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc42 (rho 29271 : Seg31.F)
      (seg31AccX41 rho : Seg31.F) (seg31AccY41 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc42] using hp41
  have hr42 : RvkFixedBaseLadder.FixedStepRel 42 (rho 29313)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX41 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY41 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX42 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY42 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc42, seg31AccX42, seg31AccY42, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung42_wide (rho 29271 : Seg31.F) (rho 29313 : Seg31.F) (seg31AccX41 rho : Seg31.F) (seg31AccY41 rho : Seg31.F) (rho 29727 : Seg31.F) (rho 29728 : Seg31.F) (rho 29729 : Seg31.F) (rho 29730 : Seg31.F) (rho 29731 : Seg31.F) hacc42
        (by simpa using seg31_prefix_42_v2 rho r457)
        (by simpa using seg31_prefix_42_addX rho r458)
        (by simpa using seg31_prefix_42_addY rho r459)
        (by simpa using seg31_prefix_42_selX rho r460)
        (by simpa using seg31_prefix_42_selY rho r461)
        hbrow42
  obtain ⟨b42, hb42⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29313) hbrow42
  have hrb42 : RvkFixedBaseLadder.FixedStepRel 42 (toZMod b42)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX41 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY41 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX42 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY42 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb42]
    exact hr42
  have hp42 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX42 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY42 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 42 b42 _ _ hp41 hrb42).2
  have hbrow43 : (1*(rho 29314))*(1 + (-1)*(rho 29314)) = 0 := by
    simpa [Seg31.relationRow43] using r43
  have hacc43 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc43 (rho 29271 : Seg31.F)
      (seg31AccX42 rho : Seg31.F) (seg31AccY42 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc43] using hp42
  have hr43 : RvkFixedBaseLadder.FixedStepRel 43 (rho 29314)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX42 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY42 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX43 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY43 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc43, seg31AccX43, seg31AccY43, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung43_wide (rho 29271 : Seg31.F) (rho 29314 : Seg31.F) (seg31AccX42 rho : Seg31.F) (seg31AccY42 rho : Seg31.F) (rho 29732 : Seg31.F) (rho 29733 : Seg31.F) (rho 29734 : Seg31.F) (rho 29735 : Seg31.F) (rho 29736 : Seg31.F) hacc43
        (by simpa using seg31_prefix_43_v2 rho r462)
        (by simpa using seg31_prefix_43_addX rho r463)
        (by simpa using seg31_prefix_43_addY rho r464)
        (by simpa using seg31_prefix_43_selX rho r465)
        (by simpa using seg31_prefix_43_selY rho r466)
        hbrow43
  obtain ⟨b43, hb43⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29314) hbrow43
  have hrb43 : RvkFixedBaseLadder.FixedStepRel 43 (toZMod b43)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX42 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY42 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX43 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY43 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb43]
    exact hr43
  have hp43 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX43 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY43 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 43 b43 _ _ hp42 hrb43).2
  have hbrow44 : (1*(rho 29315))*(1 + (-1)*(rho 29315)) = 0 := by
    simpa [Seg31.relationRow44] using r44
  have hacc44 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc44 (rho 29271 : Seg31.F)
      (seg31AccX43 rho : Seg31.F) (seg31AccY43 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc44] using hp43
  have hr44 : RvkFixedBaseLadder.FixedStepRel 44 (rho 29315)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX43 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY43 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX44 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY44 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc44, seg31AccX44, seg31AccY44, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung44_wide (rho 29271 : Seg31.F) (rho 29315 : Seg31.F) (seg31AccX43 rho : Seg31.F) (seg31AccY43 rho : Seg31.F) (rho 29737 : Seg31.F) (rho 29738 : Seg31.F) (rho 29739 : Seg31.F) (rho 29740 : Seg31.F) (rho 29741 : Seg31.F) hacc44
        (by simpa using seg31_prefix_44_v2 rho r467)
        (by simpa using seg31_prefix_44_addX rho r468)
        (by simpa using seg31_prefix_44_addY rho r469)
        (by simpa using seg31_prefix_44_selX rho r470)
        (by simpa using seg31_prefix_44_selY rho r471)
        hbrow44
  obtain ⟨b44, hb44⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29315) hbrow44
  have hrb44 : RvkFixedBaseLadder.FixedStepRel 44 (toZMod b44)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX43 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY43 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX44 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY44 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb44]
    exact hr44
  have hp44 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX44 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY44 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 44 b44 _ _ hp43 hrb44).2
  have hbrow45 : (1*(rho 29316))*(1 + (-1)*(rho 29316)) = 0 := by
    simpa [Seg31.relationRow45] using r45
  have hacc45 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc45 (rho 29271 : Seg31.F)
      (seg31AccX44 rho : Seg31.F) (seg31AccY44 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc45] using hp44
  have hr45 : RvkFixedBaseLadder.FixedStepRel 45 (rho 29316)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX44 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY44 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX45 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY45 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc45, seg31AccX45, seg31AccY45, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung45_wide (rho 29271 : Seg31.F) (rho 29316 : Seg31.F) (seg31AccX44 rho : Seg31.F) (seg31AccY44 rho : Seg31.F) (rho 29742 : Seg31.F) (rho 29743 : Seg31.F) (rho 29744 : Seg31.F) (rho 29745 : Seg31.F) (rho 29746 : Seg31.F) hacc45
        (by simpa using seg31_prefix_45_v2 rho r472)
        (by simpa using seg31_prefix_45_addX rho r473)
        (by simpa using seg31_prefix_45_addY rho r474)
        (by simpa using seg31_prefix_45_selX rho r475)
        (by simpa using seg31_prefix_45_selY rho r476)
        hbrow45
  obtain ⟨b45, hb45⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29316) hbrow45
  have hrb45 : RvkFixedBaseLadder.FixedStepRel 45 (toZMod b45)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX44 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY44 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX45 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY45 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb45]
    exact hr45
  have hp45 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX45 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY45 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 45 b45 _ _ hp44 hrb45).2
  have hbrow46 : (1*(rho 29317))*(1 + (-1)*(rho 29317)) = 0 := by
    simpa [Seg31.relationRow46] using r46
  have hacc46 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc46 (rho 29271 : Seg31.F)
      (seg31AccX45 rho : Seg31.F) (seg31AccY45 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc46] using hp45
  have hr46 : RvkFixedBaseLadder.FixedStepRel 46 (rho 29317)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX45 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY45 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX46 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY46 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc46, seg31AccX46, seg31AccY46, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung46_wide (rho 29271 : Seg31.F) (rho 29317 : Seg31.F) (seg31AccX45 rho : Seg31.F) (seg31AccY45 rho : Seg31.F) (rho 29747 : Seg31.F) (rho 29748 : Seg31.F) (rho 29749 : Seg31.F) (rho 29750 : Seg31.F) (rho 29751 : Seg31.F) hacc46
        (by simpa using seg31_prefix_46_v2 rho r477)
        (by simpa using seg31_prefix_46_addX rho r478)
        (by simpa using seg31_prefix_46_addY rho r479)
        (by simpa using seg31_prefix_46_selX rho r480)
        (by simpa using seg31_prefix_46_selY rho r481)
        hbrow46
  obtain ⟨b46, hb46⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29317) hbrow46
  have hrb46 : RvkFixedBaseLadder.FixedStepRel 46 (toZMod b46)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX45 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY45 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX46 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY46 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb46]
    exact hr46
  have hp46 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX46 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY46 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 46 b46 _ _ hp45 hrb46).2
  have hbrow47 : (1*(rho 29318))*(1 + (-1)*(rho 29318)) = 0 := by
    simpa [Seg31.relationRow47] using r47
  have hacc47 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc47 (rho 29271 : Seg31.F)
      (seg31AccX46 rho : Seg31.F) (seg31AccY46 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc47] using hp46
  have hr47 : RvkFixedBaseLadder.FixedStepRel 47 (rho 29318)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX46 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY46 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX47 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY47 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc47, seg31AccX47, seg31AccY47, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung47_wide (rho 29271 : Seg31.F) (rho 29318 : Seg31.F) (seg31AccX46 rho : Seg31.F) (seg31AccY46 rho : Seg31.F) (rho 29752 : Seg31.F) (rho 29753 : Seg31.F) (rho 29754 : Seg31.F) (rho 29755 : Seg31.F) (rho 29756 : Seg31.F) hacc47
        (by simpa using seg31_prefix_47_v2 rho r482)
        (by simpa using seg31_prefix_47_addX rho r483)
        (by simpa using seg31_prefix_47_addY rho r484)
        (by simpa using seg31_prefix_47_selX rho r485)
        (by simpa using seg31_prefix_47_selY rho r486)
        hbrow47
  obtain ⟨b47, hb47⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29318) hbrow47
  have hrb47 : RvkFixedBaseLadder.FixedStepRel 47 (toZMod b47)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX46 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY46 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX47 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY47 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb47]
    exact hr47
  have hp47 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX47 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY47 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 47 b47 _ _ hp46 hrb47).2
  have hbrow48 : (1*(rho 29319))*(1 + (-1)*(rho 29319)) = 0 := by
    simpa [Seg31.relationRow48] using r48
  have hacc48 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc48 (rho 29271 : Seg31.F)
      (seg31AccX47 rho : Seg31.F) (seg31AccY47 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc48] using hp47
  have hr48 : RvkFixedBaseLadder.FixedStepRel 48 (rho 29319)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX47 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY47 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX48 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY48 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc48, seg31AccX48, seg31AccY48, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung48_wide (rho 29271 : Seg31.F) (rho 29319 : Seg31.F) (seg31AccX47 rho : Seg31.F) (seg31AccY47 rho : Seg31.F) (rho 29757 : Seg31.F) (rho 29758 : Seg31.F) (rho 29759 : Seg31.F) (rho 29760 : Seg31.F) (rho 29761 : Seg31.F) hacc48
        (by simpa using seg31_prefix_48_v2 rho r487)
        (by simpa using seg31_prefix_48_addX rho r488)
        (by simpa using seg31_prefix_48_addY rho r489)
        (by simpa using seg31_prefix_48_selX rho r490)
        (by simpa using seg31_prefix_48_selY rho r491)
        hbrow48
  obtain ⟨b48, hb48⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29319) hbrow48
  have hrb48 : RvkFixedBaseLadder.FixedStepRel 48 (toZMod b48)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX47 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY47 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX48 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY48 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb48]
    exact hr48
  have hp48 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX48 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY48 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 48 b48 _ _ hp47 hrb48).2
  have hbrow49 : (1*(rho 29320))*(1 + (-1)*(rho 29320)) = 0 := by
    simpa [Seg31.relationRow49] using r49
  have hacc49 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc49 (rho 29271 : Seg31.F)
      (seg31AccX48 rho : Seg31.F) (seg31AccY48 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc49] using hp48
  have hr49 : RvkFixedBaseLadder.FixedStepRel 49 (rho 29320)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX48 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY48 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX49 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY49 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc49, seg31AccX49, seg31AccY49, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung49_wide (rho 29271 : Seg31.F) (rho 29320 : Seg31.F) (seg31AccX48 rho : Seg31.F) (seg31AccY48 rho : Seg31.F) (rho 29762 : Seg31.F) (rho 29763 : Seg31.F) (rho 29764 : Seg31.F) (rho 29765 : Seg31.F) (rho 29766 : Seg31.F) hacc49
        (by simpa using seg31_prefix_49_v2 rho r492)
        (by simpa using seg31_prefix_49_addX rho r493)
        (by simpa using seg31_prefix_49_addY rho r494)
        (by simpa using seg31_prefix_49_selX rho r495)
        (by simpa using seg31_prefix_49_selY rho r496)
        hbrow49
  obtain ⟨b49, hb49⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29320) hbrow49
  have hrb49 : RvkFixedBaseLadder.FixedStepRel 49 (toZMod b49)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX48 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY48 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX49 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY49 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb49]
    exact hr49
  have hp49 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX49 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY49 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 49 b49 _ _ hp48 hrb49).2
  have hbrow50 : (1*(rho 29321))*(1 + (-1)*(rho 29321)) = 0 := by
    simpa [Seg31.relationRow50] using r50
  have hacc50 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc50 (rho 29271 : Seg31.F)
      (seg31AccX49 rho : Seg31.F) (seg31AccY49 rho : Seg31.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc50] using hp49
  have hr50 : RvkFixedBaseLadder.FixedStepRel 50 (rho 29321)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX49 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY49 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX50 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY50 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc50, seg31AccX50, seg31AccY50, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung50_wide (rho 29271 : Seg31.F) (rho 29321 : Seg31.F) (seg31AccX49 rho : Seg31.F) (seg31AccY49 rho : Seg31.F) (rho 29767 : Seg31.F) (rho 29768 : Seg31.F) (rho 29769 : Seg31.F) (rho 29770 : Seg31.F) (rho 29771 : Seg31.F) hacc50
        (by simpa using seg31_prefix_50_v2 rho r497)
        (by simpa using seg31_prefix_50_addX rho r498)
        (by simpa using seg31_prefix_50_addY rho r499)
        (by simpa using seg31_prefix_50_selX rho r500)
        (by simpa using seg31_prefix_50_selY rho r501)
        hbrow50
  obtain ⟨b50, hb50⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 29321) hbrow50
  have hrb50 : RvkFixedBaseLadder.FixedStepRel 50 (toZMod b50)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX49 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY49 rho : Seg31.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX50 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY50 rho : Seg31.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb50]
    exact hr50
  have hp50 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX50 rho : Seg31.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY50 rho : Seg31.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 50 b50 _ _ hp49 hrb50).2
  exact hp50

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


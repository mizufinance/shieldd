import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas4
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

theorem seg30_prefix_steps4 (rho : Nat -> Seg30.F)
    (hp40 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX40 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY40 rho : Seg30.F)⟩ : EdwardsBridge.Point))
    (r41 : Seg30.relationRow41 rho)
    (r452 : Seg30.relationRow452 rho)
    (r453 : Seg30.relationRow453 rho)
    (r454 : Seg30.relationRow454 rho)
    (r455 : Seg30.relationRow455 rho)
    (r456 : Seg30.relationRow456 rho)
    (r42 : Seg30.relationRow42 rho)
    (r457 : Seg30.relationRow457 rho)
    (r458 : Seg30.relationRow458 rho)
    (r459 : Seg30.relationRow459 rho)
    (r460 : Seg30.relationRow460 rho)
    (r461 : Seg30.relationRow461 rho)
    (r43 : Seg30.relationRow43 rho)
    (r462 : Seg30.relationRow462 rho)
    (r463 : Seg30.relationRow463 rho)
    (r464 : Seg30.relationRow464 rho)
    (r465 : Seg30.relationRow465 rho)
    (r466 : Seg30.relationRow466 rho)
    (r44 : Seg30.relationRow44 rho)
    (r467 : Seg30.relationRow467 rho)
    (r468 : Seg30.relationRow468 rho)
    (r469 : Seg30.relationRow469 rho)
    (r470 : Seg30.relationRow470 rho)
    (r471 : Seg30.relationRow471 rho)
    (r45 : Seg30.relationRow45 rho)
    (r472 : Seg30.relationRow472 rho)
    (r473 : Seg30.relationRow473 rho)
    (r474 : Seg30.relationRow474 rho)
    (r475 : Seg30.relationRow475 rho)
    (r476 : Seg30.relationRow476 rho)
    (r46 : Seg30.relationRow46 rho)
    (r477 : Seg30.relationRow477 rho)
    (r478 : Seg30.relationRow478 rho)
    (r479 : Seg30.relationRow479 rho)
    (r480 : Seg30.relationRow480 rho)
    (r481 : Seg30.relationRow481 rho)
    (r47 : Seg30.relationRow47 rho)
    (r482 : Seg30.relationRow482 rho)
    (r483 : Seg30.relationRow483 rho)
    (r484 : Seg30.relationRow484 rho)
    (r485 : Seg30.relationRow485 rho)
    (r486 : Seg30.relationRow486 rho)
    (r48 : Seg30.relationRow48 rho)
    (r487 : Seg30.relationRow487 rho)
    (r488 : Seg30.relationRow488 rho)
    (r489 : Seg30.relationRow489 rho)
    (r490 : Seg30.relationRow490 rho)
    (r491 : Seg30.relationRow491 rho)
    (r49 : Seg30.relationRow49 rho)
    (r492 : Seg30.relationRow492 rho)
    (r493 : Seg30.relationRow493 rho)
    (r494 : Seg30.relationRow494 rho)
    (r495 : Seg30.relationRow495 rho)
    (r496 : Seg30.relationRow496 rho)
    (r50 : Seg30.relationRow50 rho)
    (r497 : Seg30.relationRow497 rho)
    (r498 : Seg30.relationRow498 rho)
    (r499 : Seg30.relationRow499 rho)
    (r500 : Seg30.relationRow500 rho)
    (r501 : Seg30.relationRow501 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX50 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY50 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
  have hbrow41 : (1*(rho 28358))*(1 + (-1)*(rho 28358)) = 0 := by
    simpa [Seg30.relationRow41] using r41
  have hacc41 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc41 (rho 28317 : Seg30.F)
      (seg30AccX40 rho : Seg30.F) (seg30AccY40 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc41] using hp40
  have hr41 : RvkFixedBaseLadder.FixedStepRel 41 (rho 28358)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX40 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY40 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX41 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY41 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc41, seg30AccX41, seg30AccY41, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung41_wide (rho 28317 : Seg30.F) (rho 28358 : Seg30.F) (seg30AccX40 rho : Seg30.F) (seg30AccY40 rho : Seg30.F) (rho 28768 : Seg30.F) (rho 28769 : Seg30.F) (rho 28770 : Seg30.F) (rho 28771 : Seg30.F) (rho 28772 : Seg30.F) hacc41
        (by simpa using seg30_prefix_41_v2 rho r452)
        (by simpa using seg30_prefix_41_addX rho r453)
        (by simpa using seg30_prefix_41_addY rho r454)
        (by simpa using seg30_prefix_41_selX rho r455)
        (by simpa using seg30_prefix_41_selY rho r456)
        hbrow41
  obtain ⟨b41, hb41⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28358) hbrow41
  have hrb41 : RvkFixedBaseLadder.FixedStepRel 41 (toZMod b41)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX40 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY40 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX41 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY41 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb41]
    exact hr41
  have hp41 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX41 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY41 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 41 b41 _ _ hp40 hrb41).2
  have hbrow42 : (1*(rho 28359))*(1 + (-1)*(rho 28359)) = 0 := by
    simpa [Seg30.relationRow42] using r42
  have hacc42 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc42 (rho 28317 : Seg30.F)
      (seg30AccX41 rho : Seg30.F) (seg30AccY41 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc42] using hp41
  have hr42 : RvkFixedBaseLadder.FixedStepRel 42 (rho 28359)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX41 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY41 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX42 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY42 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc42, seg30AccX42, seg30AccY42, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung42_wide (rho 28317 : Seg30.F) (rho 28359 : Seg30.F) (seg30AccX41 rho : Seg30.F) (seg30AccY41 rho : Seg30.F) (rho 28773 : Seg30.F) (rho 28774 : Seg30.F) (rho 28775 : Seg30.F) (rho 28776 : Seg30.F) (rho 28777 : Seg30.F) hacc42
        (by simpa using seg30_prefix_42_v2 rho r457)
        (by simpa using seg30_prefix_42_addX rho r458)
        (by simpa using seg30_prefix_42_addY rho r459)
        (by simpa using seg30_prefix_42_selX rho r460)
        (by simpa using seg30_prefix_42_selY rho r461)
        hbrow42
  obtain ⟨b42, hb42⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28359) hbrow42
  have hrb42 : RvkFixedBaseLadder.FixedStepRel 42 (toZMod b42)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX41 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY41 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX42 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY42 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb42]
    exact hr42
  have hp42 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX42 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY42 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 42 b42 _ _ hp41 hrb42).2
  have hbrow43 : (1*(rho 28360))*(1 + (-1)*(rho 28360)) = 0 := by
    simpa [Seg30.relationRow43] using r43
  have hacc43 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc43 (rho 28317 : Seg30.F)
      (seg30AccX42 rho : Seg30.F) (seg30AccY42 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc43] using hp42
  have hr43 : RvkFixedBaseLadder.FixedStepRel 43 (rho 28360)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX42 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY42 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX43 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY43 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc43, seg30AccX43, seg30AccY43, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung43_wide (rho 28317 : Seg30.F) (rho 28360 : Seg30.F) (seg30AccX42 rho : Seg30.F) (seg30AccY42 rho : Seg30.F) (rho 28778 : Seg30.F) (rho 28779 : Seg30.F) (rho 28780 : Seg30.F) (rho 28781 : Seg30.F) (rho 28782 : Seg30.F) hacc43
        (by simpa using seg30_prefix_43_v2 rho r462)
        (by simpa using seg30_prefix_43_addX rho r463)
        (by simpa using seg30_prefix_43_addY rho r464)
        (by simpa using seg30_prefix_43_selX rho r465)
        (by simpa using seg30_prefix_43_selY rho r466)
        hbrow43
  obtain ⟨b43, hb43⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28360) hbrow43
  have hrb43 : RvkFixedBaseLadder.FixedStepRel 43 (toZMod b43)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX42 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY42 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX43 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY43 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb43]
    exact hr43
  have hp43 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX43 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY43 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 43 b43 _ _ hp42 hrb43).2
  have hbrow44 : (1*(rho 28361))*(1 + (-1)*(rho 28361)) = 0 := by
    simpa [Seg30.relationRow44] using r44
  have hacc44 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc44 (rho 28317 : Seg30.F)
      (seg30AccX43 rho : Seg30.F) (seg30AccY43 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc44] using hp43
  have hr44 : RvkFixedBaseLadder.FixedStepRel 44 (rho 28361)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX43 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY43 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX44 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY44 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc44, seg30AccX44, seg30AccY44, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung44_wide (rho 28317 : Seg30.F) (rho 28361 : Seg30.F) (seg30AccX43 rho : Seg30.F) (seg30AccY43 rho : Seg30.F) (rho 28783 : Seg30.F) (rho 28784 : Seg30.F) (rho 28785 : Seg30.F) (rho 28786 : Seg30.F) (rho 28787 : Seg30.F) hacc44
        (by simpa using seg30_prefix_44_v2 rho r467)
        (by simpa using seg30_prefix_44_addX rho r468)
        (by simpa using seg30_prefix_44_addY rho r469)
        (by simpa using seg30_prefix_44_selX rho r470)
        (by simpa using seg30_prefix_44_selY rho r471)
        hbrow44
  obtain ⟨b44, hb44⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28361) hbrow44
  have hrb44 : RvkFixedBaseLadder.FixedStepRel 44 (toZMod b44)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX43 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY43 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX44 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY44 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb44]
    exact hr44
  have hp44 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX44 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY44 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 44 b44 _ _ hp43 hrb44).2
  have hbrow45 : (1*(rho 28362))*(1 + (-1)*(rho 28362)) = 0 := by
    simpa [Seg30.relationRow45] using r45
  have hacc45 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc45 (rho 28317 : Seg30.F)
      (seg30AccX44 rho : Seg30.F) (seg30AccY44 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc45] using hp44
  have hr45 : RvkFixedBaseLadder.FixedStepRel 45 (rho 28362)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX44 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY44 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX45 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY45 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc45, seg30AccX45, seg30AccY45, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung45_wide (rho 28317 : Seg30.F) (rho 28362 : Seg30.F) (seg30AccX44 rho : Seg30.F) (seg30AccY44 rho : Seg30.F) (rho 28788 : Seg30.F) (rho 28789 : Seg30.F) (rho 28790 : Seg30.F) (rho 28791 : Seg30.F) (rho 28792 : Seg30.F) hacc45
        (by simpa using seg30_prefix_45_v2 rho r472)
        (by simpa using seg30_prefix_45_addX rho r473)
        (by simpa using seg30_prefix_45_addY rho r474)
        (by simpa using seg30_prefix_45_selX rho r475)
        (by simpa using seg30_prefix_45_selY rho r476)
        hbrow45
  obtain ⟨b45, hb45⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28362) hbrow45
  have hrb45 : RvkFixedBaseLadder.FixedStepRel 45 (toZMod b45)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX44 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY44 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX45 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY45 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb45]
    exact hr45
  have hp45 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX45 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY45 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 45 b45 _ _ hp44 hrb45).2
  have hbrow46 : (1*(rho 28363))*(1 + (-1)*(rho 28363)) = 0 := by
    simpa [Seg30.relationRow46] using r46
  have hacc46 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc46 (rho 28317 : Seg30.F)
      (seg30AccX45 rho : Seg30.F) (seg30AccY45 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc46] using hp45
  have hr46 : RvkFixedBaseLadder.FixedStepRel 46 (rho 28363)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX45 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY45 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX46 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY46 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc46, seg30AccX46, seg30AccY46, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung46_wide (rho 28317 : Seg30.F) (rho 28363 : Seg30.F) (seg30AccX45 rho : Seg30.F) (seg30AccY45 rho : Seg30.F) (rho 28793 : Seg30.F) (rho 28794 : Seg30.F) (rho 28795 : Seg30.F) (rho 28796 : Seg30.F) (rho 28797 : Seg30.F) hacc46
        (by simpa using seg30_prefix_46_v2 rho r477)
        (by simpa using seg30_prefix_46_addX rho r478)
        (by simpa using seg30_prefix_46_addY rho r479)
        (by simpa using seg30_prefix_46_selX rho r480)
        (by simpa using seg30_prefix_46_selY rho r481)
        hbrow46
  obtain ⟨b46, hb46⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28363) hbrow46
  have hrb46 : RvkFixedBaseLadder.FixedStepRel 46 (toZMod b46)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX45 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY45 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX46 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY46 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb46]
    exact hr46
  have hp46 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX46 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY46 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 46 b46 _ _ hp45 hrb46).2
  have hbrow47 : (1*(rho 28364))*(1 + (-1)*(rho 28364)) = 0 := by
    simpa [Seg30.relationRow47] using r47
  have hacc47 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc47 (rho 28317 : Seg30.F)
      (seg30AccX46 rho : Seg30.F) (seg30AccY46 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc47] using hp46
  have hr47 : RvkFixedBaseLadder.FixedStepRel 47 (rho 28364)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX46 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY46 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX47 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY47 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc47, seg30AccX47, seg30AccY47, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung47_wide (rho 28317 : Seg30.F) (rho 28364 : Seg30.F) (seg30AccX46 rho : Seg30.F) (seg30AccY46 rho : Seg30.F) (rho 28798 : Seg30.F) (rho 28799 : Seg30.F) (rho 28800 : Seg30.F) (rho 28801 : Seg30.F) (rho 28802 : Seg30.F) hacc47
        (by simpa using seg30_prefix_47_v2 rho r482)
        (by simpa using seg30_prefix_47_addX rho r483)
        (by simpa using seg30_prefix_47_addY rho r484)
        (by simpa using seg30_prefix_47_selX rho r485)
        (by simpa using seg30_prefix_47_selY rho r486)
        hbrow47
  obtain ⟨b47, hb47⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28364) hbrow47
  have hrb47 : RvkFixedBaseLadder.FixedStepRel 47 (toZMod b47)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX46 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY46 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX47 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY47 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb47]
    exact hr47
  have hp47 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX47 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY47 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 47 b47 _ _ hp46 hrb47).2
  have hbrow48 : (1*(rho 28365))*(1 + (-1)*(rho 28365)) = 0 := by
    simpa [Seg30.relationRow48] using r48
  have hacc48 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc48 (rho 28317 : Seg30.F)
      (seg30AccX47 rho : Seg30.F) (seg30AccY47 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc48] using hp47
  have hr48 : RvkFixedBaseLadder.FixedStepRel 48 (rho 28365)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX47 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY47 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX48 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY48 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc48, seg30AccX48, seg30AccY48, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung48_wide (rho 28317 : Seg30.F) (rho 28365 : Seg30.F) (seg30AccX47 rho : Seg30.F) (seg30AccY47 rho : Seg30.F) (rho 28803 : Seg30.F) (rho 28804 : Seg30.F) (rho 28805 : Seg30.F) (rho 28806 : Seg30.F) (rho 28807 : Seg30.F) hacc48
        (by simpa using seg30_prefix_48_v2 rho r487)
        (by simpa using seg30_prefix_48_addX rho r488)
        (by simpa using seg30_prefix_48_addY rho r489)
        (by simpa using seg30_prefix_48_selX rho r490)
        (by simpa using seg30_prefix_48_selY rho r491)
        hbrow48
  obtain ⟨b48, hb48⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28365) hbrow48
  have hrb48 : RvkFixedBaseLadder.FixedStepRel 48 (toZMod b48)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX47 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY47 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX48 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY48 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb48]
    exact hr48
  have hp48 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX48 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY48 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 48 b48 _ _ hp47 hrb48).2
  have hbrow49 : (1*(rho 28366))*(1 + (-1)*(rho 28366)) = 0 := by
    simpa [Seg30.relationRow49] using r49
  have hacc49 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc49 (rho 28317 : Seg30.F)
      (seg30AccX48 rho : Seg30.F) (seg30AccY48 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc49] using hp48
  have hr49 : RvkFixedBaseLadder.FixedStepRel 49 (rho 28366)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX48 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY48 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX49 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY49 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc49, seg30AccX49, seg30AccY49, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung49_wide (rho 28317 : Seg30.F) (rho 28366 : Seg30.F) (seg30AccX48 rho : Seg30.F) (seg30AccY48 rho : Seg30.F) (rho 28808 : Seg30.F) (rho 28809 : Seg30.F) (rho 28810 : Seg30.F) (rho 28811 : Seg30.F) (rho 28812 : Seg30.F) hacc49
        (by simpa using seg30_prefix_49_v2 rho r492)
        (by simpa using seg30_prefix_49_addX rho r493)
        (by simpa using seg30_prefix_49_addY rho r494)
        (by simpa using seg30_prefix_49_selX rho r495)
        (by simpa using seg30_prefix_49_selY rho r496)
        hbrow49
  obtain ⟨b49, hb49⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28366) hbrow49
  have hrb49 : RvkFixedBaseLadder.FixedStepRel 49 (toZMod b49)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX48 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY48 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX49 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY49 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb49]
    exact hr49
  have hp49 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX49 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY49 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 49 b49 _ _ hp48 hrb49).2
  have hbrow50 : (1*(rho 28367))*(1 + (-1)*(rho 28367)) = 0 := by
    simpa [Seg30.relationRow50] using r50
  have hacc50 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc50 (rho 28317 : Seg30.F)
      (seg30AccX49 rho : Seg30.F) (seg30AccY49 rho : Seg30.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc50] using hp49
  have hr50 : RvkFixedBaseLadder.FixedStepRel 50 (rho 28367)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX49 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY49 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX50 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY50 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc50, seg30AccX50, seg30AccY50, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung50_wide (rho 28317 : Seg30.F) (rho 28367 : Seg30.F) (seg30AccX49 rho : Seg30.F) (seg30AccY49 rho : Seg30.F) (rho 28813 : Seg30.F) (rho 28814 : Seg30.F) (rho 28815 : Seg30.F) (rho 28816 : Seg30.F) (rho 28817 : Seg30.F) hacc50
        (by simpa using seg30_prefix_50_v2 rho r497)
        (by simpa using seg30_prefix_50_addX rho r498)
        (by simpa using seg30_prefix_50_addY rho r499)
        (by simpa using seg30_prefix_50_selX rho r500)
        (by simpa using seg30_prefix_50_selY rho r501)
        hbrow50
  obtain ⟨b50, hb50⟩ := Shieldd.GnarkFormal.RvkFixedGenInst1.boolify (rho 28367) hbrow50
  have hrb50 : RvkFixedBaseLadder.FixedStepRel 50 (toZMod b50)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX49 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY49 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX50 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY50 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb50]
    exact hr50
  have hp50 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX50 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY50 rho : Seg30.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 50 b50 _ _ hp49 hrb50).2
  exact hp50

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


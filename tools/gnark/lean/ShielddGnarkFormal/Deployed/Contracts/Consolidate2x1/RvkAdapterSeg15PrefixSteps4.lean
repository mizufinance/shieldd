import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas4
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

theorem seg15_prefix_steps4 (rho : Nat -> Seg15.F)
    (hp40 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX40 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY40 rho : Seg15.F)⟩ : EdwardsBridge.Point))
    (r41 : Seg15.relationRow41 rho)
    (r452 : Seg15.relationRow452 rho)
    (r453 : Seg15.relationRow453 rho)
    (r454 : Seg15.relationRow454 rho)
    (r455 : Seg15.relationRow455 rho)
    (r456 : Seg15.relationRow456 rho)
    (r42 : Seg15.relationRow42 rho)
    (r457 : Seg15.relationRow457 rho)
    (r458 : Seg15.relationRow458 rho)
    (r459 : Seg15.relationRow459 rho)
    (r460 : Seg15.relationRow460 rho)
    (r461 : Seg15.relationRow461 rho)
    (r43 : Seg15.relationRow43 rho)
    (r462 : Seg15.relationRow462 rho)
    (r463 : Seg15.relationRow463 rho)
    (r464 : Seg15.relationRow464 rho)
    (r465 : Seg15.relationRow465 rho)
    (r466 : Seg15.relationRow466 rho)
    (r44 : Seg15.relationRow44 rho)
    (r467 : Seg15.relationRow467 rho)
    (r468 : Seg15.relationRow468 rho)
    (r469 : Seg15.relationRow469 rho)
    (r470 : Seg15.relationRow470 rho)
    (r471 : Seg15.relationRow471 rho)
    (r45 : Seg15.relationRow45 rho)
    (r472 : Seg15.relationRow472 rho)
    (r473 : Seg15.relationRow473 rho)
    (r474 : Seg15.relationRow474 rho)
    (r475 : Seg15.relationRow475 rho)
    (r476 : Seg15.relationRow476 rho)
    (r46 : Seg15.relationRow46 rho)
    (r477 : Seg15.relationRow477 rho)
    (r478 : Seg15.relationRow478 rho)
    (r479 : Seg15.relationRow479 rho)
    (r480 : Seg15.relationRow480 rho)
    (r481 : Seg15.relationRow481 rho)
    (r47 : Seg15.relationRow47 rho)
    (r482 : Seg15.relationRow482 rho)
    (r483 : Seg15.relationRow483 rho)
    (r484 : Seg15.relationRow484 rho)
    (r485 : Seg15.relationRow485 rho)
    (r486 : Seg15.relationRow486 rho)
    (r48 : Seg15.relationRow48 rho)
    (r487 : Seg15.relationRow487 rho)
    (r488 : Seg15.relationRow488 rho)
    (r489 : Seg15.relationRow489 rho)
    (r490 : Seg15.relationRow490 rho)
    (r491 : Seg15.relationRow491 rho)
    (r49 : Seg15.relationRow49 rho)
    (r492 : Seg15.relationRow492 rho)
    (r493 : Seg15.relationRow493 rho)
    (r494 : Seg15.relationRow494 rho)
    (r495 : Seg15.relationRow495 rho)
    (r496 : Seg15.relationRow496 rho)
    (r50 : Seg15.relationRow50 rho)
    (r497 : Seg15.relationRow497 rho)
    (r498 : Seg15.relationRow498 rho)
    (r499 : Seg15.relationRow499 rho)
    (r500 : Seg15.relationRow500 rho)
    (r501 : Seg15.relationRow501 rho)
    : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX50 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY50 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
  have hbrow41 : (1*(rho 16428))*(1 + (-1)*(rho 16428)) = 0 := by
    simpa [Seg15.relationRow41] using r41
  have hacc41 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc41 (rho 16387 : Seg15.F)
      (seg15AccX40 rho : Seg15.F) (seg15AccY40 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc41] using hp40
  have hr41 : RvkFixedBaseLadder.FixedStepRel 41 (rho 16428)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX40 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY40 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX41 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY41 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc41, seg15AccX41, seg15AccY41, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung41_wide (rho 16387 : Seg15.F) (rho 16428 : Seg15.F) (seg15AccX40 rho : Seg15.F) (seg15AccY40 rho : Seg15.F) (rho 16838 : Seg15.F) (rho 16839 : Seg15.F) (rho 16840 : Seg15.F) (rho 16841 : Seg15.F) (rho 16842 : Seg15.F) hacc41
        (by simpa using seg15_prefix_41_v2 rho r452)
        (by simpa using seg15_prefix_41_addX rho r453)
        (by simpa using seg15_prefix_41_addY rho r454)
        (by simpa using seg15_prefix_41_selX rho r455)
        (by simpa using seg15_prefix_41_selY rho r456)
        hbrow41
  obtain ⟨b41, hb41⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16428) hbrow41
  have hrb41 : RvkFixedBaseLadder.FixedStepRel 41 (toZMod b41)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX40 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY40 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX41 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY41 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb41]
    exact hr41
  have hp41 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX41 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY41 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 41 b41 _ _ hp40 hrb41).2
  have hbrow42 : (1*(rho 16429))*(1 + (-1)*(rho 16429)) = 0 := by
    simpa [Seg15.relationRow42] using r42
  have hacc42 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc42 (rho 16387 : Seg15.F)
      (seg15AccX41 rho : Seg15.F) (seg15AccY41 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc42] using hp41
  have hr42 : RvkFixedBaseLadder.FixedStepRel 42 (rho 16429)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX41 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY41 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX42 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY42 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc42, seg15AccX42, seg15AccY42, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung42_wide (rho 16387 : Seg15.F) (rho 16429 : Seg15.F) (seg15AccX41 rho : Seg15.F) (seg15AccY41 rho : Seg15.F) (rho 16843 : Seg15.F) (rho 16844 : Seg15.F) (rho 16845 : Seg15.F) (rho 16846 : Seg15.F) (rho 16847 : Seg15.F) hacc42
        (by simpa using seg15_prefix_42_v2 rho r457)
        (by simpa using seg15_prefix_42_addX rho r458)
        (by simpa using seg15_prefix_42_addY rho r459)
        (by simpa using seg15_prefix_42_selX rho r460)
        (by simpa using seg15_prefix_42_selY rho r461)
        hbrow42
  obtain ⟨b42, hb42⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16429) hbrow42
  have hrb42 : RvkFixedBaseLadder.FixedStepRel 42 (toZMod b42)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX41 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY41 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX42 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY42 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb42]
    exact hr42
  have hp42 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX42 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY42 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 42 b42 _ _ hp41 hrb42).2
  have hbrow43 : (1*(rho 16430))*(1 + (-1)*(rho 16430)) = 0 := by
    simpa [Seg15.relationRow43] using r43
  have hacc43 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc43 (rho 16387 : Seg15.F)
      (seg15AccX42 rho : Seg15.F) (seg15AccY42 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc43] using hp42
  have hr43 : RvkFixedBaseLadder.FixedStepRel 43 (rho 16430)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX42 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY42 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX43 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY43 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc43, seg15AccX43, seg15AccY43, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung43_wide (rho 16387 : Seg15.F) (rho 16430 : Seg15.F) (seg15AccX42 rho : Seg15.F) (seg15AccY42 rho : Seg15.F) (rho 16848 : Seg15.F) (rho 16849 : Seg15.F) (rho 16850 : Seg15.F) (rho 16851 : Seg15.F) (rho 16852 : Seg15.F) hacc43
        (by simpa using seg15_prefix_43_v2 rho r462)
        (by simpa using seg15_prefix_43_addX rho r463)
        (by simpa using seg15_prefix_43_addY rho r464)
        (by simpa using seg15_prefix_43_selX rho r465)
        (by simpa using seg15_prefix_43_selY rho r466)
        hbrow43
  obtain ⟨b43, hb43⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16430) hbrow43
  have hrb43 : RvkFixedBaseLadder.FixedStepRel 43 (toZMod b43)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX42 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY42 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX43 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY43 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb43]
    exact hr43
  have hp43 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX43 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY43 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 43 b43 _ _ hp42 hrb43).2
  have hbrow44 : (1*(rho 16431))*(1 + (-1)*(rho 16431)) = 0 := by
    simpa [Seg15.relationRow44] using r44
  have hacc44 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc44 (rho 16387 : Seg15.F)
      (seg15AccX43 rho : Seg15.F) (seg15AccY43 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc44] using hp43
  have hr44 : RvkFixedBaseLadder.FixedStepRel 44 (rho 16431)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX43 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY43 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX44 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY44 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc44, seg15AccX44, seg15AccY44, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung44_wide (rho 16387 : Seg15.F) (rho 16431 : Seg15.F) (seg15AccX43 rho : Seg15.F) (seg15AccY43 rho : Seg15.F) (rho 16853 : Seg15.F) (rho 16854 : Seg15.F) (rho 16855 : Seg15.F) (rho 16856 : Seg15.F) (rho 16857 : Seg15.F) hacc44
        (by simpa using seg15_prefix_44_v2 rho r467)
        (by simpa using seg15_prefix_44_addX rho r468)
        (by simpa using seg15_prefix_44_addY rho r469)
        (by simpa using seg15_prefix_44_selX rho r470)
        (by simpa using seg15_prefix_44_selY rho r471)
        hbrow44
  obtain ⟨b44, hb44⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16431) hbrow44
  have hrb44 : RvkFixedBaseLadder.FixedStepRel 44 (toZMod b44)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX43 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY43 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX44 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY44 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb44]
    exact hr44
  have hp44 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX44 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY44 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 44 b44 _ _ hp43 hrb44).2
  have hbrow45 : (1*(rho 16432))*(1 + (-1)*(rho 16432)) = 0 := by
    simpa [Seg15.relationRow45] using r45
  have hacc45 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc45 (rho 16387 : Seg15.F)
      (seg15AccX44 rho : Seg15.F) (seg15AccY44 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc45] using hp44
  have hr45 : RvkFixedBaseLadder.FixedStepRel 45 (rho 16432)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX44 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY44 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX45 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY45 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc45, seg15AccX45, seg15AccY45, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung45_wide (rho 16387 : Seg15.F) (rho 16432 : Seg15.F) (seg15AccX44 rho : Seg15.F) (seg15AccY44 rho : Seg15.F) (rho 16858 : Seg15.F) (rho 16859 : Seg15.F) (rho 16860 : Seg15.F) (rho 16861 : Seg15.F) (rho 16862 : Seg15.F) hacc45
        (by simpa using seg15_prefix_45_v2 rho r472)
        (by simpa using seg15_prefix_45_addX rho r473)
        (by simpa using seg15_prefix_45_addY rho r474)
        (by simpa using seg15_prefix_45_selX rho r475)
        (by simpa using seg15_prefix_45_selY rho r476)
        hbrow45
  obtain ⟨b45, hb45⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16432) hbrow45
  have hrb45 : RvkFixedBaseLadder.FixedStepRel 45 (toZMod b45)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX44 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY44 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX45 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY45 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb45]
    exact hr45
  have hp45 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX45 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY45 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 45 b45 _ _ hp44 hrb45).2
  have hbrow46 : (1*(rho 16433))*(1 + (-1)*(rho 16433)) = 0 := by
    simpa [Seg15.relationRow46] using r46
  have hacc46 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc46 (rho 16387 : Seg15.F)
      (seg15AccX45 rho : Seg15.F) (seg15AccY45 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc46] using hp45
  have hr46 : RvkFixedBaseLadder.FixedStepRel 46 (rho 16433)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX45 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY45 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX46 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY46 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc46, seg15AccX46, seg15AccY46, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung46_wide (rho 16387 : Seg15.F) (rho 16433 : Seg15.F) (seg15AccX45 rho : Seg15.F) (seg15AccY45 rho : Seg15.F) (rho 16863 : Seg15.F) (rho 16864 : Seg15.F) (rho 16865 : Seg15.F) (rho 16866 : Seg15.F) (rho 16867 : Seg15.F) hacc46
        (by simpa using seg15_prefix_46_v2 rho r477)
        (by simpa using seg15_prefix_46_addX rho r478)
        (by simpa using seg15_prefix_46_addY rho r479)
        (by simpa using seg15_prefix_46_selX rho r480)
        (by simpa using seg15_prefix_46_selY rho r481)
        hbrow46
  obtain ⟨b46, hb46⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16433) hbrow46
  have hrb46 : RvkFixedBaseLadder.FixedStepRel 46 (toZMod b46)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX45 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY45 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX46 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY46 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb46]
    exact hr46
  have hp46 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX46 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY46 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 46 b46 _ _ hp45 hrb46).2
  have hbrow47 : (1*(rho 16434))*(1 + (-1)*(rho 16434)) = 0 := by
    simpa [Seg15.relationRow47] using r47
  have hacc47 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc47 (rho 16387 : Seg15.F)
      (seg15AccX46 rho : Seg15.F) (seg15AccY46 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc47] using hp46
  have hr47 : RvkFixedBaseLadder.FixedStepRel 47 (rho 16434)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX46 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY46 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX47 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY47 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc47, seg15AccX47, seg15AccY47, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung47_wide (rho 16387 : Seg15.F) (rho 16434 : Seg15.F) (seg15AccX46 rho : Seg15.F) (seg15AccY46 rho : Seg15.F) (rho 16868 : Seg15.F) (rho 16869 : Seg15.F) (rho 16870 : Seg15.F) (rho 16871 : Seg15.F) (rho 16872 : Seg15.F) hacc47
        (by simpa using seg15_prefix_47_v2 rho r482)
        (by simpa using seg15_prefix_47_addX rho r483)
        (by simpa using seg15_prefix_47_addY rho r484)
        (by simpa using seg15_prefix_47_selX rho r485)
        (by simpa using seg15_prefix_47_selY rho r486)
        hbrow47
  obtain ⟨b47, hb47⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16434) hbrow47
  have hrb47 : RvkFixedBaseLadder.FixedStepRel 47 (toZMod b47)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX46 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY46 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX47 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY47 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb47]
    exact hr47
  have hp47 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX47 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY47 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 47 b47 _ _ hp46 hrb47).2
  have hbrow48 : (1*(rho 16435))*(1 + (-1)*(rho 16435)) = 0 := by
    simpa [Seg15.relationRow48] using r48
  have hacc48 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc48 (rho 16387 : Seg15.F)
      (seg15AccX47 rho : Seg15.F) (seg15AccY47 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc48] using hp47
  have hr48 : RvkFixedBaseLadder.FixedStepRel 48 (rho 16435)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX47 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY47 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX48 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY48 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc48, seg15AccX48, seg15AccY48, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung48_wide (rho 16387 : Seg15.F) (rho 16435 : Seg15.F) (seg15AccX47 rho : Seg15.F) (seg15AccY47 rho : Seg15.F) (rho 16873 : Seg15.F) (rho 16874 : Seg15.F) (rho 16875 : Seg15.F) (rho 16876 : Seg15.F) (rho 16877 : Seg15.F) hacc48
        (by simpa using seg15_prefix_48_v2 rho r487)
        (by simpa using seg15_prefix_48_addX rho r488)
        (by simpa using seg15_prefix_48_addY rho r489)
        (by simpa using seg15_prefix_48_selX rho r490)
        (by simpa using seg15_prefix_48_selY rho r491)
        hbrow48
  obtain ⟨b48, hb48⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16435) hbrow48
  have hrb48 : RvkFixedBaseLadder.FixedStepRel 48 (toZMod b48)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX47 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY47 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX48 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY48 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb48]
    exact hr48
  have hp48 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX48 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY48 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 48 b48 _ _ hp47 hrb48).2
  have hbrow49 : (1*(rho 16436))*(1 + (-1)*(rho 16436)) = 0 := by
    simpa [Seg15.relationRow49] using r49
  have hacc49 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc49 (rho 16387 : Seg15.F)
      (seg15AccX48 rho : Seg15.F) (seg15AccY48 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc49] using hp48
  have hr49 : RvkFixedBaseLadder.FixedStepRel 49 (rho 16436)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX48 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY48 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX49 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY49 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc49, seg15AccX49, seg15AccY49, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung49_wide (rho 16387 : Seg15.F) (rho 16436 : Seg15.F) (seg15AccX48 rho : Seg15.F) (seg15AccY48 rho : Seg15.F) (rho 16878 : Seg15.F) (rho 16879 : Seg15.F) (rho 16880 : Seg15.F) (rho 16881 : Seg15.F) (rho 16882 : Seg15.F) hacc49
        (by simpa using seg15_prefix_49_v2 rho r492)
        (by simpa using seg15_prefix_49_addX rho r493)
        (by simpa using seg15_prefix_49_addY rho r494)
        (by simpa using seg15_prefix_49_selX rho r495)
        (by simpa using seg15_prefix_49_selY rho r496)
        hbrow49
  obtain ⟨b49, hb49⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16436) hbrow49
  have hrb49 : RvkFixedBaseLadder.FixedStepRel 49 (toZMod b49)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX48 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY48 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX49 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY49 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb49]
    exact hr49
  have hp49 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX49 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY49 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 49 b49 _ _ hp48 hrb49).2
  have hbrow50 : (1*(rho 16437))*(1 + (-1)*(rho 16437)) = 0 := by
    simpa [Seg15.relationRow50] using r50
  have hacc50 : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc50 (rho 16387 : Seg15.F)
      (seg15AccX49 rho : Seg15.F) (seg15AccY49 rho : Seg15.F)) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc50] using hp49
  have hr50 : RvkFixedBaseLadder.FixedStepRel 50 (rho 16437)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX49 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY49 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX50 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY50 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc50, seg15AccX50, seg15AccY50, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung50_wide (rho 16387 : Seg15.F) (rho 16437 : Seg15.F) (seg15AccX49 rho : Seg15.F) (seg15AccY49 rho : Seg15.F) (rho 16883 : Seg15.F) (rho 16884 : Seg15.F) (rho 16885 : Seg15.F) (rho 16886 : Seg15.F) (rho 16887 : Seg15.F) hacc50
        (by simpa using seg15_prefix_50_v2 rho r497)
        (by simpa using seg15_prefix_50_addX rho r498)
        (by simpa using seg15_prefix_50_addY rho r499)
        (by simpa using seg15_prefix_50_selX rho r500)
        (by simpa using seg15_prefix_50_selY rho r501)
        hbrow50
  obtain ⟨b50, hb50⟩ := Shieldd.GnarkFormal.RvkFixedGenInst0.boolify (rho 16437) hbrow50
  have hrb50 : RvkFixedBaseLadder.FixedStepRel 50 (toZMod b50)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX49 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY49 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX50 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY50 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    rw [← hb50]
    exact hr50
  have hp50 : onCurve (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16387 + seg15AccX50 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16387 + seg15AccY50 rho : Seg15.F)⟩ : EdwardsBridge.Point) :=
    (RvkFixedBaseLadder.fixedStep_semantic 50 b50 _ _ hp49 hrb50).2
  exact hp50

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


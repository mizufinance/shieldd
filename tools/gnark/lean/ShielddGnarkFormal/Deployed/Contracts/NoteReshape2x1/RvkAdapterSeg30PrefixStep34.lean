import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas3
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_step34 (rho : Nat -> Seg30.F)
    (r34 : Seg30.relationRow34 rho)
    (r417 : Seg30.relationRow417 rho)
    (r418 : Seg30.relationRow418 rho)
    (r419 : Seg30.relationRow419 rho)
    (r420 : Seg30.relationRow420 rho)
    (r421 : Seg30.relationRow421 rho)
    (hacc : onCurve (seg30RvkAcc rho 34)) :
    RvkFixedBaseLadder.FixedStepRel 34 (rho 28345)
      (seg30RvkAcc rho 34) (seg30RvkAcc rho (34 + 1)) := by
  have hbrow34 : (1*(rho 28345))*(1 + (-1)*(rho 28345)) = 0 := by
    simpa [Seg30.relationRow34] using r34
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX33 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY33 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr34 : RvkFixedBaseLadder.FixedStepRel 34 (rho 28345)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX33 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY33 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX34 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY34 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc34, seg30AccX34, seg30AccY34, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung34_wide (rho 28311 : Seg30.F) (rho 28345 : Seg30.F) (seg30AccX33 rho : Seg30.F) (seg30AccY33 rho : Seg30.F) (rho 28727 : Seg30.F) (rho 28728 : Seg30.F) (rho 28729 : Seg30.F) (rho 28730 : Seg30.F) (rho 28731 : Seg30.F) hinput
        (by simpa using seg30_prefix_34_v2 rho r417)
        (by simpa using seg30_prefix_34_addX rho r418)
        (by simpa using seg30_prefix_34_addY rho r419)
        (by simpa using seg30_prefix_34_selX rho r420)
        (by simpa using seg30_prefix_34_selY rho r421)
        hbrow34
  exact hr34

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


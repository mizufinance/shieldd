import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas4
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

theorem seg30_prefix_step44 (rho : Nat -> Seg30.F)
    (r44 : Seg30.relationRow44 rho)
    (r467 : Seg30.relationRow467 rho)
    (r468 : Seg30.relationRow468 rho)
    (r469 : Seg30.relationRow469 rho)
    (r470 : Seg30.relationRow470 rho)
    (r471 : Seg30.relationRow471 rho)
    (hacc : onCurve (seg30RvkAcc rho 44)) :
    RvkFixedBaseLadder.FixedStepRel 44 (rho 28355)
      (seg30RvkAcc rho 44) (seg30RvkAcc rho (44 + 1)) := by
  have hbrow44 : (1*(rho 28355))*(1 + (-1)*(rho 28355)) = 0 := by
    simpa [Seg30.relationRow44] using r44
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX43 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY43 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr44 : RvkFixedBaseLadder.FixedStepRel 44 (rho 28355)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX43 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY43 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX44 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY44 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc44, seg30AccX44, seg30AccY44, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung44_wide (rho 28311 : Seg30.F) (rho 28355 : Seg30.F) (seg30AccX43 rho : Seg30.F) (seg30AccY43 rho : Seg30.F) (rho 28777 : Seg30.F) (rho 28778 : Seg30.F) (rho 28779 : Seg30.F) (rho 28780 : Seg30.F) (rho 28781 : Seg30.F) hinput
        (by simpa using seg30_prefix_44_v2 rho r467)
        (by simpa using seg30_prefix_44_addX rho r468)
        (by simpa using seg30_prefix_44_addY rho r469)
        (by simpa using seg30_prefix_44_selX rho r470)
        (by simpa using seg30_prefix_44_selY rho r471)
        hbrow44
  exact hr44

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


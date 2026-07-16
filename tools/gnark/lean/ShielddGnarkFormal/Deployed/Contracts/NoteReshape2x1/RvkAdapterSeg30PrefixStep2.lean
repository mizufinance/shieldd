import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas0
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

theorem seg30_prefix_step2 (rho : Nat -> Seg30.F)
    (r2 : Seg30.relationRow2 rho)
    (r257 : Seg30.relationRow257 rho)
    (r258 : Seg30.relationRow258 rho)
    (r259 : Seg30.relationRow259 rho)
    (r260 : Seg30.relationRow260 rho)
    (r261 : Seg30.relationRow261 rho)
    (hacc : onCurve (seg30RvkAcc rho 2)) :
    RvkFixedBaseLadder.FixedStepRel 2 (rho 28319)
      (seg30RvkAcc rho 2) (seg30RvkAcc rho (2 + 1)) := by
  have hbrow2 : (1*(rho 28319))*(1 + (-1)*(rho 28319)) = 0 := by
    simpa [Seg30.relationRow2] using r2
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX1 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY1 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr2 : RvkFixedBaseLadder.FixedStepRel 2 (rho 28319)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX1 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY1 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX2 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY2 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc2, seg30AccX2, seg30AccY2, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung2_wide (rho 28317 : Seg30.F) (rho 28319 : Seg30.F) (seg30AccX1 rho : Seg30.F) (seg30AccY1 rho : Seg30.F) (rho 28573 : Seg30.F) (rho 28574 : Seg30.F) (rho 28575 : Seg30.F) (rho 28576 : Seg30.F) (rho 28577 : Seg30.F) hinput
        (by simpa using seg30_prefix_2_v2 rho r257)
        (by simpa using seg30_prefix_2_addX rho r258)
        (by simpa using seg30_prefix_2_addY rho r259)
        (by simpa using seg30_prefix_2_selX rho r260)
        (by simpa using seg30_prefix_2_selY rho r261)
        hbrow2
  exact hr2

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas2
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

theorem seg30_prefix_step23 (rho : Nat -> Seg30.F)
    (r23 : Seg30.relationRow23 rho)
    (r362 : Seg30.relationRow362 rho)
    (r363 : Seg30.relationRow363 rho)
    (r364 : Seg30.relationRow364 rho)
    (r365 : Seg30.relationRow365 rho)
    (r366 : Seg30.relationRow366 rho)
    (hacc : onCurve (seg30RvkAcc rho 23)) :
    RvkFixedBaseLadder.FixedStepRel 23 (rho 28340)
      (seg30RvkAcc rho 23) (seg30RvkAcc rho (23 + 1)) := by
  have hbrow23 : (1*(rho 28340))*(1 + (-1)*(rho 28340)) = 0 := by
    simpa [Seg30.relationRow23] using r23
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX22 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY22 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr23 : RvkFixedBaseLadder.FixedStepRel 23 (rho 28340)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX22 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY22 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX23 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY23 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc23, seg30AccX23, seg30AccY23, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung23_wide (rho 28317 : Seg30.F) (rho 28340 : Seg30.F) (seg30AccX22 rho : Seg30.F) (seg30AccY22 rho : Seg30.F) (rho 28678 : Seg30.F) (rho 28679 : Seg30.F) (rho 28680 : Seg30.F) (rho 28681 : Seg30.F) (rho 28682 : Seg30.F) hinput
        (by simpa using seg30_prefix_23_v2 rho r362)
        (by simpa using seg30_prefix_23_addX rho r363)
        (by simpa using seg30_prefix_23_addY rho r364)
        (by simpa using seg30_prefix_23_selX rho r365)
        (by simpa using seg30_prefix_23_selY rho r366)
        hbrow23
  exact hr23

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


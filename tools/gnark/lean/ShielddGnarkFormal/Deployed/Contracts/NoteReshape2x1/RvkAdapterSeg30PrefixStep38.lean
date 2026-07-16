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

theorem seg30_prefix_step38 (rho : Nat -> Seg30.F)
    (r38 : Seg30.relationRow38 rho)
    (r437 : Seg30.relationRow437 rho)
    (r438 : Seg30.relationRow438 rho)
    (r439 : Seg30.relationRow439 rho)
    (r440 : Seg30.relationRow440 rho)
    (r441 : Seg30.relationRow441 rho)
    (hacc : onCurve (seg30RvkAcc rho 38)) :
    RvkFixedBaseLadder.FixedStepRel 38 (rho 28355)
      (seg30RvkAcc rho 38) (seg30RvkAcc rho (38 + 1)) := by
  have hbrow38 : (1*(rho 28355))*(1 + (-1)*(rho 28355)) = 0 := by
    simpa [Seg30.relationRow38] using r38
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX37 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY37 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr38 : RvkFixedBaseLadder.FixedStepRel 38 (rho 28355)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX37 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY37 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX38 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY38 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc38, seg30AccX38, seg30AccY38, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung38_wide (rho 28317 : Seg30.F) (rho 28355 : Seg30.F) (seg30AccX37 rho : Seg30.F) (seg30AccY37 rho : Seg30.F) (rho 28753 : Seg30.F) (rho 28754 : Seg30.F) (rho 28755 : Seg30.F) (rho 28756 : Seg30.F) (rho 28757 : Seg30.F) hinput
        (by simpa using seg30_prefix_38_v2 rho r437)
        (by simpa using seg30_prefix_38_addX rho r438)
        (by simpa using seg30_prefix_38_addY rho r439)
        (by simpa using seg30_prefix_38_selX rho r440)
        (by simpa using seg30_prefix_38_selY rho r441)
        hbrow38
  exact hr38

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas12
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

theorem seg30_prefix_step124 (rho : Nat -> Seg30.F)
    (r124 : Seg30.relationRow124 rho)
    (r867 : Seg30.relationRow867 rho)
    (r868 : Seg30.relationRow868 rho)
    (r869 : Seg30.relationRow869 rho)
    (r870 : Seg30.relationRow870 rho)
    (r871 : Seg30.relationRow871 rho)
    (hacc : onCurve (seg30RvkAcc rho 124)) :
    RvkFixedBaseLadder.FixedStepRel 124 (rho 28441)
      (seg30RvkAcc rho 124) (seg30RvkAcc rho (124 + 1)) := by
  have hbrow124 : (1*(rho 28441))*(1 + (-1)*(rho 28441)) = 0 := by
    simpa [Seg30.relationRow124] using r124
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX123 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY123 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr124 : RvkFixedBaseLadder.FixedStepRel 124 (rho 28441)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX123 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY123 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX124 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY124 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc124, seg30AccX124, seg30AccY124, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung124_wide (rho 28317 : Seg30.F) (rho 28441 : Seg30.F) (seg30AccX123 rho : Seg30.F) (seg30AccY123 rho : Seg30.F) (rho 29183 : Seg30.F) (rho 29184 : Seg30.F) (rho 29185 : Seg30.F) (rho 29186 : Seg30.F) (rho 29187 : Seg30.F) hinput
        (by simpa using seg30_prefix_124_v2 rho r867)
        (by simpa using seg30_prefix_124_addX rho r868)
        (by simpa using seg30_prefix_124_addY rho r869)
        (by simpa using seg30_prefix_124_selX rho r870)
        (by simpa using seg30_prefix_124_selY rho r871)
        hbrow124
  exact hr124

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


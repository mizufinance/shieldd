import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas14
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

theorem seg30_prefix_step145 (rho : Nat -> Seg30.F)
    (r145 : Seg30.relationRow145 rho)
    (r972 : Seg30.relationRow972 rho)
    (r973 : Seg30.relationRow973 rho)
    (r974 : Seg30.relationRow974 rho)
    (r975 : Seg30.relationRow975 rho)
    (r976 : Seg30.relationRow976 rho)
    (hacc : onCurve (seg30RvkAcc rho 145)) :
    RvkFixedBaseLadder.FixedStepRel 145 (rho 28456)
      (seg30RvkAcc rho 145) (seg30RvkAcc rho (145 + 1)) := by
  have hbrow145 : (1*(rho 28456))*(1 + (-1)*(rho 28456)) = 0 := by
    simpa [Seg30.relationRow145] using r145
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX144 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY144 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr145 : RvkFixedBaseLadder.FixedStepRel 145 (rho 28456)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX144 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY144 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX145 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY145 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc145, seg30AccX145, seg30AccY145, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung145_wide (rho 28311 : Seg30.F) (rho 28456 : Seg30.F) (seg30AccX144 rho : Seg30.F) (seg30AccY144 rho : Seg30.F) (rho 29282 : Seg30.F) (rho 29283 : Seg30.F) (rho 29284 : Seg30.F) (rho 29285 : Seg30.F) (rho 29286 : Seg30.F) hinput
        (by simpa using seg30_prefix_145_v2 rho r972)
        (by simpa using seg30_prefix_145_addX rho r973)
        (by simpa using seg30_prefix_145_addY rho r974)
        (by simpa using seg30_prefix_145_selX rho r975)
        (by simpa using seg30_prefix_145_selY rho r976)
        hbrow145
  exact hr145

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


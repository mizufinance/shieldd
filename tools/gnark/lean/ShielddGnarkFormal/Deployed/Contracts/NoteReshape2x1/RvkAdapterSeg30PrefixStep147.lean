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

theorem seg30_prefix_step147 (rho : Nat -> Seg30.F)
    (r147 : Seg30.relationRow147 rho)
    (r982 : Seg30.relationRow982 rho)
    (r983 : Seg30.relationRow983 rho)
    (r984 : Seg30.relationRow984 rho)
    (r985 : Seg30.relationRow985 rho)
    (r986 : Seg30.relationRow986 rho)
    (hacc : onCurve (seg30RvkAcc rho 147)) :
    RvkFixedBaseLadder.FixedStepRel 147 (rho 28458)
      (seg30RvkAcc rho 147) (seg30RvkAcc rho (147 + 1)) := by
  have hbrow147 : (1*(rho 28458))*(1 + (-1)*(rho 28458)) = 0 := by
    simpa [Seg30.relationRow147] using r147
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX146 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY146 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr147 : RvkFixedBaseLadder.FixedStepRel 147 (rho 28458)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX146 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY146 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX147 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY147 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc147, seg30AccX147, seg30AccY147, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung147_wide (rho 28311 : Seg30.F) (rho 28458 : Seg30.F) (seg30AccX146 rho : Seg30.F) (seg30AccY146 rho : Seg30.F) (rho 29292 : Seg30.F) (rho 29293 : Seg30.F) (rho 29294 : Seg30.F) (rho 29295 : Seg30.F) (rho 29296 : Seg30.F) hinput
        (by simpa using seg30_prefix_147_v2 rho r982)
        (by simpa using seg30_prefix_147_addX rho r983)
        (by simpa using seg30_prefix_147_addY rho r984)
        (by simpa using seg30_prefix_147_selX rho r985)
        (by simpa using seg30_prefix_147_selY rho r986)
        hbrow147
  exact hr147

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


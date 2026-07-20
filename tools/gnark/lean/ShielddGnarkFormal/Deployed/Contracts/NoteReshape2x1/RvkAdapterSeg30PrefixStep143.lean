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

theorem seg30_prefix_step143 (rho : Nat -> Seg30.F)
    (r143 : Seg30.relationRow143 rho)
    (r962 : Seg30.relationRow962 rho)
    (r963 : Seg30.relationRow963 rho)
    (r964 : Seg30.relationRow964 rho)
    (r965 : Seg30.relationRow965 rho)
    (r966 : Seg30.relationRow966 rho)
    (hacc : onCurve (seg30RvkAcc rho 143)) :
    RvkFixedBaseLadder.FixedStepRel 143 (rho 28454)
      (seg30RvkAcc rho 143) (seg30RvkAcc rho (143 + 1)) := by
  have hbrow143 : (1*(rho 28454))*(1 + (-1)*(rho 28454)) = 0 := by
    simpa [Seg30.relationRow143] using r143
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX142 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY142 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr143 : RvkFixedBaseLadder.FixedStepRel 143 (rho 28454)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX142 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY142 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX143 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY143 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc143, seg30AccX143, seg30AccY143, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung143_wide (rho 28311 : Seg30.F) (rho 28454 : Seg30.F) (seg30AccX142 rho : Seg30.F) (seg30AccY142 rho : Seg30.F) (rho 29272 : Seg30.F) (rho 29273 : Seg30.F) (rho 29274 : Seg30.F) (rho 29275 : Seg30.F) (rho 29276 : Seg30.F) hinput
        (by simpa using seg30_prefix_143_v2 rho r962)
        (by simpa using seg30_prefix_143_addX rho r963)
        (by simpa using seg30_prefix_143_addY rho r964)
        (by simpa using seg30_prefix_143_selX rho r965)
        (by simpa using seg30_prefix_143_selY rho r966)
        hbrow143
  exact hr143

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


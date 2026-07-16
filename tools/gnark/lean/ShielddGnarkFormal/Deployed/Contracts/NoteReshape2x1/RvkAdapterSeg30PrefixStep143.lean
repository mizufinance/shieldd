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
    RvkFixedBaseLadder.FixedStepRel 143 (rho 28460)
      (seg30RvkAcc rho 143) (seg30RvkAcc rho (143 + 1)) := by
  have hbrow143 : (1*(rho 28460))*(1 + (-1)*(rho 28460)) = 0 := by
    simpa [Seg30.relationRow143] using r143
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX142 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY142 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr143 : RvkFixedBaseLadder.FixedStepRel 143 (rho 28460)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX142 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY142 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX143 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY143 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc143, seg30AccX143, seg30AccY143, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung143_wide (rho 28317 : Seg30.F) (rho 28460 : Seg30.F) (seg30AccX142 rho : Seg30.F) (seg30AccY142 rho : Seg30.F) (rho 29278 : Seg30.F) (rho 29279 : Seg30.F) (rho 29280 : Seg30.F) (rho 29281 : Seg30.F) (rho 29282 : Seg30.F) hinput
        (by simpa using seg30_prefix_143_v2 rho r962)
        (by simpa using seg30_prefix_143_addX rho r963)
        (by simpa using seg30_prefix_143_addY rho r964)
        (by simpa using seg30_prefix_143_selX rho r965)
        (by simpa using seg30_prefix_143_selY rho r966)
        hbrow143
  exact hr143

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


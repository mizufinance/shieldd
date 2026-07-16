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

theorem seg30_prefix_step123 (rho : Nat -> Seg30.F)
    (r123 : Seg30.relationRow123 rho)
    (r862 : Seg30.relationRow862 rho)
    (r863 : Seg30.relationRow863 rho)
    (r864 : Seg30.relationRow864 rho)
    (r865 : Seg30.relationRow865 rho)
    (r866 : Seg30.relationRow866 rho)
    (hacc : onCurve (seg30RvkAcc rho 123)) :
    RvkFixedBaseLadder.FixedStepRel 123 (rho 28440)
      (seg30RvkAcc rho 123) (seg30RvkAcc rho (123 + 1)) := by
  have hbrow123 : (1*(rho 28440))*(1 + (-1)*(rho 28440)) = 0 := by
    simpa [Seg30.relationRow123] using r123
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX122 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY122 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr123 : RvkFixedBaseLadder.FixedStepRel 123 (rho 28440)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX122 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY122 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX123 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY123 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc123, seg30AccX123, seg30AccY123, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung123_wide (rho 28317 : Seg30.F) (rho 28440 : Seg30.F) (seg30AccX122 rho : Seg30.F) (seg30AccY122 rho : Seg30.F) (rho 29178 : Seg30.F) (rho 29179 : Seg30.F) (rho 29180 : Seg30.F) (rho 29181 : Seg30.F) (rho 29182 : Seg30.F) hinput
        (by simpa using seg30_prefix_123_v2 rho r862)
        (by simpa using seg30_prefix_123_addX rho r863)
        (by simpa using seg30_prefix_123_addY rho r864)
        (by simpa using seg30_prefix_123_selX rho r865)
        (by simpa using seg30_prefix_123_selY rho r866)
        hbrow123
  exact hr123

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


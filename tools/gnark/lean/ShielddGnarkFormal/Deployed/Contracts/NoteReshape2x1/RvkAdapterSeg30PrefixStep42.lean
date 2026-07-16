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

theorem seg30_prefix_step42 (rho : Nat -> Seg30.F)
    (r42 : Seg30.relationRow42 rho)
    (r457 : Seg30.relationRow457 rho)
    (r458 : Seg30.relationRow458 rho)
    (r459 : Seg30.relationRow459 rho)
    (r460 : Seg30.relationRow460 rho)
    (r461 : Seg30.relationRow461 rho)
    (hacc : onCurve (seg30RvkAcc rho 42)) :
    RvkFixedBaseLadder.FixedStepRel 42 (rho 28359)
      (seg30RvkAcc rho 42) (seg30RvkAcc rho (42 + 1)) := by
  have hbrow42 : (1*(rho 28359))*(1 + (-1)*(rho 28359)) = 0 := by
    simpa [Seg30.relationRow42] using r42
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX41 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY41 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr42 : RvkFixedBaseLadder.FixedStepRel 42 (rho 28359)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX41 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY41 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX42 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY42 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc42, seg30AccX42, seg30AccY42, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung42_wide (rho 28317 : Seg30.F) (rho 28359 : Seg30.F) (seg30AccX41 rho : Seg30.F) (seg30AccY41 rho : Seg30.F) (rho 28773 : Seg30.F) (rho 28774 : Seg30.F) (rho 28775 : Seg30.F) (rho 28776 : Seg30.F) (rho 28777 : Seg30.F) hinput
        (by simpa using seg30_prefix_42_v2 rho r457)
        (by simpa using seg30_prefix_42_addX rho r458)
        (by simpa using seg30_prefix_42_addY rho r459)
        (by simpa using seg30_prefix_42_selX rho r460)
        (by simpa using seg30_prefix_42_selY rho r461)
        hbrow42
  exact hr42

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


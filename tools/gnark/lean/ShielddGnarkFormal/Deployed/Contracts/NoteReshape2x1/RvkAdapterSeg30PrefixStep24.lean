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

theorem seg30_prefix_step24 (rho : Nat -> Seg30.F)
    (r24 : Seg30.relationRow24 rho)
    (r367 : Seg30.relationRow367 rho)
    (r368 : Seg30.relationRow368 rho)
    (r369 : Seg30.relationRow369 rho)
    (r370 : Seg30.relationRow370 rho)
    (r371 : Seg30.relationRow371 rho)
    (hacc : onCurve (seg30RvkAcc rho 24)) :
    RvkFixedBaseLadder.FixedStepRel 24 (rho 28341)
      (seg30RvkAcc rho 24) (seg30RvkAcc rho (24 + 1)) := by
  have hbrow24 : (1*(rho 28341))*(1 + (-1)*(rho 28341)) = 0 := by
    simpa [Seg30.relationRow24] using r24
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX23 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY23 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr24 : RvkFixedBaseLadder.FixedStepRel 24 (rho 28341)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX23 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY23 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX24 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY24 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc24, seg30AccX24, seg30AccY24, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung24_wide (rho 28317 : Seg30.F) (rho 28341 : Seg30.F) (seg30AccX23 rho : Seg30.F) (seg30AccY23 rho : Seg30.F) (rho 28683 : Seg30.F) (rho 28684 : Seg30.F) (rho 28685 : Seg30.F) (rho 28686 : Seg30.F) (rho 28687 : Seg30.F) hinput
        (by simpa using seg30_prefix_24_v2 rho r367)
        (by simpa using seg30_prefix_24_addX rho r368)
        (by simpa using seg30_prefix_24_addY rho r369)
        (by simpa using seg30_prefix_24_selX rho r370)
        (by simpa using seg30_prefix_24_selY rho r371)
        hbrow24
  exact hr24

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


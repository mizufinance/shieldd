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

theorem seg30_prefix_step25 (rho : Nat -> Seg30.F)
    (r25 : Seg30.relationRow25 rho)
    (r372 : Seg30.relationRow372 rho)
    (r373 : Seg30.relationRow373 rho)
    (r374 : Seg30.relationRow374 rho)
    (r375 : Seg30.relationRow375 rho)
    (r376 : Seg30.relationRow376 rho)
    (hacc : onCurve (seg30RvkAcc rho 25)) :
    RvkFixedBaseLadder.FixedStepRel 25 (rho 28342)
      (seg30RvkAcc rho 25) (seg30RvkAcc rho (25 + 1)) := by
  have hbrow25 : (1*(rho 28342))*(1 + (-1)*(rho 28342)) = 0 := by
    simpa [Seg30.relationRow25] using r25
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX24 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY24 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr25 : RvkFixedBaseLadder.FixedStepRel 25 (rho 28342)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX24 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY24 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX25 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY25 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc25, seg30AccX25, seg30AccY25, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung25_wide (rho 28317 : Seg30.F) (rho 28342 : Seg30.F) (seg30AccX24 rho : Seg30.F) (seg30AccY24 rho : Seg30.F) (rho 28688 : Seg30.F) (rho 28689 : Seg30.F) (rho 28690 : Seg30.F) (rho 28691 : Seg30.F) (rho 28692 : Seg30.F) hinput
        (by simpa using seg30_prefix_25_v2 rho r372)
        (by simpa using seg30_prefix_25_addX rho r373)
        (by simpa using seg30_prefix_25_addY rho r374)
        (by simpa using seg30_prefix_25_selX rho r375)
        (by simpa using seg30_prefix_25_selY rho r376)
        hbrow25
  exact hr25

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


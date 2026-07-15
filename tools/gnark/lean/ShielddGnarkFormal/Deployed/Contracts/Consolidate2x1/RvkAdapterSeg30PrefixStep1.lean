import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas0
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_step1 (rho : Nat -> Seg30.F)
    (r1 : Seg30.relationRow1 rho)
    (r252 : Seg30.relationRow252 rho)
    (r253 : Seg30.relationRow253 rho)
    (r254 : Seg30.relationRow254 rho)
    (r255 : Seg30.relationRow255 rho)
    (r256 : Seg30.relationRow256 rho)
    (hacc : onCurve (seg30RvkAcc rho 1)) :
    RvkFixedBaseLadder.FixedStepRel 1 (rho 28318)
      (seg30RvkAcc rho 1) (seg30RvkAcc rho (1 + 1)) := by
  have hbrow1 : (1*(rho 28318))*(1 + (-1)*(rho 28318)) = 0 := by
    simpa [Seg30.relationRow1] using r1
  have hinput : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst1.acc1 (rho 28317 : Seg30.F)) := by
    exact hacc
  have hr1 : RvkFixedBaseLadder.FixedStepRel 1 (rho 28318)
      (Shieldd.GnarkFormal.RvkFixedGenInst1.acc1 (rho 28317 : Seg30.F)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX1 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY1 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc1, seg30AccX1, seg30AccY1, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung1 (rho 28317 : Seg30.F) (rho 28318 : Seg30.F) (rho 28568 : Seg30.F) (rho 28569 : Seg30.F) (rho 28570 : Seg30.F) (rho 28571 : Seg30.F) (rho 28572 : Seg30.F) hinput
        (by simpa using seg30_prefix_1_v2 rho r252)
        (by simpa using seg30_prefix_1_addX rho r253)
        (by simpa using seg30_prefix_1_addY rho r254)
        (by simpa using seg30_prefix_1_selX rho r255)
        (by simpa using seg30_prefix_1_selY rho r256)
        hbrow1
  exact hr1

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


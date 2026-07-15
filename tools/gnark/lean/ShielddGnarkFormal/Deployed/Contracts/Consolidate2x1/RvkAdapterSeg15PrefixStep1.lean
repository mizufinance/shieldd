import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas0
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_step1 (rho : Nat -> Seg15.F)
    (r1 : Seg15.relationRow1 rho)
    (r252 : Seg15.relationRow252 rho)
    (r253 : Seg15.relationRow253 rho)
    (r254 : Seg15.relationRow254 rho)
    (r255 : Seg15.relationRow255 rho)
    (r256 : Seg15.relationRow256 rho)
    (hacc : onCurve (seg15RvkAcc rho 1)) :
    RvkFixedBaseLadder.FixedStepRel 1 (rho 16137)
      (seg15RvkAcc rho 1) (seg15RvkAcc rho (1 + 1)) := by
  have hbrow1 : (1*(rho 16137))*(1 + (-1)*(rho 16137)) = 0 := by
    simpa [Seg15.relationRow1] using r1
  have hinput : onCurve (Shieldd.GnarkFormal.RvkFixedGenInst0.acc1 (rho 16136 : Seg15.F)) := by
    exact hacc
  have hr1 : RvkFixedBaseLadder.FixedStepRel 1 (rho 16137)
      (Shieldd.GnarkFormal.RvkFixedGenInst0.acc1 (rho 16136 : Seg15.F)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX1 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY1 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc1, seg15AccX1, seg15AccY1, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung1 (rho 16136 : Seg15.F) (rho 16137 : Seg15.F) (rho 16387 : Seg15.F) (rho 16388 : Seg15.F) (rho 16389 : Seg15.F) (rho 16390 : Seg15.F) (rho 16391 : Seg15.F) hinput
        (by simpa using seg15_prefix_1_v2 rho r252)
        (by simpa using seg15_prefix_1_addX rho r253)
        (by simpa using seg15_prefix_1_addY rho r254)
        (by simpa using seg15_prefix_1_selX rho r255)
        (by simpa using seg15_prefix_1_selY rho r256)
        hbrow1
  exact hr1

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


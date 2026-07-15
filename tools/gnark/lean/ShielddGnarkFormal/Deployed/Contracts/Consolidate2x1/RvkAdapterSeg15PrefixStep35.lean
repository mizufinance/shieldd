import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas3
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

theorem seg15_prefix_step35 (rho : Nat -> Seg15.F)
    (r35 : Seg15.relationRow35 rho)
    (r422 : Seg15.relationRow422 rho)
    (r423 : Seg15.relationRow423 rho)
    (r424 : Seg15.relationRow424 rho)
    (r425 : Seg15.relationRow425 rho)
    (r426 : Seg15.relationRow426 rho)
    (hacc : onCurve (seg15RvkAcc rho 35)) :
    RvkFixedBaseLadder.FixedStepRel 35 (rho 16171)
      (seg15RvkAcc rho 35) (seg15RvkAcc rho (35 + 1)) := by
  have hbrow35 : (1*(rho 16171))*(1 + (-1)*(rho 16171)) = 0 := by
    simpa [Seg15.relationRow35] using r35
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX34 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY34 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr35 : RvkFixedBaseLadder.FixedStepRel 35 (rho 16171)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX34 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY34 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX35 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY35 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc35, seg15AccX35, seg15AccY35, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung35_wide (rho 16136 : Seg15.F) (rho 16171 : Seg15.F) (seg15AccX34 rho : Seg15.F) (seg15AccY34 rho : Seg15.F) (rho 16557 : Seg15.F) (rho 16558 : Seg15.F) (rho 16559 : Seg15.F) (rho 16560 : Seg15.F) (rho 16561 : Seg15.F) hinput
        (by simpa using seg15_prefix_35_v2 rho r422)
        (by simpa using seg15_prefix_35_addX rho r423)
        (by simpa using seg15_prefix_35_addY rho r424)
        (by simpa using seg15_prefix_35_selX rho r425)
        (by simpa using seg15_prefix_35_selY rho r426)
        hbrow35
  exact hr35

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


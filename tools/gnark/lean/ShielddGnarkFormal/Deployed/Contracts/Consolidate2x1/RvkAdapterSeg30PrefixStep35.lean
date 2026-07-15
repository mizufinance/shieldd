import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas3
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

theorem seg30_prefix_step35 (rho : Nat -> Seg30.F)
    (r35 : Seg30.relationRow35 rho)
    (r422 : Seg30.relationRow422 rho)
    (r423 : Seg30.relationRow423 rho)
    (r424 : Seg30.relationRow424 rho)
    (r425 : Seg30.relationRow425 rho)
    (r426 : Seg30.relationRow426 rho)
    (hacc : onCurve (seg30RvkAcc rho 35)) :
    RvkFixedBaseLadder.FixedStepRel 35 (rho 28352)
      (seg30RvkAcc rho 35) (seg30RvkAcc rho (35 + 1)) := by
  have hbrow35 : (1*(rho 28352))*(1 + (-1)*(rho 28352)) = 0 := by
    simpa [Seg30.relationRow35] using r35
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX34 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY34 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr35 : RvkFixedBaseLadder.FixedStepRel 35 (rho 28352)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX34 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY34 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX35 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY35 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc35, seg30AccX35, seg30AccY35, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung35_wide (rho 28317 : Seg30.F) (rho 28352 : Seg30.F) (seg30AccX34 rho : Seg30.F) (seg30AccY34 rho : Seg30.F) (rho 28738 : Seg30.F) (rho 28739 : Seg30.F) (rho 28740 : Seg30.F) (rho 28741 : Seg30.F) (rho 28742 : Seg30.F) hinput
        (by simpa using seg30_prefix_35_v2 rho r422)
        (by simpa using seg30_prefix_35_addX rho r423)
        (by simpa using seg30_prefix_35_addY rho r424)
        (by simpa using seg30_prefix_35_selX rho r425)
        (by simpa using seg30_prefix_35_selY rho r426)
        hbrow35
  exact hr35

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


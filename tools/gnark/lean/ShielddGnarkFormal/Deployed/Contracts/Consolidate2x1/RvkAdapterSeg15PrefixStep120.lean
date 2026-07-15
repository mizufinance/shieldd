import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas11
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

theorem seg15_prefix_step120 (rho : Nat -> Seg15.F)
    (r120 : Seg15.relationRow120 rho)
    (r847 : Seg15.relationRow847 rho)
    (r848 : Seg15.relationRow848 rho)
    (r849 : Seg15.relationRow849 rho)
    (r850 : Seg15.relationRow850 rho)
    (r851 : Seg15.relationRow851 rho)
    (hacc : onCurve (seg15RvkAcc rho 120)) :
    RvkFixedBaseLadder.FixedStepRel 120 (rho 16256)
      (seg15RvkAcc rho 120) (seg15RvkAcc rho (120 + 1)) := by
  have hbrow120 : (1*(rho 16256))*(1 + (-1)*(rho 16256)) = 0 := by
    simpa [Seg15.relationRow120] using r120
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX119 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY119 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr120 : RvkFixedBaseLadder.FixedStepRel 120 (rho 16256)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX119 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY119 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX120 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY120 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc120, seg15AccX120, seg15AccY120, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung120_wide (rho 16136 : Seg15.F) (rho 16256 : Seg15.F) (seg15AccX119 rho : Seg15.F) (seg15AccY119 rho : Seg15.F) (rho 16982 : Seg15.F) (rho 16983 : Seg15.F) (rho 16984 : Seg15.F) (rho 16985 : Seg15.F) (rho 16986 : Seg15.F) hinput
        (by simpa using seg15_prefix_120_v2 rho r847)
        (by simpa using seg15_prefix_120_addX rho r848)
        (by simpa using seg15_prefix_120_addY rho r849)
        (by simpa using seg15_prefix_120_selX rho r850)
        (by simpa using seg15_prefix_120_selY rho r851)
        hbrow120
  exact hr120

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


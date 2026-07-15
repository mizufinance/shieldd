import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas12
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

theorem seg15_prefix_step123 (rho : Nat -> Seg15.F)
    (r123 : Seg15.relationRow123 rho)
    (r862 : Seg15.relationRow862 rho)
    (r863 : Seg15.relationRow863 rho)
    (r864 : Seg15.relationRow864 rho)
    (r865 : Seg15.relationRow865 rho)
    (r866 : Seg15.relationRow866 rho)
    (hacc : onCurve (seg15RvkAcc rho 123)) :
    RvkFixedBaseLadder.FixedStepRel 123 (rho 16259)
      (seg15RvkAcc rho 123) (seg15RvkAcc rho (123 + 1)) := by
  have hbrow123 : (1*(rho 16259))*(1 + (-1)*(rho 16259)) = 0 := by
    simpa [Seg15.relationRow123] using r123
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX122 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY122 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr123 : RvkFixedBaseLadder.FixedStepRel 123 (rho 16259)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX122 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY122 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX123 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY123 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc123, seg15AccX123, seg15AccY123, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung123_wide (rho 16136 : Seg15.F) (rho 16259 : Seg15.F) (seg15AccX122 rho : Seg15.F) (seg15AccY122 rho : Seg15.F) (rho 16997 : Seg15.F) (rho 16998 : Seg15.F) (rho 16999 : Seg15.F) (rho 17000 : Seg15.F) (rho 17001 : Seg15.F) hinput
        (by simpa using seg15_prefix_123_v2 rho r862)
        (by simpa using seg15_prefix_123_addX rho r863)
        (by simpa using seg15_prefix_123_addY rho r864)
        (by simpa using seg15_prefix_123_selX rho r865)
        (by simpa using seg15_prefix_123_selY rho r866)
        hbrow123
  exact hr123

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


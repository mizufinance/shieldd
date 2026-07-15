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

theorem seg15_prefix_step115 (rho : Nat -> Seg15.F)
    (r115 : Seg15.relationRow115 rho)
    (r822 : Seg15.relationRow822 rho)
    (r823 : Seg15.relationRow823 rho)
    (r824 : Seg15.relationRow824 rho)
    (r825 : Seg15.relationRow825 rho)
    (r826 : Seg15.relationRow826 rho)
    (hacc : onCurve (seg15RvkAcc rho 115)) :
    RvkFixedBaseLadder.FixedStepRel 115 (rho 16251)
      (seg15RvkAcc rho 115) (seg15RvkAcc rho (115 + 1)) := by
  have hbrow115 : (1*(rho 16251))*(1 + (-1)*(rho 16251)) = 0 := by
    simpa [Seg15.relationRow115] using r115
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX114 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY114 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr115 : RvkFixedBaseLadder.FixedStepRel 115 (rho 16251)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX114 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY114 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX115 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY115 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc115, seg15AccX115, seg15AccY115, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung115_wide (rho 16136 : Seg15.F) (rho 16251 : Seg15.F) (seg15AccX114 rho : Seg15.F) (seg15AccY114 rho : Seg15.F) (rho 16957 : Seg15.F) (rho 16958 : Seg15.F) (rho 16959 : Seg15.F) (rho 16960 : Seg15.F) (rho 16961 : Seg15.F) hinput
        (by simpa using seg15_prefix_115_v2 rho r822)
        (by simpa using seg15_prefix_115_addX rho r823)
        (by simpa using seg15_prefix_115_addY rho r824)
        (by simpa using seg15_prefix_115_selX rho r825)
        (by simpa using seg15_prefix_115_selY rho r826)
        hbrow115
  exact hr115

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


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

theorem seg15_prefix_step129 (rho : Nat -> Seg15.F)
    (r129 : Seg15.relationRow129 rho)
    (r892 : Seg15.relationRow892 rho)
    (r893 : Seg15.relationRow893 rho)
    (r894 : Seg15.relationRow894 rho)
    (r895 : Seg15.relationRow895 rho)
    (r896 : Seg15.relationRow896 rho)
    (hacc : onCurve (seg15RvkAcc rho 129)) :
    RvkFixedBaseLadder.FixedStepRel 129 (rho 16265)
      (seg15RvkAcc rho 129) (seg15RvkAcc rho (129 + 1)) := by
  have hbrow129 : (1*(rho 16265))*(1 + (-1)*(rho 16265)) = 0 := by
    simpa [Seg15.relationRow129] using r129
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX128 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY128 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr129 : RvkFixedBaseLadder.FixedStepRel 129 (rho 16265)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX128 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY128 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX129 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY129 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc129, seg15AccX129, seg15AccY129, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung129_wide (rho 16136 : Seg15.F) (rho 16265 : Seg15.F) (seg15AccX128 rho : Seg15.F) (seg15AccY128 rho : Seg15.F) (rho 17027 : Seg15.F) (rho 17028 : Seg15.F) (rho 17029 : Seg15.F) (rho 17030 : Seg15.F) (rho 17031 : Seg15.F) hinput
        (by simpa using seg15_prefix_129_v2 rho r892)
        (by simpa using seg15_prefix_129_addX rho r893)
        (by simpa using seg15_prefix_129_addY rho r894)
        (by simpa using seg15_prefix_129_selX rho r895)
        (by simpa using seg15_prefix_129_selY rho r896)
        hbrow129
  exact hr129

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


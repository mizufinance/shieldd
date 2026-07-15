import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas12
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

theorem seg30_prefix_step129 (rho : Nat -> Seg30.F)
    (r129 : Seg30.relationRow129 rho)
    (r892 : Seg30.relationRow892 rho)
    (r893 : Seg30.relationRow893 rho)
    (r894 : Seg30.relationRow894 rho)
    (r895 : Seg30.relationRow895 rho)
    (r896 : Seg30.relationRow896 rho)
    (hacc : onCurve (seg30RvkAcc rho 129)) :
    RvkFixedBaseLadder.FixedStepRel 129 (rho 28446)
      (seg30RvkAcc rho 129) (seg30RvkAcc rho (129 + 1)) := by
  have hbrow129 : (1*(rho 28446))*(1 + (-1)*(rho 28446)) = 0 := by
    simpa [Seg30.relationRow129] using r129
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX128 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY128 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr129 : RvkFixedBaseLadder.FixedStepRel 129 (rho 28446)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX128 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY128 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX129 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY129 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc129, seg30AccX129, seg30AccY129, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung129_wide (rho 28317 : Seg30.F) (rho 28446 : Seg30.F) (seg30AccX128 rho : Seg30.F) (seg30AccY128 rho : Seg30.F) (rho 29208 : Seg30.F) (rho 29209 : Seg30.F) (rho 29210 : Seg30.F) (rho 29211 : Seg30.F) (rho 29212 : Seg30.F) hinput
        (by simpa using seg30_prefix_129_v2 rho r892)
        (by simpa using seg30_prefix_129_addX rho r893)
        (by simpa using seg30_prefix_129_addY rho r894)
        (by simpa using seg30_prefix_129_selX rho r895)
        (by simpa using seg30_prefix_129_selY rho r896)
        hbrow129
  exact hr129

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


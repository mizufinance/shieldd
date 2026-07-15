import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas4
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

theorem seg15_prefix_step46 (rho : Nat -> Seg15.F)
    (r46 : Seg15.relationRow46 rho)
    (r477 : Seg15.relationRow477 rho)
    (r478 : Seg15.relationRow478 rho)
    (r479 : Seg15.relationRow479 rho)
    (r480 : Seg15.relationRow480 rho)
    (r481 : Seg15.relationRow481 rho)
    (hacc : onCurve (seg15RvkAcc rho 46)) :
    RvkFixedBaseLadder.FixedStepRel 46 (rho 16182)
      (seg15RvkAcc rho 46) (seg15RvkAcc rho (46 + 1)) := by
  have hbrow46 : (1*(rho 16182))*(1 + (-1)*(rho 16182)) = 0 := by
    simpa [Seg15.relationRow46] using r46
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX45 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY45 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr46 : RvkFixedBaseLadder.FixedStepRel 46 (rho 16182)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX45 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY45 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX46 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY46 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc46, seg15AccX46, seg15AccY46, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung46_wide (rho 16136 : Seg15.F) (rho 16182 : Seg15.F) (seg15AccX45 rho : Seg15.F) (seg15AccY45 rho : Seg15.F) (rho 16612 : Seg15.F) (rho 16613 : Seg15.F) (rho 16614 : Seg15.F) (rho 16615 : Seg15.F) (rho 16616 : Seg15.F) hinput
        (by simpa using seg15_prefix_46_v2 rho r477)
        (by simpa using seg15_prefix_46_addX rho r478)
        (by simpa using seg15_prefix_46_addY rho r479)
        (by simpa using seg15_prefix_46_selX rho r480)
        (by simpa using seg15_prefix_46_selY rho r481)
        hbrow46
  exact hr46

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


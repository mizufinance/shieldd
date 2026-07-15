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

theorem seg15_prefix_step39 (rho : Nat -> Seg15.F)
    (r39 : Seg15.relationRow39 rho)
    (r442 : Seg15.relationRow442 rho)
    (r443 : Seg15.relationRow443 rho)
    (r444 : Seg15.relationRow444 rho)
    (r445 : Seg15.relationRow445 rho)
    (r446 : Seg15.relationRow446 rho)
    (hacc : onCurve (seg15RvkAcc rho 39)) :
    RvkFixedBaseLadder.FixedStepRel 39 (rho 16175)
      (seg15RvkAcc rho 39) (seg15RvkAcc rho (39 + 1)) := by
  have hbrow39 : (1*(rho 16175))*(1 + (-1)*(rho 16175)) = 0 := by
    simpa [Seg15.relationRow39] using r39
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX38 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY38 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr39 : RvkFixedBaseLadder.FixedStepRel 39 (rho 16175)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX38 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY38 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX39 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY39 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc39, seg15AccX39, seg15AccY39, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung39_wide (rho 16136 : Seg15.F) (rho 16175 : Seg15.F) (seg15AccX38 rho : Seg15.F) (seg15AccY38 rho : Seg15.F) (rho 16577 : Seg15.F) (rho 16578 : Seg15.F) (rho 16579 : Seg15.F) (rho 16580 : Seg15.F) (rho 16581 : Seg15.F) hinput
        (by simpa using seg15_prefix_39_v2 rho r442)
        (by simpa using seg15_prefix_39_addX rho r443)
        (by simpa using seg15_prefix_39_addY rho r444)
        (by simpa using seg15_prefix_39_selX rho r445)
        (by simpa using seg15_prefix_39_selY rho r446)
        hbrow39
  exact hr39

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


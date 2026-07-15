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

theorem seg15_prefix_step49 (rho : Nat -> Seg15.F)
    (r49 : Seg15.relationRow49 rho)
    (r492 : Seg15.relationRow492 rho)
    (r493 : Seg15.relationRow493 rho)
    (r494 : Seg15.relationRow494 rho)
    (r495 : Seg15.relationRow495 rho)
    (r496 : Seg15.relationRow496 rho)
    (hacc : onCurve (seg15RvkAcc rho 49)) :
    RvkFixedBaseLadder.FixedStepRel 49 (rho 16185)
      (seg15RvkAcc rho 49) (seg15RvkAcc rho (49 + 1)) := by
  have hbrow49 : (1*(rho 16185))*(1 + (-1)*(rho 16185)) = 0 := by
    simpa [Seg15.relationRow49] using r49
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX48 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY48 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr49 : RvkFixedBaseLadder.FixedStepRel 49 (rho 16185)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX48 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY48 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX49 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY49 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc49, seg15AccX49, seg15AccY49, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung49_wide (rho 16136 : Seg15.F) (rho 16185 : Seg15.F) (seg15AccX48 rho : Seg15.F) (seg15AccY48 rho : Seg15.F) (rho 16627 : Seg15.F) (rho 16628 : Seg15.F) (rho 16629 : Seg15.F) (rho 16630 : Seg15.F) (rho 16631 : Seg15.F) hinput
        (by simpa using seg15_prefix_49_v2 rho r492)
        (by simpa using seg15_prefix_49_addX rho r493)
        (by simpa using seg15_prefix_49_addY rho r494)
        (by simpa using seg15_prefix_49_selX rho r495)
        (by simpa using seg15_prefix_49_selY rho r496)
        hbrow49
  exact hr49

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


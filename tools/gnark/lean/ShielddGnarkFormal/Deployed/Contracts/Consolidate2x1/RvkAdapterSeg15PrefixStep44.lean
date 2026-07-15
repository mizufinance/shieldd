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

theorem seg15_prefix_step44 (rho : Nat -> Seg15.F)
    (r44 : Seg15.relationRow44 rho)
    (r467 : Seg15.relationRow467 rho)
    (r468 : Seg15.relationRow468 rho)
    (r469 : Seg15.relationRow469 rho)
    (r470 : Seg15.relationRow470 rho)
    (r471 : Seg15.relationRow471 rho)
    (hacc : onCurve (seg15RvkAcc rho 44)) :
    RvkFixedBaseLadder.FixedStepRel 44 (rho 16180)
      (seg15RvkAcc rho 44) (seg15RvkAcc rho (44 + 1)) := by
  have hbrow44 : (1*(rho 16180))*(1 + (-1)*(rho 16180)) = 0 := by
    simpa [Seg15.relationRow44] using r44
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX43 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY43 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr44 : RvkFixedBaseLadder.FixedStepRel 44 (rho 16180)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX43 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY43 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX44 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY44 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc44, seg15AccX44, seg15AccY44, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung44_wide (rho 16136 : Seg15.F) (rho 16180 : Seg15.F) (seg15AccX43 rho : Seg15.F) (seg15AccY43 rho : Seg15.F) (rho 16602 : Seg15.F) (rho 16603 : Seg15.F) (rho 16604 : Seg15.F) (rho 16605 : Seg15.F) (rho 16606 : Seg15.F) hinput
        (by simpa using seg15_prefix_44_v2 rho r467)
        (by simpa using seg15_prefix_44_addX rho r468)
        (by simpa using seg15_prefix_44_addY rho r469)
        (by simpa using seg15_prefix_44_selX rho r470)
        (by simpa using seg15_prefix_44_selY rho r471)
        hbrow44
  exact hr44

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


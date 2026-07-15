import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas7
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

theorem seg15_prefix_step73 (rho : Nat -> Seg15.F)
    (r73 : Seg15.relationRow73 rho)
    (r612 : Seg15.relationRow612 rho)
    (r613 : Seg15.relationRow613 rho)
    (r614 : Seg15.relationRow614 rho)
    (r615 : Seg15.relationRow615 rho)
    (r616 : Seg15.relationRow616 rho)
    (hacc : onCurve (seg15RvkAcc rho 73)) :
    RvkFixedBaseLadder.FixedStepRel 73 (rho 16209)
      (seg15RvkAcc rho 73) (seg15RvkAcc rho (73 + 1)) := by
  have hbrow73 : (1*(rho 16209))*(1 + (-1)*(rho 16209)) = 0 := by
    simpa [Seg15.relationRow73] using r73
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX72 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY72 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr73 : RvkFixedBaseLadder.FixedStepRel 73 (rho 16209)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX72 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY72 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX73 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY73 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc73, seg15AccX73, seg15AccY73, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung73_wide (rho 16136 : Seg15.F) (rho 16209 : Seg15.F) (seg15AccX72 rho : Seg15.F) (seg15AccY72 rho : Seg15.F) (rho 16747 : Seg15.F) (rho 16748 : Seg15.F) (rho 16749 : Seg15.F) (rho 16750 : Seg15.F) (rho 16751 : Seg15.F) hinput
        (by simpa using seg15_prefix_73_v2 rho r612)
        (by simpa using seg15_prefix_73_addX rho r613)
        (by simpa using seg15_prefix_73_addY rho r614)
        (by simpa using seg15_prefix_73_selX rho r615)
        (by simpa using seg15_prefix_73_selY rho r616)
        hbrow73
  exact hr73

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


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

theorem seg15_prefix_step79 (rho : Nat -> Seg15.F)
    (r79 : Seg15.relationRow79 rho)
    (r642 : Seg15.relationRow642 rho)
    (r643 : Seg15.relationRow643 rho)
    (r644 : Seg15.relationRow644 rho)
    (r645 : Seg15.relationRow645 rho)
    (r646 : Seg15.relationRow646 rho)
    (hacc : onCurve (seg15RvkAcc rho 79)) :
    RvkFixedBaseLadder.FixedStepRel 79 (rho 16215)
      (seg15RvkAcc rho 79) (seg15RvkAcc rho (79 + 1)) := by
  have hbrow79 : (1*(rho 16215))*(1 + (-1)*(rho 16215)) = 0 := by
    simpa [Seg15.relationRow79] using r79
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX78 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY78 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr79 : RvkFixedBaseLadder.FixedStepRel 79 (rho 16215)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX78 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY78 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX79 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY79 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc79, seg15AccX79, seg15AccY79, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung79_wide (rho 16136 : Seg15.F) (rho 16215 : Seg15.F) (seg15AccX78 rho : Seg15.F) (seg15AccY78 rho : Seg15.F) (rho 16777 : Seg15.F) (rho 16778 : Seg15.F) (rho 16779 : Seg15.F) (rho 16780 : Seg15.F) (rho 16781 : Seg15.F) hinput
        (by simpa using seg15_prefix_79_v2 rho r642)
        (by simpa using seg15_prefix_79_addX rho r643)
        (by simpa using seg15_prefix_79_addY rho r644)
        (by simpa using seg15_prefix_79_selX rho r645)
        (by simpa using seg15_prefix_79_selY rho r646)
        hbrow79
  exact hr79

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


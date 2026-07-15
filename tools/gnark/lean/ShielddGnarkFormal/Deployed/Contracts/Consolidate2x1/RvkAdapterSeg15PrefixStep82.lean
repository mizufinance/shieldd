import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas8
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

theorem seg15_prefix_step82 (rho : Nat -> Seg15.F)
    (r82 : Seg15.relationRow82 rho)
    (r657 : Seg15.relationRow657 rho)
    (r658 : Seg15.relationRow658 rho)
    (r659 : Seg15.relationRow659 rho)
    (r660 : Seg15.relationRow660 rho)
    (r661 : Seg15.relationRow661 rho)
    (hacc : onCurve (seg15RvkAcc rho 82)) :
    RvkFixedBaseLadder.FixedStepRel 82 (rho 16218)
      (seg15RvkAcc rho 82) (seg15RvkAcc rho (82 + 1)) := by
  have hbrow82 : (1*(rho 16218))*(1 + (-1)*(rho 16218)) = 0 := by
    simpa [Seg15.relationRow82] using r82
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX81 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY81 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr82 : RvkFixedBaseLadder.FixedStepRel 82 (rho 16218)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX81 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY81 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX82 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY82 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc82, seg15AccX82, seg15AccY82, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung82_wide (rho 16136 : Seg15.F) (rho 16218 : Seg15.F) (seg15AccX81 rho : Seg15.F) (seg15AccY81 rho : Seg15.F) (rho 16792 : Seg15.F) (rho 16793 : Seg15.F) (rho 16794 : Seg15.F) (rho 16795 : Seg15.F) (rho 16796 : Seg15.F) hinput
        (by simpa using seg15_prefix_82_v2 rho r657)
        (by simpa using seg15_prefix_82_addX rho r658)
        (by simpa using seg15_prefix_82_addY rho r659)
        (by simpa using seg15_prefix_82_selX rho r660)
        (by simpa using seg15_prefix_82_selY rho r661)
        hbrow82
  exact hr82

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


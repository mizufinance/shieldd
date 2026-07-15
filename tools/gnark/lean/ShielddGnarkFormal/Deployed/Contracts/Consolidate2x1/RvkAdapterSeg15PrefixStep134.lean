import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas13
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

theorem seg15_prefix_step134 (rho : Nat -> Seg15.F)
    (r134 : Seg15.relationRow134 rho)
    (r917 : Seg15.relationRow917 rho)
    (r918 : Seg15.relationRow918 rho)
    (r919 : Seg15.relationRow919 rho)
    (r920 : Seg15.relationRow920 rho)
    (r921 : Seg15.relationRow921 rho)
    (hacc : onCurve (seg15RvkAcc rho 134)) :
    RvkFixedBaseLadder.FixedStepRel 134 (rho 16270)
      (seg15RvkAcc rho 134) (seg15RvkAcc rho (134 + 1)) := by
  have hbrow134 : (1*(rho 16270))*(1 + (-1)*(rho 16270)) = 0 := by
    simpa [Seg15.relationRow134] using r134
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX133 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY133 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr134 : RvkFixedBaseLadder.FixedStepRel 134 (rho 16270)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX133 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY133 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX134 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY134 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc134, seg15AccX134, seg15AccY134, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung134_wide (rho 16136 : Seg15.F) (rho 16270 : Seg15.F) (seg15AccX133 rho : Seg15.F) (seg15AccY133 rho : Seg15.F) (rho 17052 : Seg15.F) (rho 17053 : Seg15.F) (rho 17054 : Seg15.F) (rho 17055 : Seg15.F) (rho 17056 : Seg15.F) hinput
        (by simpa using seg15_prefix_134_v2 rho r917)
        (by simpa using seg15_prefix_134_addX rho r918)
        (by simpa using seg15_prefix_134_addY rho r919)
        (by simpa using seg15_prefix_134_selX rho r920)
        (by simpa using seg15_prefix_134_selY rho r921)
        hbrow134
  exact hr134

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


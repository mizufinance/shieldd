import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas13
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

theorem seg30_prefix_step134 (rho : Nat -> Seg30.F)
    (r134 : Seg30.relationRow134 rho)
    (r917 : Seg30.relationRow917 rho)
    (r918 : Seg30.relationRow918 rho)
    (r919 : Seg30.relationRow919 rho)
    (r920 : Seg30.relationRow920 rho)
    (r921 : Seg30.relationRow921 rho)
    (hacc : onCurve (seg30RvkAcc rho 134)) :
    RvkFixedBaseLadder.FixedStepRel 134 (rho 28451)
      (seg30RvkAcc rho 134) (seg30RvkAcc rho (134 + 1)) := by
  have hbrow134 : (1*(rho 28451))*(1 + (-1)*(rho 28451)) = 0 := by
    simpa [Seg30.relationRow134] using r134
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX133 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY133 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr134 : RvkFixedBaseLadder.FixedStepRel 134 (rho 28451)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX133 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY133 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX134 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY134 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc134, seg30AccX134, seg30AccY134, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung134_wide (rho 28317 : Seg30.F) (rho 28451 : Seg30.F) (seg30AccX133 rho : Seg30.F) (seg30AccY133 rho : Seg30.F) (rho 29233 : Seg30.F) (rho 29234 : Seg30.F) (rho 29235 : Seg30.F) (rho 29236 : Seg30.F) (rho 29237 : Seg30.F) hinput
        (by simpa using seg30_prefix_134_v2 rho r917)
        (by simpa using seg30_prefix_134_addX rho r918)
        (by simpa using seg30_prefix_134_addY rho r919)
        (by simpa using seg30_prefix_134_selX rho r920)
        (by simpa using seg30_prefix_134_selY rho r921)
        hbrow134
  exact hr134

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


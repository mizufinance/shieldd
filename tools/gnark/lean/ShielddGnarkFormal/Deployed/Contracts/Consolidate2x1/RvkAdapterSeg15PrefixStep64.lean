import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas6
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

theorem seg15_prefix_step64 (rho : Nat -> Seg15.F)
    (r64 : Seg15.relationRow64 rho)
    (r567 : Seg15.relationRow567 rho)
    (r568 : Seg15.relationRow568 rho)
    (r569 : Seg15.relationRow569 rho)
    (r570 : Seg15.relationRow570 rho)
    (r571 : Seg15.relationRow571 rho)
    (hacc : onCurve (seg15RvkAcc rho 64)) :
    RvkFixedBaseLadder.FixedStepRel 64 (rho 16200)
      (seg15RvkAcc rho 64) (seg15RvkAcc rho (64 + 1)) := by
  have hbrow64 : (1*(rho 16200))*(1 + (-1)*(rho 16200)) = 0 := by
    simpa [Seg15.relationRow64] using r64
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX63 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY63 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr64 : RvkFixedBaseLadder.FixedStepRel 64 (rho 16200)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX63 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY63 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX64 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY64 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc64, seg15AccX64, seg15AccY64, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung64_wide (rho 16136 : Seg15.F) (rho 16200 : Seg15.F) (seg15AccX63 rho : Seg15.F) (seg15AccY63 rho : Seg15.F) (rho 16702 : Seg15.F) (rho 16703 : Seg15.F) (rho 16704 : Seg15.F) (rho 16705 : Seg15.F) (rho 16706 : Seg15.F) hinput
        (by simpa using seg15_prefix_64_v2 rho r567)
        (by simpa using seg15_prefix_64_addX rho r568)
        (by simpa using seg15_prefix_64_addY rho r569)
        (by simpa using seg15_prefix_64_selX rho r570)
        (by simpa using seg15_prefix_64_selY rho r571)
        hbrow64
  exact hr64

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


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

theorem seg15_prefix_step133 (rho : Nat -> Seg15.F)
    (r133 : Seg15.relationRow133 rho)
    (r912 : Seg15.relationRow912 rho)
    (r913 : Seg15.relationRow913 rho)
    (r914 : Seg15.relationRow914 rho)
    (r915 : Seg15.relationRow915 rho)
    (r916 : Seg15.relationRow916 rho)
    (hacc : onCurve (seg15RvkAcc rho 133)) :
    RvkFixedBaseLadder.FixedStepRel 133 (rho 16269)
      (seg15RvkAcc rho 133) (seg15RvkAcc rho (133 + 1)) := by
  have hbrow133 : (1*(rho 16269))*(1 + (-1)*(rho 16269)) = 0 := by
    simpa [Seg15.relationRow133] using r133
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX132 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY132 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr133 : RvkFixedBaseLadder.FixedStepRel 133 (rho 16269)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX132 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY132 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX133 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY133 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc133, seg15AccX133, seg15AccY133, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung133_wide (rho 16136 : Seg15.F) (rho 16269 : Seg15.F) (seg15AccX132 rho : Seg15.F) (seg15AccY132 rho : Seg15.F) (rho 17047 : Seg15.F) (rho 17048 : Seg15.F) (rho 17049 : Seg15.F) (rho 17050 : Seg15.F) (rho 17051 : Seg15.F) hinput
        (by simpa using seg15_prefix_133_v2 rho r912)
        (by simpa using seg15_prefix_133_addX rho r913)
        (by simpa using seg15_prefix_133_addY rho r914)
        (by simpa using seg15_prefix_133_selX rho r915)
        (by simpa using seg15_prefix_133_selY rho r916)
        hbrow133
  exact hr133

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


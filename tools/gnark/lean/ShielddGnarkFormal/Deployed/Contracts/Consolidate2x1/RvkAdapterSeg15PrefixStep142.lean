import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas14
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

theorem seg15_prefix_step142 (rho : Nat -> Seg15.F)
    (r142 : Seg15.relationRow142 rho)
    (r957 : Seg15.relationRow957 rho)
    (r958 : Seg15.relationRow958 rho)
    (r959 : Seg15.relationRow959 rho)
    (r960 : Seg15.relationRow960 rho)
    (r961 : Seg15.relationRow961 rho)
    (hacc : onCurve (seg15RvkAcc rho 142)) :
    RvkFixedBaseLadder.FixedStepRel 142 (rho 16278)
      (seg15RvkAcc rho 142) (seg15RvkAcc rho (142 + 1)) := by
  have hbrow142 : (1*(rho 16278))*(1 + (-1)*(rho 16278)) = 0 := by
    simpa [Seg15.relationRow142] using r142
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX141 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY141 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr142 : RvkFixedBaseLadder.FixedStepRel 142 (rho 16278)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX141 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY141 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX142 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY142 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc142, seg15AccX142, seg15AccY142, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung142_wide (rho 16136 : Seg15.F) (rho 16278 : Seg15.F) (seg15AccX141 rho : Seg15.F) (seg15AccY141 rho : Seg15.F) (rho 17092 : Seg15.F) (rho 17093 : Seg15.F) (rho 17094 : Seg15.F) (rho 17095 : Seg15.F) (rho 17096 : Seg15.F) hinput
        (by simpa using seg15_prefix_142_v2 rho r957)
        (by simpa using seg15_prefix_142_addX rho r958)
        (by simpa using seg15_prefix_142_addY rho r959)
        (by simpa using seg15_prefix_142_selX rho r960)
        (by simpa using seg15_prefix_142_selY rho r961)
        hbrow142
  exact hr142

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


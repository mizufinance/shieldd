import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas8
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

theorem seg30_prefix_step85 (rho : Nat -> Seg30.F)
    (r85 : Seg30.relationRow85 rho)
    (r672 : Seg30.relationRow672 rho)
    (r673 : Seg30.relationRow673 rho)
    (r674 : Seg30.relationRow674 rho)
    (r675 : Seg30.relationRow675 rho)
    (r676 : Seg30.relationRow676 rho)
    (hacc : onCurve (seg30RvkAcc rho 85)) :
    RvkFixedBaseLadder.FixedStepRel 85 (rho 28402)
      (seg30RvkAcc rho 85) (seg30RvkAcc rho (85 + 1)) := by
  have hbrow85 : (1*(rho 28402))*(1 + (-1)*(rho 28402)) = 0 := by
    simpa [Seg30.relationRow85] using r85
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX84 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY84 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr85 : RvkFixedBaseLadder.FixedStepRel 85 (rho 28402)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX84 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY84 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX85 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY85 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc85, seg30AccX85, seg30AccY85, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung85_wide (rho 28317 : Seg30.F) (rho 28402 : Seg30.F) (seg30AccX84 rho : Seg30.F) (seg30AccY84 rho : Seg30.F) (rho 28988 : Seg30.F) (rho 28989 : Seg30.F) (rho 28990 : Seg30.F) (rho 28991 : Seg30.F) (rho 28992 : Seg30.F) hinput
        (by simpa using seg30_prefix_85_v2 rho r672)
        (by simpa using seg30_prefix_85_addX rho r673)
        (by simpa using seg30_prefix_85_addY rho r674)
        (by simpa using seg30_prefix_85_selX rho r675)
        (by simpa using seg30_prefix_85_selY rho r676)
        hbrow85
  exact hr85

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


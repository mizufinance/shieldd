import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas5
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_step54 (rho : Nat -> Seg30.F)
    (r54 : Seg30.relationRow54 rho)
    (r517 : Seg30.relationRow517 rho)
    (r518 : Seg30.relationRow518 rho)
    (r519 : Seg30.relationRow519 rho)
    (r520 : Seg30.relationRow520 rho)
    (r521 : Seg30.relationRow521 rho)
    (hacc : onCurve (seg30RvkAcc rho 54)) :
    RvkFixedBaseLadder.FixedStepRel 54 (rho 28365)
      (seg30RvkAcc rho 54) (seg30RvkAcc rho (54 + 1)) := by
  have hbrow54 : (1*(rho 28365))*(1 + (-1)*(rho 28365)) = 0 := by
    simpa [Seg30.relationRow54] using r54
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX53 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY53 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr54 : RvkFixedBaseLadder.FixedStepRel 54 (rho 28365)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX53 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY53 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX54 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY54 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc54, seg30AccX54, seg30AccY54, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung54_wide (rho 28311 : Seg30.F) (rho 28365 : Seg30.F) (seg30AccX53 rho : Seg30.F) (seg30AccY53 rho : Seg30.F) (rho 28827 : Seg30.F) (rho 28828 : Seg30.F) (rho 28829 : Seg30.F) (rho 28830 : Seg30.F) (rho 28831 : Seg30.F) hinput
        (by simpa using seg30_prefix_54_v2 rho r517)
        (by simpa using seg30_prefix_54_addX rho r518)
        (by simpa using seg30_prefix_54_addY rho r519)
        (by simpa using seg30_prefix_54_selX rho r520)
        (by simpa using seg30_prefix_54_selY rho r521)
        hbrow54
  exact hr54

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas5
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_step54 (rho : Nat -> Seg15.F)
    (r54 : Seg15.relationRow54 rho)
    (r517 : Seg15.relationRow517 rho)
    (r518 : Seg15.relationRow518 rho)
    (r519 : Seg15.relationRow519 rho)
    (r520 : Seg15.relationRow520 rho)
    (r521 : Seg15.relationRow521 rho)
    (hacc : onCurve (seg15RvkAcc rho 54)) :
    RvkFixedBaseLadder.FixedStepRel 54 (rho 16184)
      (seg15RvkAcc rho 54) (seg15RvkAcc rho (54 + 1)) := by
  have hbrow54 : (1*(rho 16184))*(1 + (-1)*(rho 16184)) = 0 := by
    simpa [Seg15.relationRow54] using r54
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX53 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY53 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr54 : RvkFixedBaseLadder.FixedStepRel 54 (rho 16184)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX53 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY53 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX54 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY54 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc54, seg15AccX54, seg15AccY54, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung54_wide (rho 16130 : Seg15.F) (rho 16184 : Seg15.F) (seg15AccX53 rho : Seg15.F) (seg15AccY53 rho : Seg15.F) (rho 16646 : Seg15.F) (rho 16647 : Seg15.F) (rho 16648 : Seg15.F) (rho 16649 : Seg15.F) (rho 16650 : Seg15.F) hinput
        (by simpa using seg15_prefix_54_v2 rho r517)
        (by simpa using seg15_prefix_54_addX rho r518)
        (by simpa using seg15_prefix_54_addY rho r519)
        (by simpa using seg15_prefix_54_selX rho r520)
        (by simpa using seg15_prefix_54_selY rho r521)
        hbrow54
  exact hr54

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


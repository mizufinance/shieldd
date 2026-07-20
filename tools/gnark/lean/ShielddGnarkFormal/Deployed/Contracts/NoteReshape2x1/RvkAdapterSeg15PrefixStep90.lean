import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas8
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

theorem seg15_prefix_step90 (rho : Nat -> Seg15.F)
    (r90 : Seg15.relationRow90 rho)
    (r697 : Seg15.relationRow697 rho)
    (r698 : Seg15.relationRow698 rho)
    (r699 : Seg15.relationRow699 rho)
    (r700 : Seg15.relationRow700 rho)
    (r701 : Seg15.relationRow701 rho)
    (hacc : onCurve (seg15RvkAcc rho 90)) :
    RvkFixedBaseLadder.FixedStepRel 90 (rho 16220)
      (seg15RvkAcc rho 90) (seg15RvkAcc rho (90 + 1)) := by
  have hbrow90 : (1*(rho 16220))*(1 + (-1)*(rho 16220)) = 0 := by
    simpa [Seg15.relationRow90] using r90
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX89 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY89 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr90 : RvkFixedBaseLadder.FixedStepRel 90 (rho 16220)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX89 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY89 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX90 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY90 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc90, seg15AccX90, seg15AccY90, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung90_wide (rho 16130 : Seg15.F) (rho 16220 : Seg15.F) (seg15AccX89 rho : Seg15.F) (seg15AccY89 rho : Seg15.F) (rho 16826 : Seg15.F) (rho 16827 : Seg15.F) (rho 16828 : Seg15.F) (rho 16829 : Seg15.F) (rho 16830 : Seg15.F) hinput
        (by simpa using seg15_prefix_90_v2 rho r697)
        (by simpa using seg15_prefix_90_addX rho r698)
        (by simpa using seg15_prefix_90_addY rho r699)
        (by simpa using seg15_prefix_90_selX rho r700)
        (by simpa using seg15_prefix_90_selY rho r701)
        hbrow90
  exact hr90

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas13
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

theorem seg15_prefix_step135 (rho : Nat -> Seg15.F)
    (r135 : Seg15.relationRow135 rho)
    (r922 : Seg15.relationRow922 rho)
    (r923 : Seg15.relationRow923 rho)
    (r924 : Seg15.relationRow924 rho)
    (r925 : Seg15.relationRow925 rho)
    (r926 : Seg15.relationRow926 rho)
    (hacc : onCurve (seg15RvkAcc rho 135)) :
    RvkFixedBaseLadder.FixedStepRel 135 (rho 16265)
      (seg15RvkAcc rho 135) (seg15RvkAcc rho (135 + 1)) := by
  have hbrow135 : (1*(rho 16265))*(1 + (-1)*(rho 16265)) = 0 := by
    simpa [Seg15.relationRow135] using r135
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX134 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY134 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr135 : RvkFixedBaseLadder.FixedStepRel 135 (rho 16265)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX134 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY134 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX135 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY135 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc135, seg15AccX135, seg15AccY135, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung135_wide (rho 16130 : Seg15.F) (rho 16265 : Seg15.F) (seg15AccX134 rho : Seg15.F) (seg15AccY134 rho : Seg15.F) (rho 17051 : Seg15.F) (rho 17052 : Seg15.F) (rho 17053 : Seg15.F) (rho 17054 : Seg15.F) (rho 17055 : Seg15.F) hinput
        (by simpa using seg15_prefix_135_v2 rho r922)
        (by simpa using seg15_prefix_135_addX rho r923)
        (by simpa using seg15_prefix_135_addY rho r924)
        (by simpa using seg15_prefix_135_selX rho r925)
        (by simpa using seg15_prefix_135_selY rho r926)
        hbrow135
  exact hr135

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


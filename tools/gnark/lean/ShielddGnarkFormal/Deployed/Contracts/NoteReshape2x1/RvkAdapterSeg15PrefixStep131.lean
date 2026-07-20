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

theorem seg15_prefix_step131 (rho : Nat -> Seg15.F)
    (r131 : Seg15.relationRow131 rho)
    (r902 : Seg15.relationRow902 rho)
    (r903 : Seg15.relationRow903 rho)
    (r904 : Seg15.relationRow904 rho)
    (r905 : Seg15.relationRow905 rho)
    (r906 : Seg15.relationRow906 rho)
    (hacc : onCurve (seg15RvkAcc rho 131)) :
    RvkFixedBaseLadder.FixedStepRel 131 (rho 16261)
      (seg15RvkAcc rho 131) (seg15RvkAcc rho (131 + 1)) := by
  have hbrow131 : (1*(rho 16261))*(1 + (-1)*(rho 16261)) = 0 := by
    simpa [Seg15.relationRow131] using r131
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX130 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY130 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr131 : RvkFixedBaseLadder.FixedStepRel 131 (rho 16261)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX130 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY130 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX131 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY131 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc131, seg15AccX131, seg15AccY131, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung131_wide (rho 16130 : Seg15.F) (rho 16261 : Seg15.F) (seg15AccX130 rho : Seg15.F) (seg15AccY130 rho : Seg15.F) (rho 17031 : Seg15.F) (rho 17032 : Seg15.F) (rho 17033 : Seg15.F) (rho 17034 : Seg15.F) (rho 17035 : Seg15.F) hinput
        (by simpa using seg15_prefix_131_v2 rho r902)
        (by simpa using seg15_prefix_131_addX rho r903)
        (by simpa using seg15_prefix_131_addY rho r904)
        (by simpa using seg15_prefix_131_selX rho r905)
        (by simpa using seg15_prefix_131_selY rho r906)
        hbrow131
  exact hr131

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


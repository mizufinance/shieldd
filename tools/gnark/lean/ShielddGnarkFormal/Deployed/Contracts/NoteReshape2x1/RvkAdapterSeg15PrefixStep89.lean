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

theorem seg15_prefix_step89 (rho : Nat -> Seg15.F)
    (r89 : Seg15.relationRow89 rho)
    (r692 : Seg15.relationRow692 rho)
    (r693 : Seg15.relationRow693 rho)
    (r694 : Seg15.relationRow694 rho)
    (r695 : Seg15.relationRow695 rho)
    (r696 : Seg15.relationRow696 rho)
    (hacc : onCurve (seg15RvkAcc rho 89)) :
    RvkFixedBaseLadder.FixedStepRel 89 (rho 16219)
      (seg15RvkAcc rho 89) (seg15RvkAcc rho (89 + 1)) := by
  have hbrow89 : (1*(rho 16219))*(1 + (-1)*(rho 16219)) = 0 := by
    simpa [Seg15.relationRow89] using r89
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX88 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY88 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr89 : RvkFixedBaseLadder.FixedStepRel 89 (rho 16219)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX88 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY88 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX89 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY89 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc89, seg15AccX89, seg15AccY89, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung89_wide (rho 16130 : Seg15.F) (rho 16219 : Seg15.F) (seg15AccX88 rho : Seg15.F) (seg15AccY88 rho : Seg15.F) (rho 16821 : Seg15.F) (rho 16822 : Seg15.F) (rho 16823 : Seg15.F) (rho 16824 : Seg15.F) (rho 16825 : Seg15.F) hinput
        (by simpa using seg15_prefix_89_v2 rho r692)
        (by simpa using seg15_prefix_89_addX rho r693)
        (by simpa using seg15_prefix_89_addY rho r694)
        (by simpa using seg15_prefix_89_selX rho r695)
        (by simpa using seg15_prefix_89_selY rho r696)
        hbrow89
  exact hr89

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


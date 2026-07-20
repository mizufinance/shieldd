import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas10
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

theorem seg15_prefix_step108 (rho : Nat -> Seg15.F)
    (r108 : Seg15.relationRow108 rho)
    (r787 : Seg15.relationRow787 rho)
    (r788 : Seg15.relationRow788 rho)
    (r789 : Seg15.relationRow789 rho)
    (r790 : Seg15.relationRow790 rho)
    (r791 : Seg15.relationRow791 rho)
    (hacc : onCurve (seg15RvkAcc rho 108)) :
    RvkFixedBaseLadder.FixedStepRel 108 (rho 16238)
      (seg15RvkAcc rho 108) (seg15RvkAcc rho (108 + 1)) := by
  have hbrow108 : (1*(rho 16238))*(1 + (-1)*(rho 16238)) = 0 := by
    simpa [Seg15.relationRow108] using r108
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX107 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY107 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr108 : RvkFixedBaseLadder.FixedStepRel 108 (rho 16238)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX107 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY107 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX108 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY108 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc108, seg15AccX108, seg15AccY108, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung108_wide (rho 16130 : Seg15.F) (rho 16238 : Seg15.F) (seg15AccX107 rho : Seg15.F) (seg15AccY107 rho : Seg15.F) (rho 16916 : Seg15.F) (rho 16917 : Seg15.F) (rho 16918 : Seg15.F) (rho 16919 : Seg15.F) (rho 16920 : Seg15.F) hinput
        (by simpa using seg15_prefix_108_v2 rho r787)
        (by simpa using seg15_prefix_108_addX rho r788)
        (by simpa using seg15_prefix_108_addY rho r789)
        (by simpa using seg15_prefix_108_selX rho r790)
        (by simpa using seg15_prefix_108_selY rho r791)
        hbrow108
  exact hr108

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


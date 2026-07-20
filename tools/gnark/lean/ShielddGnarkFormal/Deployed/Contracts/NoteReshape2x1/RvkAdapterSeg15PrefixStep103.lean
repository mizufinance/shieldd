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

theorem seg15_prefix_step103 (rho : Nat -> Seg15.F)
    (r103 : Seg15.relationRow103 rho)
    (r762 : Seg15.relationRow762 rho)
    (r763 : Seg15.relationRow763 rho)
    (r764 : Seg15.relationRow764 rho)
    (r765 : Seg15.relationRow765 rho)
    (r766 : Seg15.relationRow766 rho)
    (hacc : onCurve (seg15RvkAcc rho 103)) :
    RvkFixedBaseLadder.FixedStepRel 103 (rho 16233)
      (seg15RvkAcc rho 103) (seg15RvkAcc rho (103 + 1)) := by
  have hbrow103 : (1*(rho 16233))*(1 + (-1)*(rho 16233)) = 0 := by
    simpa [Seg15.relationRow103] using r103
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX102 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY102 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr103 : RvkFixedBaseLadder.FixedStepRel 103 (rho 16233)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX102 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY102 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX103 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY103 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc103, seg15AccX103, seg15AccY103, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung103_wide (rho 16130 : Seg15.F) (rho 16233 : Seg15.F) (seg15AccX102 rho : Seg15.F) (seg15AccY102 rho : Seg15.F) (rho 16891 : Seg15.F) (rho 16892 : Seg15.F) (rho 16893 : Seg15.F) (rho 16894 : Seg15.F) (rho 16895 : Seg15.F) hinput
        (by simpa using seg15_prefix_103_v2 rho r762)
        (by simpa using seg15_prefix_103_addX rho r763)
        (by simpa using seg15_prefix_103_addY rho r764)
        (by simpa using seg15_prefix_103_selX rho r765)
        (by simpa using seg15_prefix_103_selY rho r766)
        hbrow103
  exact hr103

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


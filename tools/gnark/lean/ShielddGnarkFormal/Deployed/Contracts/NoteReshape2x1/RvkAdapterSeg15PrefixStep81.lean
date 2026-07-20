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

theorem seg15_prefix_step81 (rho : Nat -> Seg15.F)
    (r81 : Seg15.relationRow81 rho)
    (r652 : Seg15.relationRow652 rho)
    (r653 : Seg15.relationRow653 rho)
    (r654 : Seg15.relationRow654 rho)
    (r655 : Seg15.relationRow655 rho)
    (r656 : Seg15.relationRow656 rho)
    (hacc : onCurve (seg15RvkAcc rho 81)) :
    RvkFixedBaseLadder.FixedStepRel 81 (rho 16211)
      (seg15RvkAcc rho 81) (seg15RvkAcc rho (81 + 1)) := by
  have hbrow81 : (1*(rho 16211))*(1 + (-1)*(rho 16211)) = 0 := by
    simpa [Seg15.relationRow81] using r81
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX80 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY80 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr81 : RvkFixedBaseLadder.FixedStepRel 81 (rho 16211)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX80 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY80 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX81 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY81 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc81, seg15AccX81, seg15AccY81, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung81_wide (rho 16130 : Seg15.F) (rho 16211 : Seg15.F) (seg15AccX80 rho : Seg15.F) (seg15AccY80 rho : Seg15.F) (rho 16781 : Seg15.F) (rho 16782 : Seg15.F) (rho 16783 : Seg15.F) (rho 16784 : Seg15.F) (rho 16785 : Seg15.F) hinput
        (by simpa using seg15_prefix_81_v2 rho r652)
        (by simpa using seg15_prefix_81_addX rho r653)
        (by simpa using seg15_prefix_81_addY rho r654)
        (by simpa using seg15_prefix_81_selX rho r655)
        (by simpa using seg15_prefix_81_selY rho r656)
        hbrow81
  exact hr81

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


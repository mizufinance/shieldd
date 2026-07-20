import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas7
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

theorem seg15_prefix_step78 (rho : Nat -> Seg15.F)
    (r78 : Seg15.relationRow78 rho)
    (r637 : Seg15.relationRow637 rho)
    (r638 : Seg15.relationRow638 rho)
    (r639 : Seg15.relationRow639 rho)
    (r640 : Seg15.relationRow640 rho)
    (r641 : Seg15.relationRow641 rho)
    (hacc : onCurve (seg15RvkAcc rho 78)) :
    RvkFixedBaseLadder.FixedStepRel 78 (rho 16208)
      (seg15RvkAcc rho 78) (seg15RvkAcc rho (78 + 1)) := by
  have hbrow78 : (1*(rho 16208))*(1 + (-1)*(rho 16208)) = 0 := by
    simpa [Seg15.relationRow78] using r78
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX77 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY77 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr78 : RvkFixedBaseLadder.FixedStepRel 78 (rho 16208)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX77 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY77 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX78 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY78 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc78, seg15AccX78, seg15AccY78, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung78_wide (rho 16130 : Seg15.F) (rho 16208 : Seg15.F) (seg15AccX77 rho : Seg15.F) (seg15AccY77 rho : Seg15.F) (rho 16766 : Seg15.F) (rho 16767 : Seg15.F) (rho 16768 : Seg15.F) (rho 16769 : Seg15.F) (rho 16770 : Seg15.F) hinput
        (by simpa using seg15_prefix_78_v2 rho r637)
        (by simpa using seg15_prefix_78_addX rho r638)
        (by simpa using seg15_prefix_78_addY rho r639)
        (by simpa using seg15_prefix_78_selX rho r640)
        (by simpa using seg15_prefix_78_selY rho r641)
        hbrow78
  exact hr78

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


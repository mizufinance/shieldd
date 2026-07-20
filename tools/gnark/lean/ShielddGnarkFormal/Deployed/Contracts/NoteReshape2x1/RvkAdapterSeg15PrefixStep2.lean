import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas0
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

theorem seg15_prefix_step2 (rho : Nat -> Seg15.F)
    (r2 : Seg15.relationRow2 rho)
    (r257 : Seg15.relationRow257 rho)
    (r258 : Seg15.relationRow258 rho)
    (r259 : Seg15.relationRow259 rho)
    (r260 : Seg15.relationRow260 rho)
    (r261 : Seg15.relationRow261 rho)
    (hacc : onCurve (seg15RvkAcc rho 2)) :
    RvkFixedBaseLadder.FixedStepRel 2 (rho 16132)
      (seg15RvkAcc rho 2) (seg15RvkAcc rho (2 + 1)) := by
  have hbrow2 : (1*(rho 16132))*(1 + (-1)*(rho 16132)) = 0 := by
    simpa [Seg15.relationRow2] using r2
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX1 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY1 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr2 : RvkFixedBaseLadder.FixedStepRel 2 (rho 16132)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX1 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY1 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX2 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY2 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc2, seg15AccX2, seg15AccY2, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung2_wide (rho 16130 : Seg15.F) (rho 16132 : Seg15.F) (seg15AccX1 rho : Seg15.F) (seg15AccY1 rho : Seg15.F) (rho 16386 : Seg15.F) (rho 16387 : Seg15.F) (rho 16388 : Seg15.F) (rho 16389 : Seg15.F) (rho 16390 : Seg15.F) hinput
        (by simpa using seg15_prefix_2_v2 rho r257)
        (by simpa using seg15_prefix_2_addX rho r258)
        (by simpa using seg15_prefix_2_addY rho r259)
        (by simpa using seg15_prefix_2_selX rho r260)
        (by simpa using seg15_prefix_2_selY rho r261)
        hbrow2
  exact hr2

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


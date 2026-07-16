import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas4
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

theorem seg15_prefix_step45 (rho : Nat -> Seg15.F)
    (r45 : Seg15.relationRow45 rho)
    (r472 : Seg15.relationRow472 rho)
    (r473 : Seg15.relationRow473 rho)
    (r474 : Seg15.relationRow474 rho)
    (r475 : Seg15.relationRow475 rho)
    (r476 : Seg15.relationRow476 rho)
    (hacc : onCurve (seg15RvkAcc rho 45)) :
    RvkFixedBaseLadder.FixedStepRel 45 (rho 16181)
      (seg15RvkAcc rho 45) (seg15RvkAcc rho (45 + 1)) := by
  have hbrow45 : (1*(rho 16181))*(1 + (-1)*(rho 16181)) = 0 := by
    simpa [Seg15.relationRow45] using r45
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX44 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY44 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr45 : RvkFixedBaseLadder.FixedStepRel 45 (rho 16181)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX44 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY44 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX45 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY45 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc45, seg15AccX45, seg15AccY45, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung45_wide (rho 16136 : Seg15.F) (rho 16181 : Seg15.F) (seg15AccX44 rho : Seg15.F) (seg15AccY44 rho : Seg15.F) (rho 16607 : Seg15.F) (rho 16608 : Seg15.F) (rho 16609 : Seg15.F) (rho 16610 : Seg15.F) (rho 16611 : Seg15.F) hinput
        (by simpa using seg15_prefix_45_v2 rho r472)
        (by simpa using seg15_prefix_45_addX rho r473)
        (by simpa using seg15_prefix_45_addY rho r474)
        (by simpa using seg15_prefix_45_selX rho r475)
        (by simpa using seg15_prefix_45_selY rho r476)
        hbrow45
  exact hr45

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


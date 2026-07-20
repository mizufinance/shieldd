import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas4
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_step45 (rho : Nat -> Seg30.F)
    (r45 : Seg30.relationRow45 rho)
    (r472 : Seg30.relationRow472 rho)
    (r473 : Seg30.relationRow473 rho)
    (r474 : Seg30.relationRow474 rho)
    (r475 : Seg30.relationRow475 rho)
    (r476 : Seg30.relationRow476 rho)
    (hacc : onCurve (seg30RvkAcc rho 45)) :
    RvkFixedBaseLadder.FixedStepRel 45 (rho 28356)
      (seg30RvkAcc rho 45) (seg30RvkAcc rho (45 + 1)) := by
  have hbrow45 : (1*(rho 28356))*(1 + (-1)*(rho 28356)) = 0 := by
    simpa [Seg30.relationRow45] using r45
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX44 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY44 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr45 : RvkFixedBaseLadder.FixedStepRel 45 (rho 28356)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX44 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY44 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX45 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY45 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc45, seg30AccX45, seg30AccY45, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung45_wide (rho 28311 : Seg30.F) (rho 28356 : Seg30.F) (seg30AccX44 rho : Seg30.F) (seg30AccY44 rho : Seg30.F) (rho 28782 : Seg30.F) (rho 28783 : Seg30.F) (rho 28784 : Seg30.F) (rho 28785 : Seg30.F) (rho 28786 : Seg30.F) hinput
        (by simpa using seg30_prefix_45_v2 rho r472)
        (by simpa using seg30_prefix_45_addX rho r473)
        (by simpa using seg30_prefix_45_addY rho r474)
        (by simpa using seg30_prefix_45_selX rho r475)
        (by simpa using seg30_prefix_45_selY rho r476)
        hbrow45
  exact hr45

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


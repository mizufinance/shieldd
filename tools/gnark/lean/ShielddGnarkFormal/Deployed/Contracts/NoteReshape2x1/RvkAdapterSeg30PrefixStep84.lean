import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas8
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

theorem seg30_prefix_step84 (rho : Nat -> Seg30.F)
    (r84 : Seg30.relationRow84 rho)
    (r667 : Seg30.relationRow667 rho)
    (r668 : Seg30.relationRow668 rho)
    (r669 : Seg30.relationRow669 rho)
    (r670 : Seg30.relationRow670 rho)
    (r671 : Seg30.relationRow671 rho)
    (hacc : onCurve (seg30RvkAcc rho 84)) :
    RvkFixedBaseLadder.FixedStepRel 84 (rho 28395)
      (seg30RvkAcc rho 84) (seg30RvkAcc rho (84 + 1)) := by
  have hbrow84 : (1*(rho 28395))*(1 + (-1)*(rho 28395)) = 0 := by
    simpa [Seg30.relationRow84] using r84
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX83 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY83 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr84 : RvkFixedBaseLadder.FixedStepRel 84 (rho 28395)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX83 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY83 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX84 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY84 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc84, seg30AccX84, seg30AccY84, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung84_wide (rho 28311 : Seg30.F) (rho 28395 : Seg30.F) (seg30AccX83 rho : Seg30.F) (seg30AccY83 rho : Seg30.F) (rho 28977 : Seg30.F) (rho 28978 : Seg30.F) (rho 28979 : Seg30.F) (rho 28980 : Seg30.F) (rho 28981 : Seg30.F) hinput
        (by simpa using seg30_prefix_84_v2 rho r667)
        (by simpa using seg30_prefix_84_addX rho r668)
        (by simpa using seg30_prefix_84_addY rho r669)
        (by simpa using seg30_prefix_84_selX rho r670)
        (by simpa using seg30_prefix_84_selY rho r671)
        hbrow84
  exact hr84

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


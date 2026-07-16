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
    RvkFixedBaseLadder.FixedStepRel 84 (rho 28401)
      (seg30RvkAcc rho 84) (seg30RvkAcc rho (84 + 1)) := by
  have hbrow84 : (1*(rho 28401))*(1 + (-1)*(rho 28401)) = 0 := by
    simpa [Seg30.relationRow84] using r84
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX83 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY83 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr84 : RvkFixedBaseLadder.FixedStepRel 84 (rho 28401)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX83 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY83 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX84 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY84 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc84, seg30AccX84, seg30AccY84, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung84_wide (rho 28317 : Seg30.F) (rho 28401 : Seg30.F) (seg30AccX83 rho : Seg30.F) (seg30AccY83 rho : Seg30.F) (rho 28983 : Seg30.F) (rho 28984 : Seg30.F) (rho 28985 : Seg30.F) (rho 28986 : Seg30.F) (rho 28987 : Seg30.F) hinput
        (by simpa using seg30_prefix_84_v2 rho r667)
        (by simpa using seg30_prefix_84_addX rho r668)
        (by simpa using seg30_prefix_84_addY rho r669)
        (by simpa using seg30_prefix_84_selX rho r670)
        (by simpa using seg30_prefix_84_selY rho r671)
        hbrow84
  exact hr84

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


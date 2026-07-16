import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas5
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

theorem seg30_prefix_step60 (rho : Nat -> Seg30.F)
    (r60 : Seg30.relationRow60 rho)
    (r547 : Seg30.relationRow547 rho)
    (r548 : Seg30.relationRow548 rho)
    (r549 : Seg30.relationRow549 rho)
    (r550 : Seg30.relationRow550 rho)
    (r551 : Seg30.relationRow551 rho)
    (hacc : onCurve (seg30RvkAcc rho 60)) :
    RvkFixedBaseLadder.FixedStepRel 60 (rho 28377)
      (seg30RvkAcc rho 60) (seg30RvkAcc rho (60 + 1)) := by
  have hbrow60 : (1*(rho 28377))*(1 + (-1)*(rho 28377)) = 0 := by
    simpa [Seg30.relationRow60] using r60
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX59 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY59 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr60 : RvkFixedBaseLadder.FixedStepRel 60 (rho 28377)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX59 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY59 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX60 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY60 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc60, seg30AccX60, seg30AccY60, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung60_wide (rho 28317 : Seg30.F) (rho 28377 : Seg30.F) (seg30AccX59 rho : Seg30.F) (seg30AccY59 rho : Seg30.F) (rho 28863 : Seg30.F) (rho 28864 : Seg30.F) (rho 28865 : Seg30.F) (rho 28866 : Seg30.F) (rho 28867 : Seg30.F) hinput
        (by simpa using seg30_prefix_60_v2 rho r547)
        (by simpa using seg30_prefix_60_addX rho r548)
        (by simpa using seg30_prefix_60_addY rho r549)
        (by simpa using seg30_prefix_60_selX rho r550)
        (by simpa using seg30_prefix_60_selY rho r551)
        hbrow60
  exact hr60

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


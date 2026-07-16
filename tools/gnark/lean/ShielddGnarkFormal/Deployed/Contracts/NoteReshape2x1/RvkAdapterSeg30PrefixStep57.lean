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

theorem seg30_prefix_step57 (rho : Nat -> Seg30.F)
    (r57 : Seg30.relationRow57 rho)
    (r532 : Seg30.relationRow532 rho)
    (r533 : Seg30.relationRow533 rho)
    (r534 : Seg30.relationRow534 rho)
    (r535 : Seg30.relationRow535 rho)
    (r536 : Seg30.relationRow536 rho)
    (hacc : onCurve (seg30RvkAcc rho 57)) :
    RvkFixedBaseLadder.FixedStepRel 57 (rho 28374)
      (seg30RvkAcc rho 57) (seg30RvkAcc rho (57 + 1)) := by
  have hbrow57 : (1*(rho 28374))*(1 + (-1)*(rho 28374)) = 0 := by
    simpa [Seg30.relationRow57] using r57
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX56 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY56 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr57 : RvkFixedBaseLadder.FixedStepRel 57 (rho 28374)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX56 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY56 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX57 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY57 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc57, seg30AccX57, seg30AccY57, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung57_wide (rho 28317 : Seg30.F) (rho 28374 : Seg30.F) (seg30AccX56 rho : Seg30.F) (seg30AccY56 rho : Seg30.F) (rho 28848 : Seg30.F) (rho 28849 : Seg30.F) (rho 28850 : Seg30.F) (rho 28851 : Seg30.F) (rho 28852 : Seg30.F) hinput
        (by simpa using seg30_prefix_57_v2 rho r532)
        (by simpa using seg30_prefix_57_addX rho r533)
        (by simpa using seg30_prefix_57_addY rho r534)
        (by simpa using seg30_prefix_57_selX rho r535)
        (by simpa using seg30_prefix_57_selY rho r536)
        hbrow57
  exact hr57

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


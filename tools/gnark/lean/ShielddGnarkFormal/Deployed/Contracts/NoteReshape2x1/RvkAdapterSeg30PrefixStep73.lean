import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas7
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

theorem seg30_prefix_step73 (rho : Nat -> Seg30.F)
    (r73 : Seg30.relationRow73 rho)
    (r612 : Seg30.relationRow612 rho)
    (r613 : Seg30.relationRow613 rho)
    (r614 : Seg30.relationRow614 rho)
    (r615 : Seg30.relationRow615 rho)
    (r616 : Seg30.relationRow616 rho)
    (hacc : onCurve (seg30RvkAcc rho 73)) :
    RvkFixedBaseLadder.FixedStepRel 73 (rho 28390)
      (seg30RvkAcc rho 73) (seg30RvkAcc rho (73 + 1)) := by
  have hbrow73 : (1*(rho 28390))*(1 + (-1)*(rho 28390)) = 0 := by
    simpa [Seg30.relationRow73] using r73
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX72 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY72 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr73 : RvkFixedBaseLadder.FixedStepRel 73 (rho 28390)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX72 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY72 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX73 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY73 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc73, seg30AccX73, seg30AccY73, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung73_wide (rho 28317 : Seg30.F) (rho 28390 : Seg30.F) (seg30AccX72 rho : Seg30.F) (seg30AccY72 rho : Seg30.F) (rho 28928 : Seg30.F) (rho 28929 : Seg30.F) (rho 28930 : Seg30.F) (rho 28931 : Seg30.F) (rho 28932 : Seg30.F) hinput
        (by simpa using seg30_prefix_73_v2 rho r612)
        (by simpa using seg30_prefix_73_addX rho r613)
        (by simpa using seg30_prefix_73_addY rho r614)
        (by simpa using seg30_prefix_73_selX rho r615)
        (by simpa using seg30_prefix_73_selY rho r616)
        hbrow73
  exact hr73

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


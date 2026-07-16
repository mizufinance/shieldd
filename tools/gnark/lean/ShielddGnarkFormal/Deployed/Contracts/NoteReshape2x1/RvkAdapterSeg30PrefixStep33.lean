import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas3
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

theorem seg30_prefix_step33 (rho : Nat -> Seg30.F)
    (r33 : Seg30.relationRow33 rho)
    (r412 : Seg30.relationRow412 rho)
    (r413 : Seg30.relationRow413 rho)
    (r414 : Seg30.relationRow414 rho)
    (r415 : Seg30.relationRow415 rho)
    (r416 : Seg30.relationRow416 rho)
    (hacc : onCurve (seg30RvkAcc rho 33)) :
    RvkFixedBaseLadder.FixedStepRel 33 (rho 28350)
      (seg30RvkAcc rho 33) (seg30RvkAcc rho (33 + 1)) := by
  have hbrow33 : (1*(rho 28350))*(1 + (-1)*(rho 28350)) = 0 := by
    simpa [Seg30.relationRow33] using r33
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX32 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY32 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr33 : RvkFixedBaseLadder.FixedStepRel 33 (rho 28350)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX32 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY32 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX33 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY33 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc33, seg30AccX33, seg30AccY33, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung33_wide (rho 28317 : Seg30.F) (rho 28350 : Seg30.F) (seg30AccX32 rho : Seg30.F) (seg30AccY32 rho : Seg30.F) (rho 28728 : Seg30.F) (rho 28729 : Seg30.F) (rho 28730 : Seg30.F) (rho 28731 : Seg30.F) (rho 28732 : Seg30.F) hinput
        (by simpa using seg30_prefix_33_v2 rho r412)
        (by simpa using seg30_prefix_33_addX rho r413)
        (by simpa using seg30_prefix_33_addY rho r414)
        (by simpa using seg30_prefix_33_selX rho r415)
        (by simpa using seg30_prefix_33_selY rho r416)
        hbrow33
  exact hr33

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


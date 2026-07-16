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

theorem seg30_prefix_step37 (rho : Nat -> Seg30.F)
    (r37 : Seg30.relationRow37 rho)
    (r432 : Seg30.relationRow432 rho)
    (r433 : Seg30.relationRow433 rho)
    (r434 : Seg30.relationRow434 rho)
    (r435 : Seg30.relationRow435 rho)
    (r436 : Seg30.relationRow436 rho)
    (hacc : onCurve (seg30RvkAcc rho 37)) :
    RvkFixedBaseLadder.FixedStepRel 37 (rho 28354)
      (seg30RvkAcc rho 37) (seg30RvkAcc rho (37 + 1)) := by
  have hbrow37 : (1*(rho 28354))*(1 + (-1)*(rho 28354)) = 0 := by
    simpa [Seg30.relationRow37] using r37
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX36 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY36 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr37 : RvkFixedBaseLadder.FixedStepRel 37 (rho 28354)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX36 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY36 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX37 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY37 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc37, seg30AccX37, seg30AccY37, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung37_wide (rho 28317 : Seg30.F) (rho 28354 : Seg30.F) (seg30AccX36 rho : Seg30.F) (seg30AccY36 rho : Seg30.F) (rho 28748 : Seg30.F) (rho 28749 : Seg30.F) (rho 28750 : Seg30.F) (rho 28751 : Seg30.F) (rho 28752 : Seg30.F) hinput
        (by simpa using seg30_prefix_37_v2 rho r432)
        (by simpa using seg30_prefix_37_addX rho r433)
        (by simpa using seg30_prefix_37_addY rho r434)
        (by simpa using seg30_prefix_37_selX rho r435)
        (by simpa using seg30_prefix_37_selY rho r436)
        hbrow37
  exact hr37

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


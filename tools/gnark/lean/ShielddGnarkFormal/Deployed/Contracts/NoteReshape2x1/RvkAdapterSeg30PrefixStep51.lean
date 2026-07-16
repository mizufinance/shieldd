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

theorem seg30_prefix_step51 (rho : Nat -> Seg30.F)
    (r51 : Seg30.relationRow51 rho)
    (r502 : Seg30.relationRow502 rho)
    (r503 : Seg30.relationRow503 rho)
    (r504 : Seg30.relationRow504 rho)
    (r505 : Seg30.relationRow505 rho)
    (r506 : Seg30.relationRow506 rho)
    (hacc : onCurve (seg30RvkAcc rho 51)) :
    RvkFixedBaseLadder.FixedStepRel 51 (rho 28368)
      (seg30RvkAcc rho 51) (seg30RvkAcc rho (51 + 1)) := by
  have hbrow51 : (1*(rho 28368))*(1 + (-1)*(rho 28368)) = 0 := by
    simpa [Seg30.relationRow51] using r51
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX50 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY50 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr51 : RvkFixedBaseLadder.FixedStepRel 51 (rho 28368)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX50 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY50 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX51 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY51 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc51, seg30AccX51, seg30AccY51, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung51_wide (rho 28317 : Seg30.F) (rho 28368 : Seg30.F) (seg30AccX50 rho : Seg30.F) (seg30AccY50 rho : Seg30.F) (rho 28818 : Seg30.F) (rho 28819 : Seg30.F) (rho 28820 : Seg30.F) (rho 28821 : Seg30.F) (rho 28822 : Seg30.F) hinput
        (by simpa using seg30_prefix_51_v2 rho r502)
        (by simpa using seg30_prefix_51_addX rho r503)
        (by simpa using seg30_prefix_51_addY rho r504)
        (by simpa using seg30_prefix_51_selX rho r505)
        (by simpa using seg30_prefix_51_selY rho r506)
        hbrow51
  exact hr51

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


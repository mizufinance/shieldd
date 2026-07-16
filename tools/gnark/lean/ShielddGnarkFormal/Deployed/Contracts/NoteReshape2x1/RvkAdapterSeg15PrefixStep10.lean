import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas0
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

theorem seg15_prefix_step10 (rho : Nat -> Seg15.F)
    (r10 : Seg15.relationRow10 rho)
    (r297 : Seg15.relationRow297 rho)
    (r298 : Seg15.relationRow298 rho)
    (r299 : Seg15.relationRow299 rho)
    (r300 : Seg15.relationRow300 rho)
    (r301 : Seg15.relationRow301 rho)
    (hacc : onCurve (seg15RvkAcc rho 10)) :
    RvkFixedBaseLadder.FixedStepRel 10 (rho 16146)
      (seg15RvkAcc rho 10) (seg15RvkAcc rho (10 + 1)) := by
  have hbrow10 : (1*(rho 16146))*(1 + (-1)*(rho 16146)) = 0 := by
    simpa [Seg15.relationRow10] using r10
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX9 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY9 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr10 : RvkFixedBaseLadder.FixedStepRel 10 (rho 16146)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX9 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY9 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX10 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY10 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc10, seg15AccX10, seg15AccY10, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung10_wide (rho 16136 : Seg15.F) (rho 16146 : Seg15.F) (seg15AccX9 rho : Seg15.F) (seg15AccY9 rho : Seg15.F) (rho 16432 : Seg15.F) (rho 16433 : Seg15.F) (rho 16434 : Seg15.F) (rho 16435 : Seg15.F) (rho 16436 : Seg15.F) hinput
        (by simpa using seg15_prefix_10_v2 rho r297)
        (by simpa using seg15_prefix_10_addX rho r298)
        (by simpa using seg15_prefix_10_addY rho r299)
        (by simpa using seg15_prefix_10_selX rho r300)
        (by simpa using seg15_prefix_10_selY rho r301)
        hbrow10
  exact hr10

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


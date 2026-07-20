import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas0
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

theorem seg30_prefix_step10 (rho : Nat -> Seg30.F)
    (r10 : Seg30.relationRow10 rho)
    (r297 : Seg30.relationRow297 rho)
    (r298 : Seg30.relationRow298 rho)
    (r299 : Seg30.relationRow299 rho)
    (r300 : Seg30.relationRow300 rho)
    (r301 : Seg30.relationRow301 rho)
    (hacc : onCurve (seg30RvkAcc rho 10)) :
    RvkFixedBaseLadder.FixedStepRel 10 (rho 28321)
      (seg30RvkAcc rho 10) (seg30RvkAcc rho (10 + 1)) := by
  have hbrow10 : (1*(rho 28321))*(1 + (-1)*(rho 28321)) = 0 := by
    simpa [Seg30.relationRow10] using r10
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX9 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY9 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr10 : RvkFixedBaseLadder.FixedStepRel 10 (rho 28321)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX9 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY9 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX10 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY10 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc10, seg30AccX10, seg30AccY10, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung10_wide (rho 28311 : Seg30.F) (rho 28321 : Seg30.F) (seg30AccX9 rho : Seg30.F) (seg30AccY9 rho : Seg30.F) (rho 28607 : Seg30.F) (rho 28608 : Seg30.F) (rho 28609 : Seg30.F) (rho 28610 : Seg30.F) (rho 28611 : Seg30.F) hinput
        (by simpa using seg30_prefix_10_v2 rho r297)
        (by simpa using seg30_prefix_10_addX rho r298)
        (by simpa using seg30_prefix_10_addY rho r299)
        (by simpa using seg30_prefix_10_selX rho r300)
        (by simpa using seg30_prefix_10_selY rho r301)
        hbrow10
  exact hr10

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


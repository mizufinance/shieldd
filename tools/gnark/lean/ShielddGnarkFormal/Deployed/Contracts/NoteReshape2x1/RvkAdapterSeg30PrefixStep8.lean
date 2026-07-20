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

theorem seg30_prefix_step8 (rho : Nat -> Seg30.F)
    (r8 : Seg30.relationRow8 rho)
    (r287 : Seg30.relationRow287 rho)
    (r288 : Seg30.relationRow288 rho)
    (r289 : Seg30.relationRow289 rho)
    (r290 : Seg30.relationRow290 rho)
    (r291 : Seg30.relationRow291 rho)
    (hacc : onCurve (seg30RvkAcc rho 8)) :
    RvkFixedBaseLadder.FixedStepRel 8 (rho 28319)
      (seg30RvkAcc rho 8) (seg30RvkAcc rho (8 + 1)) := by
  have hbrow8 : (1*(rho 28319))*(1 + (-1)*(rho 28319)) = 0 := by
    simpa [Seg30.relationRow8] using r8
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX7 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY7 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr8 : RvkFixedBaseLadder.FixedStepRel 8 (rho 28319)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX7 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY7 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX8 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY8 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc8, seg30AccX8, seg30AccY8, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung8_wide (rho 28311 : Seg30.F) (rho 28319 : Seg30.F) (seg30AccX7 rho : Seg30.F) (seg30AccY7 rho : Seg30.F) (rho 28597 : Seg30.F) (rho 28598 : Seg30.F) (rho 28599 : Seg30.F) (rho 28600 : Seg30.F) (rho 28601 : Seg30.F) hinput
        (by simpa using seg30_prefix_8_v2 rho r287)
        (by simpa using seg30_prefix_8_addX rho r288)
        (by simpa using seg30_prefix_8_addY rho r289)
        (by simpa using seg30_prefix_8_selX rho r290)
        (by simpa using seg30_prefix_8_selY rho r291)
        hbrow8
  exact hr8

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


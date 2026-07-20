import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas2
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

theorem seg30_prefix_step30 (rho : Nat -> Seg30.F)
    (r30 : Seg30.relationRow30 rho)
    (r397 : Seg30.relationRow397 rho)
    (r398 : Seg30.relationRow398 rho)
    (r399 : Seg30.relationRow399 rho)
    (r400 : Seg30.relationRow400 rho)
    (r401 : Seg30.relationRow401 rho)
    (hacc : onCurve (seg30RvkAcc rho 30)) :
    RvkFixedBaseLadder.FixedStepRel 30 (rho 28341)
      (seg30RvkAcc rho 30) (seg30RvkAcc rho (30 + 1)) := by
  have hbrow30 : (1*(rho 28341))*(1 + (-1)*(rho 28341)) = 0 := by
    simpa [Seg30.relationRow30] using r30
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX29 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY29 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr30 : RvkFixedBaseLadder.FixedStepRel 30 (rho 28341)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX29 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY29 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX30 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY30 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc30, seg30AccX30, seg30AccY30, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung30_wide (rho 28311 : Seg30.F) (rho 28341 : Seg30.F) (seg30AccX29 rho : Seg30.F) (seg30AccY29 rho : Seg30.F) (rho 28707 : Seg30.F) (rho 28708 : Seg30.F) (rho 28709 : Seg30.F) (rho 28710 : Seg30.F) (rho 28711 : Seg30.F) hinput
        (by simpa using seg30_prefix_30_v2 rho r397)
        (by simpa using seg30_prefix_30_addX rho r398)
        (by simpa using seg30_prefix_30_addY rho r399)
        (by simpa using seg30_prefix_30_selX rho r400)
        (by simpa using seg30_prefix_30_selY rho r401)
        hbrow30
  exact hr30

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


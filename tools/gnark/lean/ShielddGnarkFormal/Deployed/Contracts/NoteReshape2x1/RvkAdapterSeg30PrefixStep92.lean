import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas9
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

theorem seg30_prefix_step92 (rho : Nat -> Seg30.F)
    (r92 : Seg30.relationRow92 rho)
    (r707 : Seg30.relationRow707 rho)
    (r708 : Seg30.relationRow708 rho)
    (r709 : Seg30.relationRow709 rho)
    (r710 : Seg30.relationRow710 rho)
    (r711 : Seg30.relationRow711 rho)
    (hacc : onCurve (seg30RvkAcc rho 92)) :
    RvkFixedBaseLadder.FixedStepRel 92 (rho 28409)
      (seg30RvkAcc rho 92) (seg30RvkAcc rho (92 + 1)) := by
  have hbrow92 : (1*(rho 28409))*(1 + (-1)*(rho 28409)) = 0 := by
    simpa [Seg30.relationRow92] using r92
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX91 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY91 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr92 : RvkFixedBaseLadder.FixedStepRel 92 (rho 28409)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX91 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY91 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX92 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY92 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc92, seg30AccX92, seg30AccY92, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung92_wide (rho 28317 : Seg30.F) (rho 28409 : Seg30.F) (seg30AccX91 rho : Seg30.F) (seg30AccY91 rho : Seg30.F) (rho 29023 : Seg30.F) (rho 29024 : Seg30.F) (rho 29025 : Seg30.F) (rho 29026 : Seg30.F) (rho 29027 : Seg30.F) hinput
        (by simpa using seg30_prefix_92_v2 rho r707)
        (by simpa using seg30_prefix_92_addX rho r708)
        (by simpa using seg30_prefix_92_addY rho r709)
        (by simpa using seg30_prefix_92_selX rho r710)
        (by simpa using seg30_prefix_92_selY rho r711)
        hbrow92
  exact hr92

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


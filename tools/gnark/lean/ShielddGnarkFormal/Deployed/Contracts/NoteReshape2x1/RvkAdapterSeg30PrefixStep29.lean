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

theorem seg30_prefix_step29 (rho : Nat -> Seg30.F)
    (r29 : Seg30.relationRow29 rho)
    (r392 : Seg30.relationRow392 rho)
    (r393 : Seg30.relationRow393 rho)
    (r394 : Seg30.relationRow394 rho)
    (r395 : Seg30.relationRow395 rho)
    (r396 : Seg30.relationRow396 rho)
    (hacc : onCurve (seg30RvkAcc rho 29)) :
    RvkFixedBaseLadder.FixedStepRel 29 (rho 28340)
      (seg30RvkAcc rho 29) (seg30RvkAcc rho (29 + 1)) := by
  have hbrow29 : (1*(rho 28340))*(1 + (-1)*(rho 28340)) = 0 := by
    simpa [Seg30.relationRow29] using r29
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX28 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY28 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr29 : RvkFixedBaseLadder.FixedStepRel 29 (rho 28340)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX28 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY28 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX29 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY29 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc29, seg30AccX29, seg30AccY29, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung29_wide (rho 28311 : Seg30.F) (rho 28340 : Seg30.F) (seg30AccX28 rho : Seg30.F) (seg30AccY28 rho : Seg30.F) (rho 28702 : Seg30.F) (rho 28703 : Seg30.F) (rho 28704 : Seg30.F) (rho 28705 : Seg30.F) (rho 28706 : Seg30.F) hinput
        (by simpa using seg30_prefix_29_v2 rho r392)
        (by simpa using seg30_prefix_29_addX rho r393)
        (by simpa using seg30_prefix_29_addY rho r394)
        (by simpa using seg30_prefix_29_selX rho r395)
        (by simpa using seg30_prefix_29_selY rho r396)
        hbrow29
  exact hr29

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


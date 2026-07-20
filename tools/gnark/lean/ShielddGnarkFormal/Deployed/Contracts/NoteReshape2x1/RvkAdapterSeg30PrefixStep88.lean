import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas8
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

theorem seg30_prefix_step88 (rho : Nat -> Seg30.F)
    (r88 : Seg30.relationRow88 rho)
    (r687 : Seg30.relationRow687 rho)
    (r688 : Seg30.relationRow688 rho)
    (r689 : Seg30.relationRow689 rho)
    (r690 : Seg30.relationRow690 rho)
    (r691 : Seg30.relationRow691 rho)
    (hacc : onCurve (seg30RvkAcc rho 88)) :
    RvkFixedBaseLadder.FixedStepRel 88 (rho 28399)
      (seg30RvkAcc rho 88) (seg30RvkAcc rho (88 + 1)) := by
  have hbrow88 : (1*(rho 28399))*(1 + (-1)*(rho 28399)) = 0 := by
    simpa [Seg30.relationRow88] using r88
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX87 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY87 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr88 : RvkFixedBaseLadder.FixedStepRel 88 (rho 28399)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX87 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY87 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX88 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY88 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc88, seg30AccX88, seg30AccY88, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung88_wide (rho 28311 : Seg30.F) (rho 28399 : Seg30.F) (seg30AccX87 rho : Seg30.F) (seg30AccY87 rho : Seg30.F) (rho 28997 : Seg30.F) (rho 28998 : Seg30.F) (rho 28999 : Seg30.F) (rho 29000 : Seg30.F) (rho 29001 : Seg30.F) hinput
        (by simpa using seg30_prefix_88_v2 rho r687)
        (by simpa using seg30_prefix_88_addX rho r688)
        (by simpa using seg30_prefix_88_addY rho r689)
        (by simpa using seg30_prefix_88_selX rho r690)
        (by simpa using seg30_prefix_88_selY rho r691)
        hbrow88
  exact hr88

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


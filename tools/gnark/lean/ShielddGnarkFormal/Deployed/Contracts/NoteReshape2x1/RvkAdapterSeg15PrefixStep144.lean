import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas14
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

theorem seg15_prefix_step144 (rho : Nat -> Seg15.F)
    (r144 : Seg15.relationRow144 rho)
    (r967 : Seg15.relationRow967 rho)
    (r968 : Seg15.relationRow968 rho)
    (r969 : Seg15.relationRow969 rho)
    (r970 : Seg15.relationRow970 rho)
    (r971 : Seg15.relationRow971 rho)
    (hacc : onCurve (seg15RvkAcc rho 144)) :
    RvkFixedBaseLadder.FixedStepRel 144 (rho 16274)
      (seg15RvkAcc rho 144) (seg15RvkAcc rho (144 + 1)) := by
  have hbrow144 : (1*(rho 16274))*(1 + (-1)*(rho 16274)) = 0 := by
    simpa [Seg15.relationRow144] using r144
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX143 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY143 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr144 : RvkFixedBaseLadder.FixedStepRel 144 (rho 16274)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX143 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY143 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX144 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY144 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc144, seg15AccX144, seg15AccY144, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung144_wide (rho 16130 : Seg15.F) (rho 16274 : Seg15.F) (seg15AccX143 rho : Seg15.F) (seg15AccY143 rho : Seg15.F) (rho 17096 : Seg15.F) (rho 17097 : Seg15.F) (rho 17098 : Seg15.F) (rho 17099 : Seg15.F) (rho 17100 : Seg15.F) hinput
        (by simpa using seg15_prefix_144_v2 rho r967)
        (by simpa using seg15_prefix_144_addX rho r968)
        (by simpa using seg15_prefix_144_addY rho r969)
        (by simpa using seg15_prefix_144_selX rho r970)
        (by simpa using seg15_prefix_144_selY rho r971)
        hbrow144
  exact hr144

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


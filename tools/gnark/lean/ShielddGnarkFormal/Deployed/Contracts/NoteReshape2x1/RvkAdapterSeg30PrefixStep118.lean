import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas11
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

theorem seg30_prefix_step118 (rho : Nat -> Seg30.F)
    (r118 : Seg30.relationRow118 rho)
    (r837 : Seg30.relationRow837 rho)
    (r838 : Seg30.relationRow838 rho)
    (r839 : Seg30.relationRow839 rho)
    (r840 : Seg30.relationRow840 rho)
    (r841 : Seg30.relationRow841 rho)
    (hacc : onCurve (seg30RvkAcc rho 118)) :
    RvkFixedBaseLadder.FixedStepRel 118 (rho 28429)
      (seg30RvkAcc rho 118) (seg30RvkAcc rho (118 + 1)) := by
  have hbrow118 : (1*(rho 28429))*(1 + (-1)*(rho 28429)) = 0 := by
    simpa [Seg30.relationRow118] using r118
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX117 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY117 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr118 : RvkFixedBaseLadder.FixedStepRel 118 (rho 28429)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX117 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY117 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX118 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY118 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc118, seg30AccX118, seg30AccY118, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung118_wide (rho 28311 : Seg30.F) (rho 28429 : Seg30.F) (seg30AccX117 rho : Seg30.F) (seg30AccY117 rho : Seg30.F) (rho 29147 : Seg30.F) (rho 29148 : Seg30.F) (rho 29149 : Seg30.F) (rho 29150 : Seg30.F) (rho 29151 : Seg30.F) hinput
        (by simpa using seg30_prefix_118_v2 rho r837)
        (by simpa using seg30_prefix_118_addX rho r838)
        (by simpa using seg30_prefix_118_addY rho r839)
        (by simpa using seg30_prefix_118_selX rho r840)
        (by simpa using seg30_prefix_118_selY rho r841)
        hbrow118
  exact hr118

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


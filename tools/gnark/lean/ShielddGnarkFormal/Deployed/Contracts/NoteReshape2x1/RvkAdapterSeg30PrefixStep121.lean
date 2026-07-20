import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas12
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

theorem seg30_prefix_step121 (rho : Nat -> Seg30.F)
    (r121 : Seg30.relationRow121 rho)
    (r852 : Seg30.relationRow852 rho)
    (r853 : Seg30.relationRow853 rho)
    (r854 : Seg30.relationRow854 rho)
    (r855 : Seg30.relationRow855 rho)
    (r856 : Seg30.relationRow856 rho)
    (hacc : onCurve (seg30RvkAcc rho 121)) :
    RvkFixedBaseLadder.FixedStepRel 121 (rho 28432)
      (seg30RvkAcc rho 121) (seg30RvkAcc rho (121 + 1)) := by
  have hbrow121 : (1*(rho 28432))*(1 + (-1)*(rho 28432)) = 0 := by
    simpa [Seg30.relationRow121] using r121
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX120 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY120 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr121 : RvkFixedBaseLadder.FixedStepRel 121 (rho 28432)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX120 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY120 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX121 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY121 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc121, seg30AccX121, seg30AccY121, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung121_wide (rho 28311 : Seg30.F) (rho 28432 : Seg30.F) (seg30AccX120 rho : Seg30.F) (seg30AccY120 rho : Seg30.F) (rho 29162 : Seg30.F) (rho 29163 : Seg30.F) (rho 29164 : Seg30.F) (rho 29165 : Seg30.F) (rho 29166 : Seg30.F) hinput
        (by simpa using seg30_prefix_121_v2 rho r852)
        (by simpa using seg30_prefix_121_addX rho r853)
        (by simpa using seg30_prefix_121_addY rho r854)
        (by simpa using seg30_prefix_121_selX rho r855)
        (by simpa using seg30_prefix_121_selY rho r856)
        hbrow121
  exact hr121

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


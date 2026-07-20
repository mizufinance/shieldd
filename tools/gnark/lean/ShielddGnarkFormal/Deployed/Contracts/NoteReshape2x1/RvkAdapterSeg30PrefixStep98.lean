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

theorem seg30_prefix_step98 (rho : Nat -> Seg30.F)
    (r98 : Seg30.relationRow98 rho)
    (r737 : Seg30.relationRow737 rho)
    (r738 : Seg30.relationRow738 rho)
    (r739 : Seg30.relationRow739 rho)
    (r740 : Seg30.relationRow740 rho)
    (r741 : Seg30.relationRow741 rho)
    (hacc : onCurve (seg30RvkAcc rho 98)) :
    RvkFixedBaseLadder.FixedStepRel 98 (rho 28409)
      (seg30RvkAcc rho 98) (seg30RvkAcc rho (98 + 1)) := by
  have hbrow98 : (1*(rho 28409))*(1 + (-1)*(rho 28409)) = 0 := by
    simpa [Seg30.relationRow98] using r98
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX97 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY97 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr98 : RvkFixedBaseLadder.FixedStepRel 98 (rho 28409)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX97 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY97 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX98 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY98 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc98, seg30AccX98, seg30AccY98, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung98_wide (rho 28311 : Seg30.F) (rho 28409 : Seg30.F) (seg30AccX97 rho : Seg30.F) (seg30AccY97 rho : Seg30.F) (rho 29047 : Seg30.F) (rho 29048 : Seg30.F) (rho 29049 : Seg30.F) (rho 29050 : Seg30.F) (rho 29051 : Seg30.F) hinput
        (by simpa using seg30_prefix_98_v2 rho r737)
        (by simpa using seg30_prefix_98_addX rho r738)
        (by simpa using seg30_prefix_98_addY rho r739)
        (by simpa using seg30_prefix_98_selX rho r740)
        (by simpa using seg30_prefix_98_selY rho r741)
        hbrow98
  exact hr98

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


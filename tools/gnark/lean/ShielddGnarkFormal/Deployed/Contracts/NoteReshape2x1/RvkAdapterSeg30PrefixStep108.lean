import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas10
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

theorem seg30_prefix_step108 (rho : Nat -> Seg30.F)
    (r108 : Seg30.relationRow108 rho)
    (r787 : Seg30.relationRow787 rho)
    (r788 : Seg30.relationRow788 rho)
    (r789 : Seg30.relationRow789 rho)
    (r790 : Seg30.relationRow790 rho)
    (r791 : Seg30.relationRow791 rho)
    (hacc : onCurve (seg30RvkAcc rho 108)) :
    RvkFixedBaseLadder.FixedStepRel 108 (rho 28419)
      (seg30RvkAcc rho 108) (seg30RvkAcc rho (108 + 1)) := by
  have hbrow108 : (1*(rho 28419))*(1 + (-1)*(rho 28419)) = 0 := by
    simpa [Seg30.relationRow108] using r108
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX107 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY107 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr108 : RvkFixedBaseLadder.FixedStepRel 108 (rho 28419)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX107 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY107 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX108 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY108 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc108, seg30AccX108, seg30AccY108, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung108_wide (rho 28311 : Seg30.F) (rho 28419 : Seg30.F) (seg30AccX107 rho : Seg30.F) (seg30AccY107 rho : Seg30.F) (rho 29097 : Seg30.F) (rho 29098 : Seg30.F) (rho 29099 : Seg30.F) (rho 29100 : Seg30.F) (rho 29101 : Seg30.F) hinput
        (by simpa using seg30_prefix_108_v2 rho r787)
        (by simpa using seg30_prefix_108_addX rho r788)
        (by simpa using seg30_prefix_108_addY rho r789)
        (by simpa using seg30_prefix_108_selX rho r790)
        (by simpa using seg30_prefix_108_selY rho r791)
        hbrow108
  exact hr108

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


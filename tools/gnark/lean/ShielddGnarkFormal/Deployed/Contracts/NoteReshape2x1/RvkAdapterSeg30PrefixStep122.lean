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

theorem seg30_prefix_step122 (rho : Nat -> Seg30.F)
    (r122 : Seg30.relationRow122 rho)
    (r857 : Seg30.relationRow857 rho)
    (r858 : Seg30.relationRow858 rho)
    (r859 : Seg30.relationRow859 rho)
    (r860 : Seg30.relationRow860 rho)
    (r861 : Seg30.relationRow861 rho)
    (hacc : onCurve (seg30RvkAcc rho 122)) :
    RvkFixedBaseLadder.FixedStepRel 122 (rho 28433)
      (seg30RvkAcc rho 122) (seg30RvkAcc rho (122 + 1)) := by
  have hbrow122 : (1*(rho 28433))*(1 + (-1)*(rho 28433)) = 0 := by
    simpa [Seg30.relationRow122] using r122
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX121 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY121 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr122 : RvkFixedBaseLadder.FixedStepRel 122 (rho 28433)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX121 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY121 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX122 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY122 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc122, seg30AccX122, seg30AccY122, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung122_wide (rho 28311 : Seg30.F) (rho 28433 : Seg30.F) (seg30AccX121 rho : Seg30.F) (seg30AccY121 rho : Seg30.F) (rho 29167 : Seg30.F) (rho 29168 : Seg30.F) (rho 29169 : Seg30.F) (rho 29170 : Seg30.F) (rho 29171 : Seg30.F) hinput
        (by simpa using seg30_prefix_122_v2 rho r857)
        (by simpa using seg30_prefix_122_addX rho r858)
        (by simpa using seg30_prefix_122_addY rho r859)
        (by simpa using seg30_prefix_122_selX rho r860)
        (by simpa using seg30_prefix_122_selY rho r861)
        hbrow122
  exact hr122

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


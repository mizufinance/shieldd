import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas9
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_step96 (rho : Nat -> Seg30.F)
    (r96 : Seg30.relationRow96 rho)
    (r727 : Seg30.relationRow727 rho)
    (r728 : Seg30.relationRow728 rho)
    (r729 : Seg30.relationRow729 rho)
    (r730 : Seg30.relationRow730 rho)
    (r731 : Seg30.relationRow731 rho)
    (hacc : onCurve (seg30RvkAcc rho 96)) :
    RvkFixedBaseLadder.FixedStepRel 96 (rho 28413)
      (seg30RvkAcc rho 96) (seg30RvkAcc rho (96 + 1)) := by
  have hbrow96 : (1*(rho 28413))*(1 + (-1)*(rho 28413)) = 0 := by
    simpa [Seg30.relationRow96] using r96
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX95 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY95 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr96 : RvkFixedBaseLadder.FixedStepRel 96 (rho 28413)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX95 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY95 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX96 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY96 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc96, seg30AccX96, seg30AccY96, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung96_wide (rho 28317 : Seg30.F) (rho 28413 : Seg30.F) (seg30AccX95 rho : Seg30.F) (seg30AccY95 rho : Seg30.F) (rho 29043 : Seg30.F) (rho 29044 : Seg30.F) (rho 29045 : Seg30.F) (rho 29046 : Seg30.F) (rho 29047 : Seg30.F) hinput
        (by simpa using seg30_prefix_96_v2 rho r727)
        (by simpa using seg30_prefix_96_addX rho r728)
        (by simpa using seg30_prefix_96_addY rho r729)
        (by simpa using seg30_prefix_96_selX rho r730)
        (by simpa using seg30_prefix_96_selY rho r731)
        hbrow96
  exact hr96

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


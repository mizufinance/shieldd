import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas13
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

theorem seg30_prefix_step132 (rho : Nat -> Seg30.F)
    (r132 : Seg30.relationRow132 rho)
    (r907 : Seg30.relationRow907 rho)
    (r908 : Seg30.relationRow908 rho)
    (r909 : Seg30.relationRow909 rho)
    (r910 : Seg30.relationRow910 rho)
    (r911 : Seg30.relationRow911 rho)
    (hacc : onCurve (seg30RvkAcc rho 132)) :
    RvkFixedBaseLadder.FixedStepRel 132 (rho 28449)
      (seg30RvkAcc rho 132) (seg30RvkAcc rho (132 + 1)) := by
  have hbrow132 : (1*(rho 28449))*(1 + (-1)*(rho 28449)) = 0 := by
    simpa [Seg30.relationRow132] using r132
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX131 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY131 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr132 : RvkFixedBaseLadder.FixedStepRel 132 (rho 28449)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX131 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY131 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX132 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY132 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc132, seg30AccX132, seg30AccY132, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung132_wide (rho 28317 : Seg30.F) (rho 28449 : Seg30.F) (seg30AccX131 rho : Seg30.F) (seg30AccY131 rho : Seg30.F) (rho 29223 : Seg30.F) (rho 29224 : Seg30.F) (rho 29225 : Seg30.F) (rho 29226 : Seg30.F) (rho 29227 : Seg30.F) hinput
        (by simpa using seg30_prefix_132_v2 rho r907)
        (by simpa using seg30_prefix_132_addX rho r908)
        (by simpa using seg30_prefix_132_addY rho r909)
        (by simpa using seg30_prefix_132_selX rho r910)
        (by simpa using seg30_prefix_132_selY rho r911)
        hbrow132
  exact hr132

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas13
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_step132 (rho : Nat -> Seg15.F)
    (r132 : Seg15.relationRow132 rho)
    (r907 : Seg15.relationRow907 rho)
    (r908 : Seg15.relationRow908 rho)
    (r909 : Seg15.relationRow909 rho)
    (r910 : Seg15.relationRow910 rho)
    (r911 : Seg15.relationRow911 rho)
    (hacc : onCurve (seg15RvkAcc rho 132)) :
    RvkFixedBaseLadder.FixedStepRel 132 (rho 16268)
      (seg15RvkAcc rho 132) (seg15RvkAcc rho (132 + 1)) := by
  have hbrow132 : (1*(rho 16268))*(1 + (-1)*(rho 16268)) = 0 := by
    simpa [Seg15.relationRow132] using r132
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX131 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY131 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr132 : RvkFixedBaseLadder.FixedStepRel 132 (rho 16268)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX131 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY131 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX132 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY132 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc132, seg15AccX132, seg15AccY132, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung132_wide (rho 16136 : Seg15.F) (rho 16268 : Seg15.F) (seg15AccX131 rho : Seg15.F) (seg15AccY131 rho : Seg15.F) (rho 17042 : Seg15.F) (rho 17043 : Seg15.F) (rho 17044 : Seg15.F) (rho 17045 : Seg15.F) (rho 17046 : Seg15.F) hinput
        (by simpa using seg15_prefix_132_v2 rho r907)
        (by simpa using seg15_prefix_132_addX rho r908)
        (by simpa using seg15_prefix_132_addY rho r909)
        (by simpa using seg15_prefix_132_selX rho r910)
        (by simpa using seg15_prefix_132_selY rho r911)
        hbrow132
  exact hr132

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


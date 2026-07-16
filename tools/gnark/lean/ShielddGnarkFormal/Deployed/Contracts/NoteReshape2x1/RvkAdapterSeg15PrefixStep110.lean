import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas10
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

theorem seg15_prefix_step110 (rho : Nat -> Seg15.F)
    (r110 : Seg15.relationRow110 rho)
    (r797 : Seg15.relationRow797 rho)
    (r798 : Seg15.relationRow798 rho)
    (r799 : Seg15.relationRow799 rho)
    (r800 : Seg15.relationRow800 rho)
    (r801 : Seg15.relationRow801 rho)
    (hacc : onCurve (seg15RvkAcc rho 110)) :
    RvkFixedBaseLadder.FixedStepRel 110 (rho 16246)
      (seg15RvkAcc rho 110) (seg15RvkAcc rho (110 + 1)) := by
  have hbrow110 : (1*(rho 16246))*(1 + (-1)*(rho 16246)) = 0 := by
    simpa [Seg15.relationRow110] using r110
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX109 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY109 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr110 : RvkFixedBaseLadder.FixedStepRel 110 (rho 16246)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX109 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY109 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX110 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY110 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc110, seg15AccX110, seg15AccY110, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung110_wide (rho 16136 : Seg15.F) (rho 16246 : Seg15.F) (seg15AccX109 rho : Seg15.F) (seg15AccY109 rho : Seg15.F) (rho 16932 : Seg15.F) (rho 16933 : Seg15.F) (rho 16934 : Seg15.F) (rho 16935 : Seg15.F) (rho 16936 : Seg15.F) hinput
        (by simpa using seg15_prefix_110_v2 rho r797)
        (by simpa using seg15_prefix_110_addX rho r798)
        (by simpa using seg15_prefix_110_addY rho r799)
        (by simpa using seg15_prefix_110_selX rho r800)
        (by simpa using seg15_prefix_110_selY rho r801)
        hbrow110
  exact hr110

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


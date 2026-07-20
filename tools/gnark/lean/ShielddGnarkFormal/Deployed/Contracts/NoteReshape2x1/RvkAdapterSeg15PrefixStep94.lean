import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas9
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

theorem seg15_prefix_step94 (rho : Nat -> Seg15.F)
    (r94 : Seg15.relationRow94 rho)
    (r717 : Seg15.relationRow717 rho)
    (r718 : Seg15.relationRow718 rho)
    (r719 : Seg15.relationRow719 rho)
    (r720 : Seg15.relationRow720 rho)
    (r721 : Seg15.relationRow721 rho)
    (hacc : onCurve (seg15RvkAcc rho 94)) :
    RvkFixedBaseLadder.FixedStepRel 94 (rho 16224)
      (seg15RvkAcc rho 94) (seg15RvkAcc rho (94 + 1)) := by
  have hbrow94 : (1*(rho 16224))*(1 + (-1)*(rho 16224)) = 0 := by
    simpa [Seg15.relationRow94] using r94
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX93 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY93 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr94 : RvkFixedBaseLadder.FixedStepRel 94 (rho 16224)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX93 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY93 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX94 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY94 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc94, seg15AccX94, seg15AccY94, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung94_wide (rho 16130 : Seg15.F) (rho 16224 : Seg15.F) (seg15AccX93 rho : Seg15.F) (seg15AccY93 rho : Seg15.F) (rho 16846 : Seg15.F) (rho 16847 : Seg15.F) (rho 16848 : Seg15.F) (rho 16849 : Seg15.F) (rho 16850 : Seg15.F) hinput
        (by simpa using seg15_prefix_94_v2 rho r717)
        (by simpa using seg15_prefix_94_addX rho r718)
        (by simpa using seg15_prefix_94_addY rho r719)
        (by simpa using seg15_prefix_94_selX rho r720)
        (by simpa using seg15_prefix_94_selY rho r721)
        hbrow94
  exact hr94

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


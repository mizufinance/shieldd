import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas8
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

theorem seg15_prefix_step88 (rho : Nat -> Seg15.F)
    (r88 : Seg15.relationRow88 rho)
    (r687 : Seg15.relationRow687 rho)
    (r688 : Seg15.relationRow688 rho)
    (r689 : Seg15.relationRow689 rho)
    (r690 : Seg15.relationRow690 rho)
    (r691 : Seg15.relationRow691 rho)
    (hacc : onCurve (seg15RvkAcc rho 88)) :
    RvkFixedBaseLadder.FixedStepRel 88 (rho 16224)
      (seg15RvkAcc rho 88) (seg15RvkAcc rho (88 + 1)) := by
  have hbrow88 : (1*(rho 16224))*(1 + (-1)*(rho 16224)) = 0 := by
    simpa [Seg15.relationRow88] using r88
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX87 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY87 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr88 : RvkFixedBaseLadder.FixedStepRel 88 (rho 16224)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX87 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY87 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX88 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY88 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc88, seg15AccX88, seg15AccY88, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung88_wide (rho 16136 : Seg15.F) (rho 16224 : Seg15.F) (seg15AccX87 rho : Seg15.F) (seg15AccY87 rho : Seg15.F) (rho 16822 : Seg15.F) (rho 16823 : Seg15.F) (rho 16824 : Seg15.F) (rho 16825 : Seg15.F) (rho 16826 : Seg15.F) hinput
        (by simpa using seg15_prefix_88_v2 rho r687)
        (by simpa using seg15_prefix_88_addX rho r688)
        (by simpa using seg15_prefix_88_addY rho r689)
        (by simpa using seg15_prefix_88_selX rho r690)
        (by simpa using seg15_prefix_88_selY rho r691)
        hbrow88
  exact hr88

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


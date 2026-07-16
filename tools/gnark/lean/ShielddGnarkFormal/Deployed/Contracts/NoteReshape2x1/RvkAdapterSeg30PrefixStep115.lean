import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas11
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

theorem seg30_prefix_step115 (rho : Nat -> Seg30.F)
    (r115 : Seg30.relationRow115 rho)
    (r822 : Seg30.relationRow822 rho)
    (r823 : Seg30.relationRow823 rho)
    (r824 : Seg30.relationRow824 rho)
    (r825 : Seg30.relationRow825 rho)
    (r826 : Seg30.relationRow826 rho)
    (hacc : onCurve (seg30RvkAcc rho 115)) :
    RvkFixedBaseLadder.FixedStepRel 115 (rho 28432)
      (seg30RvkAcc rho 115) (seg30RvkAcc rho (115 + 1)) := by
  have hbrow115 : (1*(rho 28432))*(1 + (-1)*(rho 28432)) = 0 := by
    simpa [Seg30.relationRow115] using r115
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX114 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY114 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr115 : RvkFixedBaseLadder.FixedStepRel 115 (rho 28432)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX114 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY114 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX115 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY115 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc115, seg30AccX115, seg30AccY115, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung115_wide (rho 28317 : Seg30.F) (rho 28432 : Seg30.F) (seg30AccX114 rho : Seg30.F) (seg30AccY114 rho : Seg30.F) (rho 29138 : Seg30.F) (rho 29139 : Seg30.F) (rho 29140 : Seg30.F) (rho 29141 : Seg30.F) (rho 29142 : Seg30.F) hinput
        (by simpa using seg30_prefix_115_v2 rho r822)
        (by simpa using seg30_prefix_115_addX rho r823)
        (by simpa using seg30_prefix_115_addY rho r824)
        (by simpa using seg30_prefix_115_selX rho r825)
        (by simpa using seg30_prefix_115_selY rho r826)
        hbrow115
  exact hr115

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


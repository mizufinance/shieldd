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

theorem seg30_prefix_step102 (rho : Nat -> Seg30.F)
    (r102 : Seg30.relationRow102 rho)
    (r757 : Seg30.relationRow757 rho)
    (r758 : Seg30.relationRow758 rho)
    (r759 : Seg30.relationRow759 rho)
    (r760 : Seg30.relationRow760 rho)
    (r761 : Seg30.relationRow761 rho)
    (hacc : onCurve (seg30RvkAcc rho 102)) :
    RvkFixedBaseLadder.FixedStepRel 102 (rho 28419)
      (seg30RvkAcc rho 102) (seg30RvkAcc rho (102 + 1)) := by
  have hbrow102 : (1*(rho 28419))*(1 + (-1)*(rho 28419)) = 0 := by
    simpa [Seg30.relationRow102] using r102
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX101 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY101 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr102 : RvkFixedBaseLadder.FixedStepRel 102 (rho 28419)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX101 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY101 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX102 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY102 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc102, seg30AccX102, seg30AccY102, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung102_wide (rho 28317 : Seg30.F) (rho 28419 : Seg30.F) (seg30AccX101 rho : Seg30.F) (seg30AccY101 rho : Seg30.F) (rho 29073 : Seg30.F) (rho 29074 : Seg30.F) (rho 29075 : Seg30.F) (rho 29076 : Seg30.F) (rho 29077 : Seg30.F) hinput
        (by simpa using seg30_prefix_102_v2 rho r757)
        (by simpa using seg30_prefix_102_addX rho r758)
        (by simpa using seg30_prefix_102_addY rho r759)
        (by simpa using seg30_prefix_102_selX rho r760)
        (by simpa using seg30_prefix_102_selY rho r761)
        hbrow102
  exact hr102

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


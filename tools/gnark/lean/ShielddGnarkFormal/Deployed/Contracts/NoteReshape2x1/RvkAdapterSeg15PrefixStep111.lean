import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas11
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

theorem seg15_prefix_step111 (rho : Nat -> Seg15.F)
    (r111 : Seg15.relationRow111 rho)
    (r802 : Seg15.relationRow802 rho)
    (r803 : Seg15.relationRow803 rho)
    (r804 : Seg15.relationRow804 rho)
    (r805 : Seg15.relationRow805 rho)
    (r806 : Seg15.relationRow806 rho)
    (hacc : onCurve (seg15RvkAcc rho 111)) :
    RvkFixedBaseLadder.FixedStepRel 111 (rho 16241)
      (seg15RvkAcc rho 111) (seg15RvkAcc rho (111 + 1)) := by
  have hbrow111 : (1*(rho 16241))*(1 + (-1)*(rho 16241)) = 0 := by
    simpa [Seg15.relationRow111] using r111
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX110 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY110 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr111 : RvkFixedBaseLadder.FixedStepRel 111 (rho 16241)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX110 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY110 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX111 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY111 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc111, seg15AccX111, seg15AccY111, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung111_wide (rho 16130 : Seg15.F) (rho 16241 : Seg15.F) (seg15AccX110 rho : Seg15.F) (seg15AccY110 rho : Seg15.F) (rho 16931 : Seg15.F) (rho 16932 : Seg15.F) (rho 16933 : Seg15.F) (rho 16934 : Seg15.F) (rho 16935 : Seg15.F) hinput
        (by simpa using seg15_prefix_111_v2 rho r802)
        (by simpa using seg15_prefix_111_addX rho r803)
        (by simpa using seg15_prefix_111_addY rho r804)
        (by simpa using seg15_prefix_111_selX rho r805)
        (by simpa using seg15_prefix_111_selY rho r806)
        hbrow111
  exact hr111

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas12
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

theorem seg15_prefix_step124 (rho : Nat -> Seg15.F)
    (r124 : Seg15.relationRow124 rho)
    (r867 : Seg15.relationRow867 rho)
    (r868 : Seg15.relationRow868 rho)
    (r869 : Seg15.relationRow869 rho)
    (r870 : Seg15.relationRow870 rho)
    (r871 : Seg15.relationRow871 rho)
    (hacc : onCurve (seg15RvkAcc rho 124)) :
    RvkFixedBaseLadder.FixedStepRel 124 (rho 16260)
      (seg15RvkAcc rho 124) (seg15RvkAcc rho (124 + 1)) := by
  have hbrow124 : (1*(rho 16260))*(1 + (-1)*(rho 16260)) = 0 := by
    simpa [Seg15.relationRow124] using r124
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX123 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY123 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr124 : RvkFixedBaseLadder.FixedStepRel 124 (rho 16260)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX123 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY123 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX124 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY124 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc124, seg15AccX124, seg15AccY124, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung124_wide (rho 16136 : Seg15.F) (rho 16260 : Seg15.F) (seg15AccX123 rho : Seg15.F) (seg15AccY123 rho : Seg15.F) (rho 17002 : Seg15.F) (rho 17003 : Seg15.F) (rho 17004 : Seg15.F) (rho 17005 : Seg15.F) (rho 17006 : Seg15.F) hinput
        (by simpa using seg15_prefix_124_v2 rho r867)
        (by simpa using seg15_prefix_124_addX rho r868)
        (by simpa using seg15_prefix_124_addY rho r869)
        (by simpa using seg15_prefix_124_selX rho r870)
        (by simpa using seg15_prefix_124_selY rho r871)
        hbrow124
  exact hr124

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


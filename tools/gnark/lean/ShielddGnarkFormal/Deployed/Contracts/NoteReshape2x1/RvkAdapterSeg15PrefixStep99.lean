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

theorem seg15_prefix_step99 (rho : Nat -> Seg15.F)
    (r99 : Seg15.relationRow99 rho)
    (r742 : Seg15.relationRow742 rho)
    (r743 : Seg15.relationRow743 rho)
    (r744 : Seg15.relationRow744 rho)
    (r745 : Seg15.relationRow745 rho)
    (r746 : Seg15.relationRow746 rho)
    (hacc : onCurve (seg15RvkAcc rho 99)) :
    RvkFixedBaseLadder.FixedStepRel 99 (rho 16235)
      (seg15RvkAcc rho 99) (seg15RvkAcc rho (99 + 1)) := by
  have hbrow99 : (1*(rho 16235))*(1 + (-1)*(rho 16235)) = 0 := by
    simpa [Seg15.relationRow99] using r99
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX98 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY98 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr99 : RvkFixedBaseLadder.FixedStepRel 99 (rho 16235)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX98 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY98 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX99 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY99 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc99, seg15AccX99, seg15AccY99, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung99_wide (rho 16136 : Seg15.F) (rho 16235 : Seg15.F) (seg15AccX98 rho : Seg15.F) (seg15AccY98 rho : Seg15.F) (rho 16877 : Seg15.F) (rho 16878 : Seg15.F) (rho 16879 : Seg15.F) (rho 16880 : Seg15.F) (rho 16881 : Seg15.F) hinput
        (by simpa using seg15_prefix_99_v2 rho r742)
        (by simpa using seg15_prefix_99_addX rho r743)
        (by simpa using seg15_prefix_99_addY rho r744)
        (by simpa using seg15_prefix_99_selX rho r745)
        (by simpa using seg15_prefix_99_selY rho r746)
        hbrow99
  exact hr99

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas6
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

theorem seg15_prefix_step68 (rho : Nat -> Seg15.F)
    (r68 : Seg15.relationRow68 rho)
    (r587 : Seg15.relationRow587 rho)
    (r588 : Seg15.relationRow588 rho)
    (r589 : Seg15.relationRow589 rho)
    (r590 : Seg15.relationRow590 rho)
    (r591 : Seg15.relationRow591 rho)
    (hacc : onCurve (seg15RvkAcc rho 68)) :
    RvkFixedBaseLadder.FixedStepRel 68 (rho 16204)
      (seg15RvkAcc rho 68) (seg15RvkAcc rho (68 + 1)) := by
  have hbrow68 : (1*(rho 16204))*(1 + (-1)*(rho 16204)) = 0 := by
    simpa [Seg15.relationRow68] using r68
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX67 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY67 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr68 : RvkFixedBaseLadder.FixedStepRel 68 (rho 16204)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX67 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY67 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX68 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY68 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc68, seg15AccX68, seg15AccY68, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung68_wide (rho 16136 : Seg15.F) (rho 16204 : Seg15.F) (seg15AccX67 rho : Seg15.F) (seg15AccY67 rho : Seg15.F) (rho 16722 : Seg15.F) (rho 16723 : Seg15.F) (rho 16724 : Seg15.F) (rho 16725 : Seg15.F) (rho 16726 : Seg15.F) hinput
        (by simpa using seg15_prefix_68_v2 rho r587)
        (by simpa using seg15_prefix_68_addX rho r588)
        (by simpa using seg15_prefix_68_addY rho r589)
        (by simpa using seg15_prefix_68_selX rho r590)
        (by simpa using seg15_prefix_68_selY rho r591)
        hbrow68
  exact hr68

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


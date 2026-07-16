import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas6
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

theorem seg30_prefix_step68 (rho : Nat -> Seg30.F)
    (r68 : Seg30.relationRow68 rho)
    (r587 : Seg30.relationRow587 rho)
    (r588 : Seg30.relationRow588 rho)
    (r589 : Seg30.relationRow589 rho)
    (r590 : Seg30.relationRow590 rho)
    (r591 : Seg30.relationRow591 rho)
    (hacc : onCurve (seg30RvkAcc rho 68)) :
    RvkFixedBaseLadder.FixedStepRel 68 (rho 28385)
      (seg30RvkAcc rho 68) (seg30RvkAcc rho (68 + 1)) := by
  have hbrow68 : (1*(rho 28385))*(1 + (-1)*(rho 28385)) = 0 := by
    simpa [Seg30.relationRow68] using r68
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX67 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY67 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr68 : RvkFixedBaseLadder.FixedStepRel 68 (rho 28385)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX67 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY67 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX68 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY68 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc68, seg30AccX68, seg30AccY68, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung68_wide (rho 28317 : Seg30.F) (rho 28385 : Seg30.F) (seg30AccX67 rho : Seg30.F) (seg30AccY67 rho : Seg30.F) (rho 28903 : Seg30.F) (rho 28904 : Seg30.F) (rho 28905 : Seg30.F) (rho 28906 : Seg30.F) (rho 28907 : Seg30.F) hinput
        (by simpa using seg30_prefix_68_v2 rho r587)
        (by simpa using seg30_prefix_68_addX rho r588)
        (by simpa using seg30_prefix_68_addY rho r589)
        (by simpa using seg30_prefix_68_selX rho r590)
        (by simpa using seg30_prefix_68_selY rho r591)
        hbrow68
  exact hr68

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


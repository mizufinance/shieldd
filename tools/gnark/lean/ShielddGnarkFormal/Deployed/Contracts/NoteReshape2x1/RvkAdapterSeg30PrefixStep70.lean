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

theorem seg30_prefix_step70 (rho : Nat -> Seg30.F)
    (r70 : Seg30.relationRow70 rho)
    (r597 : Seg30.relationRow597 rho)
    (r598 : Seg30.relationRow598 rho)
    (r599 : Seg30.relationRow599 rho)
    (r600 : Seg30.relationRow600 rho)
    (r601 : Seg30.relationRow601 rho)
    (hacc : onCurve (seg30RvkAcc rho 70)) :
    RvkFixedBaseLadder.FixedStepRel 70 (rho 28387)
      (seg30RvkAcc rho 70) (seg30RvkAcc rho (70 + 1)) := by
  have hbrow70 : (1*(rho 28387))*(1 + (-1)*(rho 28387)) = 0 := by
    simpa [Seg30.relationRow70] using r70
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX69 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY69 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr70 : RvkFixedBaseLadder.FixedStepRel 70 (rho 28387)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX69 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY69 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX70 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY70 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc70, seg30AccX70, seg30AccY70, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung70_wide (rho 28317 : Seg30.F) (rho 28387 : Seg30.F) (seg30AccX69 rho : Seg30.F) (seg30AccY69 rho : Seg30.F) (rho 28913 : Seg30.F) (rho 28914 : Seg30.F) (rho 28915 : Seg30.F) (rho 28916 : Seg30.F) (rho 28917 : Seg30.F) hinput
        (by simpa using seg30_prefix_70_v2 rho r597)
        (by simpa using seg30_prefix_70_addX rho r598)
        (by simpa using seg30_prefix_70_addY rho r599)
        (by simpa using seg30_prefix_70_selX rho r600)
        (by simpa using seg30_prefix_70_selY rho r601)
        hbrow70
  exact hr70

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


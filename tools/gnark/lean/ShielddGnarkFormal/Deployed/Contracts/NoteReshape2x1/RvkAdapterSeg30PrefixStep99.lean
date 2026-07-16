import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas9
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

theorem seg30_prefix_step99 (rho : Nat -> Seg30.F)
    (r99 : Seg30.relationRow99 rho)
    (r742 : Seg30.relationRow742 rho)
    (r743 : Seg30.relationRow743 rho)
    (r744 : Seg30.relationRow744 rho)
    (r745 : Seg30.relationRow745 rho)
    (r746 : Seg30.relationRow746 rho)
    (hacc : onCurve (seg30RvkAcc rho 99)) :
    RvkFixedBaseLadder.FixedStepRel 99 (rho 28416)
      (seg30RvkAcc rho 99) (seg30RvkAcc rho (99 + 1)) := by
  have hbrow99 : (1*(rho 28416))*(1 + (-1)*(rho 28416)) = 0 := by
    simpa [Seg30.relationRow99] using r99
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX98 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY98 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr99 : RvkFixedBaseLadder.FixedStepRel 99 (rho 28416)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX98 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY98 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX99 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY99 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc99, seg30AccX99, seg30AccY99, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung99_wide (rho 28317 : Seg30.F) (rho 28416 : Seg30.F) (seg30AccX98 rho : Seg30.F) (seg30AccY98 rho : Seg30.F) (rho 29058 : Seg30.F) (rho 29059 : Seg30.F) (rho 29060 : Seg30.F) (rho 29061 : Seg30.F) (rho 29062 : Seg30.F) hinput
        (by simpa using seg30_prefix_99_v2 rho r742)
        (by simpa using seg30_prefix_99_addX rho r743)
        (by simpa using seg30_prefix_99_addY rho r744)
        (by simpa using seg30_prefix_99_selX rho r745)
        (by simpa using seg30_prefix_99_selY rho r746)
        hbrow99
  exact hr99

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas2
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_step27 (rho : Nat -> Seg30.F)
    (r27 : Seg30.relationRow27 rho)
    (r382 : Seg30.relationRow382 rho)
    (r383 : Seg30.relationRow383 rho)
    (r384 : Seg30.relationRow384 rho)
    (r385 : Seg30.relationRow385 rho)
    (r386 : Seg30.relationRow386 rho)
    (hacc : onCurve (seg30RvkAcc rho 27)) :
    RvkFixedBaseLadder.FixedStepRel 27 (rho 28344)
      (seg30RvkAcc rho 27) (seg30RvkAcc rho (27 + 1)) := by
  have hbrow27 : (1*(rho 28344))*(1 + (-1)*(rho 28344)) = 0 := by
    simpa [Seg30.relationRow27] using r27
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX26 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY26 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr27 : RvkFixedBaseLadder.FixedStepRel 27 (rho 28344)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX26 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY26 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX27 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY27 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc27, seg30AccX27, seg30AccY27, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung27_wide (rho 28317 : Seg30.F) (rho 28344 : Seg30.F) (seg30AccX26 rho : Seg30.F) (seg30AccY26 rho : Seg30.F) (rho 28698 : Seg30.F) (rho 28699 : Seg30.F) (rho 28700 : Seg30.F) (rho 28701 : Seg30.F) (rho 28702 : Seg30.F) hinput
        (by simpa using seg30_prefix_27_v2 rho r382)
        (by simpa using seg30_prefix_27_addX rho r383)
        (by simpa using seg30_prefix_27_addY rho r384)
        (by simpa using seg30_prefix_27_selX rho r385)
        (by simpa using seg30_prefix_27_selY rho r386)
        hbrow27
  exact hr27

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


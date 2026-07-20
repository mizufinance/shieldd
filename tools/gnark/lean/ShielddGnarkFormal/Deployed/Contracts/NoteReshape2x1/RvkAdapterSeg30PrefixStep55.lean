import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas5
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

theorem seg30_prefix_step55 (rho : Nat -> Seg30.F)
    (r55 : Seg30.relationRow55 rho)
    (r522 : Seg30.relationRow522 rho)
    (r523 : Seg30.relationRow523 rho)
    (r524 : Seg30.relationRow524 rho)
    (r525 : Seg30.relationRow525 rho)
    (r526 : Seg30.relationRow526 rho)
    (hacc : onCurve (seg30RvkAcc rho 55)) :
    RvkFixedBaseLadder.FixedStepRel 55 (rho 28366)
      (seg30RvkAcc rho 55) (seg30RvkAcc rho (55 + 1)) := by
  have hbrow55 : (1*(rho 28366))*(1 + (-1)*(rho 28366)) = 0 := by
    simpa [Seg30.relationRow55] using r55
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX54 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY54 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr55 : RvkFixedBaseLadder.FixedStepRel 55 (rho 28366)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX54 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY54 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX55 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY55 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc55, seg30AccX55, seg30AccY55, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung55_wide (rho 28311 : Seg30.F) (rho 28366 : Seg30.F) (seg30AccX54 rho : Seg30.F) (seg30AccY54 rho : Seg30.F) (rho 28832 : Seg30.F) (rho 28833 : Seg30.F) (rho 28834 : Seg30.F) (rho 28835 : Seg30.F) (rho 28836 : Seg30.F) hinput
        (by simpa using seg30_prefix_55_v2 rho r522)
        (by simpa using seg30_prefix_55_addX rho r523)
        (by simpa using seg30_prefix_55_addY rho r524)
        (by simpa using seg30_prefix_55_selX rho r525)
        (by simpa using seg30_prefix_55_selY rho r526)
        hbrow55
  exact hr55

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


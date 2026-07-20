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

theorem seg30_prefix_step52 (rho : Nat -> Seg30.F)
    (r52 : Seg30.relationRow52 rho)
    (r507 : Seg30.relationRow507 rho)
    (r508 : Seg30.relationRow508 rho)
    (r509 : Seg30.relationRow509 rho)
    (r510 : Seg30.relationRow510 rho)
    (r511 : Seg30.relationRow511 rho)
    (hacc : onCurve (seg30RvkAcc rho 52)) :
    RvkFixedBaseLadder.FixedStepRel 52 (rho 28363)
      (seg30RvkAcc rho 52) (seg30RvkAcc rho (52 + 1)) := by
  have hbrow52 : (1*(rho 28363))*(1 + (-1)*(rho 28363)) = 0 := by
    simpa [Seg30.relationRow52] using r52
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX51 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY51 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr52 : RvkFixedBaseLadder.FixedStepRel 52 (rho 28363)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX51 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY51 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX52 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY52 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc52, seg30AccX52, seg30AccY52, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung52_wide (rho 28311 : Seg30.F) (rho 28363 : Seg30.F) (seg30AccX51 rho : Seg30.F) (seg30AccY51 rho : Seg30.F) (rho 28817 : Seg30.F) (rho 28818 : Seg30.F) (rho 28819 : Seg30.F) (rho 28820 : Seg30.F) (rho 28821 : Seg30.F) hinput
        (by simpa using seg30_prefix_52_v2 rho r507)
        (by simpa using seg30_prefix_52_addX rho r508)
        (by simpa using seg30_prefix_52_addY rho r509)
        (by simpa using seg30_prefix_52_selX rho r510)
        (by simpa using seg30_prefix_52_selY rho r511)
        hbrow52
  exact hr52

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


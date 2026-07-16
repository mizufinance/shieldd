import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas8
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

theorem seg30_prefix_step90 (rho : Nat -> Seg30.F)
    (r90 : Seg30.relationRow90 rho)
    (r697 : Seg30.relationRow697 rho)
    (r698 : Seg30.relationRow698 rho)
    (r699 : Seg30.relationRow699 rho)
    (r700 : Seg30.relationRow700 rho)
    (r701 : Seg30.relationRow701 rho)
    (hacc : onCurve (seg30RvkAcc rho 90)) :
    RvkFixedBaseLadder.FixedStepRel 90 (rho 28407)
      (seg30RvkAcc rho 90) (seg30RvkAcc rho (90 + 1)) := by
  have hbrow90 : (1*(rho 28407))*(1 + (-1)*(rho 28407)) = 0 := by
    simpa [Seg30.relationRow90] using r90
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX89 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY89 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr90 : RvkFixedBaseLadder.FixedStepRel 90 (rho 28407)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX89 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY89 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX90 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY90 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc90, seg30AccX90, seg30AccY90, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung90_wide (rho 28317 : Seg30.F) (rho 28407 : Seg30.F) (seg30AccX89 rho : Seg30.F) (seg30AccY89 rho : Seg30.F) (rho 29013 : Seg30.F) (rho 29014 : Seg30.F) (rho 29015 : Seg30.F) (rho 29016 : Seg30.F) (rho 29017 : Seg30.F) hinput
        (by simpa using seg30_prefix_90_v2 rho r697)
        (by simpa using seg30_prefix_90_addX rho r698)
        (by simpa using seg30_prefix_90_addY rho r699)
        (by simpa using seg30_prefix_90_selX rho r700)
        (by simpa using seg30_prefix_90_selY rho r701)
        hbrow90
  exact hr90

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


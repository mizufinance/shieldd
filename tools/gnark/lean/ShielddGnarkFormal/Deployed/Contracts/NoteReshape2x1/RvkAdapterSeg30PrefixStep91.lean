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

theorem seg30_prefix_step91 (rho : Nat -> Seg30.F)
    (r91 : Seg30.relationRow91 rho)
    (r702 : Seg30.relationRow702 rho)
    (r703 : Seg30.relationRow703 rho)
    (r704 : Seg30.relationRow704 rho)
    (r705 : Seg30.relationRow705 rho)
    (r706 : Seg30.relationRow706 rho)
    (hacc : onCurve (seg30RvkAcc rho 91)) :
    RvkFixedBaseLadder.FixedStepRel 91 (rho 28402)
      (seg30RvkAcc rho 91) (seg30RvkAcc rho (91 + 1)) := by
  have hbrow91 : (1*(rho 28402))*(1 + (-1)*(rho 28402)) = 0 := by
    simpa [Seg30.relationRow91] using r91
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX90 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY90 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr91 : RvkFixedBaseLadder.FixedStepRel 91 (rho 28402)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX90 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY90 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX91 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY91 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc91, seg30AccX91, seg30AccY91, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung91_wide (rho 28311 : Seg30.F) (rho 28402 : Seg30.F) (seg30AccX90 rho : Seg30.F) (seg30AccY90 rho : Seg30.F) (rho 29012 : Seg30.F) (rho 29013 : Seg30.F) (rho 29014 : Seg30.F) (rho 29015 : Seg30.F) (rho 29016 : Seg30.F) hinput
        (by simpa using seg30_prefix_91_v2 rho r702)
        (by simpa using seg30_prefix_91_addX rho r703)
        (by simpa using seg30_prefix_91_addY rho r704)
        (by simpa using seg30_prefix_91_selX rho r705)
        (by simpa using seg30_prefix_91_selY rho r706)
        hbrow91
  exact hr91

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


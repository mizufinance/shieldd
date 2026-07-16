import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas11
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

theorem seg30_prefix_step120 (rho : Nat -> Seg30.F)
    (r120 : Seg30.relationRow120 rho)
    (r847 : Seg30.relationRow847 rho)
    (r848 : Seg30.relationRow848 rho)
    (r849 : Seg30.relationRow849 rho)
    (r850 : Seg30.relationRow850 rho)
    (r851 : Seg30.relationRow851 rho)
    (hacc : onCurve (seg30RvkAcc rho 120)) :
    RvkFixedBaseLadder.FixedStepRel 120 (rho 28437)
      (seg30RvkAcc rho 120) (seg30RvkAcc rho (120 + 1)) := by
  have hbrow120 : (1*(rho 28437))*(1 + (-1)*(rho 28437)) = 0 := by
    simpa [Seg30.relationRow120] using r120
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX119 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY119 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr120 : RvkFixedBaseLadder.FixedStepRel 120 (rho 28437)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX119 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY119 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX120 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY120 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc120, seg30AccX120, seg30AccY120, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung120_wide (rho 28317 : Seg30.F) (rho 28437 : Seg30.F) (seg30AccX119 rho : Seg30.F) (seg30AccY119 rho : Seg30.F) (rho 29163 : Seg30.F) (rho 29164 : Seg30.F) (rho 29165 : Seg30.F) (rho 29166 : Seg30.F) (rho 29167 : Seg30.F) hinput
        (by simpa using seg30_prefix_120_v2 rho r847)
        (by simpa using seg30_prefix_120_addX rho r848)
        (by simpa using seg30_prefix_120_addY rho r849)
        (by simpa using seg30_prefix_120_selX rho r850)
        (by simpa using seg30_prefix_120_selY rho r851)
        hbrow120
  exact hr120

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


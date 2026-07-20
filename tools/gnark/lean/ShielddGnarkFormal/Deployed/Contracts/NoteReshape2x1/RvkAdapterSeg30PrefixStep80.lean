import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas7
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

theorem seg30_prefix_step80 (rho : Nat -> Seg30.F)
    (r80 : Seg30.relationRow80 rho)
    (r647 : Seg30.relationRow647 rho)
    (r648 : Seg30.relationRow648 rho)
    (r649 : Seg30.relationRow649 rho)
    (r650 : Seg30.relationRow650 rho)
    (r651 : Seg30.relationRow651 rho)
    (hacc : onCurve (seg30RvkAcc rho 80)) :
    RvkFixedBaseLadder.FixedStepRel 80 (rho 28391)
      (seg30RvkAcc rho 80) (seg30RvkAcc rho (80 + 1)) := by
  have hbrow80 : (1*(rho 28391))*(1 + (-1)*(rho 28391)) = 0 := by
    simpa [Seg30.relationRow80] using r80
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX79 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY79 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr80 : RvkFixedBaseLadder.FixedStepRel 80 (rho 28391)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX79 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY79 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX80 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY80 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc80, seg30AccX80, seg30AccY80, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung80_wide (rho 28311 : Seg30.F) (rho 28391 : Seg30.F) (seg30AccX79 rho : Seg30.F) (seg30AccY79 rho : Seg30.F) (rho 28957 : Seg30.F) (rho 28958 : Seg30.F) (rho 28959 : Seg30.F) (rho 28960 : Seg30.F) (rho 28961 : Seg30.F) hinput
        (by simpa using seg30_prefix_80_v2 rho r647)
        (by simpa using seg30_prefix_80_addX rho r648)
        (by simpa using seg30_prefix_80_addY rho r649)
        (by simpa using seg30_prefix_80_selX rho r650)
        (by simpa using seg30_prefix_80_selY rho r651)
        hbrow80
  exact hr80

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas10
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

theorem seg30_prefix_step105 (rho : Nat -> Seg30.F)
    (r105 : Seg30.relationRow105 rho)
    (r772 : Seg30.relationRow772 rho)
    (r773 : Seg30.relationRow773 rho)
    (r774 : Seg30.relationRow774 rho)
    (r775 : Seg30.relationRow775 rho)
    (r776 : Seg30.relationRow776 rho)
    (hacc : onCurve (seg30RvkAcc rho 105)) :
    RvkFixedBaseLadder.FixedStepRel 105 (rho 28422)
      (seg30RvkAcc rho 105) (seg30RvkAcc rho (105 + 1)) := by
  have hbrow105 : (1*(rho 28422))*(1 + (-1)*(rho 28422)) = 0 := by
    simpa [Seg30.relationRow105] using r105
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX104 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY104 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr105 : RvkFixedBaseLadder.FixedStepRel 105 (rho 28422)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX104 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY104 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX105 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY105 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc105, seg30AccX105, seg30AccY105, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung105_wide (rho 28317 : Seg30.F) (rho 28422 : Seg30.F) (seg30AccX104 rho : Seg30.F) (seg30AccY104 rho : Seg30.F) (rho 29088 : Seg30.F) (rho 29089 : Seg30.F) (rho 29090 : Seg30.F) (rho 29091 : Seg30.F) (rho 29092 : Seg30.F) hinput
        (by simpa using seg30_prefix_105_v2 rho r772)
        (by simpa using seg30_prefix_105_addX rho r773)
        (by simpa using seg30_prefix_105_addY rho r774)
        (by simpa using seg30_prefix_105_selX rho r775)
        (by simpa using seg30_prefix_105_selY rho r776)
        hbrow105
  exact hr105

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


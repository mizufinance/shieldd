import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas10
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_step105 (rho : Nat -> Seg15.F)
    (r105 : Seg15.relationRow105 rho)
    (r772 : Seg15.relationRow772 rho)
    (r773 : Seg15.relationRow773 rho)
    (r774 : Seg15.relationRow774 rho)
    (r775 : Seg15.relationRow775 rho)
    (r776 : Seg15.relationRow776 rho)
    (hacc : onCurve (seg15RvkAcc rho 105)) :
    RvkFixedBaseLadder.FixedStepRel 105 (rho 16241)
      (seg15RvkAcc rho 105) (seg15RvkAcc rho (105 + 1)) := by
  have hbrow105 : (1*(rho 16241))*(1 + (-1)*(rho 16241)) = 0 := by
    simpa [Seg15.relationRow105] using r105
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX104 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY104 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr105 : RvkFixedBaseLadder.FixedStepRel 105 (rho 16241)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX104 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY104 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX105 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY105 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc105, seg15AccX105, seg15AccY105, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung105_wide (rho 16136 : Seg15.F) (rho 16241 : Seg15.F) (seg15AccX104 rho : Seg15.F) (seg15AccY104 rho : Seg15.F) (rho 16907 : Seg15.F) (rho 16908 : Seg15.F) (rho 16909 : Seg15.F) (rho 16910 : Seg15.F) (rho 16911 : Seg15.F) hinput
        (by simpa using seg15_prefix_105_v2 rho r772)
        (by simpa using seg15_prefix_105_addX rho r773)
        (by simpa using seg15_prefix_105_addY rho r774)
        (by simpa using seg15_prefix_105_selX rho r775)
        (by simpa using seg15_prefix_105_selY rho r776)
        hbrow105
  exact hr105

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


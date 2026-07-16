import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas14
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

theorem seg15_prefix_step146 (rho : Nat -> Seg15.F)
    (r146 : Seg15.relationRow146 rho)
    (r977 : Seg15.relationRow977 rho)
    (r978 : Seg15.relationRow978 rho)
    (r979 : Seg15.relationRow979 rho)
    (r980 : Seg15.relationRow980 rho)
    (r981 : Seg15.relationRow981 rho)
    (hacc : onCurve (seg15RvkAcc rho 146)) :
    RvkFixedBaseLadder.FixedStepRel 146 (rho 16282)
      (seg15RvkAcc rho 146) (seg15RvkAcc rho (146 + 1)) := by
  have hbrow146 : (1*(rho 16282))*(1 + (-1)*(rho 16282)) = 0 := by
    simpa [Seg15.relationRow146] using r146
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX145 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY145 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr146 : RvkFixedBaseLadder.FixedStepRel 146 (rho 16282)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX145 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY145 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX146 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY146 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc146, seg15AccX146, seg15AccY146, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung146_wide (rho 16136 : Seg15.F) (rho 16282 : Seg15.F) (seg15AccX145 rho : Seg15.F) (seg15AccY145 rho : Seg15.F) (rho 17112 : Seg15.F) (rho 17113 : Seg15.F) (rho 17114 : Seg15.F) (rho 17115 : Seg15.F) (rho 17116 : Seg15.F) hinput
        (by simpa using seg15_prefix_146_v2 rho r977)
        (by simpa using seg15_prefix_146_addX rho r978)
        (by simpa using seg15_prefix_146_addY rho r979)
        (by simpa using seg15_prefix_146_selX rho r980)
        (by simpa using seg15_prefix_146_selY rho r981)
        hbrow146
  exact hr146

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


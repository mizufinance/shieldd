import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas8
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

theorem seg15_prefix_step85 (rho : Nat -> Seg15.F)
    (r85 : Seg15.relationRow85 rho)
    (r672 : Seg15.relationRow672 rho)
    (r673 : Seg15.relationRow673 rho)
    (r674 : Seg15.relationRow674 rho)
    (r675 : Seg15.relationRow675 rho)
    (r676 : Seg15.relationRow676 rho)
    (hacc : onCurve (seg15RvkAcc rho 85)) :
    RvkFixedBaseLadder.FixedStepRel 85 (rho 16221)
      (seg15RvkAcc rho 85) (seg15RvkAcc rho (85 + 1)) := by
  have hbrow85 : (1*(rho 16221))*(1 + (-1)*(rho 16221)) = 0 := by
    simpa [Seg15.relationRow85] using r85
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX84 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY84 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr85 : RvkFixedBaseLadder.FixedStepRel 85 (rho 16221)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX84 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY84 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX85 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY85 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc85, seg15AccX85, seg15AccY85, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung85_wide (rho 16136 : Seg15.F) (rho 16221 : Seg15.F) (seg15AccX84 rho : Seg15.F) (seg15AccY84 rho : Seg15.F) (rho 16807 : Seg15.F) (rho 16808 : Seg15.F) (rho 16809 : Seg15.F) (rho 16810 : Seg15.F) (rho 16811 : Seg15.F) hinput
        (by simpa using seg15_prefix_85_v2 rho r672)
        (by simpa using seg15_prefix_85_addX rho r673)
        (by simpa using seg15_prefix_85_addY rho r674)
        (by simpa using seg15_prefix_85_selX rho r675)
        (by simpa using seg15_prefix_85_selY rho r676)
        hbrow85
  exact hr85

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


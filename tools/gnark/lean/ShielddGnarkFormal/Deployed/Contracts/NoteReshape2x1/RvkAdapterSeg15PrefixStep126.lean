import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas12
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

theorem seg15_prefix_step126 (rho : Nat -> Seg15.F)
    (r126 : Seg15.relationRow126 rho)
    (r877 : Seg15.relationRow877 rho)
    (r878 : Seg15.relationRow878 rho)
    (r879 : Seg15.relationRow879 rho)
    (r880 : Seg15.relationRow880 rho)
    (r881 : Seg15.relationRow881 rho)
    (hacc : onCurve (seg15RvkAcc rho 126)) :
    RvkFixedBaseLadder.FixedStepRel 126 (rho 16262)
      (seg15RvkAcc rho 126) (seg15RvkAcc rho (126 + 1)) := by
  have hbrow126 : (1*(rho 16262))*(1 + (-1)*(rho 16262)) = 0 := by
    simpa [Seg15.relationRow126] using r126
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX125 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY125 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr126 : RvkFixedBaseLadder.FixedStepRel 126 (rho 16262)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX125 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY125 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX126 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY126 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc126, seg15AccX126, seg15AccY126, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung126_wide (rho 16136 : Seg15.F) (rho 16262 : Seg15.F) (seg15AccX125 rho : Seg15.F) (seg15AccY125 rho : Seg15.F) (rho 17012 : Seg15.F) (rho 17013 : Seg15.F) (rho 17014 : Seg15.F) (rho 17015 : Seg15.F) (rho 17016 : Seg15.F) hinput
        (by simpa using seg15_prefix_126_v2 rho r877)
        (by simpa using seg15_prefix_126_addX rho r878)
        (by simpa using seg15_prefix_126_addY rho r879)
        (by simpa using seg15_prefix_126_selX rho r880)
        (by simpa using seg15_prefix_126_selY rho r881)
        hbrow126
  exact hr126

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas13
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

theorem seg15_prefix_step140 (rho : Nat -> Seg15.F)
    (r140 : Seg15.relationRow140 rho)
    (r947 : Seg15.relationRow947 rho)
    (r948 : Seg15.relationRow948 rho)
    (r949 : Seg15.relationRow949 rho)
    (r950 : Seg15.relationRow950 rho)
    (r951 : Seg15.relationRow951 rho)
    (hacc : onCurve (seg15RvkAcc rho 140)) :
    RvkFixedBaseLadder.FixedStepRel 140 (rho 16276)
      (seg15RvkAcc rho 140) (seg15RvkAcc rho (140 + 1)) := by
  have hbrow140 : (1*(rho 16276))*(1 + (-1)*(rho 16276)) = 0 := by
    simpa [Seg15.relationRow140] using r140
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX139 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY139 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr140 : RvkFixedBaseLadder.FixedStepRel 140 (rho 16276)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX139 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY139 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX140 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY140 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc140, seg15AccX140, seg15AccY140, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung140_wide (rho 16136 : Seg15.F) (rho 16276 : Seg15.F) (seg15AccX139 rho : Seg15.F) (seg15AccY139 rho : Seg15.F) (rho 17082 : Seg15.F) (rho 17083 : Seg15.F) (rho 17084 : Seg15.F) (rho 17085 : Seg15.F) (rho 17086 : Seg15.F) hinput
        (by simpa using seg15_prefix_140_v2 rho r947)
        (by simpa using seg15_prefix_140_addX rho r948)
        (by simpa using seg15_prefix_140_addY rho r949)
        (by simpa using seg15_prefix_140_selX rho r950)
        (by simpa using seg15_prefix_140_selY rho r951)
        hbrow140
  exact hr140

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


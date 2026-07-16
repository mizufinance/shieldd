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

theorem seg15_prefix_step147 (rho : Nat -> Seg15.F)
    (r147 : Seg15.relationRow147 rho)
    (r982 : Seg15.relationRow982 rho)
    (r983 : Seg15.relationRow983 rho)
    (r984 : Seg15.relationRow984 rho)
    (r985 : Seg15.relationRow985 rho)
    (r986 : Seg15.relationRow986 rho)
    (hacc : onCurve (seg15RvkAcc rho 147)) :
    RvkFixedBaseLadder.FixedStepRel 147 (rho 16283)
      (seg15RvkAcc rho 147) (seg15RvkAcc rho (147 + 1)) := by
  have hbrow147 : (1*(rho 16283))*(1 + (-1)*(rho 16283)) = 0 := by
    simpa [Seg15.relationRow147] using r147
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX146 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY146 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr147 : RvkFixedBaseLadder.FixedStepRel 147 (rho 16283)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX146 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY146 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX147 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY147 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc147, seg15AccX147, seg15AccY147, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung147_wide (rho 16136 : Seg15.F) (rho 16283 : Seg15.F) (seg15AccX146 rho : Seg15.F) (seg15AccY146 rho : Seg15.F) (rho 17117 : Seg15.F) (rho 17118 : Seg15.F) (rho 17119 : Seg15.F) (rho 17120 : Seg15.F) (rho 17121 : Seg15.F) hinput
        (by simpa using seg15_prefix_147_v2 rho r982)
        (by simpa using seg15_prefix_147_addX rho r983)
        (by simpa using seg15_prefix_147_addY rho r984)
        (by simpa using seg15_prefix_147_selX rho r985)
        (by simpa using seg15_prefix_147_selY rho r986)
        hbrow147
  exact hr147

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


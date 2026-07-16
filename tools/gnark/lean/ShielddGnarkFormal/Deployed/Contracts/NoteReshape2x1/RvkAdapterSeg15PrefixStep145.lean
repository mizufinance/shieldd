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

theorem seg15_prefix_step145 (rho : Nat -> Seg15.F)
    (r145 : Seg15.relationRow145 rho)
    (r972 : Seg15.relationRow972 rho)
    (r973 : Seg15.relationRow973 rho)
    (r974 : Seg15.relationRow974 rho)
    (r975 : Seg15.relationRow975 rho)
    (r976 : Seg15.relationRow976 rho)
    (hacc : onCurve (seg15RvkAcc rho 145)) :
    RvkFixedBaseLadder.FixedStepRel 145 (rho 16281)
      (seg15RvkAcc rho 145) (seg15RvkAcc rho (145 + 1)) := by
  have hbrow145 : (1*(rho 16281))*(1 + (-1)*(rho 16281)) = 0 := by
    simpa [Seg15.relationRow145] using r145
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX144 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY144 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr145 : RvkFixedBaseLadder.FixedStepRel 145 (rho 16281)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX144 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY144 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX145 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY145 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc145, seg15AccX145, seg15AccY145, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung145_wide (rho 16136 : Seg15.F) (rho 16281 : Seg15.F) (seg15AccX144 rho : Seg15.F) (seg15AccY144 rho : Seg15.F) (rho 17107 : Seg15.F) (rho 17108 : Seg15.F) (rho 17109 : Seg15.F) (rho 17110 : Seg15.F) (rho 17111 : Seg15.F) hinput
        (by simpa using seg15_prefix_145_v2 rho r972)
        (by simpa using seg15_prefix_145_addX rho r973)
        (by simpa using seg15_prefix_145_addY rho r974)
        (by simpa using seg15_prefix_145_selX rho r975)
        (by simpa using seg15_prefix_145_selY rho r976)
        hbrow145
  exact hr145

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


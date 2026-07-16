import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas1
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

theorem seg15_prefix_step20 (rho : Nat -> Seg15.F)
    (r20 : Seg15.relationRow20 rho)
    (r347 : Seg15.relationRow347 rho)
    (r348 : Seg15.relationRow348 rho)
    (r349 : Seg15.relationRow349 rho)
    (r350 : Seg15.relationRow350 rho)
    (r351 : Seg15.relationRow351 rho)
    (hacc : onCurve (seg15RvkAcc rho 20)) :
    RvkFixedBaseLadder.FixedStepRel 20 (rho 16156)
      (seg15RvkAcc rho 20) (seg15RvkAcc rho (20 + 1)) := by
  have hbrow20 : (1*(rho 16156))*(1 + (-1)*(rho 16156)) = 0 := by
    simpa [Seg15.relationRow20] using r20
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX19 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY19 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr20 : RvkFixedBaseLadder.FixedStepRel 20 (rho 16156)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX19 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY19 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX20 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY20 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc20, seg15AccX20, seg15AccY20, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung20_wide (rho 16136 : Seg15.F) (rho 16156 : Seg15.F) (seg15AccX19 rho : Seg15.F) (seg15AccY19 rho : Seg15.F) (rho 16482 : Seg15.F) (rho 16483 : Seg15.F) (rho 16484 : Seg15.F) (rho 16485 : Seg15.F) (rho 16486 : Seg15.F) hinput
        (by simpa using seg15_prefix_20_v2 rho r347)
        (by simpa using seg15_prefix_20_addX rho r348)
        (by simpa using seg15_prefix_20_addY rho r349)
        (by simpa using seg15_prefix_20_selX rho r350)
        (by simpa using seg15_prefix_20_selY rho r351)
        hbrow20
  exact hr20

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


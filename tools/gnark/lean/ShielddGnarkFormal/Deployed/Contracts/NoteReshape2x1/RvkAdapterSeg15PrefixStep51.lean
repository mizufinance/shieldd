import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas5
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

theorem seg15_prefix_step51 (rho : Nat -> Seg15.F)
    (r51 : Seg15.relationRow51 rho)
    (r502 : Seg15.relationRow502 rho)
    (r503 : Seg15.relationRow503 rho)
    (r504 : Seg15.relationRow504 rho)
    (r505 : Seg15.relationRow505 rho)
    (r506 : Seg15.relationRow506 rho)
    (hacc : onCurve (seg15RvkAcc rho 51)) :
    RvkFixedBaseLadder.FixedStepRel 51 (rho 16187)
      (seg15RvkAcc rho 51) (seg15RvkAcc rho (51 + 1)) := by
  have hbrow51 : (1*(rho 16187))*(1 + (-1)*(rho 16187)) = 0 := by
    simpa [Seg15.relationRow51] using r51
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX50 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY50 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr51 : RvkFixedBaseLadder.FixedStepRel 51 (rho 16187)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX50 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY50 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX51 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY51 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc51, seg15AccX51, seg15AccY51, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung51_wide (rho 16136 : Seg15.F) (rho 16187 : Seg15.F) (seg15AccX50 rho : Seg15.F) (seg15AccY50 rho : Seg15.F) (rho 16637 : Seg15.F) (rho 16638 : Seg15.F) (rho 16639 : Seg15.F) (rho 16640 : Seg15.F) (rho 16641 : Seg15.F) hinput
        (by simpa using seg15_prefix_51_v2 rho r502)
        (by simpa using seg15_prefix_51_addX rho r503)
        (by simpa using seg15_prefix_51_addY rho r504)
        (by simpa using seg15_prefix_51_selX rho r505)
        (by simpa using seg15_prefix_51_selY rho r506)
        hbrow51
  exact hr51

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


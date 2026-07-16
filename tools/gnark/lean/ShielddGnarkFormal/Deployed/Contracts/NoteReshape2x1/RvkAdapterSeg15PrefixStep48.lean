import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas4
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

theorem seg15_prefix_step48 (rho : Nat -> Seg15.F)
    (r48 : Seg15.relationRow48 rho)
    (r487 : Seg15.relationRow487 rho)
    (r488 : Seg15.relationRow488 rho)
    (r489 : Seg15.relationRow489 rho)
    (r490 : Seg15.relationRow490 rho)
    (r491 : Seg15.relationRow491 rho)
    (hacc : onCurve (seg15RvkAcc rho 48)) :
    RvkFixedBaseLadder.FixedStepRel 48 (rho 16184)
      (seg15RvkAcc rho 48) (seg15RvkAcc rho (48 + 1)) := by
  have hbrow48 : (1*(rho 16184))*(1 + (-1)*(rho 16184)) = 0 := by
    simpa [Seg15.relationRow48] using r48
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX47 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY47 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr48 : RvkFixedBaseLadder.FixedStepRel 48 (rho 16184)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX47 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY47 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX48 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY48 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc48, seg15AccX48, seg15AccY48, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung48_wide (rho 16136 : Seg15.F) (rho 16184 : Seg15.F) (seg15AccX47 rho : Seg15.F) (seg15AccY47 rho : Seg15.F) (rho 16622 : Seg15.F) (rho 16623 : Seg15.F) (rho 16624 : Seg15.F) (rho 16625 : Seg15.F) (rho 16626 : Seg15.F) hinput
        (by simpa using seg15_prefix_48_v2 rho r487)
        (by simpa using seg15_prefix_48_addX rho r488)
        (by simpa using seg15_prefix_48_addY rho r489)
        (by simpa using seg15_prefix_48_selX rho r490)
        (by simpa using seg15_prefix_48_selY rho r491)
        hbrow48
  exact hr48

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


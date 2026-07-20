import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas4
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_step49 (rho : Nat -> Seg30.F)
    (r49 : Seg30.relationRow49 rho)
    (r492 : Seg30.relationRow492 rho)
    (r493 : Seg30.relationRow493 rho)
    (r494 : Seg30.relationRow494 rho)
    (r495 : Seg30.relationRow495 rho)
    (r496 : Seg30.relationRow496 rho)
    (hacc : onCurve (seg30RvkAcc rho 49)) :
    RvkFixedBaseLadder.FixedStepRel 49 (rho 28360)
      (seg30RvkAcc rho 49) (seg30RvkAcc rho (49 + 1)) := by
  have hbrow49 : (1*(rho 28360))*(1 + (-1)*(rho 28360)) = 0 := by
    simpa [Seg30.relationRow49] using r49
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX48 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY48 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr49 : RvkFixedBaseLadder.FixedStepRel 49 (rho 28360)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX48 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY48 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX49 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY49 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc49, seg30AccX49, seg30AccY49, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung49_wide (rho 28311 : Seg30.F) (rho 28360 : Seg30.F) (seg30AccX48 rho : Seg30.F) (seg30AccY48 rho : Seg30.F) (rho 28802 : Seg30.F) (rho 28803 : Seg30.F) (rho 28804 : Seg30.F) (rho 28805 : Seg30.F) (rho 28806 : Seg30.F) hinput
        (by simpa using seg30_prefix_49_v2 rho r492)
        (by simpa using seg30_prefix_49_addX rho r493)
        (by simpa using seg30_prefix_49_addY rho r494)
        (by simpa using seg30_prefix_49_selX rho r495)
        (by simpa using seg30_prefix_49_selY rho r496)
        hbrow49
  exact hr49

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


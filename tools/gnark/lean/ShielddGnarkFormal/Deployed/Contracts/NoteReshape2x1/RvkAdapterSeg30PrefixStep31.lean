import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas3
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

theorem seg30_prefix_step31 (rho : Nat -> Seg30.F)
    (r31 : Seg30.relationRow31 rho)
    (r402 : Seg30.relationRow402 rho)
    (r403 : Seg30.relationRow403 rho)
    (r404 : Seg30.relationRow404 rho)
    (r405 : Seg30.relationRow405 rho)
    (r406 : Seg30.relationRow406 rho)
    (hacc : onCurve (seg30RvkAcc rho 31)) :
    RvkFixedBaseLadder.FixedStepRel 31 (rho 28342)
      (seg30RvkAcc rho 31) (seg30RvkAcc rho (31 + 1)) := by
  have hbrow31 : (1*(rho 28342))*(1 + (-1)*(rho 28342)) = 0 := by
    simpa [Seg30.relationRow31] using r31
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX30 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY30 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr31 : RvkFixedBaseLadder.FixedStepRel 31 (rho 28342)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX30 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY30 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX31 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY31 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc31, seg30AccX31, seg30AccY31, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung31_wide (rho 28311 : Seg30.F) (rho 28342 : Seg30.F) (seg30AccX30 rho : Seg30.F) (seg30AccY30 rho : Seg30.F) (rho 28712 : Seg30.F) (rho 28713 : Seg30.F) (rho 28714 : Seg30.F) (rho 28715 : Seg30.F) (rho 28716 : Seg30.F) hinput
        (by simpa using seg30_prefix_31_v2 rho r402)
        (by simpa using seg30_prefix_31_addX rho r403)
        (by simpa using seg30_prefix_31_addY rho r404)
        (by simpa using seg30_prefix_31_selX rho r405)
        (by simpa using seg30_prefix_31_selY rho r406)
        hbrow31
  exact hr31

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


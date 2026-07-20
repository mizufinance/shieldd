import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas10
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

theorem seg30_prefix_step103 (rho : Nat -> Seg30.F)
    (r103 : Seg30.relationRow103 rho)
    (r762 : Seg30.relationRow762 rho)
    (r763 : Seg30.relationRow763 rho)
    (r764 : Seg30.relationRow764 rho)
    (r765 : Seg30.relationRow765 rho)
    (r766 : Seg30.relationRow766 rho)
    (hacc : onCurve (seg30RvkAcc rho 103)) :
    RvkFixedBaseLadder.FixedStepRel 103 (rho 28414)
      (seg30RvkAcc rho 103) (seg30RvkAcc rho (103 + 1)) := by
  have hbrow103 : (1*(rho 28414))*(1 + (-1)*(rho 28414)) = 0 := by
    simpa [Seg30.relationRow103] using r103
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX102 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY102 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr103 : RvkFixedBaseLadder.FixedStepRel 103 (rho 28414)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX102 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY102 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX103 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY103 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc103, seg30AccX103, seg30AccY103, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung103_wide (rho 28311 : Seg30.F) (rho 28414 : Seg30.F) (seg30AccX102 rho : Seg30.F) (seg30AccY102 rho : Seg30.F) (rho 29072 : Seg30.F) (rho 29073 : Seg30.F) (rho 29074 : Seg30.F) (rho 29075 : Seg30.F) (rho 29076 : Seg30.F) hinput
        (by simpa using seg30_prefix_103_v2 rho r762)
        (by simpa using seg30_prefix_103_addX rho r763)
        (by simpa using seg30_prefix_103_addY rho r764)
        (by simpa using seg30_prefix_103_selX rho r765)
        (by simpa using seg30_prefix_103_selY rho r766)
        hbrow103
  exact hr103

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


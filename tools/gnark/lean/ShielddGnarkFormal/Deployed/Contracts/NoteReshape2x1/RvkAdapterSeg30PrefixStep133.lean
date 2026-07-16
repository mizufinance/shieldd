import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas13
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

theorem seg30_prefix_step133 (rho : Nat -> Seg30.F)
    (r133 : Seg30.relationRow133 rho)
    (r912 : Seg30.relationRow912 rho)
    (r913 : Seg30.relationRow913 rho)
    (r914 : Seg30.relationRow914 rho)
    (r915 : Seg30.relationRow915 rho)
    (r916 : Seg30.relationRow916 rho)
    (hacc : onCurve (seg30RvkAcc rho 133)) :
    RvkFixedBaseLadder.FixedStepRel 133 (rho 28450)
      (seg30RvkAcc rho 133) (seg30RvkAcc rho (133 + 1)) := by
  have hbrow133 : (1*(rho 28450))*(1 + (-1)*(rho 28450)) = 0 := by
    simpa [Seg30.relationRow133] using r133
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX132 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY132 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr133 : RvkFixedBaseLadder.FixedStepRel 133 (rho 28450)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX132 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY132 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX133 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY133 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc133, seg30AccX133, seg30AccY133, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung133_wide (rho 28317 : Seg30.F) (rho 28450 : Seg30.F) (seg30AccX132 rho : Seg30.F) (seg30AccY132 rho : Seg30.F) (rho 29228 : Seg30.F) (rho 29229 : Seg30.F) (rho 29230 : Seg30.F) (rho 29231 : Seg30.F) (rho 29232 : Seg30.F) hinput
        (by simpa using seg30_prefix_133_v2 rho r912)
        (by simpa using seg30_prefix_133_addX rho r913)
        (by simpa using seg30_prefix_133_addY rho r914)
        (by simpa using seg30_prefix_133_selX rho r915)
        (by simpa using seg30_prefix_133_selY rho r916)
        hbrow133
  exact hr133

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


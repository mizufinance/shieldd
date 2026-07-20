import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas7
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

theorem seg30_prefix_step74 (rho : Nat -> Seg30.F)
    (r74 : Seg30.relationRow74 rho)
    (r617 : Seg30.relationRow617 rho)
    (r618 : Seg30.relationRow618 rho)
    (r619 : Seg30.relationRow619 rho)
    (r620 : Seg30.relationRow620 rho)
    (r621 : Seg30.relationRow621 rho)
    (hacc : onCurve (seg30RvkAcc rho 74)) :
    RvkFixedBaseLadder.FixedStepRel 74 (rho 28385)
      (seg30RvkAcc rho 74) (seg30RvkAcc rho (74 + 1)) := by
  have hbrow74 : (1*(rho 28385))*(1 + (-1)*(rho 28385)) = 0 := by
    simpa [Seg30.relationRow74] using r74
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX73 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY73 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr74 : RvkFixedBaseLadder.FixedStepRel 74 (rho 28385)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX73 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY73 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX74 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY74 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc74, seg30AccX74, seg30AccY74, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung74_wide (rho 28311 : Seg30.F) (rho 28385 : Seg30.F) (seg30AccX73 rho : Seg30.F) (seg30AccY73 rho : Seg30.F) (rho 28927 : Seg30.F) (rho 28928 : Seg30.F) (rho 28929 : Seg30.F) (rho 28930 : Seg30.F) (rho 28931 : Seg30.F) hinput
        (by simpa using seg30_prefix_74_v2 rho r617)
        (by simpa using seg30_prefix_74_addX rho r618)
        (by simpa using seg30_prefix_74_addY rho r619)
        (by simpa using seg30_prefix_74_selX rho r620)
        (by simpa using seg30_prefix_74_selY rho r621)
        hbrow74
  exact hr74

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


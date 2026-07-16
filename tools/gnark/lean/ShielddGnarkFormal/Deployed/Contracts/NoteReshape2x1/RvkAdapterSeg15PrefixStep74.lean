import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas7
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

theorem seg15_prefix_step74 (rho : Nat -> Seg15.F)
    (r74 : Seg15.relationRow74 rho)
    (r617 : Seg15.relationRow617 rho)
    (r618 : Seg15.relationRow618 rho)
    (r619 : Seg15.relationRow619 rho)
    (r620 : Seg15.relationRow620 rho)
    (r621 : Seg15.relationRow621 rho)
    (hacc : onCurve (seg15RvkAcc rho 74)) :
    RvkFixedBaseLadder.FixedStepRel 74 (rho 16210)
      (seg15RvkAcc rho 74) (seg15RvkAcc rho (74 + 1)) := by
  have hbrow74 : (1*(rho 16210))*(1 + (-1)*(rho 16210)) = 0 := by
    simpa [Seg15.relationRow74] using r74
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX73 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY73 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr74 : RvkFixedBaseLadder.FixedStepRel 74 (rho 16210)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX73 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY73 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX74 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY74 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc74, seg15AccX74, seg15AccY74, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung74_wide (rho 16136 : Seg15.F) (rho 16210 : Seg15.F) (seg15AccX73 rho : Seg15.F) (seg15AccY73 rho : Seg15.F) (rho 16752 : Seg15.F) (rho 16753 : Seg15.F) (rho 16754 : Seg15.F) (rho 16755 : Seg15.F) (rho 16756 : Seg15.F) hinput
        (by simpa using seg15_prefix_74_v2 rho r617)
        (by simpa using seg15_prefix_74_addX rho r618)
        (by simpa using seg15_prefix_74_addY rho r619)
        (by simpa using seg15_prefix_74_selX rho r620)
        (by simpa using seg15_prefix_74_selY rho r621)
        hbrow74
  exact hr74

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


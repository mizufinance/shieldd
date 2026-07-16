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

theorem seg15_prefix_step71 (rho : Nat -> Seg15.F)
    (r71 : Seg15.relationRow71 rho)
    (r602 : Seg15.relationRow602 rho)
    (r603 : Seg15.relationRow603 rho)
    (r604 : Seg15.relationRow604 rho)
    (r605 : Seg15.relationRow605 rho)
    (r606 : Seg15.relationRow606 rho)
    (hacc : onCurve (seg15RvkAcc rho 71)) :
    RvkFixedBaseLadder.FixedStepRel 71 (rho 16207)
      (seg15RvkAcc rho 71) (seg15RvkAcc rho (71 + 1)) := by
  have hbrow71 : (1*(rho 16207))*(1 + (-1)*(rho 16207)) = 0 := by
    simpa [Seg15.relationRow71] using r71
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX70 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY70 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr71 : RvkFixedBaseLadder.FixedStepRel 71 (rho 16207)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX70 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY70 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX71 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY71 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc71, seg15AccX71, seg15AccY71, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung71_wide (rho 16136 : Seg15.F) (rho 16207 : Seg15.F) (seg15AccX70 rho : Seg15.F) (seg15AccY70 rho : Seg15.F) (rho 16737 : Seg15.F) (rho 16738 : Seg15.F) (rho 16739 : Seg15.F) (rho 16740 : Seg15.F) (rho 16741 : Seg15.F) hinput
        (by simpa using seg15_prefix_71_v2 rho r602)
        (by simpa using seg15_prefix_71_addX rho r603)
        (by simpa using seg15_prefix_71_addY rho r604)
        (by simpa using seg15_prefix_71_selX rho r605)
        (by simpa using seg15_prefix_71_selY rho r606)
        hbrow71
  exact hr71

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


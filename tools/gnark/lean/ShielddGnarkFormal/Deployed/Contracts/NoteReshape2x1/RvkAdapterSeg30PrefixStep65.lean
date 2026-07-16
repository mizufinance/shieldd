import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas6
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

theorem seg30_prefix_step65 (rho : Nat -> Seg30.F)
    (r65 : Seg30.relationRow65 rho)
    (r572 : Seg30.relationRow572 rho)
    (r573 : Seg30.relationRow573 rho)
    (r574 : Seg30.relationRow574 rho)
    (r575 : Seg30.relationRow575 rho)
    (r576 : Seg30.relationRow576 rho)
    (hacc : onCurve (seg30RvkAcc rho 65)) :
    RvkFixedBaseLadder.FixedStepRel 65 (rho 28382)
      (seg30RvkAcc rho 65) (seg30RvkAcc rho (65 + 1)) := by
  have hbrow65 : (1*(rho 28382))*(1 + (-1)*(rho 28382)) = 0 := by
    simpa [Seg30.relationRow65] using r65
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX64 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY64 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr65 : RvkFixedBaseLadder.FixedStepRel 65 (rho 28382)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX64 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY64 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX65 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY65 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc65, seg30AccX65, seg30AccY65, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung65_wide (rho 28317 : Seg30.F) (rho 28382 : Seg30.F) (seg30AccX64 rho : Seg30.F) (seg30AccY64 rho : Seg30.F) (rho 28888 : Seg30.F) (rho 28889 : Seg30.F) (rho 28890 : Seg30.F) (rho 28891 : Seg30.F) (rho 28892 : Seg30.F) hinput
        (by simpa using seg30_prefix_65_v2 rho r572)
        (by simpa using seg30_prefix_65_addX rho r573)
        (by simpa using seg30_prefix_65_addY rho r574)
        (by simpa using seg30_prefix_65_selX rho r575)
        (by simpa using seg30_prefix_65_selY rho r576)
        hbrow65
  exact hr65

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


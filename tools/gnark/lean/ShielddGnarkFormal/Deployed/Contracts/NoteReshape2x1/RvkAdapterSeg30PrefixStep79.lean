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

theorem seg30_prefix_step79 (rho : Nat -> Seg30.F)
    (r79 : Seg30.relationRow79 rho)
    (r642 : Seg30.relationRow642 rho)
    (r643 : Seg30.relationRow643 rho)
    (r644 : Seg30.relationRow644 rho)
    (r645 : Seg30.relationRow645 rho)
    (r646 : Seg30.relationRow646 rho)
    (hacc : onCurve (seg30RvkAcc rho 79)) :
    RvkFixedBaseLadder.FixedStepRel 79 (rho 28396)
      (seg30RvkAcc rho 79) (seg30RvkAcc rho (79 + 1)) := by
  have hbrow79 : (1*(rho 28396))*(1 + (-1)*(rho 28396)) = 0 := by
    simpa [Seg30.relationRow79] using r79
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX78 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY78 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr79 : RvkFixedBaseLadder.FixedStepRel 79 (rho 28396)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX78 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY78 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX79 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY79 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc79, seg30AccX79, seg30AccY79, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung79_wide (rho 28317 : Seg30.F) (rho 28396 : Seg30.F) (seg30AccX78 rho : Seg30.F) (seg30AccY78 rho : Seg30.F) (rho 28958 : Seg30.F) (rho 28959 : Seg30.F) (rho 28960 : Seg30.F) (rho 28961 : Seg30.F) (rho 28962 : Seg30.F) hinput
        (by simpa using seg30_prefix_79_v2 rho r642)
        (by simpa using seg30_prefix_79_addX rho r643)
        (by simpa using seg30_prefix_79_addY rho r644)
        (by simpa using seg30_prefix_79_selX rho r645)
        (by simpa using seg30_prefix_79_selY rho r646)
        hbrow79
  exact hr79

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


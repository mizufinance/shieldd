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

theorem seg30_prefix_step138 (rho : Nat -> Seg30.F)
    (r138 : Seg30.relationRow138 rho)
    (r937 : Seg30.relationRow937 rho)
    (r938 : Seg30.relationRow938 rho)
    (r939 : Seg30.relationRow939 rho)
    (r940 : Seg30.relationRow940 rho)
    (r941 : Seg30.relationRow941 rho)
    (hacc : onCurve (seg30RvkAcc rho 138)) :
    RvkFixedBaseLadder.FixedStepRel 138 (rho 28455)
      (seg30RvkAcc rho 138) (seg30RvkAcc rho (138 + 1)) := by
  have hbrow138 : (1*(rho 28455))*(1 + (-1)*(rho 28455)) = 0 := by
    simpa [Seg30.relationRow138] using r138
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX137 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY137 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr138 : RvkFixedBaseLadder.FixedStepRel 138 (rho 28455)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX137 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY137 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX138 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY138 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc138, seg30AccX138, seg30AccY138, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung138_wide (rho 28317 : Seg30.F) (rho 28455 : Seg30.F) (seg30AccX137 rho : Seg30.F) (seg30AccY137 rho : Seg30.F) (rho 29253 : Seg30.F) (rho 29254 : Seg30.F) (rho 29255 : Seg30.F) (rho 29256 : Seg30.F) (rho 29257 : Seg30.F) hinput
        (by simpa using seg30_prefix_138_v2 rho r937)
        (by simpa using seg30_prefix_138_addX rho r938)
        (by simpa using seg30_prefix_138_addY rho r939)
        (by simpa using seg30_prefix_138_selX rho r940)
        (by simpa using seg30_prefix_138_selY rho r941)
        hbrow138
  exact hr138

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


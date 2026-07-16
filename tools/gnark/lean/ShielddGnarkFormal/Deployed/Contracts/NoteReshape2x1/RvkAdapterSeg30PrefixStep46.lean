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

theorem seg30_prefix_step46 (rho : Nat -> Seg30.F)
    (r46 : Seg30.relationRow46 rho)
    (r477 : Seg30.relationRow477 rho)
    (r478 : Seg30.relationRow478 rho)
    (r479 : Seg30.relationRow479 rho)
    (r480 : Seg30.relationRow480 rho)
    (r481 : Seg30.relationRow481 rho)
    (hacc : onCurve (seg30RvkAcc rho 46)) :
    RvkFixedBaseLadder.FixedStepRel 46 (rho 28363)
      (seg30RvkAcc rho 46) (seg30RvkAcc rho (46 + 1)) := by
  have hbrow46 : (1*(rho 28363))*(1 + (-1)*(rho 28363)) = 0 := by
    simpa [Seg30.relationRow46] using r46
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX45 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY45 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr46 : RvkFixedBaseLadder.FixedStepRel 46 (rho 28363)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX45 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY45 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX46 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY46 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc46, seg30AccX46, seg30AccY46, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung46_wide (rho 28317 : Seg30.F) (rho 28363 : Seg30.F) (seg30AccX45 rho : Seg30.F) (seg30AccY45 rho : Seg30.F) (rho 28793 : Seg30.F) (rho 28794 : Seg30.F) (rho 28795 : Seg30.F) (rho 28796 : Seg30.F) (rho 28797 : Seg30.F) hinput
        (by simpa using seg30_prefix_46_v2 rho r477)
        (by simpa using seg30_prefix_46_addX rho r478)
        (by simpa using seg30_prefix_46_addY rho r479)
        (by simpa using seg30_prefix_46_selX rho r480)
        (by simpa using seg30_prefix_46_selY rho r481)
        hbrow46
  exact hr46

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


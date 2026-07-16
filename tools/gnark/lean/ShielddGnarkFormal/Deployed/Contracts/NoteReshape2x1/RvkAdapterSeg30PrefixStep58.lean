import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas5
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

theorem seg30_prefix_step58 (rho : Nat -> Seg30.F)
    (r58 : Seg30.relationRow58 rho)
    (r537 : Seg30.relationRow537 rho)
    (r538 : Seg30.relationRow538 rho)
    (r539 : Seg30.relationRow539 rho)
    (r540 : Seg30.relationRow540 rho)
    (r541 : Seg30.relationRow541 rho)
    (hacc : onCurve (seg30RvkAcc rho 58)) :
    RvkFixedBaseLadder.FixedStepRel 58 (rho 28375)
      (seg30RvkAcc rho 58) (seg30RvkAcc rho (58 + 1)) := by
  have hbrow58 : (1*(rho 28375))*(1 + (-1)*(rho 28375)) = 0 := by
    simpa [Seg30.relationRow58] using r58
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX57 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY57 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr58 : RvkFixedBaseLadder.FixedStepRel 58 (rho 28375)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX57 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY57 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX58 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY58 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc58, seg30AccX58, seg30AccY58, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung58_wide (rho 28317 : Seg30.F) (rho 28375 : Seg30.F) (seg30AccX57 rho : Seg30.F) (seg30AccY57 rho : Seg30.F) (rho 28853 : Seg30.F) (rho 28854 : Seg30.F) (rho 28855 : Seg30.F) (rho 28856 : Seg30.F) (rho 28857 : Seg30.F) hinput
        (by simpa using seg30_prefix_58_v2 rho r537)
        (by simpa using seg30_prefix_58_addX rho r538)
        (by simpa using seg30_prefix_58_addY rho r539)
        (by simpa using seg30_prefix_58_selX rho r540)
        (by simpa using seg30_prefix_58_selY rho r541)
        hbrow58
  exact hr58

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


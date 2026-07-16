import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas14
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

theorem seg30_prefix_step142 (rho : Nat -> Seg30.F)
    (r142 : Seg30.relationRow142 rho)
    (r957 : Seg30.relationRow957 rho)
    (r958 : Seg30.relationRow958 rho)
    (r959 : Seg30.relationRow959 rho)
    (r960 : Seg30.relationRow960 rho)
    (r961 : Seg30.relationRow961 rho)
    (hacc : onCurve (seg30RvkAcc rho 142)) :
    RvkFixedBaseLadder.FixedStepRel 142 (rho 28459)
      (seg30RvkAcc rho 142) (seg30RvkAcc rho (142 + 1)) := by
  have hbrow142 : (1*(rho 28459))*(1 + (-1)*(rho 28459)) = 0 := by
    simpa [Seg30.relationRow142] using r142
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX141 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY141 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr142 : RvkFixedBaseLadder.FixedStepRel 142 (rho 28459)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX141 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY141 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX142 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY142 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc142, seg30AccX142, seg30AccY142, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung142_wide (rho 28317 : Seg30.F) (rho 28459 : Seg30.F) (seg30AccX141 rho : Seg30.F) (seg30AccY141 rho : Seg30.F) (rho 29273 : Seg30.F) (rho 29274 : Seg30.F) (rho 29275 : Seg30.F) (rho 29276 : Seg30.F) (rho 29277 : Seg30.F) hinput
        (by simpa using seg30_prefix_142_v2 rho r957)
        (by simpa using seg30_prefix_142_addX rho r958)
        (by simpa using seg30_prefix_142_addY rho r959)
        (by simpa using seg30_prefix_142_selX rho r960)
        (by simpa using seg30_prefix_142_selY rho r961)
        hbrow142
  exact hr142

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


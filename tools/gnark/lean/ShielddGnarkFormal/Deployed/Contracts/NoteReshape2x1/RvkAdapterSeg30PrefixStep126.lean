import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas12
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

theorem seg30_prefix_step126 (rho : Nat -> Seg30.F)
    (r126 : Seg30.relationRow126 rho)
    (r877 : Seg30.relationRow877 rho)
    (r878 : Seg30.relationRow878 rho)
    (r879 : Seg30.relationRow879 rho)
    (r880 : Seg30.relationRow880 rho)
    (r881 : Seg30.relationRow881 rho)
    (hacc : onCurve (seg30RvkAcc rho 126)) :
    RvkFixedBaseLadder.FixedStepRel 126 (rho 28443)
      (seg30RvkAcc rho 126) (seg30RvkAcc rho (126 + 1)) := by
  have hbrow126 : (1*(rho 28443))*(1 + (-1)*(rho 28443)) = 0 := by
    simpa [Seg30.relationRow126] using r126
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX125 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY125 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr126 : RvkFixedBaseLadder.FixedStepRel 126 (rho 28443)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX125 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY125 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX126 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY126 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc126, seg30AccX126, seg30AccY126, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung126_wide (rho 28317 : Seg30.F) (rho 28443 : Seg30.F) (seg30AccX125 rho : Seg30.F) (seg30AccY125 rho : Seg30.F) (rho 29193 : Seg30.F) (rho 29194 : Seg30.F) (rho 29195 : Seg30.F) (rho 29196 : Seg30.F) (rho 29197 : Seg30.F) hinput
        (by simpa using seg30_prefix_126_v2 rho r877)
        (by simpa using seg30_prefix_126_addX rho r878)
        (by simpa using seg30_prefix_126_addY rho r879)
        (by simpa using seg30_prefix_126_selX rho r880)
        (by simpa using seg30_prefix_126_selY rho r881)
        hbrow126
  exact hr126

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


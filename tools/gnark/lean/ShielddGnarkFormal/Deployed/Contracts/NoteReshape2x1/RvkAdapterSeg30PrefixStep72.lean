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

theorem seg30_prefix_step72 (rho : Nat -> Seg30.F)
    (r72 : Seg30.relationRow72 rho)
    (r607 : Seg30.relationRow607 rho)
    (r608 : Seg30.relationRow608 rho)
    (r609 : Seg30.relationRow609 rho)
    (r610 : Seg30.relationRow610 rho)
    (r611 : Seg30.relationRow611 rho)
    (hacc : onCurve (seg30RvkAcc rho 72)) :
    RvkFixedBaseLadder.FixedStepRel 72 (rho 28389)
      (seg30RvkAcc rho 72) (seg30RvkAcc rho (72 + 1)) := by
  have hbrow72 : (1*(rho 28389))*(1 + (-1)*(rho 28389)) = 0 := by
    simpa [Seg30.relationRow72] using r72
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX71 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY71 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr72 : RvkFixedBaseLadder.FixedStepRel 72 (rho 28389)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX71 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY71 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX72 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY72 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc72, seg30AccX72, seg30AccY72, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung72_wide (rho 28317 : Seg30.F) (rho 28389 : Seg30.F) (seg30AccX71 rho : Seg30.F) (seg30AccY71 rho : Seg30.F) (rho 28923 : Seg30.F) (rho 28924 : Seg30.F) (rho 28925 : Seg30.F) (rho 28926 : Seg30.F) (rho 28927 : Seg30.F) hinput
        (by simpa using seg30_prefix_72_v2 rho r607)
        (by simpa using seg30_prefix_72_addX rho r608)
        (by simpa using seg30_prefix_72_addY rho r609)
        (by simpa using seg30_prefix_72_selX rho r610)
        (by simpa using seg30_prefix_72_selY rho r611)
        hbrow72
  exact hr72

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


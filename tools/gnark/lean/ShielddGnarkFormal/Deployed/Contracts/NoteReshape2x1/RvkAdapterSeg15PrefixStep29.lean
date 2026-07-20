import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas2
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

theorem seg15_prefix_step29 (rho : Nat -> Seg15.F)
    (r29 : Seg15.relationRow29 rho)
    (r392 : Seg15.relationRow392 rho)
    (r393 : Seg15.relationRow393 rho)
    (r394 : Seg15.relationRow394 rho)
    (r395 : Seg15.relationRow395 rho)
    (r396 : Seg15.relationRow396 rho)
    (hacc : onCurve (seg15RvkAcc rho 29)) :
    RvkFixedBaseLadder.FixedStepRel 29 (rho 16159)
      (seg15RvkAcc rho 29) (seg15RvkAcc rho (29 + 1)) := by
  have hbrow29 : (1*(rho 16159))*(1 + (-1)*(rho 16159)) = 0 := by
    simpa [Seg15.relationRow29] using r29
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX28 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY28 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr29 : RvkFixedBaseLadder.FixedStepRel 29 (rho 16159)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX28 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY28 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX29 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY29 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc29, seg15AccX29, seg15AccY29, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung29_wide (rho 16130 : Seg15.F) (rho 16159 : Seg15.F) (seg15AccX28 rho : Seg15.F) (seg15AccY28 rho : Seg15.F) (rho 16521 : Seg15.F) (rho 16522 : Seg15.F) (rho 16523 : Seg15.F) (rho 16524 : Seg15.F) (rho 16525 : Seg15.F) hinput
        (by simpa using seg15_prefix_29_v2 rho r392)
        (by simpa using seg15_prefix_29_addX rho r393)
        (by simpa using seg15_prefix_29_addY rho r394)
        (by simpa using seg15_prefix_29_selX rho r395)
        (by simpa using seg15_prefix_29_selY rho r396)
        hbrow29
  exact hr29

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


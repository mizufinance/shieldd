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

theorem seg15_prefix_step24 (rho : Nat -> Seg15.F)
    (r24 : Seg15.relationRow24 rho)
    (r367 : Seg15.relationRow367 rho)
    (r368 : Seg15.relationRow368 rho)
    (r369 : Seg15.relationRow369 rho)
    (r370 : Seg15.relationRow370 rho)
    (r371 : Seg15.relationRow371 rho)
    (hacc : onCurve (seg15RvkAcc rho 24)) :
    RvkFixedBaseLadder.FixedStepRel 24 (rho 16160)
      (seg15RvkAcc rho 24) (seg15RvkAcc rho (24 + 1)) := by
  have hbrow24 : (1*(rho 16160))*(1 + (-1)*(rho 16160)) = 0 := by
    simpa [Seg15.relationRow24] using r24
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX23 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY23 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr24 : RvkFixedBaseLadder.FixedStepRel 24 (rho 16160)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX23 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY23 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX24 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY24 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc24, seg15AccX24, seg15AccY24, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung24_wide (rho 16136 : Seg15.F) (rho 16160 : Seg15.F) (seg15AccX23 rho : Seg15.F) (seg15AccY23 rho : Seg15.F) (rho 16502 : Seg15.F) (rho 16503 : Seg15.F) (rho 16504 : Seg15.F) (rho 16505 : Seg15.F) (rho 16506 : Seg15.F) hinput
        (by simpa using seg15_prefix_24_v2 rho r367)
        (by simpa using seg15_prefix_24_addX rho r368)
        (by simpa using seg15_prefix_24_addY rho r369)
        (by simpa using seg15_prefix_24_selX rho r370)
        (by simpa using seg15_prefix_24_selY rho r371)
        hbrow24
  exact hr24

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


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

theorem seg15_prefix_step25 (rho : Nat -> Seg15.F)
    (r25 : Seg15.relationRow25 rho)
    (r372 : Seg15.relationRow372 rho)
    (r373 : Seg15.relationRow373 rho)
    (r374 : Seg15.relationRow374 rho)
    (r375 : Seg15.relationRow375 rho)
    (r376 : Seg15.relationRow376 rho)
    (hacc : onCurve (seg15RvkAcc rho 25)) :
    RvkFixedBaseLadder.FixedStepRel 25 (rho 16155)
      (seg15RvkAcc rho 25) (seg15RvkAcc rho (25 + 1)) := by
  have hbrow25 : (1*(rho 16155))*(1 + (-1)*(rho 16155)) = 0 := by
    simpa [Seg15.relationRow25] using r25
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX24 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY24 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr25 : RvkFixedBaseLadder.FixedStepRel 25 (rho 16155)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX24 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY24 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX25 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY25 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc25, seg15AccX25, seg15AccY25, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung25_wide (rho 16130 : Seg15.F) (rho 16155 : Seg15.F) (seg15AccX24 rho : Seg15.F) (seg15AccY24 rho : Seg15.F) (rho 16501 : Seg15.F) (rho 16502 : Seg15.F) (rho 16503 : Seg15.F) (rho 16504 : Seg15.F) (rho 16505 : Seg15.F) hinput
        (by simpa using seg15_prefix_25_v2 rho r372)
        (by simpa using seg15_prefix_25_addX rho r373)
        (by simpa using seg15_prefix_25_addY rho r374)
        (by simpa using seg15_prefix_25_selX rho r375)
        (by simpa using seg15_prefix_25_selY rho r376)
        hbrow25
  exact hr25

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


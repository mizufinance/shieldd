import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas6
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

theorem seg15_prefix_step63 (rho : Nat -> Seg15.F)
    (r63 : Seg15.relationRow63 rho)
    (r562 : Seg15.relationRow562 rho)
    (r563 : Seg15.relationRow563 rho)
    (r564 : Seg15.relationRow564 rho)
    (r565 : Seg15.relationRow565 rho)
    (r566 : Seg15.relationRow566 rho)
    (hacc : onCurve (seg15RvkAcc rho 63)) :
    RvkFixedBaseLadder.FixedStepRel 63 (rho 16199)
      (seg15RvkAcc rho 63) (seg15RvkAcc rho (63 + 1)) := by
  have hbrow63 : (1*(rho 16199))*(1 + (-1)*(rho 16199)) = 0 := by
    simpa [Seg15.relationRow63] using r63
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX62 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY62 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr63 : RvkFixedBaseLadder.FixedStepRel 63 (rho 16199)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX62 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY62 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX63 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY63 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc63, seg15AccX63, seg15AccY63, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung63_wide (rho 16136 : Seg15.F) (rho 16199 : Seg15.F) (seg15AccX62 rho : Seg15.F) (seg15AccY62 rho : Seg15.F) (rho 16697 : Seg15.F) (rho 16698 : Seg15.F) (rho 16699 : Seg15.F) (rho 16700 : Seg15.F) (rho 16701 : Seg15.F) hinput
        (by simpa using seg15_prefix_63_v2 rho r562)
        (by simpa using seg15_prefix_63_addX rho r563)
        (by simpa using seg15_prefix_63_addY rho r564)
        (by simpa using seg15_prefix_63_selX rho r565)
        (by simpa using seg15_prefix_63_selY rho r566)
        hbrow63
  exact hr63

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


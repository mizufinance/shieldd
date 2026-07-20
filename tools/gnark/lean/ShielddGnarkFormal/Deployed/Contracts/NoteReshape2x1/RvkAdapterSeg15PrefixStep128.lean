import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas12
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

theorem seg15_prefix_step128 (rho : Nat -> Seg15.F)
    (r128 : Seg15.relationRow128 rho)
    (r887 : Seg15.relationRow887 rho)
    (r888 : Seg15.relationRow888 rho)
    (r889 : Seg15.relationRow889 rho)
    (r890 : Seg15.relationRow890 rho)
    (r891 : Seg15.relationRow891 rho)
    (hacc : onCurve (seg15RvkAcc rho 128)) :
    RvkFixedBaseLadder.FixedStepRel 128 (rho 16258)
      (seg15RvkAcc rho 128) (seg15RvkAcc rho (128 + 1)) := by
  have hbrow128 : (1*(rho 16258))*(1 + (-1)*(rho 16258)) = 0 := by
    simpa [Seg15.relationRow128] using r128
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX127 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY127 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr128 : RvkFixedBaseLadder.FixedStepRel 128 (rho 16258)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX127 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY127 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX128 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY128 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc128, seg15AccX128, seg15AccY128, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung128_wide (rho 16130 : Seg15.F) (rho 16258 : Seg15.F) (seg15AccX127 rho : Seg15.F) (seg15AccY127 rho : Seg15.F) (rho 17016 : Seg15.F) (rho 17017 : Seg15.F) (rho 17018 : Seg15.F) (rho 17019 : Seg15.F) (rho 17020 : Seg15.F) hinput
        (by simpa using seg15_prefix_128_v2 rho r887)
        (by simpa using seg15_prefix_128_addX rho r888)
        (by simpa using seg15_prefix_128_addY rho r889)
        (by simpa using seg15_prefix_128_selX rho r890)
        (by simpa using seg15_prefix_128_selY rho r891)
        hbrow128
  exact hr128

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


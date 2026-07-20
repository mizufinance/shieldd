import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas8
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

theorem seg15_prefix_step87 (rho : Nat -> Seg15.F)
    (r87 : Seg15.relationRow87 rho)
    (r682 : Seg15.relationRow682 rho)
    (r683 : Seg15.relationRow683 rho)
    (r684 : Seg15.relationRow684 rho)
    (r685 : Seg15.relationRow685 rho)
    (r686 : Seg15.relationRow686 rho)
    (hacc : onCurve (seg15RvkAcc rho 87)) :
    RvkFixedBaseLadder.FixedStepRel 87 (rho 16217)
      (seg15RvkAcc rho 87) (seg15RvkAcc rho (87 + 1)) := by
  have hbrow87 : (1*(rho 16217))*(1 + (-1)*(rho 16217)) = 0 := by
    simpa [Seg15.relationRow87] using r87
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX86 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY86 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr87 : RvkFixedBaseLadder.FixedStepRel 87 (rho 16217)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX86 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY86 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX87 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY87 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc87, seg15AccX87, seg15AccY87, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung87_wide (rho 16130 : Seg15.F) (rho 16217 : Seg15.F) (seg15AccX86 rho : Seg15.F) (seg15AccY86 rho : Seg15.F) (rho 16811 : Seg15.F) (rho 16812 : Seg15.F) (rho 16813 : Seg15.F) (rho 16814 : Seg15.F) (rho 16815 : Seg15.F) hinput
        (by simpa using seg15_prefix_87_v2 rho r682)
        (by simpa using seg15_prefix_87_addX rho r683)
        (by simpa using seg15_prefix_87_addY rho r684)
        (by simpa using seg15_prefix_87_selX rho r685)
        (by simpa using seg15_prefix_87_selY rho r686)
        hbrow87
  exact hr87

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


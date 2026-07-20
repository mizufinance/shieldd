import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas13
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

theorem seg15_prefix_step138 (rho : Nat -> Seg15.F)
    (r138 : Seg15.relationRow138 rho)
    (r937 : Seg15.relationRow937 rho)
    (r938 : Seg15.relationRow938 rho)
    (r939 : Seg15.relationRow939 rho)
    (r940 : Seg15.relationRow940 rho)
    (r941 : Seg15.relationRow941 rho)
    (hacc : onCurve (seg15RvkAcc rho 138)) :
    RvkFixedBaseLadder.FixedStepRel 138 (rho 16268)
      (seg15RvkAcc rho 138) (seg15RvkAcc rho (138 + 1)) := by
  have hbrow138 : (1*(rho 16268))*(1 + (-1)*(rho 16268)) = 0 := by
    simpa [Seg15.relationRow138] using r138
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX137 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY137 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr138 : RvkFixedBaseLadder.FixedStepRel 138 (rho 16268)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX137 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY137 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX138 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY138 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc138, seg15AccX138, seg15AccY138, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung138_wide (rho 16130 : Seg15.F) (rho 16268 : Seg15.F) (seg15AccX137 rho : Seg15.F) (seg15AccY137 rho : Seg15.F) (rho 17066 : Seg15.F) (rho 17067 : Seg15.F) (rho 17068 : Seg15.F) (rho 17069 : Seg15.F) (rho 17070 : Seg15.F) hinput
        (by simpa using seg15_prefix_138_v2 rho r937)
        (by simpa using seg15_prefix_138_addX rho r938)
        (by simpa using seg15_prefix_138_addY rho r939)
        (by simpa using seg15_prefix_138_selX rho r940)
        (by simpa using seg15_prefix_138_selY rho r941)
        hbrow138
  exact hr138

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


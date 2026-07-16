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

theorem seg15_prefix_step139 (rho : Nat -> Seg15.F)
    (r139 : Seg15.relationRow139 rho)
    (r942 : Seg15.relationRow942 rho)
    (r943 : Seg15.relationRow943 rho)
    (r944 : Seg15.relationRow944 rho)
    (r945 : Seg15.relationRow945 rho)
    (r946 : Seg15.relationRow946 rho)
    (hacc : onCurve (seg15RvkAcc rho 139)) :
    RvkFixedBaseLadder.FixedStepRel 139 (rho 16275)
      (seg15RvkAcc rho 139) (seg15RvkAcc rho (139 + 1)) := by
  have hbrow139 : (1*(rho 16275))*(1 + (-1)*(rho 16275)) = 0 := by
    simpa [Seg15.relationRow139] using r139
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX138 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY138 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr139 : RvkFixedBaseLadder.FixedStepRel 139 (rho 16275)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX138 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY138 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX139 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY139 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc139, seg15AccX139, seg15AccY139, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung139_wide (rho 16136 : Seg15.F) (rho 16275 : Seg15.F) (seg15AccX138 rho : Seg15.F) (seg15AccY138 rho : Seg15.F) (rho 17077 : Seg15.F) (rho 17078 : Seg15.F) (rho 17079 : Seg15.F) (rho 17080 : Seg15.F) (rho 17081 : Seg15.F) hinput
        (by simpa using seg15_prefix_139_v2 rho r942)
        (by simpa using seg15_prefix_139_addX rho r943)
        (by simpa using seg15_prefix_139_addY rho r944)
        (by simpa using seg15_prefix_139_selX rho r945)
        (by simpa using seg15_prefix_139_selY rho r946)
        hbrow139
  exact hr139

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


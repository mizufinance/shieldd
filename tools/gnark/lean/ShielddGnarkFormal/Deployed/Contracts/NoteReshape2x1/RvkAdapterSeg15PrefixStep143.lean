import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas14
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

theorem seg15_prefix_step143 (rho : Nat -> Seg15.F)
    (r143 : Seg15.relationRow143 rho)
    (r962 : Seg15.relationRow962 rho)
    (r963 : Seg15.relationRow963 rho)
    (r964 : Seg15.relationRow964 rho)
    (r965 : Seg15.relationRow965 rho)
    (r966 : Seg15.relationRow966 rho)
    (hacc : onCurve (seg15RvkAcc rho 143)) :
    RvkFixedBaseLadder.FixedStepRel 143 (rho 16273)
      (seg15RvkAcc rho 143) (seg15RvkAcc rho (143 + 1)) := by
  have hbrow143 : (1*(rho 16273))*(1 + (-1)*(rho 16273)) = 0 := by
    simpa [Seg15.relationRow143] using r143
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX142 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY142 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr143 : RvkFixedBaseLadder.FixedStepRel 143 (rho 16273)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX142 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY142 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX143 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY143 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc143, seg15AccX143, seg15AccY143, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung143_wide (rho 16130 : Seg15.F) (rho 16273 : Seg15.F) (seg15AccX142 rho : Seg15.F) (seg15AccY142 rho : Seg15.F) (rho 17091 : Seg15.F) (rho 17092 : Seg15.F) (rho 17093 : Seg15.F) (rho 17094 : Seg15.F) (rho 17095 : Seg15.F) hinput
        (by simpa using seg15_prefix_143_v2 rho r962)
        (by simpa using seg15_prefix_143_addX rho r963)
        (by simpa using seg15_prefix_143_addY rho r964)
        (by simpa using seg15_prefix_143_selX rho r965)
        (by simpa using seg15_prefix_143_selY rho r966)
        hbrow143
  exact hr143

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


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

theorem seg15_prefix_step141 (rho : Nat -> Seg15.F)
    (r141 : Seg15.relationRow141 rho)
    (r952 : Seg15.relationRow952 rho)
    (r953 : Seg15.relationRow953 rho)
    (r954 : Seg15.relationRow954 rho)
    (r955 : Seg15.relationRow955 rho)
    (r956 : Seg15.relationRow956 rho)
    (hacc : onCurve (seg15RvkAcc rho 141)) :
    RvkFixedBaseLadder.FixedStepRel 141 (rho 16271)
      (seg15RvkAcc rho 141) (seg15RvkAcc rho (141 + 1)) := by
  have hbrow141 : (1*(rho 16271))*(1 + (-1)*(rho 16271)) = 0 := by
    simpa [Seg15.relationRow141] using r141
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX140 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY140 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr141 : RvkFixedBaseLadder.FixedStepRel 141 (rho 16271)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX140 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY140 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX141 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY141 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc141, seg15AccX141, seg15AccY141, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung141_wide (rho 16130 : Seg15.F) (rho 16271 : Seg15.F) (seg15AccX140 rho : Seg15.F) (seg15AccY140 rho : Seg15.F) (rho 17081 : Seg15.F) (rho 17082 : Seg15.F) (rho 17083 : Seg15.F) (rho 17084 : Seg15.F) (rho 17085 : Seg15.F) hinput
        (by simpa using seg15_prefix_141_v2 rho r952)
        (by simpa using seg15_prefix_141_addX rho r953)
        (by simpa using seg15_prefix_141_addY rho r954)
        (by simpa using seg15_prefix_141_selX rho r955)
        (by simpa using seg15_prefix_141_selY rho r956)
        hbrow141
  exact hr141

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


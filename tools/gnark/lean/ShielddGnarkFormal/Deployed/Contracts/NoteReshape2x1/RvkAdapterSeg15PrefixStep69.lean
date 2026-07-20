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

theorem seg15_prefix_step69 (rho : Nat -> Seg15.F)
    (r69 : Seg15.relationRow69 rho)
    (r592 : Seg15.relationRow592 rho)
    (r593 : Seg15.relationRow593 rho)
    (r594 : Seg15.relationRow594 rho)
    (r595 : Seg15.relationRow595 rho)
    (r596 : Seg15.relationRow596 rho)
    (hacc : onCurve (seg15RvkAcc rho 69)) :
    RvkFixedBaseLadder.FixedStepRel 69 (rho 16199)
      (seg15RvkAcc rho 69) (seg15RvkAcc rho (69 + 1)) := by
  have hbrow69 : (1*(rho 16199))*(1 + (-1)*(rho 16199)) = 0 := by
    simpa [Seg15.relationRow69] using r69
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX68 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY68 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr69 : RvkFixedBaseLadder.FixedStepRel 69 (rho 16199)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX68 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY68 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX69 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY69 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc69, seg15AccX69, seg15AccY69, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung69_wide (rho 16130 : Seg15.F) (rho 16199 : Seg15.F) (seg15AccX68 rho : Seg15.F) (seg15AccY68 rho : Seg15.F) (rho 16721 : Seg15.F) (rho 16722 : Seg15.F) (rho 16723 : Seg15.F) (rho 16724 : Seg15.F) (rho 16725 : Seg15.F) hinput
        (by simpa using seg15_prefix_69_v2 rho r592)
        (by simpa using seg15_prefix_69_addX rho r593)
        (by simpa using seg15_prefix_69_addY rho r594)
        (by simpa using seg15_prefix_69_selX rho r595)
        (by simpa using seg15_prefix_69_selY rho r596)
        hbrow69
  exact hr69

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


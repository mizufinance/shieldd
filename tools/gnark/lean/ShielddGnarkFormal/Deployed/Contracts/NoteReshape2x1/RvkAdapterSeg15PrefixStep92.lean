import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas9
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

theorem seg15_prefix_step92 (rho : Nat -> Seg15.F)
    (r92 : Seg15.relationRow92 rho)
    (r707 : Seg15.relationRow707 rho)
    (r708 : Seg15.relationRow708 rho)
    (r709 : Seg15.relationRow709 rho)
    (r710 : Seg15.relationRow710 rho)
    (r711 : Seg15.relationRow711 rho)
    (hacc : onCurve (seg15RvkAcc rho 92)) :
    RvkFixedBaseLadder.FixedStepRel 92 (rho 16222)
      (seg15RvkAcc rho 92) (seg15RvkAcc rho (92 + 1)) := by
  have hbrow92 : (1*(rho 16222))*(1 + (-1)*(rho 16222)) = 0 := by
    simpa [Seg15.relationRow92] using r92
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX91 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY91 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr92 : RvkFixedBaseLadder.FixedStepRel 92 (rho 16222)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX91 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY91 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX92 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY92 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc92, seg15AccX92, seg15AccY92, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung92_wide (rho 16130 : Seg15.F) (rho 16222 : Seg15.F) (seg15AccX91 rho : Seg15.F) (seg15AccY91 rho : Seg15.F) (rho 16836 : Seg15.F) (rho 16837 : Seg15.F) (rho 16838 : Seg15.F) (rho 16839 : Seg15.F) (rho 16840 : Seg15.F) hinput
        (by simpa using seg15_prefix_92_v2 rho r707)
        (by simpa using seg15_prefix_92_addX rho r708)
        (by simpa using seg15_prefix_92_addY rho r709)
        (by simpa using seg15_prefix_92_selX rho r710)
        (by simpa using seg15_prefix_92_selY rho r711)
        hbrow92
  exact hr92

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


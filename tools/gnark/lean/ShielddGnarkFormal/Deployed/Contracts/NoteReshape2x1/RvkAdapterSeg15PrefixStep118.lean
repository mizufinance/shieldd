import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas11
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

theorem seg15_prefix_step118 (rho : Nat -> Seg15.F)
    (r118 : Seg15.relationRow118 rho)
    (r837 : Seg15.relationRow837 rho)
    (r838 : Seg15.relationRow838 rho)
    (r839 : Seg15.relationRow839 rho)
    (r840 : Seg15.relationRow840 rho)
    (r841 : Seg15.relationRow841 rho)
    (hacc : onCurve (seg15RvkAcc rho 118)) :
    RvkFixedBaseLadder.FixedStepRel 118 (rho 16254)
      (seg15RvkAcc rho 118) (seg15RvkAcc rho (118 + 1)) := by
  have hbrow118 : (1*(rho 16254))*(1 + (-1)*(rho 16254)) = 0 := by
    simpa [Seg15.relationRow118] using r118
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX117 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY117 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr118 : RvkFixedBaseLadder.FixedStepRel 118 (rho 16254)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX117 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY117 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX118 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY118 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc118, seg15AccX118, seg15AccY118, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung118_wide (rho 16136 : Seg15.F) (rho 16254 : Seg15.F) (seg15AccX117 rho : Seg15.F) (seg15AccY117 rho : Seg15.F) (rho 16972 : Seg15.F) (rho 16973 : Seg15.F) (rho 16974 : Seg15.F) (rho 16975 : Seg15.F) (rho 16976 : Seg15.F) hinput
        (by simpa using seg15_prefix_118_v2 rho r837)
        (by simpa using seg15_prefix_118_addX rho r838)
        (by simpa using seg15_prefix_118_addY rho r839)
        (by simpa using seg15_prefix_118_selX rho r840)
        (by simpa using seg15_prefix_118_selY rho r841)
        hbrow118
  exact hr118

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas3
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_step37 (rho : Nat -> Seg15.F)
    (r37 : Seg15.relationRow37 rho)
    (r432 : Seg15.relationRow432 rho)
    (r433 : Seg15.relationRow433 rho)
    (r434 : Seg15.relationRow434 rho)
    (r435 : Seg15.relationRow435 rho)
    (r436 : Seg15.relationRow436 rho)
    (hacc : onCurve (seg15RvkAcc rho 37)) :
    RvkFixedBaseLadder.FixedStepRel 37 (rho 16173)
      (seg15RvkAcc rho 37) (seg15RvkAcc rho (37 + 1)) := by
  have hbrow37 : (1*(rho 16173))*(1 + (-1)*(rho 16173)) = 0 := by
    simpa [Seg15.relationRow37] using r37
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX36 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY36 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr37 : RvkFixedBaseLadder.FixedStepRel 37 (rho 16173)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX36 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY36 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX37 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY37 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc37, seg15AccX37, seg15AccY37, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung37_wide (rho 16136 : Seg15.F) (rho 16173 : Seg15.F) (seg15AccX36 rho : Seg15.F) (seg15AccY36 rho : Seg15.F) (rho 16567 : Seg15.F) (rho 16568 : Seg15.F) (rho 16569 : Seg15.F) (rho 16570 : Seg15.F) (rho 16571 : Seg15.F) hinput
        (by simpa using seg15_prefix_37_v2 rho r432)
        (by simpa using seg15_prefix_37_addX rho r433)
        (by simpa using seg15_prefix_37_addY rho r434)
        (by simpa using seg15_prefix_37_selX rho r435)
        (by simpa using seg15_prefix_37_selY rho r436)
        hbrow37
  exact hr37

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


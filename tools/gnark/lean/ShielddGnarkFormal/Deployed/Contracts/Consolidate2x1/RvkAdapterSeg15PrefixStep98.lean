import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas9
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

theorem seg15_prefix_step98 (rho : Nat -> Seg15.F)
    (r98 : Seg15.relationRow98 rho)
    (r737 : Seg15.relationRow737 rho)
    (r738 : Seg15.relationRow738 rho)
    (r739 : Seg15.relationRow739 rho)
    (r740 : Seg15.relationRow740 rho)
    (r741 : Seg15.relationRow741 rho)
    (hacc : onCurve (seg15RvkAcc rho 98)) :
    RvkFixedBaseLadder.FixedStepRel 98 (rho 16234)
      (seg15RvkAcc rho 98) (seg15RvkAcc rho (98 + 1)) := by
  have hbrow98 : (1*(rho 16234))*(1 + (-1)*(rho 16234)) = 0 := by
    simpa [Seg15.relationRow98] using r98
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX97 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY97 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr98 : RvkFixedBaseLadder.FixedStepRel 98 (rho 16234)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX97 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY97 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX98 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY98 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc98, seg15AccX98, seg15AccY98, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung98_wide (rho 16136 : Seg15.F) (rho 16234 : Seg15.F) (seg15AccX97 rho : Seg15.F) (seg15AccY97 rho : Seg15.F) (rho 16872 : Seg15.F) (rho 16873 : Seg15.F) (rho 16874 : Seg15.F) (rho 16875 : Seg15.F) (rho 16876 : Seg15.F) hinput
        (by simpa using seg15_prefix_98_v2 rho r737)
        (by simpa using seg15_prefix_98_addX rho r738)
        (by simpa using seg15_prefix_98_addY rho r739)
        (by simpa using seg15_prefix_98_selX rho r740)
        (by simpa using seg15_prefix_98_selY rho r741)
        hbrow98
  exact hr98

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


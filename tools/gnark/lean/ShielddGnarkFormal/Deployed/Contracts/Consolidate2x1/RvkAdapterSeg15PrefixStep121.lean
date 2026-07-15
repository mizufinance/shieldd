import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas12
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

theorem seg15_prefix_step121 (rho : Nat -> Seg15.F)
    (r121 : Seg15.relationRow121 rho)
    (r852 : Seg15.relationRow852 rho)
    (r853 : Seg15.relationRow853 rho)
    (r854 : Seg15.relationRow854 rho)
    (r855 : Seg15.relationRow855 rho)
    (r856 : Seg15.relationRow856 rho)
    (hacc : onCurve (seg15RvkAcc rho 121)) :
    RvkFixedBaseLadder.FixedStepRel 121 (rho 16257)
      (seg15RvkAcc rho 121) (seg15RvkAcc rho (121 + 1)) := by
  have hbrow121 : (1*(rho 16257))*(1 + (-1)*(rho 16257)) = 0 := by
    simpa [Seg15.relationRow121] using r121
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX120 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY120 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr121 : RvkFixedBaseLadder.FixedStepRel 121 (rho 16257)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX120 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY120 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX121 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY121 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc121, seg15AccX121, seg15AccY121, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung121_wide (rho 16136 : Seg15.F) (rho 16257 : Seg15.F) (seg15AccX120 rho : Seg15.F) (seg15AccY120 rho : Seg15.F) (rho 16987 : Seg15.F) (rho 16988 : Seg15.F) (rho 16989 : Seg15.F) (rho 16990 : Seg15.F) (rho 16991 : Seg15.F) hinput
        (by simpa using seg15_prefix_121_v2 rho r852)
        (by simpa using seg15_prefix_121_addX rho r853)
        (by simpa using seg15_prefix_121_addY rho r854)
        (by simpa using seg15_prefix_121_selX rho r855)
        (by simpa using seg15_prefix_121_selY rho r856)
        hbrow121
  exact hr121

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas9
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_step100 (rho : Nat -> Seg30.F)
    (r100 : Seg30.relationRow100 rho)
    (r747 : Seg30.relationRow747 rho)
    (r748 : Seg30.relationRow748 rho)
    (r749 : Seg30.relationRow749 rho)
    (r750 : Seg30.relationRow750 rho)
    (r751 : Seg30.relationRow751 rho)
    (hacc : onCurve (seg30RvkAcc rho 100)) :
    RvkFixedBaseLadder.FixedStepRel 100 (rho 28417)
      (seg30RvkAcc rho 100) (seg30RvkAcc rho (100 + 1)) := by
  have hbrow100 : (1*(rho 28417))*(1 + (-1)*(rho 28417)) = 0 := by
    simpa [Seg30.relationRow100] using r100
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX99 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY99 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr100 : RvkFixedBaseLadder.FixedStepRel 100 (rho 28417)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX99 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY99 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX100 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY100 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc100, seg30AccX100, seg30AccY100, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung100_wide (rho 28317 : Seg30.F) (rho 28417 : Seg30.F) (seg30AccX99 rho : Seg30.F) (seg30AccY99 rho : Seg30.F) (rho 29063 : Seg30.F) (rho 29064 : Seg30.F) (rho 29065 : Seg30.F) (rho 29066 : Seg30.F) (rho 29067 : Seg30.F) hinput
        (by simpa using seg30_prefix_100_v2 rho r747)
        (by simpa using seg30_prefix_100_addX rho r748)
        (by simpa using seg30_prefix_100_addY rho r749)
        (by simpa using seg30_prefix_100_selX rho r750)
        (by simpa using seg30_prefix_100_selY rho r751)
        hbrow100
  exact hr100

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


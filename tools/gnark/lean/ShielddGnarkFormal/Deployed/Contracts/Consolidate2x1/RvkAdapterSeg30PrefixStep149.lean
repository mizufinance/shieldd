import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas14
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

theorem seg30_prefix_step149 (rho : Nat -> Seg30.F)
    (r149 : Seg30.relationRow149 rho)
    (r992 : Seg30.relationRow992 rho)
    (r993 : Seg30.relationRow993 rho)
    (r994 : Seg30.relationRow994 rho)
    (r995 : Seg30.relationRow995 rho)
    (r996 : Seg30.relationRow996 rho)
    (hacc : onCurve (seg30RvkAcc rho 149)) :
    RvkFixedBaseLadder.FixedStepRel 149 (rho 28466)
      (seg30RvkAcc rho 149) (seg30RvkAcc rho (149 + 1)) := by
  have hbrow149 : (1*(rho 28466))*(1 + (-1)*(rho 28466)) = 0 := by
    simpa [Seg30.relationRow149] using r149
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX148 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY148 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr149 : RvkFixedBaseLadder.FixedStepRel 149 (rho 28466)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX148 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY148 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX149 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY149 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc149, seg30AccX149, seg30AccY149, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung149_wide (rho 28317 : Seg30.F) (rho 28466 : Seg30.F) (seg30AccX148 rho : Seg30.F) (seg30AccY148 rho : Seg30.F) (rho 29308 : Seg30.F) (rho 29309 : Seg30.F) (rho 29310 : Seg30.F) (rho 29311 : Seg30.F) (rho 29312 : Seg30.F) hinput
        (by simpa using seg30_prefix_149_v2 rho r992)
        (by simpa using seg30_prefix_149_addX rho r993)
        (by simpa using seg30_prefix_149_addY rho r994)
        (by simpa using seg30_prefix_149_selX rho r995)
        (by simpa using seg30_prefix_149_selY rho r996)
        hbrow149
  exact hr149

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


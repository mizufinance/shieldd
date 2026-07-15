import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas7
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

theorem seg30_prefix_step71 (rho : Nat -> Seg30.F)
    (r71 : Seg30.relationRow71 rho)
    (r602 : Seg30.relationRow602 rho)
    (r603 : Seg30.relationRow603 rho)
    (r604 : Seg30.relationRow604 rho)
    (r605 : Seg30.relationRow605 rho)
    (r606 : Seg30.relationRow606 rho)
    (hacc : onCurve (seg30RvkAcc rho 71)) :
    RvkFixedBaseLadder.FixedStepRel 71 (rho 28388)
      (seg30RvkAcc rho 71) (seg30RvkAcc rho (71 + 1)) := by
  have hbrow71 : (1*(rho 28388))*(1 + (-1)*(rho 28388)) = 0 := by
    simpa [Seg30.relationRow71] using r71
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX70 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY70 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr71 : RvkFixedBaseLadder.FixedStepRel 71 (rho 28388)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX70 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY70 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX71 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY71 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc71, seg30AccX71, seg30AccY71, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung71_wide (rho 28317 : Seg30.F) (rho 28388 : Seg30.F) (seg30AccX70 rho : Seg30.F) (seg30AccY70 rho : Seg30.F) (rho 28918 : Seg30.F) (rho 28919 : Seg30.F) (rho 28920 : Seg30.F) (rho 28921 : Seg30.F) (rho 28922 : Seg30.F) hinput
        (by simpa using seg30_prefix_71_v2 rho r602)
        (by simpa using seg30_prefix_71_addX rho r603)
        (by simpa using seg30_prefix_71_addY rho r604)
        (by simpa using seg30_prefix_71_selX rho r605)
        (by simpa using seg30_prefix_71_selY rho r606)
        hbrow71
  exact hr71

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


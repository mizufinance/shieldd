import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas8
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

theorem seg30_prefix_step81 (rho : Nat -> Seg30.F)
    (r81 : Seg30.relationRow81 rho)
    (r652 : Seg30.relationRow652 rho)
    (r653 : Seg30.relationRow653 rho)
    (r654 : Seg30.relationRow654 rho)
    (r655 : Seg30.relationRow655 rho)
    (r656 : Seg30.relationRow656 rho)
    (hacc : onCurve (seg30RvkAcc rho 81)) :
    RvkFixedBaseLadder.FixedStepRel 81 (rho 28398)
      (seg30RvkAcc rho 81) (seg30RvkAcc rho (81 + 1)) := by
  have hbrow81 : (1*(rho 28398))*(1 + (-1)*(rho 28398)) = 0 := by
    simpa [Seg30.relationRow81] using r81
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX80 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY80 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr81 : RvkFixedBaseLadder.FixedStepRel 81 (rho 28398)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX80 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY80 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX81 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY81 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc81, seg30AccX81, seg30AccY81, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung81_wide (rho 28317 : Seg30.F) (rho 28398 : Seg30.F) (seg30AccX80 rho : Seg30.F) (seg30AccY80 rho : Seg30.F) (rho 28968 : Seg30.F) (rho 28969 : Seg30.F) (rho 28970 : Seg30.F) (rho 28971 : Seg30.F) (rho 28972 : Seg30.F) hinput
        (by simpa using seg30_prefix_81_v2 rho r652)
        (by simpa using seg30_prefix_81_addX rho r653)
        (by simpa using seg30_prefix_81_addY rho r654)
        (by simpa using seg30_prefix_81_selX rho r655)
        (by simpa using seg30_prefix_81_selY rho r656)
        hbrow81
  exact hr81

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


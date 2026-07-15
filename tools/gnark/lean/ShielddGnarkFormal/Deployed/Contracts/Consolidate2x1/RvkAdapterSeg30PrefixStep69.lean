import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas6
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

theorem seg30_prefix_step69 (rho : Nat -> Seg30.F)
    (r69 : Seg30.relationRow69 rho)
    (r592 : Seg30.relationRow592 rho)
    (r593 : Seg30.relationRow593 rho)
    (r594 : Seg30.relationRow594 rho)
    (r595 : Seg30.relationRow595 rho)
    (r596 : Seg30.relationRow596 rho)
    (hacc : onCurve (seg30RvkAcc rho 69)) :
    RvkFixedBaseLadder.FixedStepRel 69 (rho 28386)
      (seg30RvkAcc rho 69) (seg30RvkAcc rho (69 + 1)) := by
  have hbrow69 : (1*(rho 28386))*(1 + (-1)*(rho 28386)) = 0 := by
    simpa [Seg30.relationRow69] using r69
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX68 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY68 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr69 : RvkFixedBaseLadder.FixedStepRel 69 (rho 28386)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX68 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY68 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX69 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY69 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc69, seg30AccX69, seg30AccY69, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung69_wide (rho 28317 : Seg30.F) (rho 28386 : Seg30.F) (seg30AccX68 rho : Seg30.F) (seg30AccY68 rho : Seg30.F) (rho 28908 : Seg30.F) (rho 28909 : Seg30.F) (rho 28910 : Seg30.F) (rho 28911 : Seg30.F) (rho 28912 : Seg30.F) hinput
        (by simpa using seg30_prefix_69_v2 rho r592)
        (by simpa using seg30_prefix_69_addX rho r593)
        (by simpa using seg30_prefix_69_addY rho r594)
        (by simpa using seg30_prefix_69_selX rho r595)
        (by simpa using seg30_prefix_69_selY rho r596)
        hbrow69
  exact hr69

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas8
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_step82 (rho : Nat -> Seg30.F)
    (r82 : Seg30.relationRow82 rho)
    (r657 : Seg30.relationRow657 rho)
    (r658 : Seg30.relationRow658 rho)
    (r659 : Seg30.relationRow659 rho)
    (r660 : Seg30.relationRow660 rho)
    (r661 : Seg30.relationRow661 rho)
    (hacc : onCurve (seg30RvkAcc rho 82)) :
    RvkFixedBaseLadder.FixedStepRel 82 (rho 28399)
      (seg30RvkAcc rho 82) (seg30RvkAcc rho (82 + 1)) := by
  have hbrow82 : (1*(rho 28399))*(1 + (-1)*(rho 28399)) = 0 := by
    simpa [Seg30.relationRow82] using r82
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX81 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY81 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr82 : RvkFixedBaseLadder.FixedStepRel 82 (rho 28399)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX81 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY81 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX82 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY82 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc82, seg30AccX82, seg30AccY82, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung82_wide (rho 28317 : Seg30.F) (rho 28399 : Seg30.F) (seg30AccX81 rho : Seg30.F) (seg30AccY81 rho : Seg30.F) (rho 28973 : Seg30.F) (rho 28974 : Seg30.F) (rho 28975 : Seg30.F) (rho 28976 : Seg30.F) (rho 28977 : Seg30.F) hinput
        (by simpa using seg30_prefix_82_v2 rho r657)
        (by simpa using seg30_prefix_82_addX rho r658)
        (by simpa using seg30_prefix_82_addY rho r659)
        (by simpa using seg30_prefix_82_selX rho r660)
        (by simpa using seg30_prefix_82_selY rho r661)
        hbrow82
  exact hr82

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas9
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

theorem seg30_prefix_step94 (rho : Nat -> Seg30.F)
    (r94 : Seg30.relationRow94 rho)
    (r717 : Seg30.relationRow717 rho)
    (r718 : Seg30.relationRow718 rho)
    (r719 : Seg30.relationRow719 rho)
    (r720 : Seg30.relationRow720 rho)
    (r721 : Seg30.relationRow721 rho)
    (hacc : onCurve (seg30RvkAcc rho 94)) :
    RvkFixedBaseLadder.FixedStepRel 94 (rho 28411)
      (seg30RvkAcc rho 94) (seg30RvkAcc rho (94 + 1)) := by
  have hbrow94 : (1*(rho 28411))*(1 + (-1)*(rho 28411)) = 0 := by
    simpa [Seg30.relationRow94] using r94
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX93 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY93 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr94 : RvkFixedBaseLadder.FixedStepRel 94 (rho 28411)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX93 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY93 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX94 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY94 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc94, seg30AccX94, seg30AccY94, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung94_wide (rho 28317 : Seg30.F) (rho 28411 : Seg30.F) (seg30AccX93 rho : Seg30.F) (seg30AccY93 rho : Seg30.F) (rho 29033 : Seg30.F) (rho 29034 : Seg30.F) (rho 29035 : Seg30.F) (rho 29036 : Seg30.F) (rho 29037 : Seg30.F) hinput
        (by simpa using seg30_prefix_94_v2 rho r717)
        (by simpa using seg30_prefix_94_addX rho r718)
        (by simpa using seg30_prefix_94_addY rho r719)
        (by simpa using seg30_prefix_94_selX rho r720)
        (by simpa using seg30_prefix_94_selY rho r721)
        hbrow94
  exact hr94

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


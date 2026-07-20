import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas4
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

theorem seg30_prefix_step47 (rho : Nat -> Seg30.F)
    (r47 : Seg30.relationRow47 rho)
    (r482 : Seg30.relationRow482 rho)
    (r483 : Seg30.relationRow483 rho)
    (r484 : Seg30.relationRow484 rho)
    (r485 : Seg30.relationRow485 rho)
    (r486 : Seg30.relationRow486 rho)
    (hacc : onCurve (seg30RvkAcc rho 47)) :
    RvkFixedBaseLadder.FixedStepRel 47 (rho 28358)
      (seg30RvkAcc rho 47) (seg30RvkAcc rho (47 + 1)) := by
  have hbrow47 : (1*(rho 28358))*(1 + (-1)*(rho 28358)) = 0 := by
    simpa [Seg30.relationRow47] using r47
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX46 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY46 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr47 : RvkFixedBaseLadder.FixedStepRel 47 (rho 28358)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX46 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY46 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX47 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY47 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc47, seg30AccX47, seg30AccY47, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung47_wide (rho 28311 : Seg30.F) (rho 28358 : Seg30.F) (seg30AccX46 rho : Seg30.F) (seg30AccY46 rho : Seg30.F) (rho 28792 : Seg30.F) (rho 28793 : Seg30.F) (rho 28794 : Seg30.F) (rho 28795 : Seg30.F) (rho 28796 : Seg30.F) hinput
        (by simpa using seg30_prefix_47_v2 rho r482)
        (by simpa using seg30_prefix_47_addX rho r483)
        (by simpa using seg30_prefix_47_addY rho r484)
        (by simpa using seg30_prefix_47_selX rho r485)
        (by simpa using seg30_prefix_47_selY rho r486)
        hbrow47
  exact hr47

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


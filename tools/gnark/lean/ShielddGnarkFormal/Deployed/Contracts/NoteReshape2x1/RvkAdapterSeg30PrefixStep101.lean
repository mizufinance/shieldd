import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas10
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

theorem seg30_prefix_step101 (rho : Nat -> Seg30.F)
    (r101 : Seg30.relationRow101 rho)
    (r752 : Seg30.relationRow752 rho)
    (r753 : Seg30.relationRow753 rho)
    (r754 : Seg30.relationRow754 rho)
    (r755 : Seg30.relationRow755 rho)
    (r756 : Seg30.relationRow756 rho)
    (hacc : onCurve (seg30RvkAcc rho 101)) :
    RvkFixedBaseLadder.FixedStepRel 101 (rho 28418)
      (seg30RvkAcc rho 101) (seg30RvkAcc rho (101 + 1)) := by
  have hbrow101 : (1*(rho 28418))*(1 + (-1)*(rho 28418)) = 0 := by
    simpa [Seg30.relationRow101] using r101
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX100 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY100 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr101 : RvkFixedBaseLadder.FixedStepRel 101 (rho 28418)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX100 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY100 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX101 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY101 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc101, seg30AccX101, seg30AccY101, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung101_wide (rho 28317 : Seg30.F) (rho 28418 : Seg30.F) (seg30AccX100 rho : Seg30.F) (seg30AccY100 rho : Seg30.F) (rho 29068 : Seg30.F) (rho 29069 : Seg30.F) (rho 29070 : Seg30.F) (rho 29071 : Seg30.F) (rho 29072 : Seg30.F) hinput
        (by simpa using seg30_prefix_101_v2 rho r752)
        (by simpa using seg30_prefix_101_addX rho r753)
        (by simpa using seg30_prefix_101_addY rho r754)
        (by simpa using seg30_prefix_101_selX rho r755)
        (by simpa using seg30_prefix_101_selY rho r756)
        hbrow101
  exact hr101

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


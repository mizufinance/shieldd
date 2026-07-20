import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas6
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

theorem seg30_prefix_step64 (rho : Nat -> Seg30.F)
    (r64 : Seg30.relationRow64 rho)
    (r567 : Seg30.relationRow567 rho)
    (r568 : Seg30.relationRow568 rho)
    (r569 : Seg30.relationRow569 rho)
    (r570 : Seg30.relationRow570 rho)
    (r571 : Seg30.relationRow571 rho)
    (hacc : onCurve (seg30RvkAcc rho 64)) :
    RvkFixedBaseLadder.FixedStepRel 64 (rho 28375)
      (seg30RvkAcc rho 64) (seg30RvkAcc rho (64 + 1)) := by
  have hbrow64 : (1*(rho 28375))*(1 + (-1)*(rho 28375)) = 0 := by
    simpa [Seg30.relationRow64] using r64
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX63 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY63 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr64 : RvkFixedBaseLadder.FixedStepRel 64 (rho 28375)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX63 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY63 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX64 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY64 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc64, seg30AccX64, seg30AccY64, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung64_wide (rho 28311 : Seg30.F) (rho 28375 : Seg30.F) (seg30AccX63 rho : Seg30.F) (seg30AccY63 rho : Seg30.F) (rho 28877 : Seg30.F) (rho 28878 : Seg30.F) (rho 28879 : Seg30.F) (rho 28880 : Seg30.F) (rho 28881 : Seg30.F) hinput
        (by simpa using seg30_prefix_64_v2 rho r567)
        (by simpa using seg30_prefix_64_addX rho r568)
        (by simpa using seg30_prefix_64_addY rho r569)
        (by simpa using seg30_prefix_64_selX rho r570)
        (by simpa using seg30_prefix_64_selY rho r571)
        hbrow64
  exact hr64

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


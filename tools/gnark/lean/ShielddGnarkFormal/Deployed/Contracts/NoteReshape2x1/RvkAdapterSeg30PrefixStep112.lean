import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas11
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

theorem seg30_prefix_step112 (rho : Nat -> Seg30.F)
    (r112 : Seg30.relationRow112 rho)
    (r807 : Seg30.relationRow807 rho)
    (r808 : Seg30.relationRow808 rho)
    (r809 : Seg30.relationRow809 rho)
    (r810 : Seg30.relationRow810 rho)
    (r811 : Seg30.relationRow811 rho)
    (hacc : onCurve (seg30RvkAcc rho 112)) :
    RvkFixedBaseLadder.FixedStepRel 112 (rho 28423)
      (seg30RvkAcc rho 112) (seg30RvkAcc rho (112 + 1)) := by
  have hbrow112 : (1*(rho 28423))*(1 + (-1)*(rho 28423)) = 0 := by
    simpa [Seg30.relationRow112] using r112
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX111 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY111 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr112 : RvkFixedBaseLadder.FixedStepRel 112 (rho 28423)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX111 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY111 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX112 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY112 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc112, seg30AccX112, seg30AccY112, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung112_wide (rho 28311 : Seg30.F) (rho 28423 : Seg30.F) (seg30AccX111 rho : Seg30.F) (seg30AccY111 rho : Seg30.F) (rho 29117 : Seg30.F) (rho 29118 : Seg30.F) (rho 29119 : Seg30.F) (rho 29120 : Seg30.F) (rho 29121 : Seg30.F) hinput
        (by simpa using seg30_prefix_112_v2 rho r807)
        (by simpa using seg30_prefix_112_addX rho r808)
        (by simpa using seg30_prefix_112_addY rho r809)
        (by simpa using seg30_prefix_112_selX rho r810)
        (by simpa using seg30_prefix_112_selY rho r811)
        hbrow112
  exact hr112

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


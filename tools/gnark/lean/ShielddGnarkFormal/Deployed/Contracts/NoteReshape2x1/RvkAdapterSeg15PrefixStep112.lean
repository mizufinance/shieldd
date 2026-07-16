import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas11
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_step112 (rho : Nat -> Seg15.F)
    (r112 : Seg15.relationRow112 rho)
    (r807 : Seg15.relationRow807 rho)
    (r808 : Seg15.relationRow808 rho)
    (r809 : Seg15.relationRow809 rho)
    (r810 : Seg15.relationRow810 rho)
    (r811 : Seg15.relationRow811 rho)
    (hacc : onCurve (seg15RvkAcc rho 112)) :
    RvkFixedBaseLadder.FixedStepRel 112 (rho 16248)
      (seg15RvkAcc rho 112) (seg15RvkAcc rho (112 + 1)) := by
  have hbrow112 : (1*(rho 16248))*(1 + (-1)*(rho 16248)) = 0 := by
    simpa [Seg15.relationRow112] using r112
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX111 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY111 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr112 : RvkFixedBaseLadder.FixedStepRel 112 (rho 16248)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX111 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY111 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX112 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY112 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc112, seg15AccX112, seg15AccY112, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung112_wide (rho 16136 : Seg15.F) (rho 16248 : Seg15.F) (seg15AccX111 rho : Seg15.F) (seg15AccY111 rho : Seg15.F) (rho 16942 : Seg15.F) (rho 16943 : Seg15.F) (rho 16944 : Seg15.F) (rho 16945 : Seg15.F) (rho 16946 : Seg15.F) hinput
        (by simpa using seg15_prefix_112_v2 rho r807)
        (by simpa using seg15_prefix_112_addX rho r808)
        (by simpa using seg15_prefix_112_addY rho r809)
        (by simpa using seg15_prefix_112_selX rho r810)
        (by simpa using seg15_prefix_112_selY rho r811)
        hbrow112
  exact hr112

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


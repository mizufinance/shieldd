import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas12
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

theorem seg15_prefix_step122 (rho : Nat -> Seg15.F)
    (r122 : Seg15.relationRow122 rho)
    (r857 : Seg15.relationRow857 rho)
    (r858 : Seg15.relationRow858 rho)
    (r859 : Seg15.relationRow859 rho)
    (r860 : Seg15.relationRow860 rho)
    (r861 : Seg15.relationRow861 rho)
    (hacc : onCurve (seg15RvkAcc rho 122)) :
    RvkFixedBaseLadder.FixedStepRel 122 (rho 16258)
      (seg15RvkAcc rho 122) (seg15RvkAcc rho (122 + 1)) := by
  have hbrow122 : (1*(rho 16258))*(1 + (-1)*(rho 16258)) = 0 := by
    simpa [Seg15.relationRow122] using r122
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX121 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY121 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr122 : RvkFixedBaseLadder.FixedStepRel 122 (rho 16258)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX121 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY121 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX122 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY122 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc122, seg15AccX122, seg15AccY122, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung122_wide (rho 16136 : Seg15.F) (rho 16258 : Seg15.F) (seg15AccX121 rho : Seg15.F) (seg15AccY121 rho : Seg15.F) (rho 16992 : Seg15.F) (rho 16993 : Seg15.F) (rho 16994 : Seg15.F) (rho 16995 : Seg15.F) (rho 16996 : Seg15.F) hinput
        (by simpa using seg15_prefix_122_v2 rho r857)
        (by simpa using seg15_prefix_122_addX rho r858)
        (by simpa using seg15_prefix_122_addY rho r859)
        (by simpa using seg15_prefix_122_selX rho r860)
        (by simpa using seg15_prefix_122_selY rho r861)
        hbrow122
  exact hr122

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


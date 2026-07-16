import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas10
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

theorem seg15_prefix_step101 (rho : Nat -> Seg15.F)
    (r101 : Seg15.relationRow101 rho)
    (r752 : Seg15.relationRow752 rho)
    (r753 : Seg15.relationRow753 rho)
    (r754 : Seg15.relationRow754 rho)
    (r755 : Seg15.relationRow755 rho)
    (r756 : Seg15.relationRow756 rho)
    (hacc : onCurve (seg15RvkAcc rho 101)) :
    RvkFixedBaseLadder.FixedStepRel 101 (rho 16237)
      (seg15RvkAcc rho 101) (seg15RvkAcc rho (101 + 1)) := by
  have hbrow101 : (1*(rho 16237))*(1 + (-1)*(rho 16237)) = 0 := by
    simpa [Seg15.relationRow101] using r101
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX100 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY100 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr101 : RvkFixedBaseLadder.FixedStepRel 101 (rho 16237)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX100 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY100 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX101 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY101 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc101, seg15AccX101, seg15AccY101, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung101_wide (rho 16136 : Seg15.F) (rho 16237 : Seg15.F) (seg15AccX100 rho : Seg15.F) (seg15AccY100 rho : Seg15.F) (rho 16887 : Seg15.F) (rho 16888 : Seg15.F) (rho 16889 : Seg15.F) (rho 16890 : Seg15.F) (rho 16891 : Seg15.F) hinput
        (by simpa using seg15_prefix_101_v2 rho r752)
        (by simpa using seg15_prefix_101_addX rho r753)
        (by simpa using seg15_prefix_101_addY rho r754)
        (by simpa using seg15_prefix_101_selX rho r755)
        (by simpa using seg15_prefix_101_selY rho r756)
        hbrow101
  exact hr101

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


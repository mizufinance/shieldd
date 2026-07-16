import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas9
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

theorem seg15_prefix_step100 (rho : Nat -> Seg15.F)
    (r100 : Seg15.relationRow100 rho)
    (r747 : Seg15.relationRow747 rho)
    (r748 : Seg15.relationRow748 rho)
    (r749 : Seg15.relationRow749 rho)
    (r750 : Seg15.relationRow750 rho)
    (r751 : Seg15.relationRow751 rho)
    (hacc : onCurve (seg15RvkAcc rho 100)) :
    RvkFixedBaseLadder.FixedStepRel 100 (rho 16236)
      (seg15RvkAcc rho 100) (seg15RvkAcc rho (100 + 1)) := by
  have hbrow100 : (1*(rho 16236))*(1 + (-1)*(rho 16236)) = 0 := by
    simpa [Seg15.relationRow100] using r100
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX99 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY99 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr100 : RvkFixedBaseLadder.FixedStepRel 100 (rho 16236)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX99 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY99 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX100 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY100 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc100, seg15AccX100, seg15AccY100, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung100_wide (rho 16136 : Seg15.F) (rho 16236 : Seg15.F) (seg15AccX99 rho : Seg15.F) (seg15AccY99 rho : Seg15.F) (rho 16882 : Seg15.F) (rho 16883 : Seg15.F) (rho 16884 : Seg15.F) (rho 16885 : Seg15.F) (rho 16886 : Seg15.F) hinput
        (by simpa using seg15_prefix_100_v2 rho r747)
        (by simpa using seg15_prefix_100_addX rho r748)
        (by simpa using seg15_prefix_100_addY rho r749)
        (by simpa using seg15_prefix_100_selX rho r750)
        (by simpa using seg15_prefix_100_selY rho r751)
        hbrow100
  exact hr100

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


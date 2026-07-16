import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas13
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

theorem seg15_prefix_step136 (rho : Nat -> Seg15.F)
    (r136 : Seg15.relationRow136 rho)
    (r927 : Seg15.relationRow927 rho)
    (r928 : Seg15.relationRow928 rho)
    (r929 : Seg15.relationRow929 rho)
    (r930 : Seg15.relationRow930 rho)
    (r931 : Seg15.relationRow931 rho)
    (hacc : onCurve (seg15RvkAcc rho 136)) :
    RvkFixedBaseLadder.FixedStepRel 136 (rho 16272)
      (seg15RvkAcc rho 136) (seg15RvkAcc rho (136 + 1)) := by
  have hbrow136 : (1*(rho 16272))*(1 + (-1)*(rho 16272)) = 0 := by
    simpa [Seg15.relationRow136] using r136
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX135 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY135 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr136 : RvkFixedBaseLadder.FixedStepRel 136 (rho 16272)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX135 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY135 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX136 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY136 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc136, seg15AccX136, seg15AccY136, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung136_wide (rho 16136 : Seg15.F) (rho 16272 : Seg15.F) (seg15AccX135 rho : Seg15.F) (seg15AccY135 rho : Seg15.F) (rho 17062 : Seg15.F) (rho 17063 : Seg15.F) (rho 17064 : Seg15.F) (rho 17065 : Seg15.F) (rho 17066 : Seg15.F) hinput
        (by simpa using seg15_prefix_136_v2 rho r927)
        (by simpa using seg15_prefix_136_addX rho r928)
        (by simpa using seg15_prefix_136_addY rho r929)
        (by simpa using seg15_prefix_136_selX rho r930)
        (by simpa using seg15_prefix_136_selY rho r931)
        hbrow136
  exact hr136

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


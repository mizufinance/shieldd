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

theorem seg15_prefix_step96 (rho : Nat -> Seg15.F)
    (r96 : Seg15.relationRow96 rho)
    (r727 : Seg15.relationRow727 rho)
    (r728 : Seg15.relationRow728 rho)
    (r729 : Seg15.relationRow729 rho)
    (r730 : Seg15.relationRow730 rho)
    (r731 : Seg15.relationRow731 rho)
    (hacc : onCurve (seg15RvkAcc rho 96)) :
    RvkFixedBaseLadder.FixedStepRel 96 (rho 16232)
      (seg15RvkAcc rho 96) (seg15RvkAcc rho (96 + 1)) := by
  have hbrow96 : (1*(rho 16232))*(1 + (-1)*(rho 16232)) = 0 := by
    simpa [Seg15.relationRow96] using r96
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX95 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY95 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr96 : RvkFixedBaseLadder.FixedStepRel 96 (rho 16232)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX95 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY95 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX96 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY96 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc96, seg15AccX96, seg15AccY96, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung96_wide (rho 16136 : Seg15.F) (rho 16232 : Seg15.F) (seg15AccX95 rho : Seg15.F) (seg15AccY95 rho : Seg15.F) (rho 16862 : Seg15.F) (rho 16863 : Seg15.F) (rho 16864 : Seg15.F) (rho 16865 : Seg15.F) (rho 16866 : Seg15.F) hinput
        (by simpa using seg15_prefix_96_v2 rho r727)
        (by simpa using seg15_prefix_96_addX rho r728)
        (by simpa using seg15_prefix_96_addY rho r729)
        (by simpa using seg15_prefix_96_selX rho r730)
        (by simpa using seg15_prefix_96_selY rho r731)
        hbrow96
  exact hr96

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


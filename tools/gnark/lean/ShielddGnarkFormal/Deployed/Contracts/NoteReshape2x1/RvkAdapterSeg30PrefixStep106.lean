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

theorem seg30_prefix_step106 (rho : Nat -> Seg30.F)
    (r106 : Seg30.relationRow106 rho)
    (r777 : Seg30.relationRow777 rho)
    (r778 : Seg30.relationRow778 rho)
    (r779 : Seg30.relationRow779 rho)
    (r780 : Seg30.relationRow780 rho)
    (r781 : Seg30.relationRow781 rho)
    (hacc : onCurve (seg30RvkAcc rho 106)) :
    RvkFixedBaseLadder.FixedStepRel 106 (rho 28423)
      (seg30RvkAcc rho 106) (seg30RvkAcc rho (106 + 1)) := by
  have hbrow106 : (1*(rho 28423))*(1 + (-1)*(rho 28423)) = 0 := by
    simpa [Seg30.relationRow106] using r106
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX105 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY105 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr106 : RvkFixedBaseLadder.FixedStepRel 106 (rho 28423)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX105 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY105 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX106 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY106 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc106, seg30AccX106, seg30AccY106, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung106_wide (rho 28317 : Seg30.F) (rho 28423 : Seg30.F) (seg30AccX105 rho : Seg30.F) (seg30AccY105 rho : Seg30.F) (rho 29093 : Seg30.F) (rho 29094 : Seg30.F) (rho 29095 : Seg30.F) (rho 29096 : Seg30.F) (rho 29097 : Seg30.F) hinput
        (by simpa using seg30_prefix_106_v2 rho r777)
        (by simpa using seg30_prefix_106_addX rho r778)
        (by simpa using seg30_prefix_106_addY rho r779)
        (by simpa using seg30_prefix_106_selX rho r780)
        (by simpa using seg30_prefix_106_selY rho r781)
        hbrow106
  exact hr106

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


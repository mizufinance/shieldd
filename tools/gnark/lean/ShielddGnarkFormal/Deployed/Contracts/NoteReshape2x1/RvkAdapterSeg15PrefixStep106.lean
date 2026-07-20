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

theorem seg15_prefix_step106 (rho : Nat -> Seg15.F)
    (r106 : Seg15.relationRow106 rho)
    (r777 : Seg15.relationRow777 rho)
    (r778 : Seg15.relationRow778 rho)
    (r779 : Seg15.relationRow779 rho)
    (r780 : Seg15.relationRow780 rho)
    (r781 : Seg15.relationRow781 rho)
    (hacc : onCurve (seg15RvkAcc rho 106)) :
    RvkFixedBaseLadder.FixedStepRel 106 (rho 16236)
      (seg15RvkAcc rho 106) (seg15RvkAcc rho (106 + 1)) := by
  have hbrow106 : (1*(rho 16236))*(1 + (-1)*(rho 16236)) = 0 := by
    simpa [Seg15.relationRow106] using r106
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX105 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY105 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr106 : RvkFixedBaseLadder.FixedStepRel 106 (rho 16236)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX105 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY105 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX106 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY106 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc106, seg15AccX106, seg15AccY106, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung106_wide (rho 16130 : Seg15.F) (rho 16236 : Seg15.F) (seg15AccX105 rho : Seg15.F) (seg15AccY105 rho : Seg15.F) (rho 16906 : Seg15.F) (rho 16907 : Seg15.F) (rho 16908 : Seg15.F) (rho 16909 : Seg15.F) (rho 16910 : Seg15.F) hinput
        (by simpa using seg15_prefix_106_v2 rho r777)
        (by simpa using seg15_prefix_106_addX rho r778)
        (by simpa using seg15_prefix_106_addY rho r779)
        (by simpa using seg15_prefix_106_selX rho r780)
        (by simpa using seg15_prefix_106_selY rho r781)
        hbrow106
  exact hr106

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


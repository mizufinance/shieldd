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

theorem seg15_prefix_step137 (rho : Nat -> Seg15.F)
    (r137 : Seg15.relationRow137 rho)
    (r932 : Seg15.relationRow932 rho)
    (r933 : Seg15.relationRow933 rho)
    (r934 : Seg15.relationRow934 rho)
    (r935 : Seg15.relationRow935 rho)
    (r936 : Seg15.relationRow936 rho)
    (hacc : onCurve (seg15RvkAcc rho 137)) :
    RvkFixedBaseLadder.FixedStepRel 137 (rho 16267)
      (seg15RvkAcc rho 137) (seg15RvkAcc rho (137 + 1)) := by
  have hbrow137 : (1*(rho 16267))*(1 + (-1)*(rho 16267)) = 0 := by
    simpa [Seg15.relationRow137] using r137
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX136 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY136 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr137 : RvkFixedBaseLadder.FixedStepRel 137 (rho 16267)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX136 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY136 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX137 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY137 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc137, seg15AccX137, seg15AccY137, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung137_wide (rho 16130 : Seg15.F) (rho 16267 : Seg15.F) (seg15AccX136 rho : Seg15.F) (seg15AccY136 rho : Seg15.F) (rho 17061 : Seg15.F) (rho 17062 : Seg15.F) (rho 17063 : Seg15.F) (rho 17064 : Seg15.F) (rho 17065 : Seg15.F) hinput
        (by simpa using seg15_prefix_137_v2 rho r932)
        (by simpa using seg15_prefix_137_addX rho r933)
        (by simpa using seg15_prefix_137_addY rho r934)
        (by simpa using seg15_prefix_137_selX rho r935)
        (by simpa using seg15_prefix_137_selY rho r936)
        hbrow137
  exact hr137

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


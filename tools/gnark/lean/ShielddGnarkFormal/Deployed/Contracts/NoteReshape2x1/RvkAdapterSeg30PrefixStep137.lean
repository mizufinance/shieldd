import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas13
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

theorem seg30_prefix_step137 (rho : Nat -> Seg30.F)
    (r137 : Seg30.relationRow137 rho)
    (r932 : Seg30.relationRow932 rho)
    (r933 : Seg30.relationRow933 rho)
    (r934 : Seg30.relationRow934 rho)
    (r935 : Seg30.relationRow935 rho)
    (r936 : Seg30.relationRow936 rho)
    (hacc : onCurve (seg30RvkAcc rho 137)) :
    RvkFixedBaseLadder.FixedStepRel 137 (rho 28454)
      (seg30RvkAcc rho 137) (seg30RvkAcc rho (137 + 1)) := by
  have hbrow137 : (1*(rho 28454))*(1 + (-1)*(rho 28454)) = 0 := by
    simpa [Seg30.relationRow137] using r137
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX136 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY136 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr137 : RvkFixedBaseLadder.FixedStepRel 137 (rho 28454)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX136 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY136 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX137 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY137 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc137, seg30AccX137, seg30AccY137, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung137_wide (rho 28317 : Seg30.F) (rho 28454 : Seg30.F) (seg30AccX136 rho : Seg30.F) (seg30AccY136 rho : Seg30.F) (rho 29248 : Seg30.F) (rho 29249 : Seg30.F) (rho 29250 : Seg30.F) (rho 29251 : Seg30.F) (rho 29252 : Seg30.F) hinput
        (by simpa using seg30_prefix_137_v2 rho r932)
        (by simpa using seg30_prefix_137_addX rho r933)
        (by simpa using seg30_prefix_137_addY rho r934)
        (by simpa using seg30_prefix_137_selX rho r935)
        (by simpa using seg30_prefix_137_selY rho r936)
        hbrow137
  exact hr137

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


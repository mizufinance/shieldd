import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas6
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

theorem seg30_prefix_step66 (rho : Nat -> Seg30.F)
    (r66 : Seg30.relationRow66 rho)
    (r577 : Seg30.relationRow577 rho)
    (r578 : Seg30.relationRow578 rho)
    (r579 : Seg30.relationRow579 rho)
    (r580 : Seg30.relationRow580 rho)
    (r581 : Seg30.relationRow581 rho)
    (hacc : onCurve (seg30RvkAcc rho 66)) :
    RvkFixedBaseLadder.FixedStepRel 66 (rho 28377)
      (seg30RvkAcc rho 66) (seg30RvkAcc rho (66 + 1)) := by
  have hbrow66 : (1*(rho 28377))*(1 + (-1)*(rho 28377)) = 0 := by
    simpa [Seg30.relationRow66] using r66
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX65 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY65 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr66 : RvkFixedBaseLadder.FixedStepRel 66 (rho 28377)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX65 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY65 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX66 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY66 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc66, seg30AccX66, seg30AccY66, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung66_wide (rho 28311 : Seg30.F) (rho 28377 : Seg30.F) (seg30AccX65 rho : Seg30.F) (seg30AccY65 rho : Seg30.F) (rho 28887 : Seg30.F) (rho 28888 : Seg30.F) (rho 28889 : Seg30.F) (rho 28890 : Seg30.F) (rho 28891 : Seg30.F) hinput
        (by simpa using seg30_prefix_66_v2 rho r577)
        (by simpa using seg30_prefix_66_addX rho r578)
        (by simpa using seg30_prefix_66_addY rho r579)
        (by simpa using seg30_prefix_66_selX rho r580)
        (by simpa using seg30_prefix_66_selY rho r581)
        hbrow66
  exact hr66

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


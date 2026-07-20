import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas8
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

theorem seg30_prefix_step89 (rho : Nat -> Seg30.F)
    (r89 : Seg30.relationRow89 rho)
    (r692 : Seg30.relationRow692 rho)
    (r693 : Seg30.relationRow693 rho)
    (r694 : Seg30.relationRow694 rho)
    (r695 : Seg30.relationRow695 rho)
    (r696 : Seg30.relationRow696 rho)
    (hacc : onCurve (seg30RvkAcc rho 89)) :
    RvkFixedBaseLadder.FixedStepRel 89 (rho 28400)
      (seg30RvkAcc rho 89) (seg30RvkAcc rho (89 + 1)) := by
  have hbrow89 : (1*(rho 28400))*(1 + (-1)*(rho 28400)) = 0 := by
    simpa [Seg30.relationRow89] using r89
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX88 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY88 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr89 : RvkFixedBaseLadder.FixedStepRel 89 (rho 28400)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX88 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY88 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX89 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY89 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc89, seg30AccX89, seg30AccY89, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung89_wide (rho 28311 : Seg30.F) (rho 28400 : Seg30.F) (seg30AccX88 rho : Seg30.F) (seg30AccY88 rho : Seg30.F) (rho 29002 : Seg30.F) (rho 29003 : Seg30.F) (rho 29004 : Seg30.F) (rho 29005 : Seg30.F) (rho 29006 : Seg30.F) hinput
        (by simpa using seg30_prefix_89_v2 rho r692)
        (by simpa using seg30_prefix_89_addX rho r693)
        (by simpa using seg30_prefix_89_addY rho r694)
        (by simpa using seg30_prefix_89_selX rho r695)
        (by simpa using seg30_prefix_89_selY rho r696)
        hbrow89
  exact hr89

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


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

theorem seg30_prefix_step140 (rho : Nat -> Seg30.F)
    (r140 : Seg30.relationRow140 rho)
    (r947 : Seg30.relationRow947 rho)
    (r948 : Seg30.relationRow948 rho)
    (r949 : Seg30.relationRow949 rho)
    (r950 : Seg30.relationRow950 rho)
    (r951 : Seg30.relationRow951 rho)
    (hacc : onCurve (seg30RvkAcc rho 140)) :
    RvkFixedBaseLadder.FixedStepRel 140 (rho 28457)
      (seg30RvkAcc rho 140) (seg30RvkAcc rho (140 + 1)) := by
  have hbrow140 : (1*(rho 28457))*(1 + (-1)*(rho 28457)) = 0 := by
    simpa [Seg30.relationRow140] using r140
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX139 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY139 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr140 : RvkFixedBaseLadder.FixedStepRel 140 (rho 28457)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX139 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY139 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX140 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY140 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc140, seg30AccX140, seg30AccY140, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung140_wide (rho 28317 : Seg30.F) (rho 28457 : Seg30.F) (seg30AccX139 rho : Seg30.F) (seg30AccY139 rho : Seg30.F) (rho 29263 : Seg30.F) (rho 29264 : Seg30.F) (rho 29265 : Seg30.F) (rho 29266 : Seg30.F) (rho 29267 : Seg30.F) hinput
        (by simpa using seg30_prefix_140_v2 rho r947)
        (by simpa using seg30_prefix_140_addX rho r948)
        (by simpa using seg30_prefix_140_addY rho r949)
        (by simpa using seg30_prefix_140_selX rho r950)
        (by simpa using seg30_prefix_140_selY rho r951)
        hbrow140
  exact hr140

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


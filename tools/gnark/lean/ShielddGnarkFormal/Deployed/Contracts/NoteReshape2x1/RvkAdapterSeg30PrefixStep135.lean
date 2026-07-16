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

theorem seg30_prefix_step135 (rho : Nat -> Seg30.F)
    (r135 : Seg30.relationRow135 rho)
    (r922 : Seg30.relationRow922 rho)
    (r923 : Seg30.relationRow923 rho)
    (r924 : Seg30.relationRow924 rho)
    (r925 : Seg30.relationRow925 rho)
    (r926 : Seg30.relationRow926 rho)
    (hacc : onCurve (seg30RvkAcc rho 135)) :
    RvkFixedBaseLadder.FixedStepRel 135 (rho 28452)
      (seg30RvkAcc rho 135) (seg30RvkAcc rho (135 + 1)) := by
  have hbrow135 : (1*(rho 28452))*(1 + (-1)*(rho 28452)) = 0 := by
    simpa [Seg30.relationRow135] using r135
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX134 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY134 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr135 : RvkFixedBaseLadder.FixedStepRel 135 (rho 28452)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX134 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY134 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX135 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY135 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc135, seg30AccX135, seg30AccY135, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung135_wide (rho 28317 : Seg30.F) (rho 28452 : Seg30.F) (seg30AccX134 rho : Seg30.F) (seg30AccY134 rho : Seg30.F) (rho 29238 : Seg30.F) (rho 29239 : Seg30.F) (rho 29240 : Seg30.F) (rho 29241 : Seg30.F) (rho 29242 : Seg30.F) hinput
        (by simpa using seg30_prefix_135_v2 rho r922)
        (by simpa using seg30_prefix_135_addX rho r923)
        (by simpa using seg30_prefix_135_addY rho r924)
        (by simpa using seg30_prefix_135_selX rho r925)
        (by simpa using seg30_prefix_135_selY rho r926)
        hbrow135
  exact hr135

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


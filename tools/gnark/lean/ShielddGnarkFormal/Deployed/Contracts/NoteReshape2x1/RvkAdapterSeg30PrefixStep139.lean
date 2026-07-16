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

theorem seg30_prefix_step139 (rho : Nat -> Seg30.F)
    (r139 : Seg30.relationRow139 rho)
    (r942 : Seg30.relationRow942 rho)
    (r943 : Seg30.relationRow943 rho)
    (r944 : Seg30.relationRow944 rho)
    (r945 : Seg30.relationRow945 rho)
    (r946 : Seg30.relationRow946 rho)
    (hacc : onCurve (seg30RvkAcc rho 139)) :
    RvkFixedBaseLadder.FixedStepRel 139 (rho 28456)
      (seg30RvkAcc rho 139) (seg30RvkAcc rho (139 + 1)) := by
  have hbrow139 : (1*(rho 28456))*(1 + (-1)*(rho 28456)) = 0 := by
    simpa [Seg30.relationRow139] using r139
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX138 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY138 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr139 : RvkFixedBaseLadder.FixedStepRel 139 (rho 28456)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX138 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY138 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX139 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY139 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc139, seg30AccX139, seg30AccY139, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung139_wide (rho 28317 : Seg30.F) (rho 28456 : Seg30.F) (seg30AccX138 rho : Seg30.F) (seg30AccY138 rho : Seg30.F) (rho 29258 : Seg30.F) (rho 29259 : Seg30.F) (rho 29260 : Seg30.F) (rho 29261 : Seg30.F) (rho 29262 : Seg30.F) hinput
        (by simpa using seg30_prefix_139_v2 rho r942)
        (by simpa using seg30_prefix_139_addX rho r943)
        (by simpa using seg30_prefix_139_addY rho r944)
        (by simpa using seg30_prefix_139_selX rho r945)
        (by simpa using seg30_prefix_139_selY rho r946)
        hbrow139
  exact hr139

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


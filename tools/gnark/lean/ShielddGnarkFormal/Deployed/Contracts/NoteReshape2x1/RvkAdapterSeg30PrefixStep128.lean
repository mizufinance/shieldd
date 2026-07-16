import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas12
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

theorem seg30_prefix_step128 (rho : Nat -> Seg30.F)
    (r128 : Seg30.relationRow128 rho)
    (r887 : Seg30.relationRow887 rho)
    (r888 : Seg30.relationRow888 rho)
    (r889 : Seg30.relationRow889 rho)
    (r890 : Seg30.relationRow890 rho)
    (r891 : Seg30.relationRow891 rho)
    (hacc : onCurve (seg30RvkAcc rho 128)) :
    RvkFixedBaseLadder.FixedStepRel 128 (rho 28445)
      (seg30RvkAcc rho 128) (seg30RvkAcc rho (128 + 1)) := by
  have hbrow128 : (1*(rho 28445))*(1 + (-1)*(rho 28445)) = 0 := by
    simpa [Seg30.relationRow128] using r128
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX127 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY127 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr128 : RvkFixedBaseLadder.FixedStepRel 128 (rho 28445)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX127 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY127 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX128 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY128 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc128, seg30AccX128, seg30AccY128, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung128_wide (rho 28317 : Seg30.F) (rho 28445 : Seg30.F) (seg30AccX127 rho : Seg30.F) (seg30AccY127 rho : Seg30.F) (rho 29203 : Seg30.F) (rho 29204 : Seg30.F) (rho 29205 : Seg30.F) (rho 29206 : Seg30.F) (rho 29207 : Seg30.F) hinput
        (by simpa using seg30_prefix_128_v2 rho r887)
        (by simpa using seg30_prefix_128_addX rho r888)
        (by simpa using seg30_prefix_128_addY rho r889)
        (by simpa using seg30_prefix_128_selX rho r890)
        (by simpa using seg30_prefix_128_selY rho r891)
        hbrow128
  exact hr128

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


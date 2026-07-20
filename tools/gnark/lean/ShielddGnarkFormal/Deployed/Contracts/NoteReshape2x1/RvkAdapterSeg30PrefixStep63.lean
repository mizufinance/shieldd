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

theorem seg30_prefix_step63 (rho : Nat -> Seg30.F)
    (r63 : Seg30.relationRow63 rho)
    (r562 : Seg30.relationRow562 rho)
    (r563 : Seg30.relationRow563 rho)
    (r564 : Seg30.relationRow564 rho)
    (r565 : Seg30.relationRow565 rho)
    (r566 : Seg30.relationRow566 rho)
    (hacc : onCurve (seg30RvkAcc rho 63)) :
    RvkFixedBaseLadder.FixedStepRel 63 (rho 28374)
      (seg30RvkAcc rho 63) (seg30RvkAcc rho (63 + 1)) := by
  have hbrow63 : (1*(rho 28374))*(1 + (-1)*(rho 28374)) = 0 := by
    simpa [Seg30.relationRow63] using r63
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX62 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY62 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr63 : RvkFixedBaseLadder.FixedStepRel 63 (rho 28374)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX62 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY62 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX63 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY63 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc63, seg30AccX63, seg30AccY63, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung63_wide (rho 28311 : Seg30.F) (rho 28374 : Seg30.F) (seg30AccX62 rho : Seg30.F) (seg30AccY62 rho : Seg30.F) (rho 28872 : Seg30.F) (rho 28873 : Seg30.F) (rho 28874 : Seg30.F) (rho 28875 : Seg30.F) (rho 28876 : Seg30.F) hinput
        (by simpa using seg30_prefix_63_v2 rho r562)
        (by simpa using seg30_prefix_63_addX rho r563)
        (by simpa using seg30_prefix_63_addY rho r564)
        (by simpa using seg30_prefix_63_selX rho r565)
        (by simpa using seg30_prefix_63_selY rho r566)
        hbrow63
  exact hr63

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


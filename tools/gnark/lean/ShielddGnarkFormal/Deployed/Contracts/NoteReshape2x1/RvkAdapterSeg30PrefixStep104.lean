import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas10
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

theorem seg30_prefix_step104 (rho : Nat -> Seg30.F)
    (r104 : Seg30.relationRow104 rho)
    (r767 : Seg30.relationRow767 rho)
    (r768 : Seg30.relationRow768 rho)
    (r769 : Seg30.relationRow769 rho)
    (r770 : Seg30.relationRow770 rho)
    (r771 : Seg30.relationRow771 rho)
    (hacc : onCurve (seg30RvkAcc rho 104)) :
    RvkFixedBaseLadder.FixedStepRel 104 (rho 28415)
      (seg30RvkAcc rho 104) (seg30RvkAcc rho (104 + 1)) := by
  have hbrow104 : (1*(rho 28415))*(1 + (-1)*(rho 28415)) = 0 := by
    simpa [Seg30.relationRow104] using r104
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX103 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY103 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr104 : RvkFixedBaseLadder.FixedStepRel 104 (rho 28415)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX103 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY103 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX104 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY104 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc104, seg30AccX104, seg30AccY104, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung104_wide (rho 28311 : Seg30.F) (rho 28415 : Seg30.F) (seg30AccX103 rho : Seg30.F) (seg30AccY103 rho : Seg30.F) (rho 29077 : Seg30.F) (rho 29078 : Seg30.F) (rho 29079 : Seg30.F) (rho 29080 : Seg30.F) (rho 29081 : Seg30.F) hinput
        (by simpa using seg30_prefix_104_v2 rho r767)
        (by simpa using seg30_prefix_104_addX rho r768)
        (by simpa using seg30_prefix_104_addY rho r769)
        (by simpa using seg30_prefix_104_selX rho r770)
        (by simpa using seg30_prefix_104_selY rho r771)
        hbrow104
  exact hr104

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas10
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

theorem seg15_prefix_step104 (rho : Nat -> Seg15.F)
    (r104 : Seg15.relationRow104 rho)
    (r767 : Seg15.relationRow767 rho)
    (r768 : Seg15.relationRow768 rho)
    (r769 : Seg15.relationRow769 rho)
    (r770 : Seg15.relationRow770 rho)
    (r771 : Seg15.relationRow771 rho)
    (hacc : onCurve (seg15RvkAcc rho 104)) :
    RvkFixedBaseLadder.FixedStepRel 104 (rho 16234)
      (seg15RvkAcc rho 104) (seg15RvkAcc rho (104 + 1)) := by
  have hbrow104 : (1*(rho 16234))*(1 + (-1)*(rho 16234)) = 0 := by
    simpa [Seg15.relationRow104] using r104
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX103 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY103 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr104 : RvkFixedBaseLadder.FixedStepRel 104 (rho 16234)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX103 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY103 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16130 + seg15AccX104 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16130 + seg15AccY104 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc104, seg15AccX104, seg15AccY104, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung104_wide (rho 16130 : Seg15.F) (rho 16234 : Seg15.F) (seg15AccX103 rho : Seg15.F) (seg15AccY103 rho : Seg15.F) (rho 16896 : Seg15.F) (rho 16897 : Seg15.F) (rho 16898 : Seg15.F) (rho 16899 : Seg15.F) (rho 16900 : Seg15.F) hinput
        (by simpa using seg15_prefix_104_v2 rho r767)
        (by simpa using seg15_prefix_104_addX rho r768)
        (by simpa using seg15_prefix_104_addY rho r769)
        (by simpa using seg15_prefix_104_selX rho r770)
        (by simpa using seg15_prefix_104_selY rho r771)
        hbrow104
  exact hr104

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


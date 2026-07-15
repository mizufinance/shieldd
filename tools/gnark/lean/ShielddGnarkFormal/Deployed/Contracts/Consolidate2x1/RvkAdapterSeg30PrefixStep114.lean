import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30PrefixLemmas11
import ShielddGnarkFormal.RvkFixedGenInst1
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_step114 (rho : Nat -> Seg30.F)
    (r114 : Seg30.relationRow114 rho)
    (r817 : Seg30.relationRow817 rho)
    (r818 : Seg30.relationRow818 rho)
    (r819 : Seg30.relationRow819 rho)
    (r820 : Seg30.relationRow820 rho)
    (r821 : Seg30.relationRow821 rho)
    (hacc : onCurve (seg30RvkAcc rho 114)) :
    RvkFixedBaseLadder.FixedStepRel 114 (rho 28431)
      (seg30RvkAcc rho 114) (seg30RvkAcc rho (114 + 1)) := by
  have hbrow114 : (1*(rho 28431))*(1 + (-1)*(rho 28431)) = 0 := by
    simpa [Seg30.relationRow114] using r114
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX113 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY113 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr114 : RvkFixedBaseLadder.FixedStepRel 114 (rho 28431)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX113 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY113 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX114 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY114 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc114, seg30AccX114, seg30AccY114, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung114_wide (rho 28317 : Seg30.F) (rho 28431 : Seg30.F) (seg30AccX113 rho : Seg30.F) (seg30AccY113 rho : Seg30.F) (rho 29133 : Seg30.F) (rho 29134 : Seg30.F) (rho 29135 : Seg30.F) (rho 29136 : Seg30.F) (rho 29137 : Seg30.F) hinput
        (by simpa using seg30_prefix_114_v2 rho r817)
        (by simpa using seg30_prefix_114_addX rho r818)
        (by simpa using seg30_prefix_114_addY rho r819)
        (by simpa using seg30_prefix_114_selX rho r820)
        (by simpa using seg30_prefix_114_selY rho r821)
        hbrow114
  exact hr114

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


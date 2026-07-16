import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas11
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

theorem seg15_prefix_step114 (rho : Nat -> Seg15.F)
    (r114 : Seg15.relationRow114 rho)
    (r817 : Seg15.relationRow817 rho)
    (r818 : Seg15.relationRow818 rho)
    (r819 : Seg15.relationRow819 rho)
    (r820 : Seg15.relationRow820 rho)
    (r821 : Seg15.relationRow821 rho)
    (hacc : onCurve (seg15RvkAcc rho 114)) :
    RvkFixedBaseLadder.FixedStepRel 114 (rho 16250)
      (seg15RvkAcc rho 114) (seg15RvkAcc rho (114 + 1)) := by
  have hbrow114 : (1*(rho 16250))*(1 + (-1)*(rho 16250)) = 0 := by
    simpa [Seg15.relationRow114] using r114
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX113 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY113 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr114 : RvkFixedBaseLadder.FixedStepRel 114 (rho 16250)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX113 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY113 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX114 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY114 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc114, seg15AccX114, seg15AccY114, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung114_wide (rho 16136 : Seg15.F) (rho 16250 : Seg15.F) (seg15AccX113 rho : Seg15.F) (seg15AccY113 rho : Seg15.F) (rho 16952 : Seg15.F) (rho 16953 : Seg15.F) (rho 16954 : Seg15.F) (rho 16955 : Seg15.F) (rho 16956 : Seg15.F) hinput
        (by simpa using seg15_prefix_114_v2 rho r817)
        (by simpa using seg15_prefix_114_addX rho r818)
        (by simpa using seg15_prefix_114_addY rho r819)
        (by simpa using seg15_prefix_114_selX rho r820)
        (by simpa using seg15_prefix_114_selY rho r821)
        hbrow114
  exact hr114

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


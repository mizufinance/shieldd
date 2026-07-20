import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas7
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

theorem seg30_prefix_step78 (rho : Nat -> Seg30.F)
    (r78 : Seg30.relationRow78 rho)
    (r637 : Seg30.relationRow637 rho)
    (r638 : Seg30.relationRow638 rho)
    (r639 : Seg30.relationRow639 rho)
    (r640 : Seg30.relationRow640 rho)
    (r641 : Seg30.relationRow641 rho)
    (hacc : onCurve (seg30RvkAcc rho 78)) :
    RvkFixedBaseLadder.FixedStepRel 78 (rho 28389)
      (seg30RvkAcc rho 78) (seg30RvkAcc rho (78 + 1)) := by
  have hbrow78 : (1*(rho 28389))*(1 + (-1)*(rho 28389)) = 0 := by
    simpa [Seg30.relationRow78] using r78
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX77 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY77 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr78 : RvkFixedBaseLadder.FixedStepRel 78 (rho 28389)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX77 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY77 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX78 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY78 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc78, seg30AccX78, seg30AccY78, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung78_wide (rho 28311 : Seg30.F) (rho 28389 : Seg30.F) (seg30AccX77 rho : Seg30.F) (seg30AccY77 rho : Seg30.F) (rho 28947 : Seg30.F) (rho 28948 : Seg30.F) (rho 28949 : Seg30.F) (rho 28950 : Seg30.F) (rho 28951 : Seg30.F) hinput
        (by simpa using seg30_prefix_78_v2 rho r637)
        (by simpa using seg30_prefix_78_addX rho r638)
        (by simpa using seg30_prefix_78_addY rho r639)
        (by simpa using seg30_prefix_78_selX rho r640)
        (by simpa using seg30_prefix_78_selY rho r641)
        hbrow78
  exact hr78

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


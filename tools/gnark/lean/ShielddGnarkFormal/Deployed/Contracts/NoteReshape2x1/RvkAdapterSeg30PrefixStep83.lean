import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas8
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

theorem seg30_prefix_step83 (rho : Nat -> Seg30.F)
    (r83 : Seg30.relationRow83 rho)
    (r662 : Seg30.relationRow662 rho)
    (r663 : Seg30.relationRow663 rho)
    (r664 : Seg30.relationRow664 rho)
    (r665 : Seg30.relationRow665 rho)
    (r666 : Seg30.relationRow666 rho)
    (hacc : onCurve (seg30RvkAcc rho 83)) :
    RvkFixedBaseLadder.FixedStepRel 83 (rho 28400)
      (seg30RvkAcc rho 83) (seg30RvkAcc rho (83 + 1)) := by
  have hbrow83 : (1*(rho 28400))*(1 + (-1)*(rho 28400)) = 0 := by
    simpa [Seg30.relationRow83] using r83
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX82 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY82 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr83 : RvkFixedBaseLadder.FixedStepRel 83 (rho 28400)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX82 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY82 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX83 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY83 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc83, seg30AccX83, seg30AccY83, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung83_wide (rho 28317 : Seg30.F) (rho 28400 : Seg30.F) (seg30AccX82 rho : Seg30.F) (seg30AccY82 rho : Seg30.F) (rho 28978 : Seg30.F) (rho 28979 : Seg30.F) (rho 28980 : Seg30.F) (rho 28981 : Seg30.F) (rho 28982 : Seg30.F) hinput
        (by simpa using seg30_prefix_83_v2 rho r662)
        (by simpa using seg30_prefix_83_addX rho r663)
        (by simpa using seg30_prefix_83_addY rho r664)
        (by simpa using seg30_prefix_83_selX rho r665)
        (by simpa using seg30_prefix_83_selY rho r666)
        hbrow83
  exact hr83

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas11
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

theorem seg30_prefix_step113 (rho : Nat -> Seg30.F)
    (r113 : Seg30.relationRow113 rho)
    (r812 : Seg30.relationRow812 rho)
    (r813 : Seg30.relationRow813 rho)
    (r814 : Seg30.relationRow814 rho)
    (r815 : Seg30.relationRow815 rho)
    (r816 : Seg30.relationRow816 rho)
    (hacc : onCurve (seg30RvkAcc rho 113)) :
    RvkFixedBaseLadder.FixedStepRel 113 (rho 28430)
      (seg30RvkAcc rho 113) (seg30RvkAcc rho (113 + 1)) := by
  have hbrow113 : (1*(rho 28430))*(1 + (-1)*(rho 28430)) = 0 := by
    simpa [Seg30.relationRow113] using r113
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX112 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY112 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr113 : RvkFixedBaseLadder.FixedStepRel 113 (rho 28430)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX112 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY112 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX113 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY113 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc113, seg30AccX113, seg30AccY113, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung113_wide (rho 28317 : Seg30.F) (rho 28430 : Seg30.F) (seg30AccX112 rho : Seg30.F) (seg30AccY112 rho : Seg30.F) (rho 29128 : Seg30.F) (rho 29129 : Seg30.F) (rho 29130 : Seg30.F) (rho 29131 : Seg30.F) (rho 29132 : Seg30.F) hinput
        (by simpa using seg30_prefix_113_v2 rho r812)
        (by simpa using seg30_prefix_113_addX rho r813)
        (by simpa using seg30_prefix_113_addY rho r814)
        (by simpa using seg30_prefix_113_selX rho r815)
        (by simpa using seg30_prefix_113_selY rho r816)
        hbrow113
  exact hr113

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


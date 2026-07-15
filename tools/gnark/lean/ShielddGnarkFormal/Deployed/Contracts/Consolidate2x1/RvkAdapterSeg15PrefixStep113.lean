import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15PrefixLemmas11
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_step113 (rho : Nat -> Seg15.F)
    (r113 : Seg15.relationRow113 rho)
    (r812 : Seg15.relationRow812 rho)
    (r813 : Seg15.relationRow813 rho)
    (r814 : Seg15.relationRow814 rho)
    (r815 : Seg15.relationRow815 rho)
    (r816 : Seg15.relationRow816 rho)
    (hacc : onCurve (seg15RvkAcc rho 113)) :
    RvkFixedBaseLadder.FixedStepRel 113 (rho 16249)
      (seg15RvkAcc rho 113) (seg15RvkAcc rho (113 + 1)) := by
  have hbrow113 : (1*(rho 16249))*(1 + (-1)*(rho 16249)) = 0 := by
    simpa [Seg15.relationRow113] using r113
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX112 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY112 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr113 : RvkFixedBaseLadder.FixedStepRel 113 (rho 16249)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX112 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY112 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX113 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY113 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc113, seg15AccX113, seg15AccY113, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung113_wide (rho 16136 : Seg15.F) (rho 16249 : Seg15.F) (seg15AccX112 rho : Seg15.F) (seg15AccY112 rho : Seg15.F) (rho 16947 : Seg15.F) (rho 16948 : Seg15.F) (rho 16949 : Seg15.F) (rho 16950 : Seg15.F) (rho 16951 : Seg15.F) hinput
        (by simpa using seg15_prefix_113_v2 rho r812)
        (by simpa using seg15_prefix_113_addX rho r813)
        (by simpa using seg15_prefix_113_addY rho r814)
        (by simpa using seg15_prefix_113_selX rho r815)
        (by simpa using seg15_prefix_113_selY rho r816)
        hbrow113
  exact hr113

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


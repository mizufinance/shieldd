import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixLemmas14
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

theorem seg15_prefix_step148 (rho : Nat -> Seg15.F)
    (r148 : Seg15.relationRow148 rho)
    (r987 : Seg15.relationRow987 rho)
    (r988 : Seg15.relationRow988 rho)
    (r989 : Seg15.relationRow989 rho)
    (r990 : Seg15.relationRow990 rho)
    (r991 : Seg15.relationRow991 rho)
    (hacc : onCurve (seg15RvkAcc rho 148)) :
    RvkFixedBaseLadder.FixedStepRel 148 (rho 16284)
      (seg15RvkAcc rho 148) (seg15RvkAcc rho (148 + 1)) := by
  have hbrow148 : (1*(rho 16284))*(1 + (-1)*(rho 16284)) = 0 := by
    simpa [Seg15.relationRow148] using r148
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX147 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY147 rho : Seg15.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr148 : RvkFixedBaseLadder.FixedStepRel 148 (rho 16284)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX147 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY147 rho : Seg15.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX148 rho : Seg15.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY148 rho : Seg15.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst0.acc148, seg15AccX148, seg15AccY148, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst0.rung148_wide (rho 16136 : Seg15.F) (rho 16284 : Seg15.F) (seg15AccX147 rho : Seg15.F) (seg15AccY147 rho : Seg15.F) (rho 17122 : Seg15.F) (rho 17123 : Seg15.F) (rho 17124 : Seg15.F) (rho 17125 : Seg15.F) (rho 17126 : Seg15.F) hinput
        (by simpa using seg15_prefix_148_v2 rho r987)
        (by simpa using seg15_prefix_148_addX rho r988)
        (by simpa using seg15_prefix_148_addY rho r989)
        (by simpa using seg15_prefix_148_selX rho r990)
        (by simpa using seg15_prefix_148_selY rho r991)
        hbrow148
  exact hr148

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


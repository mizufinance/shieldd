import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixLemmas14
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

theorem seg30_prefix_step148 (rho : Nat -> Seg30.F)
    (r148 : Seg30.relationRow148 rho)
    (r987 : Seg30.relationRow987 rho)
    (r988 : Seg30.relationRow988 rho)
    (r989 : Seg30.relationRow989 rho)
    (r990 : Seg30.relationRow990 rho)
    (r991 : Seg30.relationRow991 rho)
    (hacc : onCurve (seg30RvkAcc rho 148)) :
    RvkFixedBaseLadder.FixedStepRel 148 (rho 28459)
      (seg30RvkAcc rho 148) (seg30RvkAcc rho (148 + 1)) := by
  have hbrow148 : (1*(rho 28459))*(1 + (-1)*(rho 28459)) = 0 := by
    simpa [Seg30.relationRow148] using r148
  have hinput : onCurve ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX147 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY147 rho : Seg30.F)⟩ : EdwardsBridge.Point)) := by
    exact hacc
  have hr148 : RvkFixedBaseLadder.FixedStepRel 148 (rho 28459)
      ((⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX147 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY147 rho : Seg30.F)⟩ : EdwardsBridge.Point)) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28311 + seg30AccX148 rho : Seg30.F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28311 + seg30AccY148 rho : Seg30.F)⟩ : EdwardsBridge.Point) := by
    simpa [Shieldd.GnarkFormal.RvkFixedGenInst1.acc148, seg30AccX148, seg30AccY148, add_assoc] using
      Shieldd.GnarkFormal.RvkFixedGenInst1.rung148_wide (rho 28311 : Seg30.F) (rho 28459 : Seg30.F) (seg30AccX147 rho : Seg30.F) (seg30AccY147 rho : Seg30.F) (rho 29297 : Seg30.F) (rho 29298 : Seg30.F) (rho 29299 : Seg30.F) (rho 29300 : Seg30.F) (rho 29301 : Seg30.F) hinput
        (by simpa using seg30_prefix_148_v2 rho r987)
        (by simpa using seg30_prefix_148_addX rho r988)
        (by simpa using seg30_prefix_148_addY rho r989)
        (by simpa using seg30_prefix_148_selX rho r990)
        (by simpa using seg30_prefix_148_selY rho r991)
        hbrow148
  exact hr148

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


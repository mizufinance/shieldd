import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarR0
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarR1
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarR2
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarR3
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarR4
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarR5
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarR6
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarR7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_scalar_ladder (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : seg34ScalarBits rho = bits.map Bool.toZMod)
    (hdiv : Specs.onCurveAt (rho 107) (rho 108)) :
    Shieldd.GnarkFormal.DtkBridge.dtkLadderK (seg34ScalarBits rho)
      (Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve
        (dtkOutX34 rho : Seg34.F) (dtkOutY34 rho : Seg34.F))
      251 0 ⟨0, 1⟩ ⟨(rho 107 : Seg34.F), (rho 108 : Seg34.F)⟩ := by
  have hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]! := by
    intro i hi
    rw [← seg34ScalarBits_get rho i hi, hbits]
    rw [getElem!_pos (bits.map Bool.toZMod) i (by simpa using hi), getElem!_pos bits i (by simpa using hi), List.Vector.getElem_map]
  have hstep : ∀ i, i < 251 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
    intro i hi hacc hcur
    rcases Nat.lt_or_ge i 32 with hb0|hb0
    · exact seg34_hstep_c0 rho h bits hbitAt i (by omega) hb0 hacc hcur
    rcases Nat.lt_or_ge i 64 with hb1|hb1
    · exact seg34_hstep_c1 rho h bits hbitAt i hb0 hb1 hacc hcur
    rcases Nat.lt_or_ge i 96 with hb2|hb2
    · exact seg34_hstep_c2 rho h bits hbitAt i hb1 hb2 hacc hcur
    rcases Nat.lt_or_ge i 128 with hb3|hb3
    · exact seg34_hstep_c3 rho h bits hbitAt i hb2 hb3 hacc hcur
    rcases Nat.lt_or_ge i 160 with hb4|hb4
    · exact seg34_hstep_c4 rho h bits hbitAt i hb3 hb4 hacc hcur
    rcases Nat.lt_or_ge i 192 with hb5|hb5
    · exact seg34_hstep_c5 rho h bits hbitAt i hb4 hb5 hacc hcur
    rcases Nat.lt_or_ge i 224 with hb6|hb6
    · exact seg34_hstep_c6 rho h bits hbitAt i hb5 hb6 hacc hcur
    exact seg34_hstep_c7 rho h bits hbitAt i hb6 hi hacc hcur
  have hfinal : EdwardsBridge.onCurve (seg34LadderAccState rho 251) →
      Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve
        (dtkOutX34 rho : Seg34.F) (dtkOutY34 rho : Seg34.F)
        vec![(seg34LadderAccState rho 251).x, (seg34LadderAccState rho 251).y,
          (seg34LadderCurState rho 251).x, (seg34LadderCurState rho 251).y] := by
    intro hacc
    unfold Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve GatesDef.eq
    refine ⟨rfl, rfl, ?_⟩
    apply Shieldd.GnarkFormal.Deployed.Dtk.outputCurveGates_of_onCurve
    have hacc' : EdwardsBridge.onCurve ⟨(seg34AccX251 rho : Seg34.F), (seg34AccY251 rho : Seg34.F)⟩ := hacc
    simpa only [dtkOutX34, dtkOutY34] using hacc'
  rw [hbits]
  apply Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_to_dtkLadderK
    bits _ (seg34LadderAccState rho) (seg34LadderCurState rho) hstep hfinal 251 0 (by omega)
  · show EdwardsBridge.onCurve ⟨(seg34AccX0 rho : Seg34.F), (seg34AccY0 rho : Seg34.F)⟩
    simpa only [seg34AccX0, seg34AccY0] using EdwardsBridge.identity_onCurve
  · show EdwardsBridge.onCurve ⟨(rho 107 : Seg34.F), (rho 108 : Seg34.F)⟩
    simpa only [Specs.onCurveAt] using hdiv

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

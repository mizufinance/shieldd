import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR0
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR1
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR2
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR3
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR4
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR5
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR6
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR7
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR8
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR9
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR10
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR11
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR12
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR13
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR14
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR15
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR16
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR17
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR18
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR19
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR20
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR21
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarR22

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_scalar_ladder (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : seg5ScalarBits rho = bits.map Bool.toZMod)
    (hdiv : Specs.onCurveAt (rho 17) (rho 18)) :
    Shieldd.GnarkFormal.DtkBridge.dtkLadderK (seg5ScalarBits rho)
      (Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve
        (dtkOutX5 rho : Seg5.F) (dtkOutY5 rho : Seg5.F))
      251 0 ⟨0, 1⟩ ⟨(rho 17 : Seg5.F), (rho 18 : Seg5.F)⟩ := by
  have hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]! := by
    intro i hi
    rw [← seg5ScalarBits_get rho i hi, hbits]
    rw [getElem!_pos (bits.map Bool.toZMod) i (by simpa using hi), getElem!_pos bits i (by simpa using hi), List.Vector.getElem_map]
  have hstep : ∀ i, i < 251 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
    intro i hi hacc hcur
    rcases Nat.lt_or_ge i 11 with hb0|hb0
    · exact seg5_hstep_c0 rho h bits hbitAt i (by omega) hb0 hacc hcur
    rcases Nat.lt_or_ge i 22 with hb1|hb1
    · exact seg5_hstep_c1 rho h bits hbitAt i hb0 hb1 hacc hcur
    rcases Nat.lt_or_ge i 33 with hb2|hb2
    · exact seg5_hstep_c2 rho h bits hbitAt i hb1 hb2 hacc hcur
    rcases Nat.lt_or_ge i 44 with hb3|hb3
    · exact seg5_hstep_c3 rho h bits hbitAt i hb2 hb3 hacc hcur
    rcases Nat.lt_or_ge i 55 with hb4|hb4
    · exact seg5_hstep_c4 rho h bits hbitAt i hb3 hb4 hacc hcur
    rcases Nat.lt_or_ge i 66 with hb5|hb5
    · exact seg5_hstep_c5 rho h bits hbitAt i hb4 hb5 hacc hcur
    rcases Nat.lt_or_ge i 77 with hb6|hb6
    · exact seg5_hstep_c6 rho h bits hbitAt i hb5 hb6 hacc hcur
    rcases Nat.lt_or_ge i 88 with hb7|hb7
    · exact seg5_hstep_c7 rho h bits hbitAt i hb6 hb7 hacc hcur
    rcases Nat.lt_or_ge i 99 with hb8|hb8
    · exact seg5_hstep_c8 rho h bits hbitAt i hb7 hb8 hacc hcur
    rcases Nat.lt_or_ge i 110 with hb9|hb9
    · exact seg5_hstep_c9 rho h bits hbitAt i hb8 hb9 hacc hcur
    rcases Nat.lt_or_ge i 121 with hb10|hb10
    · exact seg5_hstep_c10 rho h bits hbitAt i hb9 hb10 hacc hcur
    rcases Nat.lt_or_ge i 132 with hb11|hb11
    · exact seg5_hstep_c11 rho h bits hbitAt i hb10 hb11 hacc hcur
    rcases Nat.lt_or_ge i 143 with hb12|hb12
    · exact seg5_hstep_c12 rho h bits hbitAt i hb11 hb12 hacc hcur
    rcases Nat.lt_or_ge i 154 with hb13|hb13
    · exact seg5_hstep_c13 rho h bits hbitAt i hb12 hb13 hacc hcur
    rcases Nat.lt_or_ge i 165 with hb14|hb14
    · exact seg5_hstep_c14 rho h bits hbitAt i hb13 hb14 hacc hcur
    rcases Nat.lt_or_ge i 176 with hb15|hb15
    · exact seg5_hstep_c15 rho h bits hbitAt i hb14 hb15 hacc hcur
    rcases Nat.lt_or_ge i 187 with hb16|hb16
    · exact seg5_hstep_c16 rho h bits hbitAt i hb15 hb16 hacc hcur
    rcases Nat.lt_or_ge i 198 with hb17|hb17
    · exact seg5_hstep_c17 rho h bits hbitAt i hb16 hb17 hacc hcur
    rcases Nat.lt_or_ge i 209 with hb18|hb18
    · exact seg5_hstep_c18 rho h bits hbitAt i hb17 hb18 hacc hcur
    rcases Nat.lt_or_ge i 220 with hb19|hb19
    · exact seg5_hstep_c19 rho h bits hbitAt i hb18 hb19 hacc hcur
    rcases Nat.lt_or_ge i 231 with hb20|hb20
    · exact seg5_hstep_c20 rho h bits hbitAt i hb19 hb20 hacc hcur
    rcases Nat.lt_or_ge i 242 with hb21|hb21
    · exact seg5_hstep_c21 rho h bits hbitAt i hb20 hb21 hacc hcur
    exact seg5_hstep_c22 rho h bits hbitAt i hb21 hi hacc hcur
  have hfinal : EdwardsBridge.onCurve (seg5LadderAccState rho 251) →
      Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve
        (dtkOutX5 rho : Seg5.F) (dtkOutY5 rho : Seg5.F)
        vec![(seg5LadderAccState rho 251).x, (seg5LadderAccState rho 251).y,
          (seg5LadderCurState rho 251).x, (seg5LadderCurState rho 251).y] := by
    intro hacc
    unfold Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve GatesDef.eq
    refine ⟨rfl, rfl, ?_⟩
    apply Shieldd.GnarkFormal.Deployed.Dtk.outputCurveGates_of_onCurve
    have hacc' : EdwardsBridge.onCurve ⟨(seg5AccX251 rho : Seg5.F), (seg5AccY251 rho : Seg5.F)⟩ := hacc
    simpa only [dtkOutX5, dtkOutY5] using hacc'
  rw [hbits]
  apply Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_to_dtkLadderK
    bits _ (seg5LadderAccState rho) (seg5LadderCurState rho) hstep hfinal 251 0 (by omega)
  · show EdwardsBridge.onCurve ⟨(seg5AccX0 rho : Seg5.F), (seg5AccY0 rho : Seg5.F)⟩
    simpa only [seg5AccX0, seg5AccY0] using EdwardsBridge.identity_onCurve
  · show EdwardsBridge.onCurve ⟨(rho 17 : Seg5.F), (rho 18 : Seg5.F)⟩
    simpa only [Specs.onCurveAt] using hdiv

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

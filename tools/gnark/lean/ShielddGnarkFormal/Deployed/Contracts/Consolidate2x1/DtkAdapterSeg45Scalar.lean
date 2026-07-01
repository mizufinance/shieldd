import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR0
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR1
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR2
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR3
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR4
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR5
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR6
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR7
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR8
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR9
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR10
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR11
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR12
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR13
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR14
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR15
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR16
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR17
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR18
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR19
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR20
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR21
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarR22

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_scalar_ladder (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : seg45ScalarBits rho = bits.map Bool.toZMod)
    (hdiv : Specs.onCurveAt (rho 195) (rho 196)) :
    Shieldd.GnarkFormal.DtkBridge.dtkLadderK (seg45ScalarBits rho)
      (Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve
        (dtkOutX45 rho : Seg45.F) (dtkOutY45 rho : Seg45.F))
      251 0 ⟨0, 1⟩ ⟨(rho 195 : Seg45.F), (rho 196 : Seg45.F)⟩ := by
  have hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]! := by
    intro i hi
    rw [← seg45ScalarBits_get rho i hi, hbits]
    rw [getElem!_pos (bits.map Bool.toZMod) i (by simpa using hi), getElem!_pos bits i (by simpa using hi), List.Vector.getElem_map]
  have hstep : ∀ i, i < 251 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
    intro i hi hacc hcur
    rcases Nat.lt_or_ge i 11 with hb0|hb0
    · exact seg45_hstep_c0 rho h bits hbitAt i (by omega) hb0 hacc hcur
    rcases Nat.lt_or_ge i 22 with hb1|hb1
    · exact seg45_hstep_c1 rho h bits hbitAt i hb0 hb1 hacc hcur
    rcases Nat.lt_or_ge i 33 with hb2|hb2
    · exact seg45_hstep_c2 rho h bits hbitAt i hb1 hb2 hacc hcur
    rcases Nat.lt_or_ge i 44 with hb3|hb3
    · exact seg45_hstep_c3 rho h bits hbitAt i hb2 hb3 hacc hcur
    rcases Nat.lt_or_ge i 55 with hb4|hb4
    · exact seg45_hstep_c4 rho h bits hbitAt i hb3 hb4 hacc hcur
    rcases Nat.lt_or_ge i 66 with hb5|hb5
    · exact seg45_hstep_c5 rho h bits hbitAt i hb4 hb5 hacc hcur
    rcases Nat.lt_or_ge i 77 with hb6|hb6
    · exact seg45_hstep_c6 rho h bits hbitAt i hb5 hb6 hacc hcur
    rcases Nat.lt_or_ge i 88 with hb7|hb7
    · exact seg45_hstep_c7 rho h bits hbitAt i hb6 hb7 hacc hcur
    rcases Nat.lt_or_ge i 99 with hb8|hb8
    · exact seg45_hstep_c8 rho h bits hbitAt i hb7 hb8 hacc hcur
    rcases Nat.lt_or_ge i 110 with hb9|hb9
    · exact seg45_hstep_c9 rho h bits hbitAt i hb8 hb9 hacc hcur
    rcases Nat.lt_or_ge i 121 with hb10|hb10
    · exact seg45_hstep_c10 rho h bits hbitAt i hb9 hb10 hacc hcur
    rcases Nat.lt_or_ge i 132 with hb11|hb11
    · exact seg45_hstep_c11 rho h bits hbitAt i hb10 hb11 hacc hcur
    rcases Nat.lt_or_ge i 143 with hb12|hb12
    · exact seg45_hstep_c12 rho h bits hbitAt i hb11 hb12 hacc hcur
    rcases Nat.lt_or_ge i 154 with hb13|hb13
    · exact seg45_hstep_c13 rho h bits hbitAt i hb12 hb13 hacc hcur
    rcases Nat.lt_or_ge i 165 with hb14|hb14
    · exact seg45_hstep_c14 rho h bits hbitAt i hb13 hb14 hacc hcur
    rcases Nat.lt_or_ge i 176 with hb15|hb15
    · exact seg45_hstep_c15 rho h bits hbitAt i hb14 hb15 hacc hcur
    rcases Nat.lt_or_ge i 187 with hb16|hb16
    · exact seg45_hstep_c16 rho h bits hbitAt i hb15 hb16 hacc hcur
    rcases Nat.lt_or_ge i 198 with hb17|hb17
    · exact seg45_hstep_c17 rho h bits hbitAt i hb16 hb17 hacc hcur
    rcases Nat.lt_or_ge i 209 with hb18|hb18
    · exact seg45_hstep_c18 rho h bits hbitAt i hb17 hb18 hacc hcur
    rcases Nat.lt_or_ge i 220 with hb19|hb19
    · exact seg45_hstep_c19 rho h bits hbitAt i hb18 hb19 hacc hcur
    rcases Nat.lt_or_ge i 231 with hb20|hb20
    · exact seg45_hstep_c20 rho h bits hbitAt i hb19 hb20 hacc hcur
    rcases Nat.lt_or_ge i 242 with hb21|hb21
    · exact seg45_hstep_c21 rho h bits hbitAt i hb20 hb21 hacc hcur
    exact seg45_hstep_c22 rho h bits hbitAt i hb21 hi hacc hcur
  have hfinal : EdwardsBridge.onCurve (seg45LadderAccState rho 251) →
      Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve
        (dtkOutX45 rho : Seg45.F) (dtkOutY45 rho : Seg45.F)
        vec![(seg45LadderAccState rho 251).x, (seg45LadderAccState rho 251).y,
          (seg45LadderCurState rho 251).x, (seg45LadderCurState rho 251).y] := by
    intro hacc
    unfold Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve GatesDef.eq
    refine ⟨rfl, rfl, ?_⟩
    apply Shieldd.GnarkFormal.Deployed.Dtk.outputCurveGates_of_onCurve
    have hacc' : EdwardsBridge.onCurve ⟨(seg45AccX251 rho : Seg45.F), (seg45AccY251 rho : Seg45.F)⟩ := hacc
    simpa only [dtkOutX45, dtkOutY45] using hacc'
  rw [hbits]
  apply Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_to_dtkLadderK
    bits _ (seg45LadderAccState rho) (seg45LadderCurState rho) hstep hfinal 251 0 (by omega)
  · show EdwardsBridge.onCurve ⟨(seg45AccX0 rho : Seg45.F), (seg45AccY0 rho : Seg45.F)⟩
    simpa only [seg45AccX0, seg45AccY0] using EdwardsBridge.identity_onCurve
  · show EdwardsBridge.onCurve ⟨(rho 195 : Seg45.F), (rho 196 : Seg45.F)⟩
    simpa only [Specs.onCurveAt] using hdiv

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

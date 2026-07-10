import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48In1R0
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48In1R1
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48In1R2
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48In1R3
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48In1R4
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48In1R5
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48In1R6
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48In1R7
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48In1R8
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48In1R9
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48In1R10
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48In1R11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In1_ladder (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bits : List.Vector Bool 128)
    (hbits : seg48In1Bits rho = bits.map Bool.toZMod)
    (k : List.Vector Seg48.F 4 → Prop)
    (hk : k vec![(seg48In1AccState rho 128).x, (seg48In1AccState rho 128).y,
      (seg48In1CurState rho 128).x, (seg48In1CurState rho 128).y])
    (hbase : EdwardsBridge.onCurve ⟨rho 33530, rho 33532⟩) :
    Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbLadderK
      (seg48In1Bits rho) k 128 0 ⟨0, 1⟩
      ⟨rho 33530, rho 33532⟩ ∧
    EdwardsBridge.onCurve (seg48In1AccState rho 128) := by
  have hbitAt : ∀ i, i < 128 →
      rho (35322 + i) = Bool.toZMod bits[i]! := by
    intro i hi
    rw [← seg48In1Bits_get rho i hi, hbits]
    rw [getElem!_pos (bits.map Bool.toZMod) i (by simpa using hi),
      getElem!_pos bits i (by simpa using hi), List.Vector.getElem_map]
  have hstep : ∀ i, i < 128 →
      EdwardsBridge.onCurve (seg48In1AccState rho i) →
      EdwardsBridge.onCurve (seg48In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In1AccState rho i) (seg48In1CurState rho i)
        (seg48In1AccState rho (i + 1)) (seg48In1CurState rho (i + 1)) := by
    intro i hi hacc hcur
    rcases Nat.lt_or_ge i 11 with hb0|hb0
    · exact seg48In1_hstep_c0 rho h bits hbitAt i (by omega) hb0 hacc hcur
    rcases Nat.lt_or_ge i 22 with hb1|hb1
    · exact seg48In1_hstep_c1 rho h bits hbitAt i hb0 hb1 hacc hcur
    rcases Nat.lt_or_ge i 33 with hb2|hb2
    · exact seg48In1_hstep_c2 rho h bits hbitAt i hb1 hb2 hacc hcur
    rcases Nat.lt_or_ge i 44 with hb3|hb3
    · exact seg48In1_hstep_c3 rho h bits hbitAt i hb2 hb3 hacc hcur
    rcases Nat.lt_or_ge i 55 with hb4|hb4
    · exact seg48In1_hstep_c4 rho h bits hbitAt i hb3 hb4 hacc hcur
    rcases Nat.lt_or_ge i 66 with hb5|hb5
    · exact seg48In1_hstep_c5 rho h bits hbitAt i hb4 hb5 hacc hcur
    rcases Nat.lt_or_ge i 77 with hb6|hb6
    · exact seg48In1_hstep_c6 rho h bits hbitAt i hb5 hb6 hacc hcur
    rcases Nat.lt_or_ge i 88 with hb7|hb7
    · exact seg48In1_hstep_c7 rho h bits hbitAt i hb6 hb7 hacc hcur
    rcases Nat.lt_or_ge i 99 with hb8|hb8
    · exact seg48In1_hstep_c8 rho h bits hbitAt i hb7 hb8 hacc hcur
    rcases Nat.lt_or_ge i 110 with hb9|hb9
    · exact seg48In1_hstep_c9 rho h bits hbitAt i hb8 hb9 hacc hcur
    rcases Nat.lt_or_ge i 121 with hb10|hb10
    · exact seg48In1_hstep_c10 rho h bits hbitAt i hb9 hb10 hacc hcur
    exact seg48In1_hstep_c11 rho h bits hbitAt i hb10 hi hacc hcur
  constructor
  · rw [hbits]
    apply Shieldd.GnarkFormal.Deployed.NetBalance.stateTrace_to_nbLadderK
      bits k (seg48In1AccState rho) (seg48In1CurState rho) hstep
      (by intro _; exact hk) 128 0 (by omega)
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
  · exact Shieldd.GnarkFormal.Deployed.NetBalance.stateTrace_final_onCurve
      bits (seg48In1AccState rho) (seg48In1CurState rho) hstep
      EdwardsBridge.identity_onCurve hbase

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Out0R0
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Out0R1
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Out0R2
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Out0R3
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Out0R4
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Out0R5
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Out0R6
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Out0R7
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Out0R8
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Out0R9
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Out0R10
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Out0R11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_ladder (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bits : List.Vector Bool 128)
    (hbits : seg52Out0Bits rho = bits.map Bool.toZMod)
    (k : List.Vector Seg52.F 4 → Prop)
    (hk : k vec![(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y,
      (seg52Out0CurState rho 128).x, (seg52Out0CurState rho 128).y])
    (hbase : EdwardsBridge.onCurve ⟨rho 45162, rho 45164⟩) :
    Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbLadderK
      (seg52Out0Bits rho) k 128 0 ⟨0, 1⟩
      ⟨rho 45162, rho 45164⟩ ∧
    EdwardsBridge.onCurve (seg52Out0AccState rho 128) := by
  have hbitAt : ∀ i, i < 128 →
      rho (48746 + i) = Bool.toZMod bits[i]! := by
    intro i hi
    rw [← seg52Out0Bits_get rho i hi, hbits]
    rw [getElem!_pos (bits.map Bool.toZMod) i (by simpa using hi),
      getElem!_pos bits i (by simpa using hi), List.Vector.getElem_map]
  have hstep : ∀ i, i < 128 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
    intro i hi hacc hcur
    rcases Nat.lt_or_ge i 11 with hb0|hb0
    · exact seg52Out0_hstep_c0 rho h bits hbitAt i (by omega) hb0 hacc hcur
    rcases Nat.lt_or_ge i 22 with hb1|hb1
    · exact seg52Out0_hstep_c1 rho h bits hbitAt i hb0 hb1 hacc hcur
    rcases Nat.lt_or_ge i 33 with hb2|hb2
    · exact seg52Out0_hstep_c2 rho h bits hbitAt i hb1 hb2 hacc hcur
    rcases Nat.lt_or_ge i 44 with hb3|hb3
    · exact seg52Out0_hstep_c3 rho h bits hbitAt i hb2 hb3 hacc hcur
    rcases Nat.lt_or_ge i 55 with hb4|hb4
    · exact seg52Out0_hstep_c4 rho h bits hbitAt i hb3 hb4 hacc hcur
    rcases Nat.lt_or_ge i 66 with hb5|hb5
    · exact seg52Out0_hstep_c5 rho h bits hbitAt i hb4 hb5 hacc hcur
    rcases Nat.lt_or_ge i 77 with hb6|hb6
    · exact seg52Out0_hstep_c6 rho h bits hbitAt i hb5 hb6 hacc hcur
    rcases Nat.lt_or_ge i 88 with hb7|hb7
    · exact seg52Out0_hstep_c7 rho h bits hbitAt i hb6 hb7 hacc hcur
    rcases Nat.lt_or_ge i 99 with hb8|hb8
    · exact seg52Out0_hstep_c8 rho h bits hbitAt i hb7 hb8 hacc hcur
    rcases Nat.lt_or_ge i 110 with hb9|hb9
    · exact seg52Out0_hstep_c9 rho h bits hbitAt i hb8 hb9 hacc hcur
    rcases Nat.lt_or_ge i 121 with hb10|hb10
    · exact seg52Out0_hstep_c10 rho h bits hbitAt i hb9 hb10 hacc hcur
    exact seg52Out0_hstep_c11 rho h bits hbitAt i hb10 hi hacc hcur
  constructor
  · rw [hbits]
    apply Shieldd.GnarkFormal.Deployed.NetBalance.stateTrace_to_nbLadderK
      bits k (seg52Out0AccState rho) (seg52Out0CurState rho) hstep
      (by intro _; exact hk) 128 0 (by omega)
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
  · exact Shieldd.GnarkFormal.Deployed.NetBalance.stateTrace_final_onCurve
      bits (seg52Out0AccState rho) (seg52Out0CurState rho) hstep
      EdwardsBridge.identity_onCurve hbase

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

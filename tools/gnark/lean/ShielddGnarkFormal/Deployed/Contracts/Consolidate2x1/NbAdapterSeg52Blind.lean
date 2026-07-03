import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR0
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR1
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR2
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR3
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR4
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR5
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR6
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR7
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR8
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR9
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR10
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR11
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR12
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR13
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR14
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR15
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR16
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR17
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR18
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR19
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR20
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR21
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR22
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR23
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindR24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_ladder (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : seg52BlindBits rho = bits.map Bool.toZMod)
    (k : List.Vector Seg52.F 4 → Prop)
    (hk : k vec![(seg52BlindAccState rho 251).x,
      (seg52BlindAccState rho 251).y,
      (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 251).x,
      (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 251).y]) :
    Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbLadderK
      (seg52BlindBits rho) k 251 0 ⟨0, 1⟩
      Shieldd.GnarkFormal.Deployed.NetBalance.blindGen ∧
    EdwardsBridge.onCurve (seg52BlindAccState rho 251) := by
  have hbitAt : ∀ i, i < 251 →
      rho (51178 + i) = Bool.toZMod bits[i]! := by
    intro i hi
    rw [← seg52BlindBits_get rho i hi, hbits]
    rw [getElem!_pos (bits.map Bool.toZMod) i (by simpa using hi),
      getElem!_pos bits i (by simpa using hi), List.Vector.getElem_map]
  have hstep : ∀ i, i < 251 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
    intro i hi hacc
    by_cases hzero : i = 0
    · subst i
      have hb0 : rho 51178 = Bool.toZMod bits[0]! := by
        simpa using hbitAt 0 (by omega)
      simpa [seg52BlindAccState, hb0] using
        (Shieldd.GnarkFormal.Deployed.NetBalance.seedStepRel bits[0]!)
    ·
      rcases Nat.lt_or_ge i 11 with hb0|hb0
      · exact seg52Blind_hstep_c0 rho h bits hbitAt i (by omega) hb0 hacc
      rcases Nat.lt_or_ge i 21 with hb1|hb1
      · exact seg52Blind_hstep_c1 rho h bits hbitAt i hb0 hb1 hacc
      rcases Nat.lt_or_ge i 31 with hb2|hb2
      · exact seg52Blind_hstep_c2 rho h bits hbitAt i hb1 hb2 hacc
      rcases Nat.lt_or_ge i 41 with hb3|hb3
      · exact seg52Blind_hstep_c3 rho h bits hbitAt i hb2 hb3 hacc
      rcases Nat.lt_or_ge i 51 with hb4|hb4
      · exact seg52Blind_hstep_c4 rho h bits hbitAt i hb3 hb4 hacc
      rcases Nat.lt_or_ge i 61 with hb5|hb5
      · exact seg52Blind_hstep_c5 rho h bits hbitAt i hb4 hb5 hacc
      rcases Nat.lt_or_ge i 71 with hb6|hb6
      · exact seg52Blind_hstep_c6 rho h bits hbitAt i hb5 hb6 hacc
      rcases Nat.lt_or_ge i 81 with hb7|hb7
      · exact seg52Blind_hstep_c7 rho h bits hbitAt i hb6 hb7 hacc
      rcases Nat.lt_or_ge i 91 with hb8|hb8
      · exact seg52Blind_hstep_c8 rho h bits hbitAt i hb7 hb8 hacc
      rcases Nat.lt_or_ge i 101 with hb9|hb9
      · exact seg52Blind_hstep_c9 rho h bits hbitAt i hb8 hb9 hacc
      rcases Nat.lt_or_ge i 111 with hb10|hb10
      · exact seg52Blind_hstep_c10 rho h bits hbitAt i hb9 hb10 hacc
      rcases Nat.lt_or_ge i 121 with hb11|hb11
      · exact seg52Blind_hstep_c11 rho h bits hbitAt i hb10 hb11 hacc
      rcases Nat.lt_or_ge i 131 with hb12|hb12
      · exact seg52Blind_hstep_c12 rho h bits hbitAt i hb11 hb12 hacc
      rcases Nat.lt_or_ge i 141 with hb13|hb13
      · exact seg52Blind_hstep_c13 rho h bits hbitAt i hb12 hb13 hacc
      rcases Nat.lt_or_ge i 151 with hb14|hb14
      · exact seg52Blind_hstep_c14 rho h bits hbitAt i hb13 hb14 hacc
      rcases Nat.lt_or_ge i 161 with hb15|hb15
      · exact seg52Blind_hstep_c15 rho h bits hbitAt i hb14 hb15 hacc
      rcases Nat.lt_or_ge i 171 with hb16|hb16
      · exact seg52Blind_hstep_c16 rho h bits hbitAt i hb15 hb16 hacc
      rcases Nat.lt_or_ge i 181 with hb17|hb17
      · exact seg52Blind_hstep_c17 rho h bits hbitAt i hb16 hb17 hacc
      rcases Nat.lt_or_ge i 191 with hb18|hb18
      · exact seg52Blind_hstep_c18 rho h bits hbitAt i hb17 hb18 hacc
      rcases Nat.lt_or_ge i 201 with hb19|hb19
      · exact seg52Blind_hstep_c19 rho h bits hbitAt i hb18 hb19 hacc
      rcases Nat.lt_or_ge i 211 with hb20|hb20
      · exact seg52Blind_hstep_c20 rho h bits hbitAt i hb19 hb20 hacc
      rcases Nat.lt_or_ge i 221 with hb21|hb21
      · exact seg52Blind_hstep_c21 rho h bits hbitAt i hb20 hb21 hacc
      rcases Nat.lt_or_ge i 231 with hb22|hb22
      · exact seg52Blind_hstep_c22 rho h bits hbitAt i hb21 hb22 hacc
      rcases Nat.lt_or_ge i 241 with hb23|hb23
      · exact seg52Blind_hstep_c23 rho h bits hbitAt i hb22 hb23 hacc
      exact seg52Blind_hstep_c24 rho h bits hbitAt i hb23 hi hacc
  constructor
  · rw [hbits]
    apply Shieldd.GnarkFormal.Deployed.NetBalance.fixedTrace_to_nbLadderK
      bits k (seg52BlindAccState rho) hstep (by intro _; exact hk)
      251 0 (by omega)
    exact EdwardsBridge.identity_onCurve
  · exact Shieldd.GnarkFormal.Deployed.NetBalance.fixedTrace_final_onCurve
      bits (seg52BlindAccState rho) hstep EdwardsBridge.identity_onCurve

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

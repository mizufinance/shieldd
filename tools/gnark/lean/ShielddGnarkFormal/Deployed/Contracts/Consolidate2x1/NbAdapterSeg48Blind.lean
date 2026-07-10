import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR0
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR1
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR2
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR3
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR4
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR5
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR6
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR7
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR8
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR9
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR10
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR11
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR12
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR13
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR14
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR15
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR16
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR17
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR18
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR19
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR20
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR21
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR22
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR23
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindR24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_ladder (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : seg48BlindBits rho = bits.map Bool.toZMod)
    (k : List.Vector Seg48.F 4 → Prop)
    (hk : k vec![(seg48BlindAccState rho 251).x,
      (seg48BlindAccState rho 251).y,
      (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 251).x,
      (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 251).y]) :
    Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbLadderK
      (seg48BlindBits rho) k 251 0 ⟨0, 1⟩
      Shieldd.GnarkFormal.Deployed.NetBalance.blindGen ∧
    EdwardsBridge.onCurve (seg48BlindAccState rho 251) := by
  have hbitAt : ∀ i, i < 251 →
      rho (38906 + i) = Bool.toZMod bits[i]! := by
    intro i hi
    rw [← seg48BlindBits_get rho i hi, hbits]
    rw [getElem!_pos (bits.map Bool.toZMod) i (by simpa using hi),
      getElem!_pos bits i (by simpa using hi), List.Vector.getElem_map]
  have hstep : ∀ i, i < 251 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
    intro i hi hacc
    by_cases hzero : i = 0
    · subst i
      have hb0 : rho 38906 = Bool.toZMod bits[0]! := by
        simpa using hbitAt 0 (by omega)
      simpa [seg48BlindAccState, hb0] using
        (Shieldd.GnarkFormal.Deployed.NetBalance.seedStepRel bits[0]!)
    ·
      rcases Nat.lt_or_ge i 11 with hb0|hb0
      · exact seg48Blind_hstep_c0 rho h bits hbitAt i (by omega) hb0 hacc
      rcases Nat.lt_or_ge i 21 with hb1|hb1
      · exact seg48Blind_hstep_c1 rho h bits hbitAt i hb0 hb1 hacc
      rcases Nat.lt_or_ge i 31 with hb2|hb2
      · exact seg48Blind_hstep_c2 rho h bits hbitAt i hb1 hb2 hacc
      rcases Nat.lt_or_ge i 41 with hb3|hb3
      · exact seg48Blind_hstep_c3 rho h bits hbitAt i hb2 hb3 hacc
      rcases Nat.lt_or_ge i 51 with hb4|hb4
      · exact seg48Blind_hstep_c4 rho h bits hbitAt i hb3 hb4 hacc
      rcases Nat.lt_or_ge i 61 with hb5|hb5
      · exact seg48Blind_hstep_c5 rho h bits hbitAt i hb4 hb5 hacc
      rcases Nat.lt_or_ge i 71 with hb6|hb6
      · exact seg48Blind_hstep_c6 rho h bits hbitAt i hb5 hb6 hacc
      rcases Nat.lt_or_ge i 81 with hb7|hb7
      · exact seg48Blind_hstep_c7 rho h bits hbitAt i hb6 hb7 hacc
      rcases Nat.lt_or_ge i 91 with hb8|hb8
      · exact seg48Blind_hstep_c8 rho h bits hbitAt i hb7 hb8 hacc
      rcases Nat.lt_or_ge i 101 with hb9|hb9
      · exact seg48Blind_hstep_c9 rho h bits hbitAt i hb8 hb9 hacc
      rcases Nat.lt_or_ge i 111 with hb10|hb10
      · exact seg48Blind_hstep_c10 rho h bits hbitAt i hb9 hb10 hacc
      rcases Nat.lt_or_ge i 121 with hb11|hb11
      · exact seg48Blind_hstep_c11 rho h bits hbitAt i hb10 hb11 hacc
      rcases Nat.lt_or_ge i 131 with hb12|hb12
      · exact seg48Blind_hstep_c12 rho h bits hbitAt i hb11 hb12 hacc
      rcases Nat.lt_or_ge i 141 with hb13|hb13
      · exact seg48Blind_hstep_c13 rho h bits hbitAt i hb12 hb13 hacc
      rcases Nat.lt_or_ge i 151 with hb14|hb14
      · exact seg48Blind_hstep_c14 rho h bits hbitAt i hb13 hb14 hacc
      rcases Nat.lt_or_ge i 161 with hb15|hb15
      · exact seg48Blind_hstep_c15 rho h bits hbitAt i hb14 hb15 hacc
      rcases Nat.lt_or_ge i 171 with hb16|hb16
      · exact seg48Blind_hstep_c16 rho h bits hbitAt i hb15 hb16 hacc
      rcases Nat.lt_or_ge i 181 with hb17|hb17
      · exact seg48Blind_hstep_c17 rho h bits hbitAt i hb16 hb17 hacc
      rcases Nat.lt_or_ge i 191 with hb18|hb18
      · exact seg48Blind_hstep_c18 rho h bits hbitAt i hb17 hb18 hacc
      rcases Nat.lt_or_ge i 201 with hb19|hb19
      · exact seg48Blind_hstep_c19 rho h bits hbitAt i hb18 hb19 hacc
      rcases Nat.lt_or_ge i 211 with hb20|hb20
      · exact seg48Blind_hstep_c20 rho h bits hbitAt i hb19 hb20 hacc
      rcases Nat.lt_or_ge i 221 with hb21|hb21
      · exact seg48Blind_hstep_c21 rho h bits hbitAt i hb20 hb21 hacc
      rcases Nat.lt_or_ge i 231 with hb22|hb22
      · exact seg48Blind_hstep_c22 rho h bits hbitAt i hb21 hb22 hacc
      rcases Nat.lt_or_ge i 241 with hb23|hb23
      · exact seg48Blind_hstep_c23 rho h bits hbitAt i hb22 hb23 hacc
      exact seg48Blind_hstep_c24 rho h bits hbitAt i hb23 hi hacc
  constructor
  · rw [hbits]
    apply Shieldd.GnarkFormal.Deployed.NetBalance.fixedTrace_to_nbLadderK
      bits k (seg48BlindAccState rho) hstep (by intro _; exact hk)
      251 0 (by omega)
    exact EdwardsBridge.identity_onCurve
  · exact Shieldd.GnarkFormal.Deployed.NetBalance.fixedTrace_final_onCurve
      bits (seg48BlindAccState rho) hstep EdwardsBridge.identity_onCurve

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

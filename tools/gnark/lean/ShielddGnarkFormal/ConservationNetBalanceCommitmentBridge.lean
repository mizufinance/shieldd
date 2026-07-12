import ShielddGnarkFormal.ScalarMulBridge
import ShielddGnarkFormal.NetBalanceCommitmentBridge
import ShielddGnarkFormal.Decaf377CircuitDefs
import ShielddGnarkFormal.Extracted.ConservationNetBalanceCommitment
import ProvenZk.Lemmas
import ProvenZk.Ext.Vector

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSectionVars false

/-!
Bridge for the extracted `ConservationNetBalanceCommitment` circuit (NB-1):
three 128-bit range decompositions (ZK-ASSUME-AMOUNT-RANGE), one linear
conservation assert `input0 + input1 = output`, and a 251-bit blinding ladder
over the fixed blinding generator pinned to the outputs. The ladder reuses
`NetBalanceCommitmentBridge.nbLadderK`/`nbLadder` (the extractor's
`scalarMulStep_ladder` is definitionally the same fold).
-/

namespace Shieldd.GnarkFormal.ConservationNetBalanceCommitmentBridge

open Shieldd.GnarkFormal.ScalarMulBridge
open Shieldd.GnarkFormal.NetBalanceCommitmentBridge
open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)

abbrev F := EdwardsBridge.F

variable [Fact (Nat.Prime Order)]

instance : Fact (Nat.Prime Extracted.ConservationNetBalanceCommitment.Order) := ‹_›
instance : Fact (Nat.Prime Extracted.NetBalanceCommitment.Order) := ‹_›

/-- Continuation form of the extracted circuit with the extractor's
`scalarMulStep_ladder` re-seated on `nbLadderK`, so `nbLadder` applies. -/
def conservBody
    (Input0Amount Input1Amount OutputAmount BalanceBlinding OutX OutY : F) : Prop :=
    ∃ b1, Extracted.ConservationNetBalanceCommitment.Gates.to_binary Input0Amount 128 b1 ∧
    ∃gate_1, gate_1 = Extracted.ConservationNetBalanceCommitment.Gates.add (0:F) Input0Amount ∧
    ∃ b2, Extracted.ConservationNetBalanceCommitment.Gates.to_binary Input1Amount 128 b2 ∧
    ∃gate_3, gate_3 = Extracted.ConservationNetBalanceCommitment.Gates.add gate_1 Input1Amount ∧
    ∃ b3, Extracted.ConservationNetBalanceCommitment.Gates.to_binary OutputAmount 128 b3 ∧
    ∃gate_5, gate_5 = Extracted.ConservationNetBalanceCommitment.Gates.add (0:F) OutputAmount ∧
    Extracted.ConservationNetBalanceCommitment.Gates.eq gate_3 gate_5 ∧
    ∃gate_7, Extracted.ConservationNetBalanceCommitment.Gates.to_binary BalanceBlinding 251 gate_7 ∧
    nbLadderK gate_7 (fun s =>
        Extracted.ConservationNetBalanceCommitment.Gates.eq s[0] OutX ∧
        Extracted.ConservationNetBalanceCommitment.Gates.eq s[1] OutY ∧
        True)
      251 0 ⟨0, 1⟩
      ⟨(4661681602708190761543544705274244814260880986867766715334030151044279151219 : F),
       (4337336842509898676347982752646772244181661588533917621717979456142867120378 : F)⟩

/-- Structural restructuring of the extracted circuit into the continuation
form. Definitional: both sides reduce to the same fold of `scalarMulStep`. -/
theorem conserv_circuit_eq
    (Input0Amount Input1Amount OutputAmount BalanceBlinding OutX OutY : F) :
    Extracted.ConservationNetBalanceCommitment.circuit Input0Amount Input1Amount
        OutputAmount BalanceBlinding OutX OutY ↔
      conservBody Input0Amount Input1Amount OutputAmount BalanceBlinding OutX OutY := by
  unfold Extracted.ConservationNetBalanceCommitment.circuit conservBody
    Extracted.ConservationNetBalanceCommitment.scalarMulStep_ladder nbLadderK
  simp (config := { maxSteps := 4000000 }) only
    [Extracted.ConservationNetBalanceCommitment.Gates,
     Extracted.NetBalanceCommitment.Gates, GatesGnark9, GatesGnark8]
  rfl

/-- Range fact for one 128-bit decomposition conjunct. -/
theorem range_of_to_binary {scalar : F} {nBits : ℕ} (hpow : 2 ^ nBits < Order)
    (h : ∃ b, Extracted.ConservationNetBalanceCommitment.Gates.to_binary scalar nBits b) :
    scalar.val < 2 ^ nBits := by
  obtain ⟨b, hb⟩ := h
  simp only [Extracted.ConservationNetBalanceCommitment.Gates, GatesGnark9, GatesGnark8] at hb
  rw [Gates.to_binary_iff_eq_fin_to_bits_le_of_pow_length_lt (N := Order) hpow] at hb
  exact hb.1

private theorem conserv_circuit_sound_aux
    (Input0Amount Input1Amount OutputAmount BalanceBlinding OutX OutY : F)
    (h : Extracted.ConservationNetBalanceCommitment.circuit Input0Amount Input1Amount
        OutputAmount BalanceBlinding OutX OutY) :
    Input0Amount.val < 2 ^ 128 ∧ Input1Amount.val < 2 ^ 128 ∧
    OutputAmount.val < 2 ^ 128 ∧
    Input0Amount + Input1Amount = OutputAmount ∧
    Decaf377Assumptions.Point.mk OutX OutY =
      Decaf377Assumptions.scalarMulLE 251 Decaf377Assumptions.valueBlindingGenerator
        BalanceBlinding ∧
    EdwardsBridge.onCurve ⟨OutX, OutY⟩ := by
  rw [conserv_circuit_eq] at h
  obtain ⟨b1, hb1, g1, hg1, b2, hb2, g3, hg3, b3, hb3, g5, hg5, hcons, hladder⟩ := h
  refine ⟨range_of_to_binary pow128_lt_order ⟨b1, hb1⟩,
    range_of_to_binary pow128_lt_order ⟨b2, hb2⟩,
    range_of_to_binary pow128_lt_order ⟨b3, hb3⟩, ?_, ?_⟩
  · simp only [Extracted.ConservationNetBalanceCommitment.Gates, GatesGnark9, GatesGnark8,
      GatesDef.add, GatesDef.eq] at hg1 hg3 hg5 hcons
    subst hg1 hg3 hg5
    linear_combination hcons
  · obtain ⟨P, hPon, hPeq, z, w, hk⟩ :=
      nbLadder pow251_lt_order blindGen_onCurve hladder
    simp only [Extracted.ConservationNetBalanceCommitment.Gates, GatesGnark9, GatesGnark8,
      GatesDef.eq] at hk
    obtain ⟨hx, hy, -⟩ := hk
    have hbg : toA (⟨(4661681602708190761543544705274244814260880986867766715334030151044279151219 : F),
        (4337336842509898676347982752646772244181661588533917621717979456142867120378 : F)⟩ :
        EdwardsBridge.Point) = Decaf377Assumptions.valueBlindingGenerator := rfl
    constructor
    · have : Decaf377Assumptions.Point.mk OutX OutY = toA P := by
        rw [← hx, ← hy]; rfl
      rw [this, hPeq, hbg]
    · have : (⟨OutX, OutY⟩ : EdwardsBridge.Point) = P := by
        cases P; simp only [EdwardsBridge.Point.mk.injEq]
        exact ⟨hx.symm ▸ rfl, hy.symm ▸ rfl⟩
      rw [this]; exact hPon

/-- `Decaf377Assumptions` predicate-level wrapper (manifest bridge theorem). -/
theorem decaf377_conservationNetBalanceCommitment_sound
    (input0 input1 output balanceBlinding : F) (out : Decaf377Assumptions.Point)
    (h : Decaf377Assumptions.ConservationNetBalanceCommitmentCircuit
      input0 input1 output balanceBlinding out) :
    Decaf377Assumptions.ConservationNetBalanceCommitmentSpec
      input0 input1 output balanceBlinding out := by
  obtain ⟨h0, h1, h2, hsum, hout, -⟩ :=
    conserv_circuit_sound_aux input0 input1 output balanceBlinding out.x out.y h
  refine ⟨h0, h1, h2, hsum, ?_⟩
  cases out; exact hout

/-- `Decaf377Assumptions` predicate-level on-curve wrapper. -/
theorem decaf377_conservationNetBalanceCommitment_onCurve
    (input0 input1 output balanceBlinding : F) (out : Decaf377Assumptions.Point)
    (h : Decaf377Assumptions.ConservationNetBalanceCommitmentCircuit
      input0 input1 output balanceBlinding out) :
    EdwardsBridge.onCurve ⟨out.x, out.y⟩ :=
  (conserv_circuit_sound_aux input0 input1 output balanceBlinding out.x out.y h).2.2.2.2.2

end Shieldd.GnarkFormal.ConservationNetBalanceCommitmentBridge

import ShielddGnarkFormal.Protocol.Transfer.Concrete
import ShielddGnarkFormal.ScalarMulBridge
import ShielddGnarkFormal.DtkBridge.SemanticsB
import ShielddGnarkFormal.ChoiceFreeBinary
import ShielddGnarkFormal.RvkBridge
import ShielddGnarkFormal.Window2ScalarMulBridge

set_option maxRecDepth 1000000

/-!
Exact scalar-ladder bridge for transfer compliance ACK derivation.

The circuit side is the extracted 251-bit ladder. The protocol side uses the
independent point and scalar-multiplication definitions in `Protocol.Common`.
-/

namespace Shieldd.GnarkFormal.AckBridge

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev F := Protocol.Common.F
abbrev Point := Protocol.Common.Point F
abbrev CircuitPoint := Decaf377Assumptions.Point

def toProtocolPoint (point : CircuitPoint) : Point :=
  ⟨point.x, point.y⟩

@[simp] theorem toProtocolPoint_generator :
    toProtocolPoint Decaf377Assumptions.generator =
      Protocol.Common.Decaf.generator := by
  rfl

@[simp] theorem toProtocolPoint_identity :
    toProtocolPoint Decaf377Assumptions.identity =
      Protocol.Common.Decaf.identity := by
  rfl

@[simp] theorem toProtocolPoint_valueBlindingGenerator :
    toProtocolPoint Decaf377Assumptions.valueBlindingGenerator =
      Protocol.Common.Decaf.valueBlindingGenerator := by
  rfl

@[simp] theorem toProtocolPoint_add (left right : CircuitPoint) :
    toProtocolPoint (Decaf377Assumptions.add left right) =
      Protocol.Common.Decaf.add
        (toProtocolPoint left) (toProtocolPoint right) := by
  rfl

@[simp] theorem toProtocolPoint_double (point : CircuitPoint) :
    toProtocolPoint (Decaf377Assumptions.double point) =
      Protocol.Common.Decaf.double (toProtocolPoint point) := by
  rfl

@[simp] theorem toProtocolPoint_neg (point : CircuitPoint) :
    toProtocolPoint (Decaf377Assumptions.neg point) =
      Protocol.Common.Decaf.neg (toProtocolPoint point) := by
  rfl

theorem toProtocolPoint_scalarMulLEFrom
    (scalar : F) (fuel bitIndex : Nat)
    (result current : CircuitPoint) :
    toProtocolPoint
        (Decaf377Assumptions.scalarMulLEFrom
          scalar fuel bitIndex result current) =
      Protocol.Common.Decaf.scalarMulLEFrom scalar fuel bitIndex
        (toProtocolPoint result) (toProtocolPoint current) := by
  induction fuel generalizing bitIndex result current with
  | zero => rfl
  | succ fuel ih =>
      simp only [
        Decaf377Assumptions.scalarMulLEFrom,
        Protocol.Common.Decaf.scalarMulLEFrom,
        Decaf377Assumptions.select
      ]
      split <;> simp only [toProtocolPoint_add, toProtocolPoint_double, ih]

theorem toProtocolPoint_scalarMulLE
    (bits : Nat) (base : CircuitPoint) (scalar : F) :
    toProtocolPoint
        (Decaf377Assumptions.scalarMulLE bits base scalar) =
      Protocol.Common.Decaf.scalarMulLE bits
        (toProtocolPoint base) scalar := by
  exact toProtocolPoint_scalarMulLEFrom scalar bits 0
    Decaf377Assumptions.identity base

def AckSpec (ringPk : Point) (d : F) (output : Point) : Prop :=
  d.val < 2 ^ 251 ∧
    Protocol.Common.Decaf.onCurve ringPk ∧
    Protocol.Common.Decaf.onCurve output ∧
    output = Protocol.Common.Decaf.scalarMulLE 251 ringPk d

theorem toProtocolPoint_onCurve_iff (point : CircuitPoint) :
    Protocol.Common.Decaf.onCurve (toProtocolPoint point) ↔
      EdwardsBridge.onCurve ⟨point.x, point.y⟩ := by
  unfold Protocol.Common.Decaf.onCurve Protocol.Common.Decaf.curveD
  unfold EdwardsBridge.onCurve EdwardsBridge.d toProtocolPoint
  constructor <;> intro h <;> linear_combination h

variable [Fact (Nat.Prime Extracted.DecafEdwardsAdd.Order)]

instance : Fact (Nat.Prime Extracted.ScalarMulLE251.Order) := ‹_›

private theorem choiceFree_inv_one : (1 : F)⁻¹ = 1 := by
  have h := ChoiceFreeZMod.mul_inv_cancel
    Extracted.DecafEdwardsAdd.Order (1 : F) one_ne_zero
  simpa only [one_mul] using h

private theorem circuit_identity_add (point : CircuitPoint) :
    Decaf377Assumptions.add Decaf377Assumptions.identity point = point := by
  rcases point with ⟨x, y⟩
  simp only [
    Decaf377Assumptions.add,
    Decaf377Assumptions.identity,
    Decaf377Assumptions.curveD,
    zero_mul,
    mul_zero,
    one_mul,
    add_zero,
    zero_add,
    neg_zero,
    sub_zero,
    choiceFree_inv_one,
    mul_one
  ]
  congr 1
  all_goals ring

/-- An RVK instance with the identity authorization key is exactly the
fixed-generator ACK relation. This lets embedded shared-secret bodies reuse
the exact RVK prefix without manufacturing the seven omitted Edwards-add
rows. -/
theorem ack_spec_of_identity_rvk
    (d : F) (output : CircuitPoint)
    (hRange : d.val < 2 ^ 251)
    (hRvk :
      Decaf377Assumptions.RandomizedVerificationKeySpec
        Decaf377Assumptions.identity d output)
    (hOutput : EdwardsBridge.onCurve ⟨output.x, output.y⟩) :
    AckSpec Protocol.Common.Decaf.generator d (toProtocolPoint output) := by
  have hGenerator : Protocol.Common.Decaf.onCurve
      Protocol.Common.Decaf.generator := by
    have hCircuit :
        EdwardsBridge.onCurve
          ⟨Decaf377Assumptions.generator.x,
            Decaf377Assumptions.generator.y⟩ := by
      simpa [Decaf377Assumptions.generator] using
        RvkBridge.generator_onCurve
    have hMapped :=
      (toProtocolPoint_onCurve_iff
        Decaf377Assumptions.generator).2 hCircuit
    simpa only [toProtocolPoint_generator] using hMapped
  have hOutputProtocol :
      Protocol.Common.Decaf.onCurve (toProtocolPoint output) := by
    exact (toProtocolPoint_onCurve_iff output).2 hOutput
  have hMul :
      output =
        Decaf377Assumptions.scalarMulLE
          251 Decaf377Assumptions.generator d := by
    calc
      output =
          Decaf377Assumptions.rvk
            Decaf377Assumptions.identity d := hRvk
      _ = Decaf377Assumptions.add
            Decaf377Assumptions.identity
            (Decaf377Assumptions.scalarMulLE
              251 Decaf377Assumptions.generator d) := rfl
      _ = Decaf377Assumptions.scalarMulLE
            251 Decaf377Assumptions.generator d :=
        circuit_identity_add _
  have hMapped := congrArg toProtocolPoint hMul
  refine ⟨hRange, hGenerator, hOutputProtocol, ?_⟩
  calc
    toProtocolPoint output =
        toProtocolPoint
          (Decaf377Assumptions.scalarMulLE
            251 Decaf377Assumptions.generator d) := hMapped
    _ = Protocol.Common.Decaf.scalarMulLE
          251 Protocol.Common.Decaf.generator d := by
      rw [toProtocolPoint_scalarMulLE]
      rfl

def AckCircuit (ringPk : Point) (d : F) (output : Point) : Prop :=
  Extracted.ScalarMulLE251.circuit
    ringPk.x ringPk.y d output.x output.y

/-- Constraint body emitted by `decaf.ack`.  The normalized template contains
the binary decomposition and scalar ladder, but its base-point curve check is a
separate structural seam in the enclosing circuit. -/
def AckBodyCircuit (ringPk : Point) (d : F) (output : Point) : Prop :=
  ∃ bits : List.Vector F 251,
    GatesDef.to_binary d 251 bits ∧
      DtkBridge.dtkLadderK bits
        (ScalarMulBridge.finalKWithOutputCurve output.x output.y)
        251 0 ⟨0, 1⟩ ⟨ringPk.x, ringPk.y⟩

/-- Semantic contract for the exact `decaf.ack` body.  It cannot be promoted
to `AckSpec` until the enclosing proof supplies the separately certified
base-point curve seam. -/
def AckBodySpec (ringPk : Point) (d : F) (output : Point) : Prop :=
  Protocol.Common.Decaf.onCurve ringPk → AckSpec ringPk d output

/-- Exact deployed Window2 ACK body after its normalized binary
decomposition. -/
def AckWindow2BodyCircuit
    (ringPk : Point) (d : F) (output : Point) : Prop :=
  ∃ bits : List.Vector F 251,
    GatesDef.to_binary d 251 bits ∧
      Window2ScalarMulBridge.BodyRel251 bits
        ⟨ringPk.x, ringPk.y⟩ ⟨output.x, output.y⟩

def AckWindow2Spec (ringPk : Point) (d : F) (output : Point) : Prop :=
  d.val < 2 ^ 251 ∧
    Protocol.Common.Decaf.onCurve ringPk ∧
    Protocol.Common.Decaf.onCurve output ∧
    output = Protocol.Common.Decaf.scalarMulWindow2 251 ringPk d

def AckWindow2BodySpec
    (ringPk : Point) (d : F) (output : Point) : Prop :=
  Protocol.Common.Decaf.onCurve ringPk → AckWindow2Spec ringPk d output

private theorem base_onCurve_of_circuit
    (ringPk output : Point) (d : F)
    (h : AckCircuit ringPk d output) :
    EdwardsBridge.onCurve ⟨ringPk.x, ringPk.y⟩ := by
  rcases h with
    ⟨g0, hg0, g1, hg1, g2, hg2, g3, hg3, g4, hg4, g5, hg5,
      hcurve, bits, hbits, hladder⟩
  simp only [
    Extracted.ScalarMulLE251.Gates,
    GatesGnark9,
    GatesGnark8,
    GatesDef.mul,
    GatesDef.sub,
    GatesDef.add,
    GatesDef.eq
  ] at hg0 hg1 hg2 hg3 hg4 hg5 hcurve
  subst g0
  subst g1
  subst g2
  subst g3
  subst g4
  subst g5
  unfold EdwardsBridge.onCurve EdwardsBridge.d
  linear_combination hg5

/-- The 251-bit decomposition bound, reusable by RVK and balance adapters. -/
theorem scalar_lt_of_scalarMulLE251_circuit
    (baseX baseY scalar outX outY : F)
    (h :
      Extracted.ScalarMulLE251.circuit
        baseX baseY scalar outX outY) :
    scalar.val < 2 ^ 251 := by
  have hl := ScalarMulBridge.scalarMulLE251_ladderK_of_circuit
    baseX baseY scalar outX outY h
  rcases hl with ⟨bits, hbinary, -⟩
  rw [Gates.to_binary_iff_eq_fin_to_bits_le_of_pow_length_lt
    (N := Extracted.ScalarMulLE251.Order)
    ScalarMulBridge.pow251_lt_order] at hbinary
  exact hbinary.1

theorem ack_sound
    (ringPk : Point) (d : F) (output : Point)
    (h : AckCircuit ringPk d output) :
    AckSpec ringPk d output := by
  have hbase :=
    base_onCurve_of_circuit ringPk output d h
  have houtput := ScalarMulBridge.scalarMulLE251_onCurve
    ringPk.x ringPk.y d output.x output.y hbase h
  have hsound := ScalarMulBridge.scalarMulLE251_sound
    ringPk.x ringPk.y d output.x output.y
    hbase h
  have hmapped := congrArg toProtocolPoint hsound
  refine ⟨
    scalar_lt_of_scalarMulLE251_circuit
      ringPk.x ringPk.y d output.x output.y h,
    ?_, ?_, ?_
  ⟩
  · simpa only [toProtocolPoint] using
      (toProtocolPoint_onCurve_iff
        (Decaf377Assumptions.Point.mk ringPk.x ringPk.y)).2 hbase
  · simpa only [toProtocolPoint] using
      (toProtocolPoint_onCurve_iff
        (Decaf377Assumptions.Point.mk output.x output.y)).2 houtput
  · calc
      output =
          toProtocolPoint
            (Decaf377Assumptions.Point.mk output.x output.y) := rfl
      _ = toProtocolPoint
          (Decaf377Assumptions.scalarMulLE 251
            (Decaf377Assumptions.Point.mk ringPk.x ringPk.y) d) := hmapped
      _ = Protocol.Common.Decaf.scalarMulLE 251 ringPk d := by
        rw [toProtocolPoint_scalarMulLE]
        rfl

/-- Soundness of the exact ACK scalar-ladder body under its explicit curve
seam.  In particular, this theorem does not manufacture base-point validity
from rows that the normalized body does not contain. -/
theorem ack_body_sound
    (ringPk : Point) (d : F) (output : Point)
    (h : AckBodyCircuit ringPk d output) :
    AckBodySpec ringPk d output := by
  intro hring
  rcases h with ⟨bits, hbinary, hladder⟩
  rcases ChoiceFreeBinary.exists_bool_vector_of_to_binary
      ScalarMulBridge.pow251_lt_order hbinary with
    ⟨bitsBool, rfl, hscalarVal⟩
  have hbase : EdwardsBridge.onCurve ⟨ringPk.x, ringPk.y⟩ := by
    exact (toProtocolPoint_onCurve_iff
      (Decaf377Assumptions.Point.mk ringPk.x ringPk.y)).1
        (by simpa only [toProtocolPoint] using hring)
  have hladderF := DtkBridge.dtkLadderK_mono
    (ScalarMulBridge.finalKWithOutputCurve_implies_finalK output.x output.y)
    251 0 ⟨0, 1⟩ ⟨ringPk.x, ringPk.y⟩ hladder
  have hsem := DtkBridge.dtkLadderK_final_semantic
    bitsBool output.x output.y 251 0 ⟨0, 1⟩ ⟨ringPk.x, ringPk.y⟩
    (by omega) EdwardsBridge.identity_onCurve hbase hladderF
  rcases hsem with ⟨houtput, hfinal⟩
  have hpoint :
      ScalarMulBridge.scalarMulFromBits
          bitsBool 251 0 ⟨0, 1⟩ ⟨ringPk.x, ringPk.y⟩ =
        ⟨output.x, output.y⟩ :=
    DtkBridge.point_eq_of_finalK hfinal
  rw [hpoint] at houtput
  have hmodel := ScalarMulBridge.scalarMulFromBits_toA
    bitsBool d 251 0 ⟨0, 1⟩ ⟨ringPk.x, ringPk.y⟩
    (by omega)
    (by
      intro i _ hi
      rw [hscalarVal]
      exact (ScalarMulBridge.ofBitsLE_testBit bitsBool i hi).symm)
  rw [hpoint] at hmodel
  have hmapped := congrArg toProtocolPoint hmodel
  refine ⟨?_, hring, ?_, ?_⟩
  · rw [hscalarVal]
    exact (Fin.ofBitsLE bitsBool).isLt
  · simpa only [toProtocolPoint] using
      (toProtocolPoint_onCurve_iff
        (Decaf377Assumptions.Point.mk output.x output.y)).2 houtput
  · calc
      output =
          toProtocolPoint
            (Decaf377Assumptions.Point.mk output.x output.y) := rfl
      _ = toProtocolPoint
          (Decaf377Assumptions.scalarMulLE 251
            (Decaf377Assumptions.Point.mk ringPk.x ringPk.y) d) := hmapped
      _ = Protocol.Common.Decaf.scalarMulLE 251 ringPk d := by
        rw [toProtocolPoint_scalarMulLE]
        rfl

/-- Soundness of the exact 3,010-row Window2 body under the explicit
base-point curve seam. -/
theorem ack_window2_body_sound
    (ringPk : Point) (d : F) (output : Point)
    (h : AckWindow2BodyCircuit ringPk d output) :
    AckWindow2BodySpec ringPk d output := by
  intro hring
  rcases h with ⟨bits, hbinary, hbody⟩
  rcases ChoiceFreeBinary.exists_bool_vector_of_to_binary
      ScalarMulBridge.pow251_lt_order hbinary with
    ⟨bitsBool, rfl, hscalarVal⟩
  have hbase : EdwardsBridge.onCurve ⟨ringPk.x, ringPk.y⟩ := by
    exact (toProtocolPoint_onCurve_iff
      (Decaf377Assumptions.Point.mk ringPk.x ringPk.y)).1
        (by simpa only [toProtocolPoint] using hring)
  rcases Window2ScalarMulBridge.bodyRel251_semantic
      bitsBool ⟨ringPk.x, ringPk.y⟩ ⟨output.x, output.y⟩
      hbase hbody with ⟨houtputOn, houtput⟩
  have hbitsScalar :
      bitsBool = Protocol.Common.Decaf.scalarBits 251 d := by
    apply List.Vector.ext
    intro i
    rw [Protocol.Common.Decaf.scalarBits, List.Vector.get_ofFn]
    rw [hscalarVal,
      ChoiceFreeBinary.ofBitsLE_testBit bitsBool i.val i.isLt,
      getElem!_pos bitsBool i.val i.isLt]
    rfl
  have hmapped := congrArg Window2ScalarMulBridge.toProtocolPoint houtput
  refine ⟨?_, hring, ?_, ?_⟩
  · rw [hscalarVal]
    exact (Fin.ofBitsLE bitsBool).isLt
  · simpa only [Window2ScalarMulBridge.toProtocolPoint] using
      (toProtocolPoint_onCurve_iff
        (Decaf377Assumptions.Point.mk output.x output.y)).2 houtputOn
  · calc
      output = Window2ScalarMulBridge.toProtocolPoint ⟨output.x, output.y⟩ := rfl
      _ = Window2ScalarMulBridge.toProtocolPoint
          (Window2ScalarMulBridge.scalarMulWindow2FromBits251
            bitsBool ⟨ringPk.x, ringPk.y⟩) := hmapped
      _ = Protocol.Common.Decaf.scalarMulWindow2FromBits bitsBool ringPk := by
        exact Window2ScalarMulBridge.scalarMulWindow2FromBits251_maps
          bitsBool ⟨ringPk.x, ringPk.y⟩
      _ = Protocol.Common.Decaf.scalarMulWindow2 251 ringPk d := by
        rw [hbitsScalar]
        rfl

end Shieldd.GnarkFormal.AckBridge

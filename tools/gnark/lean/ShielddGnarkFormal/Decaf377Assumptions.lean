import ShielddGnarkFormal.Poseidon377
import ShielddGnarkFormal.Poseidon1Bridge
import ShielddGnarkFormal.Poseidon2Bridge
import ShielddGnarkFormal.Extracted.DecafAssertEquivalent
import ShielddGnarkFormal.Extracted.DecafCompressToField
import ShielddGnarkFormal.Extracted.DecafRvk
import ShielddGnarkFormal.Extracted.DecafDtk
import ShielddGnarkFormal.Extracted.NetBalanceCommitment
import ShielddGnarkFormal.CompressToFieldBridge
import ShielddGnarkFormal.EncodeToCurveBridge
import ShielddGnarkFormal.IvkModRBridge

set_option linter.unusedSectionVars false

/-! Decaf377 gadget boundary used by the `consolidate2x1` compose model.

This file is intentionally named after the boundary, not after a completed
verification result. `AssertEquivalent` and `CompressToField` are tied to
extracted gadget constraints. RVK, DTK, and net balance are still compose-model
definitions until their scalar-mul / encode-to-curve / curve-operation
composition bridges replace the definitions below. Lean's standard-only axiom
report therefore means "no kernel axioms," not "decaf is fully closed."
-/

namespace Shieldd.GnarkFormal.Decaf377Assumptions

abbrev F := Poseidon377.F

variable [Fact (Nat.Prime Extracted.DecafAssertEquivalent.Order)]
variable [Fact (Nat.Prime Extracted.DecafCompressToField.Order)]
variable [Fact (Nat.Prime Extracted.DecafEncodeToCurve.Order)]
variable [Fact (Nat.Prime Extracted.DecafRvk.Order)]
variable [Fact (Nat.Prime Extracted.DecafDtk.Order)]
variable [Fact (Nat.Prime Extracted.NetBalanceCommitment.Order)]

structure Point where
  x : F
  y : F

instance : Inhabited Point := ⟨⟨0, 0⟩⟩

def curveD : F := 3021

def generator : Point :=
  ⟨4959445789346820725352484487855828915252512307947624787834978378872129235627,
   6060471950081851567114691557659790004756535011754163002297540472747064943288⟩

def valueBlindingGenerator : Point :=
  ⟨4661681602708190761543544705274244814260880986867766715334030151044279151219,
   4337336842509898676347982752646772244181661588533917621717979456142867120378⟩

def identity : Point := ⟨0, 1⟩

def neg (p : Point) : Point := ⟨-p.x, p.y⟩

/-- Twisted-Edwards addition formula emitted by gnark's native Edwards gadget. -/
def add (p q : Point) : Point :=
  let v0 := q.y * p.x
  let v1 := q.x * p.y
  let v2 := curveD * v0 * v1
  let u := (p.y + p.x) * (q.x + q.y)
  ⟨(v0 + v1) * (1 + v2)⁻¹, (-v0 - v1 + u) * (1 - v2)⁻¹⟩

/-- Twisted-Edwards doubling formula emitted by gnark's native Edwards gadget. -/
def double (p : Point) : Point :=
  let u := p.x * p.y
  let v := p.x * p.x
  let w := p.y * p.y
  ⟨(2 * u) * (w - v)⁻¹, (w + v) * (2 - (w - v))⁻¹⟩

def select (b : Bool) (whenTrue whenFalse : Point) : Point :=
  if b then whenTrue else whenFalse

def scalarMulLEFrom (scalar : F) : Nat → Nat → Point → Point → Point
  | 0, _, result, _ => result
  | fuel + 1, bitIndex, result, current =>
      let sum := add result current
      let result' := select (scalar.val.testBit bitIndex) sum result
      scalarMulLEFrom scalar fuel (bitIndex + 1) result' (double current)

def scalarMulLE (nBits : Nat) (base : Point) (scalar : F) : Point :=
  scalarMulLEFrom scalar nBits 0 identity base

def valueGeneratorDomain : F :=
  6888358618106443442961843809729175081075858965522240584763322653509542282215

def EncodeToCurveSpec (r : F) (out : Point) : Prop :=
  Extracted.DecafEncodeToCurve.Relation r out.x out.y

noncomputable def encodeToCurve (r : F) : Point :=
  by
    classical
    exact if h : ∃ out, EncodeToCurveSpec r out then Classical.choose h else identity

/-- The encode-to-curve relation is functional: any witness equals the chosen
output. This upgrades the noncomputable choice to a genuine function of `r`,
closing the determinism gap for the net-balance commitment composition. -/
theorem encode_spec_eq {r : F} {out : Point} (h : EncodeToCurveSpec r out) :
    encodeToCurve r = out := by
  have hex : ∃ o, EncodeToCurveSpec r o := ⟨out, h⟩
  have hc : EncodeToCurveSpec r (Classical.choose hex) := Classical.choose_spec hex
  obtain ⟨hx, hy⟩ := Extracted.DecafEncodeToCurve.relation_unique hc h
  unfold encodeToCurve
  rw [dif_pos hex]
  calc Classical.choose hex
      = ⟨(Classical.choose hex).x, (Classical.choose hex).y⟩ := rfl
    _ = out := by rw [hx, hy]

def rvk (ak : Point) (randomizer : F) : Point :=
  add ak (scalarMulLE 251 generator randomizer)

def dtk (_nk : F) (_ak divGen : Point) (ivkReduced _ivkQuotientA : F) : Point :=
  scalarMulLE 251 divGen ivkReduced

def dtkIvkModQ (nk akCompressed : F) : F :=
  Poseidon2Bridge.permSpec2 Poseidon377.ivkDomain nk akCompressed

noncomputable def netBalanceCommit (input0 input1 output assetID balanceBlinding : F) : Point :=
  let assetHash := Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID
  let valueGenerator := encodeToCurve assetHash
  let zero := scalarMulLE 128 valueGenerator 0
  let in0 := scalarMulLE 128 valueGenerator input0
  let in1 := scalarMulLE 128 valueGenerator input1
  let out := scalarMulLE 128 valueGenerator output
  let blind := scalarMulLE 251 valueBlindingGenerator balanceBlinding
  add (add (add (add zero in0) in1) (neg out)) blind

/-- Extracted hint-free mirror constraints for decaf377 compression. -/
def CompressToFieldCircuit (p : Point) (out : F) : Prop :=
  ∃ wasSquare sqrtRatio,
    Extracted.DecafCompressToField.circuit p.x p.y wasSquare sqrtRatio out

def EncodeToCurveCircuit (r : F) (out : Point) : Prop :=
  ∃ wasSquare invSqrt,
    Extracted.DecafEncodeToCurve.circuit r wasSquare invSqrt out.x out.y

/-- The exact constraint set of decaf377-go `AssertEquivalent`: the single
cross-ratio equation `p.x * q.y = q.x * p.y` (extracted, not assumed). -/
def AssertEquivalentCircuit (p q : Point) : Prop :=
  Extracted.DecafAssertEquivalent.circuit p.x p.y q.x q.y

/-- The exact constraint set of the extracted DecafRvk gadget: a 251-step
generator scalar-mul ladder of the randomizer followed by an Edwards add of
`ak`, with the result pinned to `out`. -/
def RandomizedVerificationKeyCircuit (ak : Point) (r : F) (out : Point) : Prop :=
  Extracted.DecafRvk.circuit ak.x ak.y r out.x out.y

/-- The exact constraint set of the extracted DecafDtk gadget: `ak` on-curve
assertion, compress/Poseidon/IVK-mod-r provenance constraints, and a 251-step
`divGen` scalar-mul ladder of `ivkReduced` pinned to `out`. -/
def DiversifiedTransmissionKeyCircuit
    (nk : F) (ak divGen : Point) (ivkReduced ivkQuotientA : F) (out : Point) : Prop :=
  ∃ wasSquare sqrtRatio,
    Extracted.DecafDtk.circuit nk ak.x ak.y divGen.x divGen.y
      wasSquare sqrtRatio ivkReduced ivkQuotientA out.x out.y

/-- The exact constraint set of the extracted NetBalanceCommitment gadget: a
rate-1 Poseidon asset hash, a decaf377 encode-to-curve, four 128-bit value
ladders, the Edwards add chain, a 251-bit blinding ladder, and a final add
pinned to `out`. -/
def NetBalanceCommitmentCircuit
    (input0 input1 output assetID balanceBlinding : F) (out : Point) : Prop :=
  ∃ encodeWasSquare encodeInvSqrt,
    Extracted.NetBalanceCommitment.circuit input0 input1 output assetID balanceBlinding
      encodeWasSquare encodeInvSqrt out.x out.y

def CompressToFieldSpec (p : Point) (out : F) : Prop :=
  Extracted.DecafCompressToField.Relation p.x p.y out

/-- Cross-ratio equality `x_p·y_q = x_q·y_p` — exactly what the gadget
constrains. For on-curve points this is decaf coset equality (`p = ±q` on the
Jacobi quartic cosets); the gadget itself does NOT assert either operand is
on-curve, so call sites that need point equality must establish on-curve
membership separately. -/
def AssertEquivalentSpec (p q : Point) : Prop := p.x * q.y = q.x * p.y

def RandomizedVerificationKeySpec (ak : Point) (r : F) (out : Point) : Prop :=
  out = rvk ak r

def DiversifiedTransmissionKeyIvkProvenance
    (nk : F) (ak : Point) (ivkReduced ivkQuotientA : F) : Prop :=
  ∃ akCompressed,
    CompressToFieldSpec ak akCompressed ∧
    ivkReduced.val = (dtkIvkModQ nk akCompressed).val % Extracted.IvkModR.rNat ∧
    ivkQuotientA.val = (dtkIvkModQ nk akCompressed).val / Extracted.IvkModR.rNat

def DiversifiedTransmissionKeySpec
    (nk : F) (ak divGen : Point) (ivkReduced ivkQuotientA : F) (out : Point) : Prop :=
  DiversifiedTransmissionKeyIvkProvenance nk ak ivkReduced ivkQuotientA ∧
  out = dtk nk ak divGen ivkReduced ivkQuotientA

def NetBalanceCommitmentSpec
    (input0 input1 output assetID balanceBlinding : F) (out : Point) : Prop :=
  out = netBalanceCommit input0 input1 output assetID balanceBlinding

theorem decaf377_compressToField_sound :
    ∀ p out, CompressToFieldCircuit p out → CompressToFieldSpec p out := by
  intro p out h
  rcases h with ⟨wasSquare, sqrtRatio, hcircuit⟩
  exact Extracted.DecafCompressToField.circuit_sound p.x p.y wasSquare sqrtRatio out hcircuit

theorem decaf377_encodeToCurve_sound :
    ∀ r out, EncodeToCurveCircuit r out → EncodeToCurveSpec r out := by
  intro r out h
  rcases h with ⟨wasSquare, invSqrt, hcircuit⟩
  exact Extracted.DecafEncodeToCurve.circuit_sound r wasSquare invSqrt out.x out.y hcircuit

/-- Proved, not assumed: the extracted gadget is literally the cross-ratio gate. -/
theorem decaf377_assertEquivalent_sound :
    ∀ p q, AssertEquivalentCircuit p q → AssertEquivalentSpec p q := by
  intro p q h
  obtain ⟨g0, hg0, g1, hg1, heq, -⟩ := h
  simpa [AssertEquivalentSpec, hg0, hg1, Extracted.DecafAssertEquivalent.Gates,
    GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.eq] using heq

-- `decaf377_netBalanceCommitment_sound` is proved in `NetBalanceCommitmentBridge`
-- (it depends on the extracted-circuit bridge, which imports this file).

/-- A prime-order (odd-order) subgroup of the decaf377 curve, supplied as a
membership predicate together with the single algebraic property the soundness
argument needs: no member is the 2-torsion shift `(-x, -y)` of another member.

This is the honest residual assumption for the decaf coset-equality argument
(P7). It is TRUE: the 2-torsion shift of `p` is `p + (0,-1)`, and `(0,-1)` is the
unique point of order 2; an odd-order subgroup contains no point of order 2, so a
member and its shift cannot both be members. Only `noTwoTorsionShift` is assumed;
`cosetEq_of_mem` is then PROVED from it and the unconditional
`EdwardsBridge.crossRatio_pins_to_two_torsion`. Carried as a hypothesis (not a
kernel axiom), so it surfaces in `consolidate2x1_circuit_sound`'s statement. -/
structure PrimeOrderSubgroup where
  mem : Point → Prop
  memZero : mem identity
  memAdd : ∀ p q : Point, mem p → mem q → mem (add p q)
  memDouble : ∀ p : Point, mem p → mem (double p)
  memNeg : ∀ p : Point, mem p → mem (neg p)
  memGenerator : mem generator
  memValueBlindingGenerator : mem valueBlindingGenerator
  memEncode : ∀ r : F, mem (encodeToCurve r)
  noTwoTorsionShift : ∀ p : Point, mem p → mem ⟨-p.x, -p.y⟩ → False

theorem PrimeOrderSubgroup.mem_select (S : PrimeOrderSubgroup) (b : Bool)
    (whenTrue whenFalse : Point)
    (htrue : S.mem whenTrue) (hfalse : S.mem whenFalse) :
    S.mem (select b whenTrue whenFalse) := by
  cases b
  · simpa [select] using hfalse
  · simpa [select] using htrue

theorem PrimeOrderSubgroup.mem_scalarMulLEFrom (S : PrimeOrderSubgroup) (scalar : F) :
    ∀ fuel bitIndex result current,
      S.mem result → S.mem current →
      S.mem (scalarMulLEFrom scalar fuel bitIndex result current) := by
  intro fuel
  induction fuel with
  | zero =>
      intro bitIndex result current hresult hcurrent
      simpa [scalarMulLEFrom] using hresult
  | succ fuel ih =>
      intro bitIndex result current hresult hcurrent
      simp only [scalarMulLEFrom]
      exact ih (bitIndex + 1)
        (select (scalar.val.testBit bitIndex) (add result current) result)
        (double current)
        (S.mem_select (scalar.val.testBit bitIndex) (add result current) result
          (S.memAdd result current hresult hcurrent) hresult)
        (S.memDouble current hcurrent)

theorem PrimeOrderSubgroup.mem_scalarMulLE (S : PrimeOrderSubgroup)
    (nBits : Nat) (base : Point) (scalar : F) (hbase : S.mem base) :
    S.mem (scalarMulLE nBits base scalar) := by
  simpa [scalarMulLE] using
    S.mem_scalarMulLEFrom scalar nBits 0 identity base S.memZero hbase

theorem PrimeOrderSubgroup.mem_rvk (S : PrimeOrderSubgroup)
    (ak : Point) (randomizer : F) (hak : S.mem ak) :
    S.mem (rvk ak randomizer) := by
  unfold rvk
  exact S.memAdd ak (scalarMulLE 251 generator randomizer) hak
    (S.mem_scalarMulLE 251 generator randomizer S.memGenerator)

theorem PrimeOrderSubgroup.mem_dtk (S : PrimeOrderSubgroup)
    (nk : F) (ak divGen : Point) (ivkReduced ivkQuotientA : F)
    (hdivGen : S.mem divGen) :
    S.mem (dtk nk ak divGen ivkReduced ivkQuotientA) := by
  unfold dtk
  exact S.mem_scalarMulLE 251 divGen ivkReduced hdivGen

theorem PrimeOrderSubgroup.mem_netBalanceCommit (S : PrimeOrderSubgroup)
    (input0 input1 output assetID balanceBlinding : F) :
    S.mem (netBalanceCommit input0 input1 output assetID balanceBlinding) := by
  unfold netBalanceCommit
  exact
    S.memAdd
      (add
        (add
          (add
            (scalarMulLE 128 (encodeToCurve
              (Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID)) 0)
            (scalarMulLE 128 (encodeToCurve
              (Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID)) input0))
          (scalarMulLE 128 (encodeToCurve
            (Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID)) input1))
        (neg (scalarMulLE 128 (encodeToCurve
          (Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID)) output)))
      (scalarMulLE 251 valueBlindingGenerator balanceBlinding)
      (S.memAdd
        (add
          (add
            (scalarMulLE 128 (encodeToCurve
              (Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID)) 0)
            (scalarMulLE 128 (encodeToCurve
              (Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID)) input0))
          (scalarMulLE 128 (encodeToCurve
            (Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID)) input1))
        (neg (scalarMulLE 128 (encodeToCurve
          (Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID)) output))
        (S.memAdd
          (add
            (scalarMulLE 128 (encodeToCurve
              (Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID)) 0)
            (scalarMulLE 128 (encodeToCurve
              (Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID)) input0))
          (scalarMulLE 128 (encodeToCurve
            (Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID)) input1)
          (S.memAdd
            (scalarMulLE 128 (encodeToCurve
              (Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID)) 0)
            (scalarMulLE 128 (encodeToCurve
              (Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID)) input0)
            (S.mem_scalarMulLE 128
              (encodeToCurve (Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID))
              0 (S.memEncode _))
            (S.mem_scalarMulLE 128
              (encodeToCurve (Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID))
              input0 (S.memEncode _)))
          (S.mem_scalarMulLE 128
            (encodeToCurve (Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID))
            input1 (S.memEncode _)))
        (S.memNeg
          (scalarMulLE 128 (encodeToCurve
            (Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID)) output)
          (S.mem_scalarMulLE 128
            (encodeToCurve (Poseidon1Bridge.permSpec1 valueGeneratorDomain assetID))
            output (S.memEncode _))))
      (S.mem_scalarMulLE 251 valueBlindingGenerator balanceBlinding
        S.memValueBlindingGenerator)

/-- Decaf coset-equality, now a THEOREM (not an assumption): two on-curve members
of a prime-order subgroup satisfying the `AssertEquivalent` cross-ratio gate are
equal. The cross-ratio + on-curve pins `q` to `{p, (-p.x,-p.y)}` (no third
solution, since `d` is a non-square); subgroup membership rules out the 2-torsion
shift, leaving `q = p`. -/
theorem PrimeOrderSubgroup.cosetEq_of_mem (S : PrimeOrderSubgroup) (p q : Point)
    (hp : EdwardsBridge.onCurve ⟨p.x, p.y⟩) (hq : EdwardsBridge.onCurve ⟨q.x, q.y⟩)
    (hmp : S.mem p) (hmq : S.mem q) (hcr : AssertEquivalentSpec p q) : p = q := by
  rcases EdwardsBridge.crossRatio_pins_to_two_torsion ⟨p.x, p.y⟩ ⟨q.x, q.y⟩ hp hq hcr
    with h | h
  · have hx : q.x = p.x := congrArg EdwardsBridge.Point.x h
    have hy : q.y = p.y := congrArg EdwardsBridge.Point.y h
    cases p; cases q; simp_all
  · exfalso
    have hx : q.x = -p.x := congrArg EdwardsBridge.Point.x h
    have hy : q.y = -p.y := congrArg EdwardsBridge.Point.y h
    have hqeq : q = (⟨-p.x, -p.y⟩ : Point) := by cases q; simp_all
    exact S.noTwoTorsionShift p hmp (hqeq ▸ hmq)

end Shieldd.GnarkFormal.Decaf377Assumptions

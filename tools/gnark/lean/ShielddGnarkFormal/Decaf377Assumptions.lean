import ShielddGnarkFormal.Poseidon377
import ShielddGnarkFormal.Poseidon1Bridge
import ShielddGnarkFormal.Poseidon2Bridge
import ShielddGnarkFormal.Extracted.DecafAssertEquivalent
import ShielddGnarkFormal.Extracted.DecafCompressToField
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

/-- The explicit curve-equation assertion used when a raw affine Decaf
representative enters the circuit without going through compression first. -/
def OnCurveCircuit (p : Point) : Prop :=
  EdwardsBridge.onCurve ⟨p.x, p.y⟩

/-- The exact constraint set of decaf377-go `AssertEquivalent`: the single
cross-ratio equation `p.x * q.y = q.x * p.y` (extracted, not assumed). -/
def AssertEquivalentCircuit (p q : Point) : Prop :=
  Extracted.DecafAssertEquivalent.circuit p.x p.y q.x q.y

def CompressToFieldSpec (p : Point) (out : F) : Prop :=
  Extracted.DecafCompressToField.Relation p.x p.y out

/-- Cross-ratio equality `x_p·y_q = x_q·y_p` — exactly what the gadget
constrains. The gadget itself does NOT assert either operand is on-curve; call
sites that need Decaf quotient equality must provide those on-curve facts at
the compose boundary. -/
def AssertEquivalentSpec (p q : Point) : Prop := p.x * q.y = q.x * p.y

/-- Decaf quotient equality for affine representatives: both operands are on
the Edwards curve and satisfy the cross-ratio relation constrained by
`AssertEquivalent`. This is the equality notion exposed by decaf377-go's affine
representatives; representatives may differ by the non-identity two-torsion
point while denoting the same Decaf element. -/
def DecafEquivalent (p q : Point) : Prop :=
  EdwardsBridge.onCurve ⟨p.x, p.y⟩ ∧
  EdwardsBridge.onCurve ⟨q.x, q.y⟩ ∧
  AssertEquivalentSpec p q

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
  obtain ⟨g0, hg0, g1, hg1, g2, hg2, g3, hg3, g4, hg4, g5, hg5, hcurveL,
    g7, hg7, g8, hg8, g9, hg9, g10, hg10, g11, hg11, g12, hg12, hcurveR,
    g14, hg14, g15, hg15, heq, -⟩ := h
  simpa [AssertEquivalentSpec, hg14, hg15, Extracted.DecafAssertEquivalent.Gates,
    GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.eq] using heq

-- `decaf377_netBalanceCommitment_sound` is proved in `NetBalanceCommitmentBridge`
-- (it depends on the extracted-circuit bridge, which imports this file).

end Shieldd.GnarkFormal.Decaf377Assumptions

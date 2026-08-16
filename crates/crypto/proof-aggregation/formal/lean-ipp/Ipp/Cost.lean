import Ipp.Extracted.ShippingProver
import Mathlib.Tactic

/-!
Symbolic SnarkPack operation vectors. Counts remain multidimensional so a
candidate cannot hide work moved between primitives or execution roles.

`StructuralBaseline` is deliberately not a `Vector`: it contains only the
closed forms justified by the v1 loop recurrences. In particular, an absent
dimension is unknown or outside that recurrence, not zero. Exact production
cost conformance is a separate performance-research obligation recorded in the
operation-reduction register; it is not a gap in semantic FV.
-/

namespace Ipp.Cost

open scoped BigOperators

/-- Protocol-visible cryptographic operation counts.

Every field of a value used for dominance must be populated. The structure
defaults are conveniences for genuinely zero deltas, never an encoding of an
unknown count. -/
structure Protocol where
  hashes : Nat := 0
  decodedElements : Nat := 0
  g1SubgroupValidations : Nat := 0
  g2SubgroupValidations : Nat := 0
  gtSubgroupValidations : Nat := 0
  g1ScalarMuls : Nat := 0
  g2ScalarMuls : Nat := 0
  g1MsmTerms : Nat := 0
  g2MsmTerms : Nat := 0
  gtExponentiations : Nat := 0
  millerTerms : Nat := 0
  finalExponentiations : Nat := 0
deriving DecidableEq, Repr

/-- Concrete backend arithmetic counts used by S3 kernels. -/
structure Backend where
  fieldAdds : Nat := 0
  fieldMuls : Nat := 0
  fieldSquares : Nat := 0
  fieldInversions : Nat := 0
  fieldReductions : Nat := 0
  extensionAdds : Nat := 0
  extensionMuls : Nat := 0
  extensionSquares : Nat := 0
  extensionInversions : Nat := 0
  extensionReductions : Nat := 0
  curveAdds : Nat := 0
  curveDoubles : Nat := 0
  scalarDecompositions : Nat := 0
  g1NormalizationBatches : Nat := 0
  g2NormalizationBatches : Nat := 0
  g1NormalizedElements : Nat := 0
  g2NormalizedElements : Nat := 0
  g1PreparedElements : Nat := 0
  g2PreparedElements : Nat := 0
  endomorphismMaps : Nat := 0
  frobeniusMaps : Nat := 0
deriving DecidableEq, Repr

/-- Operations remain separated by the role that pays for them. -/
structure Vector where
  prover : Protocol := {}
  verifier : Protocol := {}
  setup : Protocol := {}
  proverBackend : Backend := {}
  verifierBackend : Backend := {}
  setupBackend : Backend := {}
deriving DecidableEq, Repr

def Protocol.ComponentwiseLE (a b : Protocol) : Prop :=
  a.hashes ≤ b.hashes ∧
  a.decodedElements ≤ b.decodedElements ∧
  a.g1SubgroupValidations ≤ b.g1SubgroupValidations ∧
  a.g2SubgroupValidations ≤ b.g2SubgroupValidations ∧
  a.gtSubgroupValidations ≤ b.gtSubgroupValidations ∧
  a.g1ScalarMuls ≤ b.g1ScalarMuls ∧
  a.g2ScalarMuls ≤ b.g2ScalarMuls ∧
  a.g1MsmTerms ≤ b.g1MsmTerms ∧
  a.g2MsmTerms ≤ b.g2MsmTerms ∧
  a.gtExponentiations ≤ b.gtExponentiations ∧
  a.millerTerms ≤ b.millerTerms ∧
  a.finalExponentiations ≤ b.finalExponentiations

def Backend.ComponentwiseLE (a b : Backend) : Prop :=
  a.fieldAdds ≤ b.fieldAdds ∧
  a.fieldMuls ≤ b.fieldMuls ∧
  a.fieldSquares ≤ b.fieldSquares ∧
  a.fieldInversions ≤ b.fieldInversions ∧
  a.fieldReductions ≤ b.fieldReductions ∧
  a.extensionAdds ≤ b.extensionAdds ∧
  a.extensionMuls ≤ b.extensionMuls ∧
  a.extensionSquares ≤ b.extensionSquares ∧
  a.extensionInversions ≤ b.extensionInversions ∧
  a.extensionReductions ≤ b.extensionReductions ∧
  a.curveAdds ≤ b.curveAdds ∧
  a.curveDoubles ≤ b.curveDoubles ∧
  a.scalarDecompositions ≤ b.scalarDecompositions ∧
  a.g1NormalizationBatches ≤ b.g1NormalizationBatches ∧
  a.g2NormalizationBatches ≤ b.g2NormalizationBatches ∧
  a.g1NormalizedElements ≤ b.g1NormalizedElements ∧
  a.g2NormalizedElements ≤ b.g2NormalizedElements ∧
  a.g1PreparedElements ≤ b.g1PreparedElements ∧
  a.g2PreparedElements ≤ b.g2PreparedElements ∧
  a.endomorphismMaps ≤ b.endomorphismMaps ∧
  a.frobeniusMaps ≤ b.frobeniusMaps

def Vector.ComponentwiseLE (a b : Vector) : Prop :=
  a.prover.ComponentwiseLE b.prover ∧
  a.verifier.ComponentwiseLE b.verifier ∧
  a.setup.ComponentwiseLE b.setup ∧
  a.proverBackend.ComponentwiseLE b.proverBackend ∧
  a.verifierBackend.ComponentwiseLE b.verifierBackend ∧
  a.setupBackend.ComponentwiseLE b.setupBackend

def Vector.StrictlyImproves (candidate baseline : Vector) : Prop :=
  candidate.ComponentwiseLE baseline ∧ candidate ≠ baseline

/-! ### Shared four-lane GT digit schedule -/

/-- The common backend cost includes every lane operation. The only differing
dimension is how often the identical scalar list is decomposed. -/
def verifierSharedGtBaseline (common : Backend) (μ : Nat) : Vector := {
  verifierBackend := {
    common with scalarDecompositions := 4 * (1 + 2 * μ)
  }
}

def verifierSharedGtScheduled (common : Backend) (μ : Nat) : Vector := {
  verifierBackend := {
    common with scalarDecompositions := 1 + 2 * μ
  }
}

theorem verifierSharedGtScheduled_exact_saving (common : Backend) (μ : Nat) :
    (verifierSharedGtBaseline common μ).verifierBackend.scalarDecompositions =
      (verifierSharedGtScheduled common μ).verifierBackend.scalarDecompositions +
        3 * (1 + 2 * μ) := by
  simp [verifierSharedGtBaseline, verifierSharedGtScheduled]
  omega

/-- Sharing the signed-digit decomposition strictly improves the backend
vector while every lane operation remains the same arbitrary `common` cost. -/
theorem verifierSharedGtScheduled_strictlyImproves
    (common : Backend) (μ : Nat) :
    (verifierSharedGtScheduled common μ).StrictlyImproves
      (verifierSharedGtBaseline common μ) := by
  simp [Vector.StrictlyImproves, Vector.ComponentwiseLE,
    Protocol.ComponentwiseLE, Backend.ComponentwiseLE,
    verifierSharedGtScheduled, verifierSharedGtBaseline]

/-! ### G1/G2 endomorphism subgroup validation -/

/-- Arkworks' default affine double-and-add validation at `5+2*μ` G1 and
three G2 decode sites. The 253-bit subgroup order has Hamming weight 88. -/
def verifierSubgroupValidationBaseline (μ : Nat) : Backend := {
  curveAdds := 88 * (8 + 2 * μ)
  curveDoubles := 253 * (8 + 2 * μ)
}

/-- The accepted fast path for the concrete BLS12-377 tests. `x²` is 127 bits
with Hamming weight 22 and `x` is 64 bits with Hamming weight 7. -/
def verifierSubgroupValidationFast (μ : Nat) : Backend := {
  fieldMuls := 11 + 2 * μ
  curveAdds := 22 * (5 + 2 * μ) + 7 * 3
  curveDoubles := 127 * (5 + 2 * μ) + 64 * 3
  endomorphismMaps := 8 + 2 * μ
  frobeniusMaps := 6
}

theorem verifierSubgroupValidationFast_exact_curve_savings (μ : Nat) :
    (verifierSubgroupValidationBaseline μ).curveAdds =
        (verifierSubgroupValidationFast μ).curveAdds + (573 + 132 * μ) ∧
      (verifierSubgroupValidationBaseline μ).curveDoubles =
        (verifierSubgroupValidationFast μ).curveDoubles + (1197 + 252 * μ) := by
  simp [verifierSubgroupValidationBaseline, verifierSubgroupValidationFast]
  omega

theorem verifierSubgroupValidationFast_exact_added_maps (μ : Nat) :
    (verifierSubgroupValidationFast μ).fieldMuls = 11 + 2 * μ ∧
      (verifierSubgroupValidationFast μ).endomorphismMaps = 8 + 2 * μ ∧
      (verifierSubgroupValidationFast μ).frobeniusMaps = 6 := by
  simp [verifierSubgroupValidationFast]

/-- Bound when every endomorphism relation fails and the exact scalar fallback
is consequently executed at every validation site. -/
def verifierSubgroupValidationFallbackWorstCase (μ : Nat) : Backend := {
  fieldMuls := (verifierSubgroupValidationFast μ).fieldMuls
  curveAdds := (verifierSubgroupValidationFast μ).curveAdds +
    (verifierSubgroupValidationBaseline μ).curveAdds
  curveDoubles := (verifierSubgroupValidationFast μ).curveDoubles +
    (verifierSubgroupValidationBaseline μ).curveDoubles
  endomorphismMaps := (verifierSubgroupValidationFast μ).endomorphismMaps
  frobeniusMaps := (verifierSubgroupValidationFast μ).frobeniusMaps
}

theorem verifierSubgroupValidationFallbackWorstCase_exact (μ : Nat) :
    (verifierSubgroupValidationFallbackWorstCase μ).curveAdds =
        (verifierSubgroupValidationBaseline μ).curveAdds +
          (verifierSubgroupValidationFast μ).curveAdds ∧
      (verifierSubgroupValidationFallbackWorstCase μ).curveDoubles =
        (verifierSubgroupValidationBaseline μ).curveDoubles +
          (verifierSubgroupValidationFast μ).curveDoubles := by
  simp [verifierSubgroupValidationFallbackWorstCase, Nat.add_comm]

/-! ### GIPA pairing preparation -/

/-- Four independent pairing products in each combined round commitment. -/
def proverRoundPairingPreparationBaseline (μ : Nat) : Backend := {
  g1NormalizationBatches := 4 * μ
  g2NormalizationBatches := 4 * μ
  g1NormalizedElements := 4 * (2 ^ μ - 1)
  g2NormalizedElements := 4 * (2 ^ μ - 1)
  g1PreparedElements := 4 * (2 ^ μ - 1)
  g2PreparedElements := 4 * (2 ^ μ - 1)
}

/-- The commitment prepares its three unique G1 and two unique G2 vectors. -/
def proverRoundPairingPreparationShared (μ : Nat) : Backend := {
  g1NormalizationBatches := 3 * μ
  g2NormalizationBatches := 2 * μ
  g1NormalizedElements := 3 * (2 ^ μ - 1)
  g2NormalizedElements := 2 * (2 ^ μ - 1)
  g1PreparedElements := 3 * (2 ^ μ - 1)
  g2PreparedElements := 2 * (2 ^ μ - 1)
}

def proverRoundPairingPreparationBaselineVector (μ : Nat) : Vector := {
  proverBackend := proverRoundPairingPreparationBaseline μ
}

def proverRoundPairingPreparationSharedVector (μ : Nat) : Vector := {
  proverBackend := proverRoundPairingPreparationShared μ
}

theorem proverRoundPairingPreparationShared_savings (μ : Nat) :
    (proverRoundPairingPreparationBaseline μ).g1NormalizationBatches =
        (proverRoundPairingPreparationShared μ).g1NormalizationBatches + μ ∧
      (proverRoundPairingPreparationBaseline μ).g2NormalizationBatches =
        (proverRoundPairingPreparationShared μ).g2NormalizationBatches + 2 * μ ∧
      (proverRoundPairingPreparationBaseline μ).g1NormalizedElements =
        (proverRoundPairingPreparationShared μ).g1NormalizedElements +
          (2 ^ μ - 1) ∧
      (proverRoundPairingPreparationBaseline μ).g2NormalizedElements =
        (proverRoundPairingPreparationShared μ).g2NormalizedElements +
          2 * (2 ^ μ - 1) ∧
      (proverRoundPairingPreparationBaseline μ).g1PreparedElements =
        (proverRoundPairingPreparationShared μ).g1PreparedElements +
          (2 ^ μ - 1) ∧
      (proverRoundPairingPreparationBaseline μ).g2PreparedElements =
        (proverRoundPairingPreparationShared μ).g2PreparedElements +
          2 * (2 ^ μ - 1) := by
  simp [proverRoundPairingPreparationBaseline,
    proverRoundPairingPreparationShared]
  omega

theorem proverRoundPairingPreparationShared_strictlyImproves
    (μ : Nat) (hμ : 0 < μ) :
    (proverRoundPairingPreparationSharedVector μ).StrictlyImproves
      (proverRoundPairingPreparationBaselineVector μ) := by
  simp [Vector.StrictlyImproves, Vector.ComponentwiseLE,
    Protocol.ComponentwiseLE, Backend.ComponentwiseLE,
    proverRoundPairingPreparationSharedVector,
    proverRoundPairingPreparationBaselineVector,
    proverRoundPairingPreparationShared,
    proverRoundPairingPreparationBaseline]
  omega

/-! ### Verifier challenge inversion -/

/-- The verifier historically inverts `μ` round challenges and the
aggregate randomizer independently. -/
def verifierChallengeInversionBaseline (μ : Nat) : Backend := {
  fieldInversions := μ + 1
}

/-- One serial Montgomery batch over the `μ` round challenges and randomizer. -/
def verifierChallengeInversionBatch (μ : Nat) : Backend := {
  fieldMuls := 3 * μ
  fieldInversions := 1
}

/-- Exact backend trade: remove `μ` inversions and add `3μ` multiplications. -/
theorem verifierChallengeInversionBatch_exact (μ : Nat) :
    (verifierChallengeInversionBaseline μ).fieldInversions =
        (verifierChallengeInversionBatch μ).fieldInversions + μ ∧
      (verifierChallengeInversionBatch μ).fieldMuls =
        (verifierChallengeInversionBaseline μ).fieldMuls + 3 * μ := by
  simp [verifierChallengeInversionBaseline, verifierChallengeInversionBatch,
    Nat.add_comm]

theorem verifierChallengeInversionBatch_one_inversion (μ : Nat) :
    (verifierChallengeInversionBatch μ).fieldInversions = 1 := by
  rfl

/-! ### Public-input coefficient streaming -/

/-- Coefficient-generation multiplications in the historical two-pass fold. -/
def publicInputCoefficientBaseline (rows : Nat) (randomizerIsOne : Bool) : Nat :=
  if randomizerIsOne then rows - 1 else rows + (rows - 1)

/-- Coefficient-generation multiplications in the streamed fold. -/
def publicInputCoefficientStreamed (rows : Nat) (randomizerIsOne : Bool) : Nat :=
  if randomizerIsOne then 0 else rows

/-- Both randomizer branches remove exactly one duplicate multiplication for
every row after the first. -/
theorem publicInputCoefficientStreamed_exact_saving
    (rows : Nat) (hrows : 0 < rows) (randomizerIsOne : Bool) :
    publicInputCoefficientBaseline rows randomizerIsOne =
      publicInputCoefficientStreamed rows randomizerIsOne + (rows - 1) := by
  cases randomizerIsOne <;>
    simp [publicInputCoefficientBaseline, publicInputCoefficientStreamed] <;>
    omega

/-! ### Even-polynomial KZG quotient -/

/-- Arithmetic closed by the even-polynomial quotient model. Reductions and
allocations remain outside this slice. -/
structure KzgEvenArithmetic where
  fieldAdds : Nat
  fieldMuls : Nat
  fieldSquares : Nat
deriving DecidableEq, Repr

/-- Historical coefficient construction, product-form evaluation, and dense
synthetic division for a transcript of length `μ`. -/
def kzgEvenBaseline (μ : Nat) : KzgEvenArithmetic :=
  if μ = 0 then ⟨0, 0, 0⟩ else
    ⟨2 * 2 ^ μ - 3 + μ, 3 * 2 ^ μ - 3 + 3 * μ, 2 * μ + 1⟩

/-- Compact synthetic division in `Y = X²`, streamed expansion by `X + z`,
and one shared evaluation recurrence. -/
def kzgEvenOptimized (μ : Nat) : KzgEvenArithmetic :=
  if μ = 0 then ⟨0, 0, 0⟩ else
    ⟨2 ^ μ - 1, 3 * 2 ^ μ - 3 + μ, μ + 1⟩

theorem kzgEvenOptimized_exact_savings (μ : Nat) :
    (kzgEvenBaseline μ).fieldAdds =
        (kzgEvenOptimized μ).fieldAdds + (2 ^ μ - 2 + μ) ∧
      (kzgEvenBaseline μ).fieldMuls =
        (kzgEvenOptimized μ).fieldMuls + 2 * μ ∧
      (kzgEvenBaseline μ).fieldSquares =
        (kzgEvenOptimized μ).fieldSquares + μ := by
  by_cases hμ : μ = 0
  · subst μ
    simp [kzgEvenBaseline, kzgEvenOptimized]
  · have hpow : 2 ≤ 2 ^ μ := by
      obtain ⟨k, rfl⟩ := Nat.exists_eq_succ_of_ne_zero hμ
      rw [pow_succ]
      have hk : 0 < 2 ^ k := pow_pos (by decide) k
      omega
    simp [kzgEvenBaseline, kzgEvenOptimized, hμ]
    omega

theorem kzgEvenOptimized_strictlyImproves (μ : Nat) (hμ : 0 < μ) :
    (kzgEvenOptimized μ).fieldAdds < (kzgEvenBaseline μ).fieldAdds ∧
      (kzgEvenOptimized μ).fieldMuls < (kzgEvenBaseline μ).fieldMuls ∧
      (kzgEvenOptimized μ).fieldSquares <
        (kzgEvenBaseline μ).fieldSquares := by
  have hsavings := kzgEvenOptimized_exact_savings μ
  have hpow : 2 ≤ 2 ^ μ := by
    obtain ⟨k, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt hμ)
    rw [pow_succ]
    have hk : 0 < 2 ^ k := pow_pos (by decide) k
    omega
  omega

/-! ## Executable v1 protocol schedule

The schedule below is a trace semantics, not a second arithmetic
implementation. Its constructors name the exact sites in
`HonestProver.honestState`, `HonestProver.honestRound`,
`HonestProver.honestRounds`, `foldOne`, `foldRounds`, `LeafData`, and the
aggregate PPE. The counted interpreters below return the values of those
definitions and a trace at the same time.

No backend operation is emitted here. In particular, a logical Miller input,
MSM input, or GT scalar action is not silently expanded into field, extension
field, or curve operations. Those remain values of the separate `Backend`
type and need S3 conformance theorems.
-/

inductive Role where
  | prover
  | verifier
  | setup
deriving DecidableEq, Repr

inductive Operation where
  | millerTerm
  | finalExponentiation
  | g1ScalarMul
  | g2ScalarMul
  | g1MsmTerm
  | g2MsmTerm
  | gtScalarAction
  | gtDecodeValidationSite
deriving DecidableEq, Repr

inductive InitialPairingSite where
  | comA
  | comC
  | comB
  | ipAb
deriving DecidableEq, Repr

inductive RoundPairingSite where
  | laA
  | laC
  | raA
  | raC
  | lb
  | rb
  | lt
  | rt
deriving DecidableEq, Repr

inductive G1FoldSite where
  | w
  | a
  | c
deriving DecidableEq, Repr

inductive G2FoldSite where
  | v
  | b
deriving DecidableEq, Repr

inductive KzgLane where
  | v
  | w
deriving DecidableEq, Repr

inductive RootGtSite where
  | comA
  | comB
  | comC
  | ipAb
deriving DecidableEq, Repr

inductive RoundGtSite where
  | laA
  | laC
  | raA
  | raC
  | lb
  | rb
  | lt
  | rt
deriving DecidableEq, Repr

inductive GtFoldSite where
  | comA
  | comC
  | comB
  | comT
deriving DecidableEq, Repr

inductive FoldSide where
  | left
  | right
deriving DecidableEq, Repr

inductive FinalCheckSite where
  | baseA
  | baseB
  | baseAb
  | baseC
  | kzgV
  | kzgW
  | ppe
deriving DecidableEq, Repr

/-- One logical operation, retaining the exact v1 site that caused it. -/
inductive Step where
  | proverInitialMiller (site : InitialPairingSite)
  | proverInitialFinalExponentiation (site : InitialPairingSite)
  | proverRoundMiller (site : RoundPairingSite)
  | proverRoundFinalExponentiation (site : RoundPairingSite)
  | proverG1Fold (site : G1FoldSite)
  | proverG2Fold (site : G2FoldSite)
  | proverKzgMsm (lane : KzgLane)
  | verifierRootGtDecode (site : RootGtSite)
  | verifierRoundGtDecode (site : RoundGtSite)
  | verifierGtFold (site : GtFoldSite) (side : FoldSide)
  | verifierFinalExponentiation (site : FinalCheckSite)
deriving DecidableEq, Repr

def Step.role : Step → Role
  | .proverInitialMiller ..
  | .proverInitialFinalExponentiation ..
  | .proverRoundMiller ..
  | .proverRoundFinalExponentiation ..
  | .proverG1Fold ..
  | .proverG2Fold ..
  | .proverKzgMsm .. => .prover
  | .verifierRootGtDecode ..
  | .verifierRoundGtDecode ..
  | .verifierGtFold ..
  | .verifierFinalExponentiation .. => .verifier

def Step.operation : Step → Operation
  | .proverInitialMiller ..
  | .proverRoundMiller .. => .millerTerm
  | .proverInitialFinalExponentiation ..
  | .proverRoundFinalExponentiation ..
  | .verifierFinalExponentiation .. => .finalExponentiation
  | .proverG1Fold .. => .g1ScalarMul
  | .proverG2Fold .. => .g2ScalarMul
  | .proverKzgMsm .v => .g2MsmTerm
  | .proverKzgMsm .w => .g1MsmTerm
  | .verifierRootGtDecode ..
  | .verifierRoundGtDecode .. => .gtDecodeValidationSite
  | .verifierGtFold .. => .gtScalarAction

/-- Count one selected role/operation pair in an executable schedule. -/
def eventCount (role : Role) (operation : Operation) : List Step → Nat
  | [] => 0
  | step :: tail =>
      (if step.role = role ∧ step.operation = operation then 1 else 0) +
        eventCount role operation tail

@[simp] theorem eventCount_append
    (role : Role) (operation : Operation) (left right : List Step) :
    eventCount role operation (left ++ right) =
      eventCount role operation left + eventCount role operation right := by
  induction left with
  | nil => simp [eventCount]
  | cons head tail ih =>
      simp only [List.cons_append, eventCount, ih]
      omega

/-- Repeat a concrete schedule block once for every input in a vector. -/
def repeatBlock : Nat → List Step → List Step
  | 0, _ => []
  | n + 1, block => block ++ repeatBlock n block

@[simp] theorem eventCount_repeatBlock
    (role : Role) (operation : Operation) (n : Nat) (block : List Step) :
    eventCount role operation (repeatBlock n block) =
      n * eventCount role operation block := by
  induction n with
  | zero => simp [repeatBlock, eventCount]
  | succ n ih =>
      simp only [repeatBlock, eventCount_append, ih, Nat.succ_mul]
      omega

def proverInitialPairingBatch
    (n : Nat) (site : InitialPairingSite) : List Step :=
  repeatBlock n [.proverInitialMiller site] ++
    [.proverInitialFinalExponentiation site]

def proverInitialSchedule (n : Nat) : List Step :=
  proverInitialPairingBatch n .comA ++
  proverInitialPairingBatch n .comC ++
  proverInitialPairingBatch n .comB ++
  proverInitialPairingBatch n .ipAb

def proverRoundPairingBatch
    (half : Nat) (site : RoundPairingSite) : List Step :=
  repeatBlock half [.proverRoundMiller site] ++
    [.proverRoundFinalExponentiation site]

def proverRoundFoldSchedule (half : Nat) : List Step :=
  repeatBlock half [.proverG2Fold .v] ++
  repeatBlock half [.proverG1Fold .w] ++
  repeatBlock half [.proverG1Fold .a] ++
  repeatBlock half [.proverG1Fold .c] ++
  repeatBlock half [.proverG2Fold .b]

def proverRoundCommitmentSchedule (half : Nat) : List Step :=
  proverRoundPairingBatch half .laA ++
  proverRoundPairingBatch half .laC ++
  proverRoundPairingBatch half .raA ++
  proverRoundPairingBatch half .raC ++
  proverRoundPairingBatch half .lb ++
  proverRoundPairingBatch half .rb ++
  proverRoundPairingBatch half .lt ++
  proverRoundPairingBatch half .rt

/-- One `honestRounds` successor: eight half-vector pairing batches followed
by the five group-valued folds. The public-scalar fold is intentionally not a
group scalar multiplication. -/
def proverOneRoundSchedule (half : Nat) : List Step :=
  proverRoundCommitmentSchedule half ++ proverRoundFoldSchedule half

/-- Highest-bit-first recursion, definitionally matching `honestRounds`. -/
def proverRoundsSchedule : Nat → List Step
  | 0 => []
  | μ + 1 => proverOneRoundSchedule (2 ^ μ) ++ proverRoundsSchedule μ

def proverKzgSchedule (μ : Nat) : List Step :=
  repeatBlock (Ipp.Extracted.ShippingProver.fullSrsLength μ)
      [.proverKzgMsm .v] ++
    repeatBlock (Ipp.Extracted.ShippingProver.fullSrsLength μ)
      [.proverKzgMsm .w]

/-- Complete modeled prover slice: four root pairing batches, every recursive
GIPA commitment/fold, and the two full-SRS opening MSMs. -/
def proverSchedule (μ : Nat) : List Step :=
  proverInitialSchedule (2 ^ μ) ++
    proverRoundsSchedule μ ++
    proverKzgSchedule μ

/-! ### Exact prover schedules after v1-preserving reductions -/

/-- The authenticated real prefix determines the number of distinct proof
messages in `comA`, `comB`, and `comC`. The randomized `ipAb` messages remain
distinct across the full padded domain. -/
def proverPaddingAwareInitialSchedule
    (paddedCount realCount : Nat) : List Step :=
  proverInitialPairingBatch realCount .comA ++
  proverInitialPairingBatch realCount .comC ++
  proverInitialPairingBatch realCount .comB ++
  proverInitialPairingBatch paddedCount .ipAb

/-- Synthetic division returns one fewer coefficient than the full SRS. The
historical trailing zero is retained in the semantic witness but omitted from
both opening MSM calls. -/
def proverUnpaddedKzgSchedule (μ : Nat) : List Step :=
  repeatBlock (Ipp.Extracted.ShippingProver.fullSrsLength μ - 1)
      [.proverKzgMsm .v] ++
    repeatBlock (Ipp.Extracted.ShippingProver.fullSrsLength μ - 1)
      [.proverKzgMsm .w]

def proverExactOptimizedSchedule (μ realCount : Nat) : List Step :=
  proverPaddingAwareInitialSchedule (2 ^ μ) realCount ++
    proverRoundsSchedule μ ++
    proverUnpaddedKzgSchedule μ

def verifierRootDecodeSchedule : List Step :=
  [.verifierRootGtDecode .comA,
   .verifierRootGtDecode .comB,
   .verifierRootGtDecode .comC,
   .verifierRootGtDecode .ipAb]

def verifierRoundDecodeSchedule : List Step :=
  [.verifierRoundGtDecode .laA,
   .verifierRoundGtDecode .laC,
   .verifierRoundGtDecode .raA,
   .verifierRoundGtDecode .raC,
   .verifierRoundGtDecode .lb,
   .verifierRoundGtDecode .rb,
   .verifierRoundGtDecode .lt,
   .verifierRoundGtDecode .rt]

def verifierRoundFoldSchedule : List Step :=
  [.verifierGtFold .comA .left,
   .verifierGtFold .comA .right,
   .verifierGtFold .comC .left,
   .verifierGtFold .comC .right,
   .verifierGtFold .comB .left,
   .verifierGtFold .comB .right,
   .verifierGtFold .comT .left,
   .verifierGtFold .comT .right]

/-- Four base pairing checks, two KZG pairing checks, and the aggregate PPE. -/
def verifierFinalSchedule : List Step :=
  [.verifierFinalExponentiation .baseA,
   .verifierFinalExponentiation .baseB,
   .verifierFinalExponentiation .baseAb,
   .verifierFinalExponentiation .baseC,
   .verifierFinalExponentiation .kzgV,
   .verifierFinalExponentiation .kzgW,
   .verifierFinalExponentiation .ppe]

def verifierSchedule (μ : Nat) : List Step :=
  verifierRootDecodeSchedule ++
    repeatBlock μ verifierRoundDecodeSchedule ++
    repeatBlock μ verifierRoundFoldSchedule ++
    verifierFinalSchedule

/-! ### Schedule-to-syntax interpreters -/

structure Scheduled (α : Type) where
  result : α
  schedule : List Step

section ProverInterpreter

variable {F G1 G2 GT : Type}
  [Field F]
  [AddCommGroup G1] [Module F G1]
  [AddCommGroup G2] [Module F G2]
  [AddCommGroup GT] [Module F GT]

def countedHonestRound (e : G1 →ₗ[F] G2 →ₗ[F] GT) {μ : Nat}
    (vKeys : Fin (2 ^ (μ + 1)) → G2)
    (wKeys : Fin (2 ^ (μ + 1)) → G1)
    (a c : Fin (2 ^ (μ + 1)) → G1)
    (b : Fin (2 ^ (μ + 1)) → G2)
    (publicValues : Fin (2 ^ (μ + 1)) → F) :
    Scheduled (Ipp.RoundComs G1 GT) :=
  {
    result := Ipp.SnarkPackV1.HonestProver.honestRound
      e vKeys wKeys a c b publicValues
    schedule := proverRoundCommitmentSchedule (2 ^ μ)
  }

/-- Counted recursion computes exactly the current honest-round vector while
emitting the commitment and five group-fold sites at each successor. -/
def countedHonestRounds (e : G1 →ₗ[F] G2 →ₗ[F] GT) :
    (μ : Nat) →
      (Fin (2 ^ μ) → G2) →
      (Fin (2 ^ μ) → G1) →
      (Fin (2 ^ μ) → G1) →
      (Fin (2 ^ μ) → G1) →
      (Fin (2 ^ μ) → G2) →
      (Fin (2 ^ μ) → F) →
      (Fin μ → F) →
      Scheduled (Fin μ → Ipp.RoundComs G1 GT)
  | 0, _vKeys, _wKeys, _a, _c, _b, _public, _challenges =>
      { result := Fin.elim0, schedule := [] }
  | μ + 1, vKeys, wKeys, a, c, b, publicValues, challenges =>
      let raw := challenges 0
      let current := countedHonestRound e vKeys wKeys a c b publicValues
      let tail := countedHonestRounds e μ
        (Ipp.foldKeyRound raw vKeys)
        (Ipp.foldKeyRound raw⁻¹ wKeys)
        (Ipp.foldKeyRound raw⁻¹ a)
        (Ipp.foldKeyRound raw⁻¹ c)
        (Ipp.foldKeyRound raw b)
        (Ipp.foldKeyRound raw publicValues)
        (fun i => challenges i.succ)
      {
        result := Fin.cases current.result tail.result
        schedule := current.schedule ++
          proverRoundFoldSchedule (2 ^ μ) ++ tail.schedule
      }

theorem countedHonestRounds_result
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) (μ : Nat)
    (vKeys : Fin (2 ^ μ) → G2)
    (wKeys : Fin (2 ^ μ) → G1)
    (a c : Fin (2 ^ μ) → G1)
    (b : Fin (2 ^ μ) → G2)
    (publicValues : Fin (2 ^ μ) → F)
    (challenges : Fin μ → F) :
    (countedHonestRounds e μ vKeys wKeys a c b publicValues challenges).result =
      Ipp.SnarkPackV1.HonestProver.honestRounds
        e μ vKeys wKeys a c b publicValues challenges := by
  induction μ with
  | zero => rfl
  | succ μ ih =>
      simp only [countedHonestRounds,
        Ipp.SnarkPackV1.HonestProver.honestRounds, countedHonestRound]
      rw [ih]

theorem countedHonestRounds_schedule
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) (μ : Nat)
    (vKeys : Fin (2 ^ μ) → G2)
    (wKeys : Fin (2 ^ μ) → G1)
    (a c : Fin (2 ^ μ) → G1)
    (b : Fin (2 ^ μ) → G2)
    (publicValues : Fin (2 ^ μ) → F)
    (challenges : Fin μ → F) :
    (countedHonestRounds e μ vKeys wKeys a c b publicValues challenges).schedule =
      proverRoundsSchedule μ := by
  induction μ with
  | zero => rfl
  | succ μ ih =>
      simp only [countedHonestRounds, countedHonestRound,
        proverRoundsSchedule]
      rw [ih]
      rfl

def countedInitialState (e : G1 →ₗ[F] G2 →ₗ[F] GT) {μ : Nat}
    (vKeys : Fin (2 ^ μ) → G2)
    (wKeys : Fin (2 ^ μ) → G1)
    (a c : Fin (2 ^ μ) → G1)
    (b : Fin (2 ^ μ) → G2)
    (publicValues : Fin (2 ^ μ) → F) :
    Scheduled (Ipp.FoldedValues G1 GT) :=
  {
    result := Ipp.SnarkPackV1.HonestProver.honestState
      e vKeys wKeys a c b publicValues
    schedule := proverInitialSchedule (2 ^ μ)
  }

def kzgSrsSchedule {G : Type} {n : Nat}
    (_srs : Fin n → G) (lane : KzgLane) : List Step :=
  repeatBlock n [.proverKzgMsm lane]

def countedKzgBoundary {μ : Nat}
    {statement : Ipp.FsStatement μ F G1 G2 GT}
    (boundary : Ipp.Extracted.ShippingProver.KzgBoundary statement) :
    Scheduled (Ipp.SnarkPackV1.HonestProver.KzgOpenings statement) :=
  {
    result := boundary.toOpenings
    schedule := kzgSrsSchedule boundary.v.fullSrs .v ++
      kzgSrsSchedule boundary.w.fullSrs .w
  }

def countedShippingConstruct {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (boundary : Ipp.Extracted.ShippingProver.KzgBoundary statement) :
    Scheduled (Ipp.Proof μ F G1 G2 GT) :=
  let initial := countedInitialState statement.e statement.srsV
    (Ipp.SnarkPackV1.HonestProver.shiftedW
      statement transcript.randomizer)
    (Ipp.SnarkPackV1.HonestProver.witnessA witness)
    (Ipp.SnarkPackV1.HonestProver.witnessC witness)
    (Ipp.SnarkPackV1.HonestProver.scaledB
      witness transcript.randomizer)
    (Ipp.SnarkPackV1.HonestProver.rPowers transcript.randomizer)
  let rounds := countedHonestRounds statement.e μ statement.srsV
    (Ipp.SnarkPackV1.HonestProver.shiftedW
      statement transcript.randomizer)
    (Ipp.SnarkPackV1.HonestProver.witnessA witness)
    (Ipp.SnarkPackV1.HonestProver.witnessC witness)
    (Ipp.SnarkPackV1.HonestProver.scaledB
      witness transcript.randomizer)
    (Ipp.SnarkPackV1.HonestProver.rPowers transcript.randomizer)
    transcript.roundAnswer
  let kzg := countedKzgBoundary boundary
  {
    result := {
      ComA := initial.result.comA
      ComB := initial.result.comB
      rounds := rounds.result
      aFinal := Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.witnessA witness)
        (Ipp.SnarkPackV1.HonestProver.inverseRounds transcript) 0
      bFinal := Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.scaledB
          witness transcript.randomizer)
        transcript.roundAnswer 0
      cFinal := Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.witnessC witness)
        (Ipp.SnarkPackV1.HonestProver.inverseRounds transcript) 0
      vFinal := Ipp.SnarkPackV1.HonestProver.foldChrono μ
        statement.srsV transcript.roundAnswer 0
      vOpening := kzg.result.openV transcript.kzg
        (Ipp.SnarkPackV1.HonestProver.vCoeffs transcript)
      wFinal := Ipp.SnarkPackV1.HonestProver.foldChrono μ
        (Ipp.SnarkPackV1.HonestProver.shiftedW
          statement transcript.randomizer)
        (Ipp.SnarkPackV1.HonestProver.inverseRounds transcript) 0
      wOpening := kzg.result.openW transcript.kzg
        (Ipp.SnarkPackV1.HonestProver.wCoeffs transcript)
      ipAb := initial.result.comT.1
      aggC := initial.result.comT.2
    }
    schedule := initial.schedule ++ rounds.schedule ++ kzg.schedule
  }

@[simp] theorem countedShippingConstruct_result {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (boundary : Ipp.Extracted.ShippingProver.KzgBoundary statement) :
    (countedShippingConstruct statement witness transcript boundary).result =
      Ipp.SnarkPackV1.HonestProver.construct
        statement witness transcript boundary.toOpenings := by
  simp only [countedShippingConstruct, countedInitialState,
    countedKzgBoundary, countedHonestRounds_result]
  rfl

theorem countedShippingConstruct_schedule {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (boundary : Ipp.Extracted.ShippingProver.KzgBoundary statement) :
    (countedShippingConstruct statement witness transcript boundary).schedule =
      proverSchedule μ := by
  simp only [countedShippingConstruct, countedHonestRounds_schedule,
    countedInitialState, countedKzgBoundary, kzgSrsSchedule,
    proverSchedule, proverKzgSchedule]

end ProverInterpreter

section VerifierInterpreter

variable {F G1 G2 GT : Type}
  [Field F]
  [AddCommGroup G1] [Module F G1]
  [AddCommGroup G2] [Module F G2]
  [AddCommGroup GT] [Module F GT]

def countedFoldOne (x : F) (coms : Ipp.RoundComs G1 GT)
    (acc : Ipp.FoldedValues G1 GT) :
    Scheduled (Ipp.FoldedValues G1 GT) :=
  {
    result := Ipp.foldOne x coms acc
    schedule := verifierRoundFoldSchedule
  }

/-- Counted recursion computes exactly `foldRounds`; its trace contains the
two GT scalar actions for each of the four GT accumulator components. -/
def countedFoldRounds :
    (μ : Nat) → (Fin μ → F) → (Fin μ → Ipp.RoundComs G1 GT) →
      Ipp.FoldedValues G1 GT → Scheduled (Ipp.FoldedValues G1 GT)
  | 0, _, _, acc => { result := acc, schedule := [] }
  | μ + 1, x, rounds, acc =>
      let head := countedFoldOne (x 0) (rounds 0) acc
      let tail := countedFoldRounds μ
        (fun i => x i.succ) (fun i => rounds i.succ) head.result
      {
        result := tail.result
        schedule := head.schedule ++ tail.schedule
      }

theorem countedFoldRounds_result (μ : Nat) (x : Fin μ → F)
    (rounds : Fin μ → Ipp.RoundComs G1 GT)
    (acc : Ipp.FoldedValues G1 GT) :
    (countedFoldRounds μ x rounds acc).result =
      Ipp.foldRounds μ x rounds acc := by
  induction μ generalizing acc with
  | zero => rfl
  | succ μ ih =>
      simp only [countedFoldRounds, countedFoldOne, Ipp.foldRounds]
      rw [ih]

theorem countedFoldRounds_schedule (μ : Nat) (x : Fin μ → F)
    (rounds : Fin μ → Ipp.RoundComs G1 GT)
    (acc : Ipp.FoldedValues G1 GT) :
    (countedFoldRounds μ x rounds acc).schedule =
      repeatBlock μ verifierRoundFoldSchedule := by
  induction μ generalizing acc with
  | zero => rfl
  | succ μ ih =>
      simp only [countedFoldRounds, countedFoldOne, repeatBlock]
      rw [ih]

def verifierRootDecodeOf {μ : Nat}
    (_proof : Ipp.Proof μ F G1 G2 GT) : List Step :=
  verifierRootDecodeSchedule

def verifierRoundDecodeOf :
    (μ : Nat) → (Fin μ → Ipp.RoundComs G1 GT) → List Step
  | 0, _ => []
  | μ + 1, rounds =>
      let _current := rounds 0
      verifierRoundDecodeSchedule ++
        verifierRoundDecodeOf μ (fun i => rounds i.succ)

theorem verifierRoundDecodeOf_eq (μ : Nat)
    (rounds : Fin μ → Ipp.RoundComs G1 GT) :
    verifierRoundDecodeOf μ rounds =
      repeatBlock μ verifierRoundDecodeSchedule := by
  induction μ with
  | zero => rfl
  | succ μ ih =>
      simp only [verifierRoundDecodeOf, repeatBlock]
      rw [ih]

def verifierFinalOf {μ : Nat}
    (_statement : Ipp.FsStatement μ F G1 G2 GT)
    (_proof : Ipp.Proof μ F G1 G2 GT)
    (_transcript : Ipp.FsTranscript μ F) : List Step :=
  verifierFinalSchedule

def leafDataWithFold {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (proof : Ipp.Proof μ F G1 G2 GT)
    (transcript : Ipp.FsTranscript μ F)
    (folded : Ipp.FoldedValues G1 GT) : Prop :=
  statement.e proof.aFinal proof.vFinal = folded.comA.1 ∧
  statement.e proof.wFinal proof.bFinal = folded.comB ∧
  statement.e proof.aFinal proof.bFinal = folded.comT.1 ∧
  statement.e proof.cFinal proof.vFinal = folded.comA.2 ∧
  Ipp.terminalR transcript.randomizer
      (Ipp.reversedView transcript.roundAnswer) • proof.cFinal =
    folded.comT.2 ∧
  statement.acceptV transcript.kzg
    (Ipp.transcriptCoeffs
      (Ipp.reversedView transcript.roundAnswer) 1)
    proof.vFinal proof.vOpening ∧
  statement.acceptW transcript.kzg
    (Ipp.transcriptCoeffs
      (fun i => Ipp.gipaChallenge
        (Ipp.reversedView transcript.roundAnswer i))
      transcript.randomizer⁻¹)
    proof.wFinal proof.wOpening

/-- The result is the normative v1 predicate. The schedule traverses the
actual proof's root and round fields, executes the exact counted fold, then
emits the seven named leaf/PPE pairing checks. -/
def countedVerifier {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (proof : Ipp.Proof μ F G1 G2 GT)
    (transcript : Ipp.FsTranscript μ F) :
    Scheduled Prop :=
  let folded := countedFoldRounds μ transcript.roundAnswer proof.rounds
    { comA := proof.ComA, comB := proof.ComB,
      comT := (proof.ipAb, proof.aggC) }
  {
    result :=
      transcript.randomizer ≠ 0 ∧ transcript.randomizer ≠ 1 ∧
      transcript.x0 ≠ 0 ∧
      (∀ i, transcript.roundAnswer i ≠ 0) ∧
      transcript.bridge ≠ 0 ∧ transcript.kzg ≠ 0 ∧
      leafDataWithFold statement proof transcript folded.result ∧
      statement.e
          ((∑ i : Fin (2 ^ μ),
            transcript.randomizer ^ (i : Nat)) • statement.alpha)
          statement.beta +
        statement.e
          (∑ i : Fin (2 ^ μ),
            transcript.randomizer ^ (i : Nat) • statement.Aic i)
          statement.gamma +
        statement.e proof.aggC statement.delta = proof.ipAb
    schedule := verifierRootDecodeOf proof ++
      verifierRoundDecodeOf μ proof.rounds ++
      folded.schedule ++
      verifierFinalOf statement proof transcript
  }

@[simp] theorem countedVerifier_result {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (proof : Ipp.Proof μ F G1 G2 GT)
    (transcript : Ipp.FsTranscript μ F) :
    (countedVerifier statement proof transcript).result ↔
      Ipp.SnarkPackV1.Accepts statement proof transcript := by
  simp only [countedVerifier, countedFoldRounds_result,
    Ipp.SnarkPackV1.Accepts, Ipp.FsAccepts, Ipp.LeafData,
    Ipp.terminalFold, leafDataWithFold]

theorem countedVerifier_schedule {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (proof : Ipp.Proof μ F G1 G2 GT)
    (transcript : Ipp.FsTranscript μ F) :
    (countedVerifier statement proof transcript).schedule =
      verifierSchedule μ := by
  simp only [countedVerifier, verifierRootDecodeOf, verifierFinalOf,
    verifierSchedule, verifierRoundDecodeOf_eq, countedFoldRounds_schedule]

end VerifierInterpreter

/-! ### Closed forms derived from the schedule -/

theorem proverRounds_miller_terms (μ : Nat) :
    eventCount .prover .millerTerm (proverRoundsSchedule μ) =
      8 * (2 ^ μ - 1) := by
  induction μ with
  | zero => rfl
  | succ μ ih =>
      simp [proverRoundsSchedule, ih,
        proverOneRoundSchedule, proverRoundCommitmentSchedule,
        proverRoundPairingBatch,
        proverRoundFoldSchedule, eventCount, Step.role, Step.operation,
        pow_succ] <;>
      omega

theorem proverRounds_final_exponentiations (μ : Nat) :
    eventCount .prover .finalExponentiation (proverRoundsSchedule μ) =
      8 * μ := by
  induction μ with
  | zero => rfl
  | succ μ ih =>
      simp [proverRoundsSchedule, ih,
        proverOneRoundSchedule, proverRoundCommitmentSchedule,
        proverRoundPairingBatch,
        proverRoundFoldSchedule, eventCount, Step.role, Step.operation] <;>
      omega

theorem proverRounds_g1_scalar_muls (μ : Nat) :
    eventCount .prover .g1ScalarMul (proverRoundsSchedule μ) =
      3 * (2 ^ μ - 1) := by
  induction μ with
  | zero => rfl
  | succ μ ih =>
      simp [proverRoundsSchedule, ih,
        proverOneRoundSchedule, proverRoundCommitmentSchedule,
        proverRoundPairingBatch,
        proverRoundFoldSchedule, eventCount, Step.role, Step.operation,
        pow_succ] <;>
      omega

theorem proverRounds_g2_scalar_muls (μ : Nat) :
    eventCount .prover .g2ScalarMul (proverRoundsSchedule μ) =
      2 * (2 ^ μ - 1) := by
  induction μ with
  | zero => rfl
  | succ μ ih =>
      simp [proverRoundsSchedule, ih,
        proverOneRoundSchedule, proverRoundCommitmentSchedule,
        proverRoundPairingBatch,
        proverRoundFoldSchedule, eventCount, Step.role, Step.operation,
        pow_succ] <;>
      omega

theorem proverRounds_g1_msm_terms (μ : Nat) :
    eventCount .prover .g1MsmTerm (proverRoundsSchedule μ) = 0 := by
  induction μ with
  | zero => rfl
  | succ μ ih =>
      simp [proverRoundsSchedule, ih,
        proverOneRoundSchedule, proverRoundCommitmentSchedule,
        proverRoundPairingBatch, proverRoundFoldSchedule,
        eventCount, Step.role, Step.operation]

theorem proverRounds_g2_msm_terms (μ : Nat) :
    eventCount .prover .g2MsmTerm (proverRoundsSchedule μ) = 0 := by
  induction μ with
  | zero => rfl
  | succ μ ih =>
      simp [proverRoundsSchedule, ih,
        proverOneRoundSchedule, proverRoundCommitmentSchedule,
        proverRoundPairingBatch, proverRoundFoldSchedule,
        eventCount, Step.role, Step.operation]

theorem prover_schedule_miller_terms (μ : Nat) :
    eventCount .prover .millerTerm (proverSchedule μ) =
      12 * 2 ^ μ - 8 := by
  have hpow : 0 < 2 ^ μ := pow_pos (by decide) μ
  simp [proverSchedule, proverInitialSchedule,
    proverInitialPairingBatch, proverKzgSchedule, eventCount_append,
    eventCount_repeatBlock, eventCount, Step.role, Step.operation,
    if_pos, if_neg, zero_add, add_zero, mul_one, mul_zero,
    proverRounds_miller_terms] <;>
  omega

theorem prover_schedule_final_exponentiations (μ : Nat) :
    eventCount .prover .finalExponentiation (proverSchedule μ) =
      4 + 8 * μ := by
  simp [proverSchedule, proverInitialSchedule,
    proverInitialPairingBatch, proverKzgSchedule, eventCount_append,
    eventCount_repeatBlock, eventCount, Step.role, Step.operation,
    if_pos, if_neg, zero_add, add_zero, mul_one, mul_zero,
    proverRounds_final_exponentiations] <;>
  omega

theorem prover_schedule_g1_primary_fold_scalar_muls (μ : Nat) :
    eventCount .prover .g1ScalarMul (proverSchedule μ) =
      3 * (2 ^ μ - 1) := by
  simp [proverSchedule, proverInitialSchedule,
    proverInitialPairingBatch, proverKzgSchedule, eventCount_append,
    eventCount_repeatBlock, eventCount, Step.role, Step.operation,
    if_pos, if_neg, zero_add, add_zero, mul_one, mul_zero,
    proverRounds_g1_scalar_muls]

theorem prover_schedule_g2_primary_fold_scalar_muls (μ : Nat) :
    eventCount .prover .g2ScalarMul (proverSchedule μ) =
      2 * (2 ^ μ - 1) := by
  simp [proverSchedule, proverInitialSchedule,
    proverInitialPairingBatch, proverKzgSchedule, eventCount_append,
    eventCount_repeatBlock, eventCount, Step.role, Step.operation,
    if_pos, if_neg, zero_add, add_zero, mul_one, mul_zero,
    proverRounds_g2_scalar_muls]

theorem prover_schedule_g1_kzg_msm_terms (μ : Nat) :
    eventCount .prover .g1MsmTerm (proverSchedule μ) =
      2 * 2 ^ μ - 1 := by
  simp [proverSchedule, proverInitialSchedule,
    proverInitialPairingBatch, proverKzgSchedule, eventCount_append,
    eventCount_repeatBlock, eventCount, Step.role, Step.operation,
    if_pos, if_neg, zero_add, add_zero, mul_one, mul_zero,
    proverRounds_g1_msm_terms]
  rfl

theorem prover_schedule_g2_kzg_msm_terms (μ : Nat) :
    eventCount .prover .g2MsmTerm (proverSchedule μ) =
      2 * 2 ^ μ - 1 := by
  simp [proverSchedule, proverInitialSchedule,
    proverInitialPairingBatch, proverKzgSchedule, eventCount_append,
    eventCount_repeatBlock, eventCount, Step.role, Step.operation,
    if_pos, if_neg, zero_add, add_zero, mul_one, mul_zero,
    proverRounds_g2_msm_terms]
  rfl

theorem prover_exact_optimized_miller_terms (μ realCount : Nat) :
    eventCount .prover .millerTerm
        (proverExactOptimizedSchedule μ realCount) =
      9 * 2 ^ μ + 3 * realCount - 8 := by
  have hpow : 0 < 2 ^ μ := pow_pos (by decide) μ
  simp [proverExactOptimizedSchedule,
    proverPaddingAwareInitialSchedule, proverInitialPairingBatch,
    proverUnpaddedKzgSchedule, eventCount_append, eventCount_repeatBlock,
    eventCount, Step.role, Step.operation, proverRounds_miller_terms] <;>
  omega

/-- Coalescing the three repeated-message root commitments saves exactly
three Miller inputs per padded proof. The theorem states the equality without
natural-number subtraction on the total, so the strict result is immediate. -/
theorem prover_padding_pairing_exact_saving (μ realCount : Nat)
    (hreal : realCount ≤ 2 ^ μ) :
    eventCount .prover .millerTerm (proverSchedule μ) =
      eventCount .prover .millerTerm
          (proverExactOptimizedSchedule μ realCount) +
        3 * (2 ^ μ - realCount) := by
  rw [prover_schedule_miller_terms,
    prover_exact_optimized_miller_terms]
  have hpow : 0 < 2 ^ μ := pow_pos (by decide) μ
  omega

theorem prover_padding_pairing_strictly_fewer (μ realCount : Nat)
    (hreal : realCount < 2 ^ μ) :
    eventCount .prover .millerTerm
        (proverExactOptimizedSchedule μ realCount) <
      eventCount .prover .millerTerm (proverSchedule μ) := by
  rw [prover_schedule_miller_terms,
    prover_exact_optimized_miller_terms]
  have hpow : 0 < 2 ^ μ := pow_pos (by decide) μ
  omega

theorem prover_exact_optimized_g1_kzg_msm_terms (μ realCount : Nat) :
    eventCount .prover .g1MsmTerm
        (proverExactOptimizedSchedule μ realCount) =
      2 * 2 ^ μ - 2 := by
  simp [proverExactOptimizedSchedule,
    proverPaddingAwareInitialSchedule, proverInitialPairingBatch,
    proverUnpaddedKzgSchedule, eventCount_append, eventCount_repeatBlock,
    eventCount, Step.role, Step.operation, proverRounds_g1_msm_terms,
    Ipp.Extracted.ShippingProver.fullSrsLength, pow_succ]
  have hpow : 0 < 2 ^ μ := pow_pos (by decide) μ
  omega

theorem prover_exact_optimized_g2_kzg_msm_terms (μ realCount : Nat) :
    eventCount .prover .g2MsmTerm
        (proverExactOptimizedSchedule μ realCount) =
      2 * 2 ^ μ - 2 := by
  simp [proverExactOptimizedSchedule,
    proverPaddingAwareInitialSchedule, proverInitialPairingBatch,
    proverUnpaddedKzgSchedule, eventCount_append, eventCount_repeatBlock,
    eventCount, Step.role, Step.operation, proverRounds_g2_msm_terms,
    Ipp.Extracted.ShippingProver.fullSrsLength, pow_succ]
  have hpow : 0 < 2 ^ μ := pow_pos (by decide) μ
  omega

theorem prover_unpadded_kzg_exact_saving (μ realCount : Nat) :
    (eventCount .prover .g1MsmTerm (proverSchedule μ) =
      eventCount .prover .g1MsmTerm
        (proverExactOptimizedSchedule μ realCount) + 1) ∧
    (eventCount .prover .g2MsmTerm (proverSchedule μ) =
      eventCount .prover .g2MsmTerm
        (proverExactOptimizedSchedule μ realCount) + 1) := by
  rw [prover_schedule_g1_kzg_msm_terms,
    prover_schedule_g2_kzg_msm_terms,
    prover_exact_optimized_g1_kzg_msm_terms,
    prover_exact_optimized_g2_kzg_msm_terms]
  have hpow : 0 < 2 ^ μ := pow_pos (by decide) μ
  omega

theorem verifier_schedule_gt_decode_validation_sites (μ : Nat) :
    eventCount .verifier .gtDecodeValidationSite (verifierSchedule μ) =
      4 + 8 * μ := by
  simp [verifierSchedule, verifierRootDecodeSchedule,
    verifierRoundDecodeSchedule, verifierRoundFoldSchedule,
    verifierFinalSchedule, eventCount_append, eventCount_repeatBlock,
    eventCount, Step.role, Step.operation, if_pos, if_neg,
    zero_add, add_zero, mul_one, mul_zero] <;>
  omega

theorem verifier_schedule_gt_scalar_actions (μ : Nat) :
    eventCount .verifier .gtScalarAction (verifierSchedule μ) =
      8 * μ := by
  simp [verifierSchedule, verifierRootDecodeSchedule,
    verifierRoundDecodeSchedule, verifierRoundFoldSchedule,
    verifierFinalSchedule, eventCount_append, eventCount_repeatBlock,
    eventCount, Step.role, Step.operation, if_pos, if_neg,
    zero_add, add_zero, mul_one, mul_zero] <;>
  omega

theorem verifier_schedule_final_exponentiations (μ : Nat) :
    eventCount .verifier .finalExponentiation (verifierSchedule μ) = 7 := by
  simp [verifierSchedule, verifierRootDecodeSchedule,
    verifierRoundDecodeSchedule, verifierRoundFoldSchedule,
    verifierFinalSchedule, eventCount_append, eventCount_repeatBlock,
    eventCount, Step.role, Step.operation]

/-- The recurrence-proved slice of the v1 baseline for `n = 2^μ`.

The prover pairing counts cover logical input pairs submitted by the release
aggregate-construction core:
three initial pairing commitments, `ip_ab`, and the eight cross-pairing
products per GIPA round. A backend may skip identity pairs. The
scalar-multiplication fields cover only the six primary GIPA folds. The MSM
fields cover logical base/scalar inputs to the two KZG opening MSMs, including
the padded zero coefficient.

The verifier validation field counts accepted-wire GT decode/validation sites;
turning each site into a subgroup-validation claim needs the concrete Arkworks
decode contract. The verifier exponentiation field covers only the four GT
GIPA folds (two scalar actions each) per round; it excludes the fixed PPE GT
scalar action. The seven final exponentiations cover the accepted verifier
path's two KZG equations, three base checks, one `c` check, and one PPE.
-/
structure StructuralBaseline where
  proverMillerTerms : Nat
  proverFinalExponentiations : Nat
  proverG1PrimaryFoldScalarMuls : Nat
  proverG2PrimaryFoldScalarMuls : Nat
  proverG1KzgMsmTerms : Nat
  proverG2KzgMsmTerms : Nat
  verifierGtDecodeValidationSites : Nat
  verifierGipaGtExponentiations : Nat
  verifierFinalExponentiations : Nat
deriving DecidableEq, Repr

def snarkPackV1Baseline (μ : Nat) : StructuralBaseline :=
  {
    proverMillerTerms :=
      eventCount .prover .millerTerm (proverSchedule μ)
    proverFinalExponentiations :=
      eventCount .prover .finalExponentiation (proverSchedule μ)
    proverG1PrimaryFoldScalarMuls :=
      eventCount .prover .g1ScalarMul (proverSchedule μ)
    proverG2PrimaryFoldScalarMuls :=
      eventCount .prover .g2ScalarMul (proverSchedule μ)
    proverG1KzgMsmTerms :=
      eventCount .prover .g1MsmTerm (proverSchedule μ)
    proverG2KzgMsmTerms :=
      eventCount .prover .g2MsmTerm (proverSchedule μ)
    verifierGtDecodeValidationSites :=
      eventCount .verifier .gtDecodeValidationSite (verifierSchedule μ)
    verifierGipaGtExponentiations :=
      eventCount .verifier .gtScalarAction (verifierSchedule μ)
    verifierFinalExponentiations :=
      eventCount .verifier .finalExponentiation (verifierSchedule μ)
  }

theorem prover_miller_terms (μ : Nat) :
    (snarkPackV1Baseline μ).proverMillerTerms = 12 * 2 ^ μ - 8 := by
  exact prover_schedule_miller_terms μ

theorem prover_final_exponentiations (μ : Nat) :
    (snarkPackV1Baseline μ).proverFinalExponentiations = 4 + 8 * μ := by
  exact prover_schedule_final_exponentiations μ

theorem prover_primary_fold_scalar_muls (μ : Nat) :
    (snarkPackV1Baseline μ).proverG1PrimaryFoldScalarMuls +
      (snarkPackV1Baseline μ).proverG2PrimaryFoldScalarMuls =
        5 * (2 ^ μ - 1) := by
  simp only [snarkPackV1Baseline]
  rw [prover_schedule_g1_primary_fold_scalar_muls,
    prover_schedule_g2_primary_fold_scalar_muls]
  omega

theorem prover_kzg_msm_terms (μ : Nat) :
    (snarkPackV1Baseline μ).proverG1KzgMsmTerms +
      (snarkPackV1Baseline μ).proverG2KzgMsmTerms =
        4 * 2 ^ μ - 2 := by
  simp only [snarkPackV1Baseline]
  rw [prover_schedule_g1_kzg_msm_terms,
    prover_schedule_g2_kzg_msm_terms]
  have hpow : 0 < 2 ^ μ := pow_pos (by decide) μ
  omega

/-- Compatibility-named root for the accepted-wire GT validation-site count.
It does not prove the external Arkworks subgroup-validation postcondition. -/
theorem verifier_gt_subgroup_validations (μ : Nat) :
    (snarkPackV1Baseline μ).verifierGtDecodeValidationSites = 4 + 8 * μ := by
  exact verifier_schedule_gt_decode_validation_sites μ

/-- The GIPA fold subtotal; the fixed PPE GT scalar action is not included. -/
theorem verifier_gt_exponentiations (μ : Nat) :
    (snarkPackV1Baseline μ).verifierGipaGtExponentiations = 8 * μ := by
  exact verifier_schedule_gt_scalar_actions μ

theorem verifier_final_exponentiations (μ : Nat) :
    (snarkPackV1Baseline μ).verifierFinalExponentiations = 7 :=
  verifier_schedule_final_exponentiations μ

/-- Formal v1 schedule capstone. It couples the shipping KZG boundary and
current honest constructor to the prover schedule, couples the normative
acceptance predicate and exact fold recursion to the verifier schedule, and
collects all closed forms. This is protocol-level conformance only; it makes
no claim about the Rust call graph or backend arithmetic. -/
theorem snarkPackV1_protocol_schedule_conformance
    {F G1 G2 GT : Type}
    [Field F]
    [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (boundary : Ipp.Extracted.ShippingProver.KzgBoundary statement)
    (proof : Ipp.Proof μ F G1 G2 GT) :
    (countedShippingConstruct statement witness transcript boundary).result =
        Ipp.SnarkPackV1.HonestProver.construct
          statement witness transcript boundary.toOpenings ∧
      (countedShippingConstruct
        statement witness transcript boundary).schedule = proverSchedule μ ∧
      ((countedVerifier statement proof transcript).result ↔
        Ipp.SnarkPackV1.Accepts statement proof transcript) ∧
      (countedVerifier statement proof transcript).schedule =
        verifierSchedule μ ∧
      (snarkPackV1Baseline μ).proverMillerTerms = 12 * 2 ^ μ - 8 ∧
      (snarkPackV1Baseline μ).proverFinalExponentiations = 4 + 8 * μ ∧
      (snarkPackV1Baseline μ).proverG1PrimaryFoldScalarMuls +
          (snarkPackV1Baseline μ).proverG2PrimaryFoldScalarMuls =
        5 * (2 ^ μ - 1) ∧
      (snarkPackV1Baseline μ).proverG1KzgMsmTerms +
          (snarkPackV1Baseline μ).proverG2KzgMsmTerms =
        4 * 2 ^ μ - 2 ∧
      (snarkPackV1Baseline μ).verifierGtDecodeValidationSites =
        4 + 8 * μ ∧
      (snarkPackV1Baseline μ).verifierGipaGtExponentiations = 8 * μ ∧
      (snarkPackV1Baseline μ).verifierFinalExponentiations = 7 := by
  exact ⟨countedShippingConstruct_result _ _ _ _,
    countedShippingConstruct_schedule _ _ _ _,
    countedVerifier_result _ _ _,
    countedVerifier_schedule _ _ _,
    prover_miller_terms μ,
    prover_final_exponentiations μ,
    prover_primary_fold_scalar_muls μ,
    prover_kzg_msm_terms μ,
    verifier_gt_subgroup_validations μ,
    verifier_gt_exponentiations μ,
    verifier_final_exponentiations μ⟩

#print axioms snarkPackV1_protocol_schedule_conformance

end Ipp.Cost

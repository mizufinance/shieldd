import Ipp.Extracted.AggregateAdapterGenerated
import Ipp.Extracted.InversePowers
import Ipp.Extracted.VerifyTippMipp
import Ipp.HonestProver

/-!
Exact structural projection of the production aggregate prover. Pairings,
MSMs, challenge derivation, inversion, and KZG opening construction remain at
their narrow effect boundaries; this module proves the extracted fold-order and
proof-assembly boundary does not add a second protocol interpretation.
-/

namespace Ipp.Extracted.AggregateProver

open Aeneas Aeneas.Std Result
open ark_ip_proofs

noncomputable section

abbrev WireIdentity (T : Type) := alloc.vec.Vec T

abbrev WireCommitment (G1 GT : Type) :=
  applications.groth16_aggregation.TippMippCommitmentData
    GT (WireIdentity GT) (WireIdentity G1)

abbrev WireRound (G1 GT : Type) :=
  WireCommitment G1 GT × WireCommitment G1 GT

abbrev WireProof (G1 G2 GT D : Type) :=
  applications.groth16_aggregation.AggregateProofData
    G1 G2 GT (WireIdentity GT) (WireIdentity G1) D

/-- Serialization dictionaries carried by the extracted constructors. The
constructors are data-only and therefore never invoke these methods. -/
structure Serialization (G1 G2 GT : Type) where
  g1Serialize : ark_serialize.CanonicalSerialize G1
  g1Deserialize : ark_serialize.CanonicalDeserialize G1
  g2Serialize : ark_serialize.CanonicalSerialize G2
  g2Deserialize : ark_serialize.CanonicalDeserialize G2
  gtSerialize : ark_serialize.CanonicalSerialize GT
  gtDeserialize : ark_serialize.CanonicalDeserialize GT
  abSerialize : ark_serialize.CanonicalSerialize (WireIdentity GT)
  abDeserialize : ark_serialize.CanonicalDeserialize (WireIdentity GT)
  cSerialize : ark_serialize.CanonicalSerialize (WireIdentity G1)
  cDeserialize : ark_serialize.CanonicalDeserialize (WireIdentity G1)

private def cloneModel (T : Type) : core.clone.Clone T where
  clone value := .ok value

private def addModel (T : Type) [Add T] :
    ark_ip_proofs.core.ops.arith.Add T T T where
  add left right := .ok (left + right)

/-- Rust spells scalar multiplication as `point * scalar`; the formal model
uses the conventional scalar-on-the-left action. -/
private def rightSmulModel (F T : Type) [SMul F T] :
    ark_ip_proofs.core.ops.arith.Mul T F T where
  mul value scalar := .ok (scalar • value)

private def finSlice {T : Type} {n : Nat} (values : Fin n → T) : Slice T :=
  ⟨List.ofFn values⟩

private def finVec {T : Type} {n : Nat}
    (values : Fin n → T) : alloc.vec.Vec T :=
  ⟨List.ofFn values⟩

def fold_vector_refinement_statement
    {F M : Type} [Field F] [AddCommGroup M] [Module F M]
    {n : Nat} (scaled unscaled : Fin n → M) (scalar : F) : Prop :=
  applications.groth16_aggregation.fold_vector_core
      (cloneModel M) (rightSmulModel F M) (addModel M) (cloneModel F)
      (finSlice scaled) (finSlice unscaled) scalar =
    .ok (finVec (Ipp.foldMsg scalar (Fin.addCases unscaled scaled)))

private def foldBody
    {F M : Type} [SMul F M] [Add M]
    (scaled unscaled : Slice M) (scalar : F) :
    (alloc.vec.Vec M × Usize) →
      Result (ControlFlow (alloc.vec.Vec M × Usize) (alloc.vec.Vec M)) :=
  fun (folded, index) =>
    applications.groth16_aggregation.fold_vector_core_loop.body
      (cloneModel M) (rightSmulModel F M) (addModel M) (cloneModel F)
      scaled unscaled scalar folded index

private theorem foldFuel
    {F M : Type} [Field F] [AddCommGroup M] [Module F M]
    (scaled unscaled : Slice M) (s u : Nat → M) (scalar : F)
    (start n : Nat) (xs : List M)
    (hscaledLen : scaled.val.length = start + n)
    (hunscaledLen : unscaled.val.length = start + n)
    (hs : ∀ i, start ≤ i → i < start + n →
      scaled.val[i]? = some (s i))
    (hu : ∀ i, start ≤ i → i < start + n →
      unscaled.val[i]? = some (u i)) :
    loopFuel (foldBody scaled unscaled scalar) (n + 1)
      (⟨xs⟩, ⟨start⟩) =
      .ok ⟨xs ++
        (List.range' start n).map (fun i => scalar • s i + u i)⟩ := by
  induction n generalizing start xs with
  | zero =>
      rw [loopFuel]
      simp [foldBody,
        applications.groth16_aggregation.fold_vector_core_loop.body,
        Slice.len, hscaledLen, hunscaledLen]
  | succ n ih =>
      have hscaled : start < scaled.val.length := by omega
      have hunscaled : start < unscaled.val.length := by omega
      have hs0 := hs start (by omega) (by omega)
      have hu0 := hu start (by omega) (by omega)
      have hsElem : scaled.val[start] = s start := by
        rw [List.getElem?_eq_getElem hscaled] at hs0
        exact Option.some.inj hs0
      have huElem : unscaled.val[start] = u start := by
        rw [List.getElem?_eq_getElem hunscaled] at hu0
        exact Option.some.inj hu0
      rw [loopFuel]
      simp [foldBody,
        applications.groth16_aggregation.fold_vector_core_loop.body,
        Slice.len, hscaled, hunscaled, cloneModel,
        rightSmulModel, addModel, Slice.index_usize, alloc.vec.Vec.push]
      rw [hsElem, huElem]
      rw [ih (start := start + 1)
        (xs := xs ++ [scalar • s start + u start])]
      · simp [List.range'_succ, List.append_assoc]
      · omega
      · omega
      · intro i hi hlo
        apply hs i (by omega) (by omega)
      · intro i hi hlo
        apply hu i (by omega) (by omega)

private theorem foldLoop
    {F M : Type} [Field F] [AddCommGroup M] [Module F M]
    (scaled unscaled : Slice M) (s u : Nat → M) (scalar : F)
    (start n : Nat) (xs : List M)
    (hscaledLen : scaled.val.length = start + n)
    (hunscaledLen : unscaled.val.length = start + n)
    (hs : ∀ i, start ≤ i → i < start + n →
      scaled.val[i]? = some (s i))
    (hu : ∀ i, start ≤ i → i < start + n →
      unscaled.val[i]? = some (u i)) :
    applications.groth16_aggregation.fold_vector_core_loop
      (cloneModel M) (rightSmulModel F M) (addModel M) (cloneModel F)
      scaled unscaled scalar ⟨xs⟩ ⟨start⟩ =
      .ok ⟨xs ++
        (List.range' start n).map (fun i => scalar • s i + u i)⟩ := by
  unfold applications.groth16_aggregation.fold_vector_core_loop
  apply loop_eq_of_fuel (fuel := n + 1) (by simp)
  exact foldFuel scaled unscaled s u scalar start n xs
    hscaledLen hunscaledLen hs hu

/-- The executed production fold is exactly the model's
`upper * scalar + lower` GIPA fold for equal-length halves. -/
theorem fold_vector_core_exact
    {F M : Type} [Field F] [AddCommGroup M] [Module F M]
    {n : Nat} (scaled unscaled : Fin n → M) (scalar : F) :
    fold_vector_refinement_statement scaled unscaled scalar := by
  unfold fold_vector_refinement_statement
  unfold applications.groth16_aggregation.fold_vector_core
  simp [alloc.vec.Vec.with_capacity, Slice.len, finSlice]
  let s : Nat → M :=
    fun i => if h : i < n then scaled ⟨i, h⟩ else 0
  let u : Nat → M :=
    fun i => if h : i < n then unscaled ⟨i, h⟩ else 0
  have hrun := foldLoop
    (finSlice scaled) (finSlice unscaled) s u scalar 0 n []
    (by simp [finSlice])
    (by simp [finSlice])
    (by
      intro i _ hi
      have hi' : i < n := by omega
      rw [show (finSlice scaled).val[i]? =
        (List.ofFn scaled)[i]? by rfl, List.getElem?_ofFn, dif_pos hi']
      simp only [s, dif_pos hi'])
    (by
      intro i _ hi
      have hi' : i < n := by omega
      rw [show (finSlice unscaled).val[i]? =
        (List.ofFn unscaled)[i]? by rfl, List.getElem?_ofFn, dif_pos hi']
      simp only [u, dif_pos hi'])
  simpa only [Nat.zero_add] using hrun.trans (by
    congr 2
    simp only [List.nil_append]
    apply List.ext_getElem?
    intro i
    rw [List.getElem?_ofFn]
    by_cases hi : i < n
    · simp only [List.range'_eq_map_range, List.getElem?_map,
        List.getElem?_range hi, Option.map_some, s, u, dif_pos hi]
      simp only [Nat.zero_add, dif_pos hi, Ipp.foldMsg,
        Fin.addCases_right, Fin.addCases_left]
    · simp [List.range'_eq_map_range, hi])

/-- The same extracted power loop is used with the raw aggregate randomizer,
so it constructs `[1, r, …, r^(n-1)]` rather than introducing a second
structured-scalar implementation. -/
theorem randomizer_powers_core_exact
    {F : Type} [Field F] {n : Nat} (randomizer : F) :
    Ipp.Extracted.inverse_powers_refinement_statement
      (n := n) randomizer :=
  Ipp.Extracted.hax_translated_inverse_powers_eq randomizer

/-- Exact left/right field order emitted by `commit_tipp_mipp_round`.
The singleton wrappers are the production `IdentityOutput` wire encoding. -/
def wireRound {G1 GT : Type} (round : Ipp.RoundComs G1 GT) :
    WireRound G1 GT :=
  (
    {
      ab := (round.LA.1, round.LB, ⟨[round.LT.1]⟩)
      c := (round.LA.2, ⟨[round.LT.2]⟩)
    },
    {
      ab := (round.RA.1, round.RB, ⟨[round.RT.1]⟩)
      c := (round.RA.2, ⟨[round.RT.2]⟩)
    }
  )

def chronologicalRounds {μ : Nat} {F G1 G2 GT : Type}
    (proof : Ipp.Proof μ F G1 G2 GT) : alloc.vec.Vec (WireRound G1 GT) :=
  ⟨List.ofFn (fun i => wireRound (proof.rounds i))⟩

/-- Production stores GIPA commitments in reverse chronological wire order. -/
def wireRounds {μ : Nat} {F G1 G2 GT : Type}
    (proof : Ipp.Proof μ F G1 G2 GT) : alloc.vec.Vec (WireRound G1 GT) :=
  ⟨List.ofFn (fun i => wireRound (Ipp.reversedView proof.rounds i))⟩

/-- Canonical raw production representation of one formal v1 proof. -/
def wireProofOf (D : Type) {μ : Nat} {F G1 G2 GT : Type}
    (proof : Ipp.Proof μ F G1 G2 GT) : WireProof G1 G2 GT D :=
  {
    com_a := proof.ComA.1
    com_b := proof.ComB
    com_c := proof.ComA.2
    ip_ab := proof.ipAb
    agg_c := proof.aggC
    tipp_mipp_proof := {
      gipa_proof := {
        r_commitment_steps := wireRounds proof
        _digest := ()
      }
      final_ck := (proof.vFinal, proof.wFinal)
      final_ck_proofs := (proof.vOpening, proof.wOpening)
      final_messages := (proof.aFinal, proof.bFinal, proof.cFinal)
      _digest := ()
    }
  }

/-- The extracted production constructor fixes the exact five round fields. -/
theorem tipp_mipp_commitment_from_parts_exact
    {G1 G2 GT : Type} (serialization : Serialization G1 G2 GT)
    (comA comB comC : GT) (ipAB : WireIdentity GT)
    (ipC : WireIdentity G1) :
    applications.groth16_aggregation.tipp_mipp_commitment_from_parts
        serialization.gtSerialize serialization.gtDeserialize
        serialization.abSerialize serialization.abDeserialize
        serialization.cSerialize serialization.cDeserialize
        comA comB ipAB comC ipC =
      .ok {
        ab := (comA, comB, ipAB)
        c := (comC, ipC)
      } := by
  rfl

/-- The executed reversal core turns chronological round emission into the
wire order consumed by the verifier. -/
theorem reverse_chronological_rounds_exact
    {μ : Nat} {G1 G2 GT F : Type}
    (proof : Ipp.Proof μ F G1 G2 GT) :
    applications.groth16_aggregation.reverse_chronological_core
        (chronologicalRounds proof) =
      .ok (wireRounds proof) := by
  unfold applications.groth16_aggregation.reverse_chronological_core
    chronologicalRounds wireRounds
  simp only [alloc.vec.Vec.deref_mut, core.slice.Slice.reverse, lift,
    Result.bind_ok]
  rw [Ipp.Extracted.VerifyTippMipp.reverse_chronological_eq_reversedView
    (fun i => wireRound (proof.rounds i))]
  rfl

/-- The production-used extracted constructors, in their executed order. -/
def assemble
    (D : Type) {μ : Nat} {G1 G2 GT F : Type}
    (serialization : Serialization G1 G2 GT)
    (proof : Ipp.Proof μ F G1 G2 GT) :
    Result (WireProof G1 G2 GT D) := do
  let rounds ←
    applications.groth16_aggregation.reverse_chronological_core
      (chronologicalRounds proof)
  let gipa ←
    applications.groth16_aggregation.tipp_mipp_gipa_proof_from_wire_rounds
      D serialization.gtSerialize serialization.gtDeserialize
      serialization.abSerialize serialization.abDeserialize
      serialization.cSerialize serialization.cDeserialize rounds
  let tipp ←
    applications.groth16_aggregation.tipp_mipp_proof_from_parts
      serialization.g1Serialize serialization.g1Deserialize
      serialization.g2Serialize serialization.g2Deserialize
      serialization.gtSerialize serialization.gtDeserialize
      serialization.abSerialize serialization.abDeserialize
      serialization.cSerialize serialization.cDeserialize
      gipa (proof.vFinal, proof.wFinal)
      (proof.vOpening, proof.wOpening)
      (proof.aFinal, proof.bFinal, proof.cFinal)
  applications.groth16_aggregation.aggregate_proof_from_parts
    serialization.g1Serialize serialization.g1Deserialize
    serialization.g2Serialize serialization.g2Deserialize
    serialization.gtSerialize serialization.gtDeserialize
    serialization.abSerialize serialization.abDeserialize
    serialization.cSerialize serialization.cDeserialize
    proof.ComA.1 proof.ComB proof.ComA.2 proof.ipAb proof.aggC tipp

/-- Extracted structural assembly is exactly the canonical raw wire projection;
there is no alternate proof, round, or terminal-field interpretation. -/
theorem assemble_exact
    (D : Type) {μ : Nat} {G1 G2 GT F : Type}
    (serialization : Serialization G1 G2 GT)
    (proof : Ipp.Proof μ F G1 G2 GT) :
    assemble D serialization proof = .ok (wireProofOf D proof) := by
  unfold assemble
  rw [reverse_chronological_rounds_exact]
  rfl

/-- Honest completeness transported through the extracted production
structural assembly. The returned wire proof is byte-shape data for the same
formal proof accepted by v1, not a proof supplied by a second specification. -/
theorem extracted_structural_assembly_honest_complete
    {F G1 G2 GT : Type}
    [Field F]
    [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT]
    (D : Type) {μ : Nat}
    (serialization : Serialization G1 G2 GT)
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (openings : Ipp.SnarkPackV1.HonestProver.KzgOpenings statement)
    (hvalid : Ipp.Goal.ValidWithWitness
      (Ipp.SnarkPackV1.Refinement.ppeRelation statement.e)
      (Ipp.SnarkPackV1.Refinement.toGoal statement) witness)
    (hadmissible :
      Ipp.SnarkPackV1.HonestProver.AdmissibleTranscript transcript) :
    ∃ formalProof : Ipp.Proof μ F G1 G2 GT,
      ∃ wireProof : WireProof G1 G2 GT D,
        assemble D serialization formalProof = .ok wireProof ∧
        wireProof = wireProofOf D formalProof ∧
        Ipp.SnarkPackV1.Refinement.RootOpens
          statement formalProof witness ∧
        Ipp.SnarkPackV1.Accepts statement formalProof transcript := by
  obtain ⟨formalProof, hroot, haccepts⟩ :=
    Ipp.SnarkPackV1.HonestProver.honest_complete
      statement witness transcript openings hvalid hadmissible
  refine ⟨formalProof, wireProofOf D formalProof, ?_, rfl, hroot, haccepts⟩
  exact assemble_exact D serialization formalProof

#print axioms extracted_structural_assembly_honest_complete

end

end Ipp.Extracted.AggregateProver

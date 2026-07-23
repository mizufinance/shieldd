import Ipp.Extracted.ArkworksMultiMiller
import Ipp.Extracted.ArkworksFinalExpSpec

/-!
S3-40 composes the reached multi-Miller schedule with final exponentiation.

Rayon scheduling is outside Lean. The retained correspondence boundary says
that the production parallel chunk product has the sequential product modeled
here; Fq12 multiplication is commutative, and 18 parity tests exercise the real
path. The optimal-ate pairing interpretation is a separate cited boundary.
-/

namespace Ipp.Extracted.ArkworksMultiPairing

open Aeneas Aeneas.Std Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksMultiMillerModel

abbrev Fq12Limb := ArkworksMultiMillerModel.Fq12Limb
abbrev Fq12 := Fq12Canonical

def Canonical12 : Fq12Limb → Prop :=
  Ipp.Extracted.ArkworksFq12.Canonical12

/-- Decode an executed tower value into the canonical commutative field. -/
noncomputable def decodeFq12 (value : Fq12Limb) : Fq12 :=
  Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12 value

/-- The complete exponent implemented by the easy and hard chains. -/
def E : Nat :=
  ((Ipp.Extracted.ArkworksFinalExpEasy.q ^ 6 - 1) *
    (Ipp.Extracted.ArkworksFinalExpEasy.q ^ 2 + 1)) *
      Ipp.Extracted.ArkworksFinalExpHard.E_chain

/-- The canonical-field value of the landed single-pair Miller fold. -/
noncomputable def pairFold (pair : MillerPair) : Fq12 :=
  fq12Coefficients
    (ArkworksMultiMillerModel.pairFold pair)

/--
The executable per-pair value: one Miller fold followed by the reached final
exponent. Equality with the optimal-ate bilinear pairing `e`, together with
bilinearity and nondegeneracy, remains the cited pairing boundary for S3-41.
-/
noncomputable def pairingModel (pair : MillerPair) : Fq12 :=
  pairFold pair ^ E

/--
Normalized sequential composition used for the proof. The chunked spike and
production Rayon wrapper are related to this definition by the partition
theorem below and the retained parity correspondence boundary.
-/
def multi_pairing (pairs : List MillerPair) : Result (Option Fq12Limb) := do
  let miller ←
    ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule
      ⟨encodePairs pairs⟩
  Ipp.Extracted.ArkworksFinalExpHard.final_exp miller

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

/-- S3-37 projected from its structural model into the canonical field. -/
theorem multi_miller_schedule_field_spec
    (pairs : List MillerPair) (out : Fq12Limb)
    (hpairs : ValidPairs pairs)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule
        ⟨encodePairs pairs⟩ = .ok out) :
    Canonical12 out ∧
      decodeFq12 out = (pairs.map pairFold).prod := by
  have hspec :=
    Ipp.Extracted.ArkworksMultiMiller.multi_miller_schedule_spec
      pairs out hpairs hexec
  refine ⟨hspec.1, ?_⟩
  change fq12Coefficients (Ipp.Extracted.ArkworksFq12.decodeFq12 out) =
    (pairs.map pairFold).prod
  rw [hspec.2]
  simpa only [multiMillerModel, pairFold, List.map_map,
    Function.comp_apply] using
    fq12Coefficients_list_prod
      (pairs.map ArkworksMultiMillerModel.pairFold)

/-- Products of per-chunk Miller products are invariant under flattening. -/
theorem miller_product_partition
    (chunks : List (List MillerPair)) (pairs : List MillerPair)
    (hpartition : chunks.flatten = pairs) :
    (chunks.map (fun chunk => (chunk.map pairFold).prod)).prod =
      (pairs.map pairFold).prod := by
  subst pairs
  induction chunks with
  | nil => rfl
  | cons chunk chunks ih =>
      simp only [List.flatten_cons, List.map_cons, List.prod_cons,
        List.map_append, List.prod_append]
      rw [ih]

private theorem schedule_outputs_decode
    (chunks : List (List MillerPair)) (outputs : List Fq12Limb)
    (hpairs : ValidPairs chunks.flatten)
    (hexecs : List.Forall₂
      (fun chunk output =>
        ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule
          ⟨encodePairs chunk⟩ = .ok output)
      chunks outputs) :
    outputs.map decodeFq12 =
      chunks.map (fun chunk => (chunk.map pairFold).prod) := by
  induction hexecs with
  | nil => rfl
  | @cons chunk output chunks outputs hexec hexecs ih =>
      have hchunk : ValidPairs chunk := by
        intro pair hpair
        apply hpairs pair
        simp only [List.flatten_cons, List.mem_append]
        exact Or.inl hpair
      have hchunks : ValidPairs chunks.flatten := by
        intro pair hpair
        apply hpairs pair
        simp only [List.flatten_cons, List.mem_append]
        exact Or.inr hpair
      have hhead :=
        (multi_miller_schedule_field_spec chunk output hchunk hexec).2
      simp only [List.map_cons]
      rw [hhead, ih hchunks]

/--
Successful per-chunk schedules have the same canonical product as one schedule
over the flattened partition, including the empty partition.
-/
theorem multi_miller_schedule_partition_invariant
    (chunks : List (List MillerPair)) (pairs : List MillerPair)
    (outputs : List Fq12Limb) (out : Fq12Limb)
    (hpartition : chunks.flatten = pairs)
    (hpairs : ValidPairs pairs)
    (hexecs : List.Forall₂
      (fun chunk output =>
        ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule
          ⟨encodePairs chunk⟩ = .ok output)
      chunks outputs)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule
        ⟨encodePairs pairs⟩ = .ok out) :
    (outputs.map decodeFq12).prod = decodeFq12 out := by
  have hdecoded : outputs.map decodeFq12 =
      chunks.map (fun chunk => (chunk.map pairFold).prod) := by
    apply schedule_outputs_decode chunks outputs
    · simpa only [hpartition] using hpairs
    · exact hexecs
  rw [hdecoded, miller_product_partition chunks pairs hpartition,
    ← (multi_miller_schedule_field_spec pairs out hpairs hexec).2]

/--
A successful normalized wrapper returns the full exponent of the product of
the individual Miller folds.
-/
theorem multi_pairing_spec
    (pairs : List MillerPair) (out : Fq12Limb)
    (hpairs : ValidPairs pairs)
    (hnz : (pairs.map pairFold).prod ≠ 0)
    (hexec : multi_pairing pairs = .ok (some out)) :
    Canonical12 out ∧
      decodeFq12 out = ((pairs.map pairFold).prod) ^ E := by
  unfold multi_pairing at hexec
  obtain ⟨miller, hmillerExec, hfinalExec⟩ := bind_eq_ok hexec
  have hmiller :=
    multi_miller_schedule_field_spec pairs miller hpairs hmillerExec
  have hmillerNonzero : decodeFq12 miller ≠ 0 := by
    rw [hmiller.2]
    exact hnz
  have hfinal :=
    Ipp.Extracted.ArkworksFinalExpHard.final_exp_spec
      miller out hmiller.1 hmillerNonzero hfinalExec
  refine ⟨hfinal.1, ?_⟩
  change Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12 out = _
  rw [hfinal.2]
  change decodeFq12 miller ^
    (((Ipp.Extracted.ArkworksFinalExpEasy.q ^ 6 - 1) *
      (Ipp.Extracted.ArkworksFinalExpEasy.q ^ 2 + 1)) *
        Ipp.Extracted.ArkworksFinalExpHard.E_chain) = _
  rw [hmiller.2]
  rfl

private theorem prod_pow (values : List Fq12) :
    values.prod ^ E = (values.map (fun value => value ^ E)).prod := by
  induction values with
  | nil => simp
  | cons value values ih =>
      simp only [List.prod_cons, List.map_cons, mul_pow, ih]

/--
The normalized wrapper is the product of the executable per-pair values.
This statement does not identify `pairingModel` with the mathematical pairing.
-/
theorem multi_pairing_product_spec
    (pairs : List MillerPair) (out : Fq12Limb)
    (hpairs : ValidPairs pairs)
    (hnz : (pairs.map pairFold).prod ≠ 0)
    (hexec : multi_pairing pairs = .ok (some out)) :
    Canonical12 out ∧
      decodeFq12 out = (pairs.map pairingModel).prod := by
  have hspec := multi_pairing_spec pairs out hpairs hnz hexec
  refine ⟨hspec.1, ?_⟩
  rw [hspec.2, prod_pow]
  change (pairs.map pairFold |>.map (fun value => value ^ E)).prod =
    (pairs.map (fun pair => pairFold pair ^ E)).prod
  rw [List.map_map]
  rfl

end Ipp.Extracted.ArkworksMultiPairing

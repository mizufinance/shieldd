import Ipp.Extracted.ArkworksFinalExpSpec

/-!
S3-40 composes a proved Miller result with final exponentiation.

The independently extracted Miller and Fq12 graphs reuse global declaration
names and cannot coexist in one Lean environment. Their typed postcondition is
the durable boundary between the separately audited packages.
-/

namespace Ipp.Extracted.ArkworksMultiPairing

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFinalExpEasy
open Ipp.Extracted.ArkworksFinalExpHard

abbrev Fq12Limb := Ipp.Extracted.ArkworksFinalExpEasy.Fq12Limb
abbrev Fq12 := Fq12Canonical

def Canonical12 : Fq12Limb → Prop :=
  Ipp.Extracted.ArkworksFinalExpEasy.Canonical12

/-- Decode an executed tower value into the canonical commutative field. -/
noncomputable def decodeFq12 (value : Fq12Limb) : Fq12 :=
  Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12 value

/-- A single-pair Miller result after projection into the canonical field. -/
structure MillerPair where
  millerValue : Fq12

noncomputable def pairFold (pair : MillerPair) : Fq12 :=
  pair.millerValue

/-- The complete exponent implemented by the easy and hard chains. -/
def E : Nat :=
  ((Ipp.Extracted.ArkworksFinalExpEasy.q ^ 6 - 1) *
    (Ipp.Extracted.ArkworksFinalExpEasy.q ^ 2 + 1)) * E_chain

/-- The executable per-pair value after final exponentiation. -/
noncomputable def pairingModel (pair : MillerPair) : Fq12 :=
  pairFold pair ^ E

/-- Typed boundary exported by a successful Miller schedule. -/
structure MillerSchedulePost (pairs : List MillerPair) (out : Fq12Limb) : Prop where
  canonical : Canonical12 out
  decoded : decodeFq12 out = (pairs.map pairFold).prod

/-- Project the typed schedule boundary into its field statement. -/
theorem multi_miller_schedule_field_spec
    (pairs : List MillerPair) (out : Fq12Limb)
    (hpost : MillerSchedulePost pairs out) :
    Canonical12 out ∧ decodeFq12 out = (pairs.map pairFold).prod :=
  ⟨hpost.canonical, hpost.decoded⟩

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

private theorem posts_decode
    (chunks : List (List MillerPair)) (outputs : List Fq12Limb)
    (hposts : List.Forall₂ MillerSchedulePost chunks outputs) :
    outputs.map decodeFq12 =
      chunks.map (fun chunk => (chunk.map pairFold).prod) := by
  induction hposts with
  | nil => rfl
  | cons hpost _ ih =>
      simp only [List.map_cons]
      rw [hpost.decoded, ih]

/-- Chunked Miller postconditions equal the flattened Miller postcondition. -/
theorem multi_miller_schedule_partition_invariant
    (chunks : List (List MillerPair)) (pairs : List MillerPair)
    (outputs : List Fq12Limb) (out : Fq12Limb)
    (hpartition : chunks.flatten = pairs)
    (hposts : List.Forall₂ MillerSchedulePost chunks outputs)
    (hout : MillerSchedulePost pairs out) :
    (outputs.map decodeFq12).prod = decodeFq12 out := by
  rw [posts_decode chunks outputs hposts,
    miller_product_partition chunks pairs hpartition, hout.decoded]

/-- Execute final exponentiation from an already verified Miller output. -/
def multi_pairing (miller : Fq12Limb) : Result (Option Fq12Limb) :=
  final_exp miller

/-- A successful composition returns the full exponent of the Miller product. -/
theorem multi_pairing_spec
    (pairs : List MillerPair) (miller out : Fq12Limb)
    (hmiller : MillerSchedulePost pairs miller)
    (hnz : (pairs.map pairFold).prod ≠ 0)
    (hexec : multi_pairing miller = .ok (some out)) :
    Canonical12 out ∧
      decodeFq12 out = ((pairs.map pairFold).prod) ^ E := by
  have hmillerNonzero : decodeFq12 miller ≠ 0 := by
    rw [hmiller.decoded]
    exact hnz
  have hfinal :=
    final_exp_spec miller out hmiller.canonical hmillerNonzero hexec
  refine ⟨hfinal.1, ?_⟩
  change Ipp.Extracted.ArkworksFinalExpEasy.decodeFq12 out = _
  rw [hfinal.2]
  change decodeFq12 miller ^
    (((Ipp.Extracted.ArkworksFinalExpEasy.q ^ 6 - 1) *
      (Ipp.Extracted.ArkworksFinalExpEasy.q ^ 2 + 1)) * E_chain) = _
  rw [hmiller.decoded]
  rfl

private theorem prod_pow (values : List Fq12) :
    values.prod ^ E = (values.map (fun value => value ^ E)).prod := by
  induction values with
  | nil => simp
  | cons value values ih =>
      simp only [List.prod_cons, List.map_cons, mul_pow, ih]

/-- The composition is the product of the executable per-pair values. -/
theorem multi_pairing_product_spec
    (pairs : List MillerPair) (miller out : Fq12Limb)
    (hmiller : MillerSchedulePost pairs miller)
    (hnz : (pairs.map pairFold).prod ≠ 0)
    (hexec : multi_pairing miller = .ok (some out)) :
    Canonical12 out ∧
      decodeFq12 out = (pairs.map pairingModel).prod := by
  have hspec := multi_pairing_spec pairs miller out hmiller hnz hexec
  refine ⟨hspec.1, ?_⟩
  rw [hspec.2, prod_pow]
  change (pairs.map pairFold |>.map (fun value => value ^ E)).prod =
    (pairs.map (fun pair => pairFold pair ^ E)).prod
  rw [List.map_map]
  rfl

end Ipp.Extracted.ArkworksMultiPairing

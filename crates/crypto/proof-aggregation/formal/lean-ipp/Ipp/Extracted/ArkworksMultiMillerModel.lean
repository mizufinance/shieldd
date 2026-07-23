import Ipp.Extracted.ArkworksMiller
import Ipp.Extracted.ArkworksMultiMillerGenerated
import Mathlib.Tactic

/-! Pure list and product model for multi-pair Miller accumulation. -/

namespace Ipp.Extracted.ArkworksMultiMillerModel

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksMillerModel

abbrev MillerPair := List G2EllCoeffLimb × G1AffineLimb
abbrev ExecPair := Aeneas.Std.alloc.vec.Vec G2EllCoeffLimb × G1AffineLimb
abbrev Fq12Limb := ark_ip_proofs.s3_07_arkworks_fq_spike.Fq12Mont

/-- Nested-list input represented at the extracted vector boundary. -/
def encodePair (pair : MillerPair) : ExecPair := (⟨pair.1⟩, pair.2)

def encodePairs (pairs : List MillerPair) : List ExecPair :=
  pairs.map encodePair

/-- Canonical finite inputs with the exact 63-step coefficient schedule. -/
def ValidPair (pair : MillerPair) : Prop :=
  (∀ coeff ∈ pair.1, CanonicalEllCoeff coeff) ∧
  CanonicalFiniteG1 pair.2 ∧ pair.1.length = millerCoeffCount 63

/-- Every pair is ready for the reached multi-Miller schedule. -/
def ValidPairs (pairs : List MillerPair) : Prop :=
  ∀ pair ∈ pairs, ValidPair pair

def ValidExecPair (pair : ExecPair) : Prop :=
  ValidPair (pair.1.val, pair.2)

def ValidExecPairs (pairs : List ExecPair) : Prop :=
  ∀ (index : Nat) (pair : ExecPair),
    pairs[index]? = some pair → ValidExecPair pair

/-- The decoded single-pair fold selected by the public theorem. -/
def pairFold (pair : MillerPair) : Fq12Model :=
  millerFoldModel (pair.1.map decodeEllCoeff)
    (decode pair.2.x) (decode pair.2.y)

/-- Product of all decoded single-pair folds, in input order. -/
def multiMillerModel (pairs : List MillerPair) : Fq12Model :=
  (pairs.map pairFold).prod

/-- Project the value of a successful single-pair prefix. -/
def pairPrefixValue (pair : MillerPair) (steps : Nat) : Fq12Model :=
  millerResult (millerPrefix (pair.1.map decodeEllCoeff)
    (decode pair.2.x) (decode pair.2.y) steps)

/-- Product of the per-pair prefixes after `steps` ate positions. -/
def multiPrefixProduct (pairs : List MillerPair) (steps : Nat) : Fq12Model :=
  (pairs.map (fun pair => pairPrefixValue pair steps)).prod

theorem validPair_coeffs {pair : MillerPair} (h : ValidPair pair) :
    ∀ coeff ∈ pair.1, CanonicalEllCoeff coeff := h.1

theorem validPair_g1 {pair : MillerPair} (h : ValidPair pair) :
    CanonicalFiniteG1 pair.2 := h.2.1

theorem validPair_length {pair : MillerPair} (h : ValidPair pair) :
    pair.1.length = 69 := by
  simpa [millerCoeffCount_63] using h.2.2

theorem validPair_not_infinity {pair : MillerPair} (h : ValidPair pair) :
    pair.2.infinity = false := h.2.1.2.2

theorem validPair_coeffs_nonempty {pair : MillerPair} (h : ValidPair pair) :
    pair.1 ≠ [] := by
  intro hempty
  have hlength := validPair_length h
  rw [hempty] at hlength
  simp at hlength

theorem validPairs_encode {pairs : List MillerPair} (h : ValidPairs pairs) :
    ValidExecPairs (encodePairs pairs) := by
  intro index pair hpair
  have hmem : pair ∈ encodePairs pairs := List.mem_of_getElem? hpair
  rw [encodePairs] at hmem
  obtain ⟨source, hsource, rfl⟩ := List.mem_map.mp hmem
  simpa [ValidExecPair, encodePair] using h source hsource

theorem fq12Coefficients_list_prod (values : List Fq12Model) :
    fq12Coefficients values.prod = (values.map fq12Coefficients).prod := by
  induction values with
  | nil => exact fq12Coefficients_one
  | cons value values ih =>
      simp only [List.prod_cons, List.map_cons]
      change fq12Coefficients (fq12Mul value values.prod) = _
      rw [fq12Coefficients_mul, ih]

theorem fq12Prod_append (left right : List Fq12Model) :
    (left ++ right).prod = fq12Mul left.prod right.prod := by
  apply fq12Coefficients_bijective.injective
  rw [fq12Coefficients_list_prod, fq12Coefficients_mul,
    fq12Coefficients_list_prod, fq12Coefficients_list_prod, List.map_append,
    List.prod_append]

theorem fq12Prod_one (count : Nat) :
    (List.replicate count fq12One).prod = fq12One := by
  apply fq12Coefficients_bijective.injective
  rw [fq12Coefficients_list_prod, fq12Coefficients_one]
  simp

theorem fq12Prod_square (values : List Fq12Model) :
    fq12Square values.prod = (values.map fq12Square).prod := by
  apply fq12Coefficients_bijective.injective
  change fq12Coefficients (fq12Mul values.prod values.prod) = _
  rw [fq12Coefficients_mul, fq12Coefficients_list_prod]
  rw [fq12Coefficients_list_prod]
  rw [List.map_map]
  have hmap : values.map (fq12Coefficients ∘ fq12Square) =
      values.map (fun value =>
        fq12Coefficients value * fq12Coefficients value) := by
    apply List.map_congr_left
    intro value hvalue
    simpa [Function.comp_apply, fq12Square] using
      fq12Coefficients_mul value value
  rw [hmap]
  clear hmap
  induction values with
  | nil => simp
  | cons value values ih =>
      simp only [List.map_cons, List.prod_cons] at ih ⊢
      rw [← ih]
      ring

/-- One line multiplication may be commuted to the matching list position. -/
theorem fq12Prod_ell_replace (before after : List Fq12Model)
    (value : Fq12Model) (coeff : DecodedEllCoeff) (x y : Fq) :
    ellModel (before ++ value :: after).prod coeff.1 coeff.2.1 coeff.2.2 x y =
      (before ++ ellModel value coeff.1 coeff.2.1 coeff.2.2 x y :: after).prod := by
  apply fq12Coefficients_bijective.injective
  simp only [ellModel, mulBy034Model]
  rw [fq12Coefficients_mul, fq12Coefficients_list_prod,
    fq12Coefficients_list_prod]
  simp only [List.map_append, List.map_cons, List.prod_append, List.prod_cons,
    fq12Coefficients_mul]
  ring

theorem multiPrefixProduct_zero (pairs : List MillerPair) :
    multiPrefixProduct pairs 0 = fq12One := by
  unfold multiPrefixProduct pairPrefixValue
  simp only [millerPrefix, millerResult]
  rw [show pairs.map (fun _ => fq12One) =
      List.replicate pairs.length fq12One by
    induction pairs with
    | nil => rfl
    | cons pair pairs ih =>
        simp only [List.map_cons, List.length_cons, ih]
        rw [List.replicate_succ]]
  exact fq12Prod_one pairs.length

theorem multiPrefixProduct_complete (pairs : List MillerPair) :
    multiPrefixProduct pairs 63 = multiMillerModel pairs := by
  unfold multiPrefixProduct multiMillerModel pairPrefixValue pairFold
  rfl

end Ipp.Extracted.ArkworksMultiMillerModel

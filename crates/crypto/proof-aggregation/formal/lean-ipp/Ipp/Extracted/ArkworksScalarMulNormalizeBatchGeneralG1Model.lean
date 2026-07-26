import Ipp.Extracted.ArkworksScalarMulNormalizeCommon
import Ipp.Extracted.ArkworksG1

/-! Execution and semantic records for the general G1 batch proof. -/

namespace Ipp.Extracted.ArkworksScalarMulNormalize

universe u v

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul (decode limbsToNat)
open Ipp.Extracted.ArkworksG1
open Ipp.Extracted.ArkworksScalarMulNormalizeCommon

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

abbrev G1BatchProj :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont

abbrev G1BatchFq :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont

/-- Exact products stored by the forward pass, indexed by the processed prefix. -/
inductive G1ForwardTrace :
    List G1BatchProj → List G1BatchFq → G1BatchFq → Prop
  | nil : G1ForwardTrace [] []
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE
  | zero {values products product value}
      (trace : G1ForwardTrace values products product)
      (hz : value.z.val =
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val) :
      G1ForwardTrace (values ++ [value]) products product
  | nonzero {values products product value next}
      (trace : G1ForwardTrace values products product)
      (hz : value.z.val ≠
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
      (hmul : ark_ip_proofs.s3_07_arkworks_fq_spike.mul product value.z =
        .ok next) :
      G1ForwardTrace (values ++ [value]) (products ++ [product]) next

theorem G1ForwardTrace.unsnoc {values value products product}
    (trace : G1ForwardTrace (values ++ [value]) products product) :
    (G1ForwardTrace values products product ∧
      value.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val) ∨
    ∃ previousProducts previousProduct,
      products = previousProducts ++ [previousProduct] ∧
      G1ForwardTrace values previousProducts previousProduct ∧
      value.z.val ≠ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val ∧
      ark_ip_proofs.s3_07_arkworks_fq_spike.mul previousProduct value.z =
        .ok product := by
  generalize hall : values ++ [value] = all at trace
  induction trace generalizing values value with
  | nil => simp at hall
  | @zero previousValues previousProducts previousProduct last trace hz ih =>
      obtain ⟨rfl, rfl⟩ := List.append_singleton_inj.mp hall
      exact .inl ⟨trace, hz⟩
  | @nonzero previousValues previousProducts previousProduct last next
      trace hz hmul ih =>
      obtain ⟨rfl, rfl⟩ := List.append_singleton_inj.mp hall
      exact .inr ⟨_, _, rfl, trace, hz, hmul⟩

/-- One inverse emitted by the backward pass, including the zero sentinel case. -/
inductive G1RecoveredInverse (value : G1BatchProj) : G1BatchFq → Prop
  | zero (hz : value.z.val =
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val) :
      G1RecoveredInverse value
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO
  | nonzero {zinv : G1BatchFq}
      (hz : value.z.val ≠
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
      (canonical : limbsToNat zinv < Ipp.Bls12377.baseModulus)
      (inverse : decode zinv * decode value.z = 1) :
      G1RecoveredInverse value zinv

/-- Backward output is reverse-aligned with the projective input. -/
def G1RecoveredBatch (values : List G1BatchProj)
    (inverses : List G1BatchFq) : Prop :=
  List.Forall₂ G1RecoveredInverse values inverses.reverse

theorem forall₂_snoc {α : Type u} {β : Type v} {R : α → β → Prop}
    {left : List α} {right : List β} {a : α} {b : β}
    (h : List.Forall₂ R left right) (hab : R a b) :
    List.Forall₂ R (left ++ [a]) (right ++ [b]) := by
  induction h with
  | nil => exact .cons hab .nil
  | cons head tail ih => exact .cons head ih

theorem G1RecoveredBatch.nil : G1RecoveredBatch [] [] := by
  simp [G1RecoveredBatch]

theorem G1RecoveredBatch.snoc {values inverses value zinv}
    (batch : G1RecoveredBatch values inverses)
    (recovered : G1RecoveredInverse value zinv) :
    G1RecoveredBatch (values ++ [value]) (zinv :: inverses) := by
  unfold G1RecoveredBatch at batch ⊢
  simpa using forall₂_snoc batch recovered

theorem G1RecoveredBatch.cons_cases {value values inverses}
    (batch : G1RecoveredBatch (value :: values) inverses) :
    ∃ remaining zinv,
      inverses = remaining ++ [zinv] ∧
      G1RecoveredInverse value zinv ∧
      G1RecoveredBatch values remaining := by
  unfold G1RecoveredBatch at batch
  obtain ⟨zinv, reversed, recovered, rest, hreverse⟩ :=
    List.forall₂_cons_left_iff.mp batch
  refine ⟨reversed.reverse, zinv, ?_, recovered, ?_⟩
  · calc
      inverses = inverses.reverse.reverse := by simp
      _ = (zinv :: reversed).reverse := congrArg List.reverse hreverse
      _ = reversed.reverse ++ [zinv] := by simp
  · unfold G1RecoveredBatch
    simpa using rest

theorem g1_decode_z_ne_zero (z : G1BatchFq)
    (hcanonical : limbsToNat z < Ipp.Bls12377.baseModulus)
    (hz : z.val ≠ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val) :
    decode z ≠ 0 := by
  intro hdecode
  have hval :=
    (Ipp.Extracted.ArkworksG1.canonical_fq_val_eq_iff_decode_eq
      z ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO
      hcanonical fq_zero_canonical).2
        (hdecode.trans decode_fq_zero.symm)
  exact hz hval

/-- All stored prefixes and the final product are canonical; the product is nonzero. -/
theorem G1ForwardTrace.semantic {values products product}
    (trace : G1ForwardTrace values products product)
    (hcanonical : ∀ value ∈ values,
      limbsToNat value.z < Ipp.Bls12377.baseModulus) :
    (∀ stored ∈ products,
      limbsToNat stored < Ipp.Bls12377.baseModulus) ∧
      limbsToNat product < Ipp.Bls12377.baseModulus ∧
      decode product ≠ 0 := by
  induction trace with
  | nil =>
      simp [fq_one_canonical, decode_fq_one]
  | @zero values products product last trace hz ih =>
      apply ih
      intro candidate hmem
      exact hcanonical candidate (List.mem_append_left [last] hmem)
  | @nonzero values products product last next trace hz hmul ih =>
      have hprefix : ∀ candidate ∈ values,
          limbsToNat candidate.z < Ipp.Bls12377.baseModulus := by
        intro candidate hmem
        exact hcanonical candidate (List.mem_append_left [last] hmem)
      obtain ⟨hproducts, hproduct, hproductNe⟩ := ih hprefix
      have hzCanonical := hcanonical last (by simp)
      have hnext := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
        _ _ _ hproduct hzCanonical hmul
      have hdecode := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
        _ _ _ hproduct hzCanonical hmul
      refine ⟨?_, hnext.1, ?_⟩
      · intro stored hmem
        rcases List.mem_append.mp hmem with hmem | hmem
        · exact hproducts stored hmem
        · have heq : stored = product := by simpa using hmem
          subst stored
          exact hproduct
      · rw [hdecode]
        exact mul_ne_zero hproductNe (g1_decode_z_ne_zero _ hzCanonical hz)

theorem G1RecoveredBatch.length_eq {values inverses}
    (h : G1RecoveredBatch values inverses) :
    inverses.length = values.length := by
  unfold G1RecoveredBatch at h
  have := h.length_eq
  simpa using this.symm

end Ipp.Extracted.ArkworksScalarMulNormalize

import Ipp.Extracted.ArkworksScalarMulNormalizeCommon

/-! Execution and semantic records for the general G2 batch proof. -/

namespace Ipp.Extracted.ArkworksScalarMulNormalize

universe u v

open Aeneas Result
open Ipp.Extracted.ArkworksFq2 (Canonical2 decodeFq2)
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksScalarMulNormalizeCommon

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

abbrev G2BatchProj :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont

abbrev G2BatchFq :=
  ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont

inductive G2ForwardTrace :
    List G2BatchProj → List G2BatchFq → G2BatchFq → Prop
  | nil : G2ForwardTrace [] []
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE
  | zero {values products product value}
      (trace : G2ForwardTrace values products product)
      (hz : isZeroFq2Mont value.z) :
      G2ForwardTrace (values ++ [value]) products product
  | nonzero {values products product value next}
      (trace : G2ForwardTrace values products product)
      (hz : ¬isZeroFq2Mont value.z)
      (hmul : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul product value.z =
        .ok next) :
      G2ForwardTrace (values ++ [value]) (products ++ [product]) next

theorem G2ForwardTrace.unsnoc {values value products product}
    (trace : G2ForwardTrace (values ++ [value]) products product) :
    (G2ForwardTrace values products product ∧ isZeroFq2Mont value.z) ∨
    ∃ previousProducts previousProduct,
      products = previousProducts ++ [previousProduct] ∧
      G2ForwardTrace values previousProducts previousProduct ∧
      ¬isZeroFq2Mont value.z ∧
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul previousProduct value.z =
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

inductive G2RecoveredInverse (value : G2BatchProj) : G2BatchFq → Prop
  | zero (hz : isZeroFq2Mont value.z) :
      G2RecoveredInverse value
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO
  | nonzero {zinv : G2BatchFq}
      (hz : ¬isZeroFq2Mont value.z)
      (canonical : Canonical2 zinv)
      (inverse : decodeFq2 zinv * decodeFq2 value.z = 1) :
      G2RecoveredInverse value zinv

def G2RecoveredBatch (values : List G2BatchProj)
    (inverses : List G2BatchFq) : Prop :=
  List.Forall₂ G2RecoveredInverse values inverses.reverse

theorem g2_forall₂_snoc {α : Type u} {β : Type v}
    {R : α → β → Prop}
    {left : List α} {right : List β} {a : α} {b : β}
    (h : List.Forall₂ R left right) (hab : R a b) :
    List.Forall₂ R (left ++ [a]) (right ++ [b]) := by
  induction h with
  | nil => exact .cons hab .nil
  | cons head tail ih => exact .cons head ih

theorem G2RecoveredBatch.nil : G2RecoveredBatch [] [] := by
  simp [G2RecoveredBatch]

theorem G2RecoveredBatch.snoc {values inverses value zinv}
    (batch : G2RecoveredBatch values inverses)
    (recovered : G2RecoveredInverse value zinv) :
    G2RecoveredBatch (values ++ [value]) (zinv :: inverses) := by
  unfold G2RecoveredBatch at batch ⊢
  simpa using g2_forall₂_snoc batch recovered

theorem G2RecoveredBatch.cons_cases {value values inverses}
    (batch : G2RecoveredBatch (value :: values) inverses) :
    ∃ remaining zinv,
      inverses = remaining ++ [zinv] ∧
      G2RecoveredInverse value zinv ∧
      G2RecoveredBatch values remaining := by
  unfold G2RecoveredBatch at batch
  obtain ⟨zinv, reversed, recovered, rest, hreverse⟩ :=
    List.forall₂_cons_left_iff.mp batch
  refine ⟨reversed.reverse, zinv, ?_, recovered, ?_⟩
  · calc
      inverses = inverses.reverse.reverse := by simp
      _ = (zinv :: reversed).reverse := congrArg List.reverse hreverse
      _ = reversed.reverse ++ [zinv] := by simp
  · unfold G2RecoveredBatch
    simpa using rest

theorem g2_decode_z_ne_zero (z : G2BatchFq)
    (hcanonical : Canonical2 z) (
    hz : ¬isZeroFq2Mont z) :
    decodeFq2 z ≠ 0 := by
  intro hdecode
  have hvals :=
    (Ipp.Extracted.ArkworksG2.canonical_fq2_val_eq_iff_decode_eq
      z ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO
      hcanonical fq2_zero_canonical).2
        (hdecode.trans decode_fq2_zero.symm)
  apply hz
  simpa [isZeroFq2Mont,
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO] using hvals

theorem G2ForwardTrace.semantic {values products product}
    (trace : G2ForwardTrace values products product)
    (hcanonical : ∀ value ∈ values, Canonical2 value.z) :
    (∀ stored ∈ products, Canonical2 stored) ∧
      Canonical2 product ∧ decodeFq2 product ≠ 0 := by
  induction trace with
  | nil => simp [fq2_one_canonical, decode_fq2_one]
  | @zero values products product last trace hz ih =>
      apply ih
      intro candidate hmem
      exact hcanonical candidate (List.mem_append_left [last] hmem)
  | @nonzero values products product last next trace hz hmul ih =>
      have hprefix : ∀ candidate ∈ values, Canonical2 candidate.z := by
        intro candidate hmem
        exact hcanonical candidate (List.mem_append_left [last] hmem)
      obtain ⟨hproducts, hproduct, hproductNe⟩ := ih hprefix
      have hzCanonical := hcanonical last (by simp)
      have hnext := Ipp.Extracted.ArkworksFq2.extracted_fq2_mul_spec
        product last.z next hproduct hzCanonical hmul
      refine ⟨?_, hnext.1, ?_⟩
      · intro stored hmem
        rcases List.mem_append.mp hmem with hmem | hmem
        · exact hproducts stored hmem
        · have heq : stored = product := by simpa using hmem
          subst stored
          exact hproduct
      · rw [hnext.2]
        exact mul_ne_zero hproductNe (g2_decode_z_ne_zero _ hzCanonical hz)

theorem G2RecoveredBatch.length_eq {values inverses}
    (h : G2RecoveredBatch values inverses) :
    inverses.length = values.length := by
  unfold G2RecoveredBatch at h
  have := h.length_eq
  simpa using this.symm

end Ipp.Extracted.ArkworksScalarMulNormalize

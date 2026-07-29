import Ipp.Extracted.AppVerifierShipping

/-!
Exact caller-order row construction from the generated repeat-final padding
root. Field serialization remains a separate Arkworks boundary.
-/

namespace Ipp.Extracted.ShippingRowConstruction

open Aeneas Aeneas.Std Result
open ark_ip_proofs
open Ipp.Extracted.AppVerifierStateMachine

noncomputable section

/-- Execution-shaped row facts retained by the shipping constructor. The
projection fields state which source and output list entries populate the
formal input; the padding predicate itself is obtained from generated code. -/
structure ExactRowConstruction
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (input : Ipp.ShippingV1.ShippingV1Input
      μ F G1 G2 GT Row DecodedProof) : Prop where
  sourceRows : List Row
  paddedRows : List Row
  sourceNonempty : sourceRows ≠ []
  realCountExact : input.realCount = sourceRows.length
  realRowsExact :
    ∀ i : Fin input.realCount,
      sourceRows[i.val]? = some (input.realRows i)
  paddedRowsExact :
    ∀ i : Fin (2 ^ μ),
      paddedRows[i.val]? = some (input.publicRows i)
  generatedPadding :
    RepeatFinalRowsPostcondition sourceRows (2 ^ μ) paddedRows

/-- A successful call to the extracted production padding core supplies the
only padding-semantic field of `ExactRowConstruction`. The remaining premises
are exact projections made by the Rust caller into the formal row functions. -/
def ExactRowConstruction.ofExtractedSuccess
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (input : Ipp.ShippingV1.ShippingV1Input
      μ F G1 G2 GT Row DecodedProof)
    (cloneInst : core.clone.Clone Row)
    (hclone : ∀ value, cloneInst.clone value = .ok value)
    (source output : alloc.vec.Vec Row)
    (hsource : source.val ≠ [])
    (hrealCount : input.realCount = source.val.length)
    (hrealRows :
      ∀ i : Fin input.realCount,
        source.val[i.val]? = some (input.realRows i))
    (hpaddedRows :
      ∀ i : Fin (2 ^ μ),
        output.val[i.val]? = some (input.publicRows i))
    (hexec :
      app_verifier.app_verify_repeat_final_rows_core
          cloneInst source ⟨2 ^ μ⟩ =
        .ok (.Ok output)) :
    ExactRowConstruction input where
  sourceRows := source.val
  paddedRows := output.val
  sourceNonempty := hsource
  realCountExact := hrealCount
  realRowsExact := hrealRows
  paddedRowsExact := hpaddedRows
  generatedPadding :=
    extracted_repeat_final_rows_success_postcondition
      cloneInst hclone source output ⟨2 ^ μ⟩ hexec

private theorem source_length_le_target
    {Row : Type} {source padded : List Row} {target : Nat}
    (hpadding : RepeatFinalRowsPostcondition source target padded) :
    source.length ≤ target := by
  have hlength := congrArg List.length hpadding.prefixExact
  simp only [List.length_take] at hlength
  rw [hpadding.lengthExact] at hlength
  omega

private theorem nonempty_padding_normal_form
    {Row : Type} {head : Row} {tail padded : List Row} {target : Nat}
    (hpadding :
      RepeatFinalRowsPostcondition (head :: tail) target padded) :
    padded =
      (head :: tail) ++
        List.replicate
          (target - (head :: tail).length)
          (repeatFinalLast head tail) := by
  rcases hpadding.suffixExact with hempty | ⟨last, hlast, hsuffix⟩
  · simp at hempty
  · have hlastExact : last = repeatFinalLast head tail := by
      have : repeatFinalLast head tail = last := by
        simpa only [getLast?_cons_repeatFinalLast, Option.some.injEq] using hlast
      exact this.symm
    rw [hlastExact] at hsuffix
    calc
      padded =
          padded.take (head :: tail).length ++
            padded.drop (head :: tail).length :=
        (List.take_append_drop (head :: tail).length padded).symm
      _ =
          (head :: tail) ++
            List.replicate
              (target - (head :: tail).length)
              (repeatFinalLast head tail) := by
        rw [hpadding.prefixExact, hsuffix]

theorem validCounts
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    {input : Ipp.ShippingV1.ShippingV1Input
      μ F G1 G2 GT Row DecodedProof}
    (construction : ExactRowConstruction input) :
    Ipp.ShippingV1.ValidCounts input := by
  constructor
  · rw [construction.realCountExact]
    exact List.length_pos.mpr construction.sourceNonempty
  · rw [construction.realCountExact]
    exact source_length_le_target construction.generatedPadding

theorem realPrefixExact
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    {input : Ipp.ShippingV1.ShippingV1Input
      μ F G1 G2 GT Row DecodedProof}
    (construction : ExactRowConstruction input) :
    Ipp.ShippingV1.RealPrefixExact input := by
  intro hcount i
  have hi : i.val < construction.sourceRows.length := by
    simpa [construction.realCountExact] using i.isLt
  have hget :
      construction.paddedRows[i.val]? =
        construction.sourceRows[i.val]? := by
    have hprefix := construction.generatedPadding.prefixExact
    have := congrArg (fun rows => rows[i.val]?) hprefix
    simpa [List.getElem?_take, Nat.le_of_lt hi] using this
  have hpadded :=
    construction.paddedRowsExact (Ipp.Goal.embedFin hcount i)
  have hreal := construction.realRowsExact i
  have hsome :
      some
          (input.publicRows (Ipp.Goal.embedFin hcount i)) =
        some (input.realRows i) := by
    calc
      some (input.publicRows (Ipp.Goal.embedFin hcount i)) =
          construction.paddedRows[i.val]? := hpadded.symm
      _ = construction.sourceRows[i.val]? := hget
      _ = some (input.realRows i) := hreal
  exact Option.some.inj hsome

theorem repeatFinalPadding
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    {input : Ipp.ShippingV1.ShippingV1Input
      μ F G1 G2 GT Row DecodedProof}
    (construction : ExactRowConstruction input) :
    Ipp.ShippingV1.RepeatFinalPadding input := by
  cases hsource : construction.sourceRows with
  | nil =>
      exact False.elim (construction.sourceNonempty hsource)
  | cons head tail =>
      have hsourceLength :
          construction.sourceRows.length = (head :: tail).length := by
        rw [hsource]
      have hfits :
          (head :: tail).length ≤ 2 ^ μ := by
        rw [← hsourceLength]
        exact source_length_le_target construction.generatedPadding
      have hpositive : 0 < (head :: tail).length := by simp
      let lastIndex : Fin (2 ^ μ) :=
        ⟨(head :: tail).length - 1, by omega⟩
      refine ⟨lastIndex, ?_, ?_⟩
      · change input.realCount = ((head :: tail).length - 1) + 1
        rw [construction.realCountExact, hsource]
        omega
      · intro i hi
        have hiSuffix : (head :: tail).length ≤ i.val := by
          change (head :: tail).length - 1 < i.val at hi
          omega
        have hiReplicate :
            i.val - (head :: tail).length <
              2 ^ μ - (head :: tail).length := by
          omega
        have hnormal :
            construction.paddedRows =
              (head :: tail) ++
                List.replicate
                  (2 ^ μ - (head :: tail).length)
                  (repeatFinalLast head tail) := by
          apply nonempty_padding_normal_form
          simpa only [hsource] using construction.generatedPadding
        have hgetI :
            construction.paddedRows[i.val]? =
              some (repeatFinalLast head tail) := by
          rw [hnormal, List.getElem?_append, if_neg (by omega),
            List.getElem?_replicate, if_pos hiReplicate]
        have hlastLt :
            (head :: tail).length - 1 < (head :: tail).length := by
          omega
        have hgetLast :
            construction.paddedRows[lastIndex.val]? =
              some (repeatFinalLast head tail) := by
          rw [hnormal, List.getElem?_append_left hlastLt,
            getElem?_cons_lastIndex_repeatFinalLast]
        have hpaddedI := construction.paddedRowsExact i
        have hpaddedLast := construction.paddedRowsExact lastIndex
        have hsome :
            some (input.publicRows i) =
              some (input.publicRows lastIndex) := by
          calc
            some (input.publicRows i) =
                construction.paddedRows[i.val]? := hpaddedI.symm
            _ = some (repeatFinalLast head tail) := hgetI
            _ = construction.paddedRows[lastIndex.val]? := hgetLast.symm
            _ = some (input.publicRows lastIndex) := hpaddedLast
        exact Option.some.inj hsome

/-- The complete row-construction consequence used by statement binding. -/
theorem preserves_order_and_padding
    {μ : Nat} {F G1 G2 GT Row DecodedProof : Type}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    {input : Ipp.ShippingV1.ShippingV1Input
      μ F G1 G2 GT Row DecodedProof}
    (construction : ExactRowConstruction input) :
    Ipp.ShippingV1.ValidCounts input ∧
      Ipp.ShippingV1.RealPrefixExact input ∧
      Ipp.ShippingV1.RepeatFinalPadding input :=
  ⟨validCounts construction, realPrefixExact construction,
    repeatFinalPadding construction⟩

#print axioms ExactRowConstruction.ofExtractedSuccess
#print axioms validCounts
#print axioms realPrefixExact
#print axioms repeatFinalPadding
#print axioms preserves_order_and_padding

end

end Ipp.Extracted.ShippingRowConstruction

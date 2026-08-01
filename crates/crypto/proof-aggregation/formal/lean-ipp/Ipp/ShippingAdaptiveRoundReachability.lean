import Ipp.ShippingMultiStatement

/-!
Reachability of the selected shipping round slots in the wrapped replay log.

The result is structural: a successful selector points into the wrapper's
structured miss trace, whose entries retain the same ordinals after erasure
to the single forkable field-oracle index.
-/

open OracleSpec OracleComp
open scoped OracleSpec.PrimitiveQuery

namespace Ipp.ShippingMultiStatement

noncomputable section

open Ipp.Bls12377

/-- A structured global-field miss at ordinal `i` retains an answer at the
same ordinal after erasing the query key to the wrapper's `Unit` index. -/
private theorem globalFsPointTrace_flatten_at
    (sourceLog : QueryLog GlobalFsSourceSpec)
    (i : Nat) (hi : i < (Ipp.fsPointTrace sourceLog).length) :
    ∃ value : Fr,
      QueryLog.getQueryValue?
          (Ipp.flattenFsLog sourceLog) (Sum.inr ()) i =
        some value := by
  induction sourceLog generalizing i with
  | nil =>
      simp [Ipp.fsPointTrace] at hi
  | cons entry rest ih =>
      rcases entry with ⟨t, value⟩
      cases t with
      | inl n =>
          have hi' : i < (Ipp.fsPointTrace rest).length := by
            simpa [Ipp.fsPointTrace] using hi
          obtain ⟨answer, hget⟩ := ih i hi'
          refine ⟨answer, ?_⟩
          change QueryLog.getQueryValue?
              ((⟨Sum.inl n, value⟩ :
                (j : Nat ⊕ Unit) × (Ipp.FsWrappedSpec Fr).Range j) ::
                Ipp.flattenFsLog rest) (Sum.inr ()) i =
                some answer
          rw [QueryLog.getQueryValue?_cons_of_ne]
          · exact hget
          · exact Sum.inl_ne_inr
      | inr point =>
          cases i with
          | zero =>
              refine ⟨value, ?_⟩
              change QueryLog.getQueryValue?
                  ((⟨Sum.inr (), value⟩ :
                    (j : Nat ⊕ Unit) ×
                      (Ipp.FsWrappedSpec Fr).Range j) ::
                    Ipp.flattenFsLog rest) (Sum.inr ()) 0 =
                    some value
              exact QueryLog.getQueryValue?_cons_self_zero
                (Sum.inr ()) value (Ipp.flattenFsLog rest)
          | succ i =>
              have hi' : i < (Ipp.fsPointTrace rest).length := by
                simpa [Ipp.fsPointTrace] using hi
              obtain ⟨answer, hget⟩ := ih i hi'
              refine ⟨answer, ?_⟩
              change QueryLog.getQueryValue?
                  ((⟨Sum.inr (), value⟩ :
                    (j : Nat ⊕ Unit) ×
                      (Ipp.FsWrappedSpec Fr).Range j) ::
                    Ipp.flattenFsLog rest) (Sum.inr ()) (i + 1) =
                    some answer
              rw [QueryLog.getQueryValue?_cons_self_succ]
              exact hget

/-- Every successful shipping round selector points to a query that exists in
the outer replay log.  This holds for an arbitrary complete global-FS program;
it does not require verifier acceptance or a production-origin premise. -/
theorem multiStatementRoundSlot_reachable
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (level : Nat) :
    OracleComp.CfReachable (multiStatementForkMain game)
      queryBounds (Sum.inr ())
      (fun run =>
        multiStatementRoundSlot
          (queryBounds (Sum.inr ())) level run) := by
  intro run log hrun slot hslot
  obtain ⟨sourceLog, htrace, hlog, _⟩ :=
    Ipp.wrapFs_support_exists_source game (by
      simpa [multiStatementForkMain] using hrun)
  obtain ⟨_query, _hquery, hentry⟩ :=
    multiStatementRoundSlot_query_at_trace
      (queryBounds (Sum.inr ())) level run hslot
  have hi : (slot : Nat) < run.trace.length :=
    (List.getElem?_eq_some_iff.mp hentry).1
  have hi' :
      (slot : Nat) < (Ipp.fsPointTrace sourceLog).length := by
    simpa [htrace] using hi
  obtain ⟨value, hvalue⟩ :=
    globalFsPointTrace_flatten_at sourceLog (slot : Nat) hi'
  rw [hlog]
  exact Option.isSome_iff_exists.mpr ⟨value, hvalue⟩

/-- The complete family of selected replay slots needed by the combined fork
construction is reachable, including after arbitrary adversarial prequeries. -/
theorem multiStatementRoundSlots_reachable
    {Call : Type}
    (game : OracleComp GlobalFsSourceSpec (PackedOutcome Call))
    (queryBounds : (Ipp.FsWrappedSpec Fr).Domain → Nat)
    (μ : Nat) :
    ∀ level, level < μ →
      OracleComp.CfReachable (multiStatementForkMain game)
        queryBounds (Sum.inr ())
        (fun run =>
          multiStatementRoundSlot
            (queryBounds (Sum.inr ())) level run) :=
  fun level _ =>
    multiStatementRoundSlot_reachable game queryBounds level

end

end Ipp.ShippingMultiStatement

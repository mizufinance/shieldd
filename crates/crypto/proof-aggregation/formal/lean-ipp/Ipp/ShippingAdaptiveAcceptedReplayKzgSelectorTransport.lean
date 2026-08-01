import Ipp.ShippingAdaptiveAcceptedReplayGames

/-!
Completeness and event preservation for the accepted-replay KZG selectors.

The V/W attempt constructors already had output soundness.  Here the exact
classifier fields are used in the other direction: a false-opening event on a
successfully projected replay cannot be dropped by structural selection.
Setup binding remains an explicit premise when transporting the selected
attempt into a setup-first game win.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingMultiStatement

noncomputable section

open Ipp.Bls12377
open Ipp.S1

local instance kzgSelectorTransportBasePrimeFact :
    Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance kzgSelectorTransportScalarPrimeFact :
    Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩
local instance kzgSelectorTransportFq2NonresidueFact :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance kzgSelectorTransportFq2Fintype : Fintype Fq2 :=
  Fintype.ofEquiv
    (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm
local instance kzgSelectorTransportGlobalFsUniform :
    IsUniformSpec GlobalFsSourceSpec :=
  IsUniformSpec.ofFintypeInhabited _
local instance kzgSelectorTransportWrappedFsUniform :
    IsUniformSpec (Ipp.FsWrappedSpec Fr) :=
  IsUniformSpec.ofFintypeInhabited _

/-- A projected V false opening forces the accepted-replay selector to return
one exact winning attempt. -/
theorem acceptedReplayKzgVAttemptOfRaw?_complete
    {Call : Type} {μ : Nat}
    (classifiers : AcceptedReplayKzgClassifierFamily μ)
    (raw : RawMultiStatementForkTree Call μ)
    (statement : Bls12377ReductionStatement μ)
    (tree : Bls12377GipaForkTree μ)
    (hproject :
      projectAcceptedRawForkAt? μ raw =
        some (statement, tree))
    (hwin :
      KzgVFalseOpeningGameTreeWin statement tree) :
    ∃ forgery : Bls12377KzgVForgery μ,
      acceptedReplayKzgVAttemptOfRaw?
          μ classifiers (some raw) =
        some
          ({
            statement := statement
            forgery := forgery
          } : AcceptedReplayKzgVAttempt μ) ∧
      Bls12377KzgVForgery.Wins statement forgery := by
  obtain ⟨forgery, hselect⟩ :=
    bls12377SelectKzgVForgery_complete
      statement (classifiers statement) tree hwin
  refine ⟨forgery, ?_, ?_⟩
  · simp [acceptedReplayKzgVAttemptOfRaw?,
      hproject, hselect]
  · exact
      bls12377SelectKzgVForgery_sound
        statement (classifiers statement)
        tree forgery hselect

/-- W-lane structural completeness on the same projected replay. -/
theorem acceptedReplayKzgWAttemptOfRaw?_complete
    {Call : Type} {μ : Nat}
    (classifiers : AcceptedReplayKzgClassifierFamily μ)
    (raw : RawMultiStatementForkTree Call μ)
    (statement : Bls12377ReductionStatement μ)
    (tree : Bls12377GipaForkTree μ)
    (hproject :
      projectAcceptedRawForkAt? μ raw =
        some (statement, tree))
    (hwin :
      KzgWFalseOpeningGameTreeWin statement tree) :
    ∃ forgery : Bls12377KzgWForgery μ,
      acceptedReplayKzgWAttemptOfRaw?
          μ classifiers (some raw) =
        some
          ({
            statement := statement
            forgery := forgery
          } : AcceptedReplayKzgWAttempt μ) ∧
      Bls12377KzgWForgery.Wins statement forgery := by
  obtain ⟨forgery, hselect⟩ :=
    bls12377SelectKzgWForgery_complete
      statement (classifiers statement) tree hwin
  refine ⟨forgery, ?_, ?_⟩
  · simp [acceptedReplayKzgWAttemptOfRaw?,
      hproject, hselect]
  · exact
      bls12377SelectKzgWForgery_sound
        statement (classifiers statement)
        tree forgery hselect

/-- A source V component win is preserved by the accepted-replay attempt
constructor on the exact raw tree stored in the common fork. -/
theorem cachePreservingKzgVWin_selectsAcceptedReplayAttempt
    {Call : Type} {μ : Nat}
    (classifiers : AcceptedReplayKzgClassifierFamily μ)
    (fork : CachePreservingCommonFork Call μ)
    (hwin : CachePreservingKzgVWin (some fork)) :
    ∃ forgery : Bls12377KzgVForgery μ,
      acceptedReplayKzgVAttemptOfRaw?
          μ classifiers (some fork.rawTree) =
        some
          ({
            statement := fork.statement
            forgery := forgery
          } : AcceptedReplayKzgVAttempt μ) ∧
      Bls12377KzgVForgery.Wins
        fork.statement forgery := by
  apply
    acceptedReplayKzgVAttemptOfRaw?_complete
      classifiers fork.rawTree fork.statement fork.projected
  · simpa [CachePreservingCommonFork.projected] using
      (projectAcceptedRawForkAt?_eq_projectCommonStatementTree
        fork.statement fork.rawTree fork.carries)
  · simpa [CachePreservingKzgVWin,
      Ipp.S1.KzgVFalseOpeningGameWin] using hwin

/-- W-lane source-event preservation through structural selection. -/
theorem cachePreservingKzgWWin_selectsAcceptedReplayAttempt
    {Call : Type} {μ : Nat}
    (classifiers : AcceptedReplayKzgClassifierFamily μ)
    (fork : CachePreservingCommonFork Call μ)
    (hwin : CachePreservingKzgWWin (some fork)) :
    ∃ forgery : Bls12377KzgWForgery μ,
      acceptedReplayKzgWAttemptOfRaw?
          μ classifiers (some fork.rawTree) =
        some
          ({
            statement := fork.statement
            forgery := forgery
          } : AcceptedReplayKzgWAttempt μ) ∧
      Bls12377KzgWForgery.Wins
        fork.statement forgery := by
  apply
    acceptedReplayKzgWAttemptOfRaw?_complete
      classifiers fork.rawTree fork.statement fork.projected
  · simpa [CachePreservingCommonFork.projected] using
      (projectAcceptedRawForkAt?_eq_projectCommonStatementTree
        fork.statement fork.rawTree fork.carries)
  · simpa [CachePreservingKzgWWin,
      Ipp.S1.KzgWFalseOpeningGameWin] using hwin

/-- With challenger-side setup binding, a source V component win becomes the
exact setup-first accepted-replay win selected from the same raw tree. -/
theorem cachePreservingKzgVWin_implies_acceptedReplayKzgVWin
    {Call : Type} {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (classifiers : AcceptedReplayKzgClassifierFamily μ)
    (fork : CachePreservingCommonFork Call μ)
    (hbinding :
      AcceptedReplayBls12377StatementBinding
        fork.statement parameters)
    (hwin : CachePreservingKzgVWin (some fork)) :
    ∃ forgery : Bls12377KzgVForgery μ,
      acceptedReplayKzgVAttemptOfRaw?
          μ classifiers (some fork.rawTree) =
        some
          ({
            statement := fork.statement
            forgery := forgery
          } : AcceptedReplayKzgVAttempt μ) ∧
      AcceptedReplayKzgVWin
        (parameters,
          some
            ({
              statement := fork.statement
              forgery := forgery
            } : AcceptedReplayKzgVAttempt μ)) := by
  obtain ⟨forgery, hselect, hwins⟩ :=
    cachePreservingKzgVWin_selectsAcceptedReplayAttempt
      classifiers fork hwin
  refine ⟨forgery, hselect, ?_⟩
  apply
    (acceptedReplayKzgVWin_iff_statementWin
      parameters
      ({
        statement := fork.statement
        forgery := forgery
      } : AcceptedReplayKzgVAttempt μ)).2
  exact ⟨hbinding, hwins⟩

/-- W-lane counterpart of the setup-first event transport. -/
theorem cachePreservingKzgWWin_implies_acceptedReplayKzgWWin
    {Call : Type} {μ : Nat}
    (parameters : Bls12377KzgParameters μ)
    (classifiers : AcceptedReplayKzgClassifierFamily μ)
    (fork : CachePreservingCommonFork Call μ)
    (hbinding :
      AcceptedReplayBls12377StatementBinding
        fork.statement parameters)
    (hwin : CachePreservingKzgWWin (some fork)) :
    ∃ forgery : Bls12377KzgWForgery μ,
      acceptedReplayKzgWAttemptOfRaw?
          μ classifiers (some fork.rawTree) =
        some
          ({
            statement := fork.statement
            forgery := forgery
          } : AcceptedReplayKzgWAttempt μ) ∧
      AcceptedReplayKzgWWin
        (parameters,
          some
            ({
              statement := fork.statement
              forgery := forgery
            } : AcceptedReplayKzgWAttempt μ)) := by
  obtain ⟨forgery, hselect, hwins⟩ :=
    cachePreservingKzgWWin_selectsAcceptedReplayAttempt
      classifiers fork hwin
  refine ⟨forgery, hselect, ?_⟩
  apply
    (acceptedReplayKzgWWin_iff_statementWin
      parameters
      ({
        statement := fork.statement
        forgery := forgery
      } : AcceptedReplayKzgWAttempt μ)).2
  exact ⟨hbinding, hwins⟩

end

end Ipp.ShippingMultiStatement

import VCVio.OracleComp.QueryTracking.RandomOracle.EagerTable

/-!
Currying a finite lazy random-oracle domain from `(A × B) → R` to
`A → (B → R)` preserves every output distribution.  The theorem is phrased
for two computations whose deterministic table interpretations agree, so it
can fuse a bounded sequence of fine-grained queries into one block query.
-/

open OracleSpec OracleComp
open scoped OracleSpec.PrimitiveQuery

namespace Ipp.RandomOracleCurry

noncomputable section

abbrev ConstSpec (D R : Type) := D →ₒ R

/-- A fine-grained lazy oracle and a curried block oracle have the same output
distribution whenever their deterministic eager-table interpretations agree. -/
theorem evalDist_randomOracle_curry
    {A B R α : Type}
    [DecidableEq A] [DecidableEq B]
    [Finite A] [Finite B] [Finite R] [Nonempty R]
    [SampleableType R]
    [SampleableType (B → R)]
    [SampleableType (A × B → R)]
    [SampleableType (A → B → R)]
    (fine : OracleComp (ConstSpec (A × B) R) α)
    (block : OracleComp (ConstSpec A (B → R)) α)
    (heval : ∀ table : A × B → R,
      evalWithAnswerFn (QueryImpl.ofFn table) fine =
        evalWithAnswerFn
          (QueryImpl.ofFn ((Equiv.curry A B R) table)) block) :
    𝒟[(simulateQ (ConstSpec (A × B) R).randomOracle fine).run' ∅] =
      𝒟[(simulateQ (ConstSpec A (B → R)).randomOracle block).run' ∅] := by
  rw [evalDist_simulateQ_randomOracle_run'_empty_eq_uniformTable,
    evalDist_simulateQ_randomOracle_run'_empty_eq_uniformTable]
  simp only [bind_pure_comp]
  have hcurry :
      𝒟[(Equiv.curry A B R) <$> ($ᵗ (A × B → R))] =
        𝒟[$ᵗ (A → B → R)] :=
    evalDist_map_bijective_uniform_cross
      (α := A × B → R) (β := A → B → R)
      (Equiv.curry A B R) (Equiv.curry A B R).bijective
  calc
    𝒟[(fun table =>
        evalWithAnswerFn (QueryImpl.ofFn table) fine) <$>
          ($ᵗ (A × B → R))]
        =
      𝒟[(fun table =>
        evalWithAnswerFn
          (QueryImpl.ofFn ((Equiv.curry A B R) table)) block) <$>
            ($ᵗ (A × B → R))] := by
          congr 2
          funext table
          exact heval table
    _ =
      𝒟[(fun table =>
        evalWithAnswerFn (QueryImpl.ofFn table) block) <$>
          ((Equiv.curry A B R) <$> ($ᵗ (A × B → R)))] := by
            simp only [Functor.map_map, Function.comp_def]
    _ =
      𝒟[(fun table =>
        evalWithAnswerFn (QueryImpl.ofFn table) block) <$>
          ($ᵗ (A → B → R))] := by
            rw [evalDist_map, hcurry, ← evalDist_map]

#print axioms evalDist_randomOracle_curry

end

end Ipp.RandomOracleCurry

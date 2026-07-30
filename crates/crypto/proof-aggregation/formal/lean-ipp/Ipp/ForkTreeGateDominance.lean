import Ipp.ForkTree

/-!
Probability-mass transport between combined fork trees with nested leaf gates.

The generic event layer consumes pointwise domination of successful tree
outputs.  The operational proof is replay-contextual because the prior
extractor is rerun under fixed-trace replacement semantics at every successor
level; ordinary fresh-run domination is not used as an induction hypothesis.
-/

open OracleSpec OracleComp ENNReal Function

namespace Ipp

variable {ι : Type} {spec : OracleSpec ι} {α : Type}

/-- Pointwise domination on successful option outputs for an arbitrary oracle
specification.  Failure mass is intentionally unconstrained. -/
def OracleOptionSuccessDom
    {β : Type}
    (left right : OracleComp spec (Option β)) : Prop :=
  ∀ value,
    Pr[= some value | left] ≤
      Pr[= some value | right]

/-- A fail-closed optional-output event. -/
def optionSatisfies {β : Type}
    (predicate : β → Prop) : Option β → Prop
  | none => False
  | some value => predicate value

/-- Pointwise successful-output domination transports every event which is
false on `none`. -/
theorem probEvent_optionSatisfies_le_of_oracleOptionSuccessDom
    [IsUniformSpec spec]
    {β : Type}
    {left right : OracleComp spec (Option β)}
    (dominates : OracleOptionSuccessDom left right)
    (predicate : β → Prop) :
    Pr[optionSatisfies predicate | left] ≤
      Pr[optionSatisfies predicate | right] := by
  rw [probEvent_eq_tsum_indicator,
    probEvent_eq_tsum_indicator]
  apply ENNReal.tsum_le_tsum
  intro output
  cases output with
  | none =>
      simp [optionSatisfies]
  | some value =>
      by_cases hsatisfies : predicate value
      · simpa [optionSatisfies, hsatisfies] using
          dominates value
      · simp [optionSatisfies, hsatisfies]

/-- Pointwise successful-tree domination between two leaf gates at one
combined-fork depth. -/
def ForkTreeGatePointwiseDom
    [spec.DecidableEq]
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec]
    (total : Nat)
    (main : OracleComp spec α)
    (queryBounds : ι → Nat)
    (oracle : ι)
    (selector :
      Nat → α → Option (Fin (queryBounds oracle + 1)))
    (strong weak : α × QueryLog spec → Prop)
    [DecidablePred strong]
    [DecidablePred weak]
    (built : Nat)
    (builtLe : built ≤ total) : Prop :=
  OracleOptionSuccessDom
    (forkTreeCombined total main queryBounds oracle
      selector strong built builtLe)
    (forkTreeCombined total main queryBounds oracle
      selector weak built builtLe)

/-- At depth zero, implication between the leaf gates gives exact
pointwise-success domination.  Weak-only runs move from `none` to a leaf and
cannot remove mass from any strong leaf. -/
theorem forkTreeCombined_zero_gatePointwiseDom
    [spec.DecidableEq]
    [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec]
    (total : Nat)
    (main : OracleComp spec α)
    (queryBounds : ι → Nat)
    (oracle : ι)
    (selector :
      Nat → α → Option (Fin (queryBounds oracle + 1)))
    (strong weak : α × QueryLog spec → Prop)
    [DecidablePred strong]
    [DecidablePred weak]
    (hgate : ∀ run, strong run → weak run) :
    ForkTreeGatePointwiseDom total main queryBounds oracle
      selector strong weak 0 (Nat.zero_le total) := by
  intro tree
  rw [forkTreeCombined_zero, forkTreeCombined_zero,
    probOutput_bind_eq_tsum, probOutput_bind_eq_tsum]
  apply ENNReal.tsum_le_tsum
  intro first
  by_cases hstrong : strong first
  · have hweak : weak first := hgate first hstrong
    simp [hstrong, hweak]
  · simp [hstrong]

/-- The tree-specific child continuation is the generic optional echo used by
the replay-contextual refinement theorem. -/
private theorem keepCombinedChild_eq_keepOptionalChild
    {depth : Nat} :
    (keepCombinedChild
      (spec := spec) (α := α) (depth := depth)) =
      (keepOptionalChild
        (spec := spec)
        (β := RunTree spec α depth)) := by
  funext output
  rcases output with ⟨tree?, log⟩
  cases tree? <;> rfl

/-- Gate implication lifts to an operational refinement of the complete
bottom-up fork tree.  Successful paths retain the exact query structure;
strong-only aborts may stop earlier or consume a different failed suffix. -/
theorem forkTreeCombined_gateReplayRefines
    [spec.DecidableEq]
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec]
    (total : Nat)
    (main : OracleComp spec α)
    (queryBounds : ι → Nat)
    (oracle : ι)
    (selector :
      Nat → α → Option (Fin (queryBounds oracle + 1)))
    (strong weak : α × QueryLog spec → Prop)
    [DecidablePred strong]
    [DecidablePred weak]
    (hgate : ∀ run, strong run → weak run)
    (built : Nat)
    (builtLe : built ≤ total) :
    OracleOptionSuccessRefines
      (forkTreeCombined total main queryBounds oracle
        selector strong built builtLe)
      (forkTreeCombined total main queryBounds oracle
        selector weak built builtLe) := by
  induction built generalizing builtLe with
  | zero =>
      rw [forkTreeCombined_zero,
        forkTreeCombined_zero]
      apply OracleFailClosedRefines.bindSame
        (replayFirstRun main)
      intro first
      by_cases hstrong : strong first
      · have hweak : weak first := hgate first hstrong
        simpa [hstrong, hweak] using
          (oracleOptionSuccessRefines_refl
            (pure (some (.leaf first)) :
              OracleComp spec
                (Option (RunTree spec α 0))))
      · have habort :
            OracleOptionSuccessRefines
              (pure none :
                OracleComp spec
                  (Option (RunTree spec α 0)))
              (if weak first then
                pure (some (.leaf first))
              else
                pure none) :=
          OracleFailClosedRefines.abort
            _ _ (OracleAllOutputs.ofPure rfl)
        simpa [hstrong] using habort
  | succ built ih =>
      have hprior :=
        ih (by omega)
      let nextSelector :=
        combinedTreeSelector queryBounds oracle selector
          total built (by omega)
      have hcontinued :=
        forkReplay4Continue_keepOptionalChild_refines
          (forkTreeCombined total main queryBounds oracle
            selector strong built (by omega))
          (forkTreeCombined total main queryBounds oracle
            selector weak built (by omega))
          queryBounds oracle nextSelector none hprior
      have hassembled :=
        hcontinued.mapOptionGate
          (assembleCombinedNode
            (spec := spec) (α := α) (depth := built))
          (by rfl)
      rw [forkTreeCombined_succ,
        forkTreeCombined_succ,
        keepCombinedChild_eq_keepOptionalChild]
      simpa [nextSelector] using hassembled

/-- Full-depth pointwise probability dominance follows from the operational
replay refinement; no fresh-run or transcript-erasure premise is used. -/
theorem forkTreeCombined_gatePointwiseDom
    [spec.DecidableEq]
    [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec]
    (total : Nat)
    (main : OracleComp spec α)
    (queryBounds : ι → Nat)
    (oracle : ι)
    (selector :
      Nat → α → Option (Fin (queryBounds oracle + 1)))
    (strong weak : α × QueryLog spec → Prop)
    [DecidablePred strong]
    [DecidablePred weak]
    (hgate : ∀ run, strong run → weak run)
    (built : Nat)
    (builtLe : built ≤ total) :
    ForkTreeGatePointwiseDom total main queryBounds oracle
      selector strong weak built builtLe := by
  intro tree
  exact
    (forkTreeCombined_gateReplayRefines
      total main queryBounds oracle selector
      strong weak hgate built builtLe).probOutput_le tree

/-- A successful full-depth strong-gate tree satisfies the strong predicate
at every leaf, so option success and the qualified-tree event have identical
mass. -/
theorem forkTreeCombined_isSome_eq_all_leafOk
    [spec.DecidableEq]
    [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec]
    (total : Nat)
    (main : OracleComp spec α)
    (queryBounds : ι → Nat)
    (oracle : ι)
    (selector :
      Nat → α → Option (Fin (queryBounds oracle + 1)))
    (leafOk : α × QueryLog spec → Prop)
    [DecidablePred leafOk]
    (baseReach : ∀ level, level < total →
      CfReachable main queryBounds oracle
        (selector level)) :
    Pr[fun tree : Option (RunTree spec α total) =>
          tree.isSome |
        forkTreeCombined total main queryBounds oracle
          selector leafOk total (Nat.le_refl total)] =
      Pr[optionSatisfies (RunTree.All leafOk) |
        forkTreeCombined total main queryBounds oracle
          selector leafOk total (Nat.le_refl total)] := by
  apply probEvent_ext
  intro output emitted
  cases output with
  | none =>
      simp [optionSatisfies]
  | some tree =>
      have hall :
          tree.All leafOk :=
        forkTreeCombined_success_all_leafOk
          total main queryBounds oracle selector
          leafOk baseReach emitted
      simp [optionSatisfies, hall]

/-- Replay-contextual pointwise domination transports all strong successful
mass to the same qualified-tree event in the weaker accepted-replay
experiment. -/
theorem forkTreeCombined_isSome_le_qualified_weaker
    [spec.DecidableEq]
    [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec]
    (total : Nat)
    (main : OracleComp spec α)
    (queryBounds : ι → Nat)
    (oracle : ι)
    (selector :
      Nat → α → Option (Fin (queryBounds oracle + 1)))
    (strong weak : α × QueryLog spec → Prop)
    [DecidablePred strong]
    [DecidablePred weak]
    (baseReach : ∀ level, level < total →
      CfReachable main queryBounds oracle
        (selector level))
    (dominates :
      ForkTreeGatePointwiseDom total main queryBounds oracle
        selector strong weak total (Nat.le_refl total)) :
    Pr[fun tree : Option (RunTree spec α total) =>
          tree.isSome |
        forkTreeCombined total main queryBounds oracle
          selector strong total (Nat.le_refl total)] ≤
      Pr[optionSatisfies (RunTree.All strong) |
        forkTreeCombined total main queryBounds oracle
          selector weak total (Nat.le_refl total)] := by
  calc
    Pr[fun tree : Option (RunTree spec α total) =>
          tree.isSome |
        forkTreeCombined total main queryBounds oracle
          selector strong total (Nat.le_refl total)] =
        Pr[optionSatisfies (RunTree.All strong) |
          forkTreeCombined total main queryBounds oracle
            selector strong total (Nat.le_refl total)] :=
      forkTreeCombined_isSome_eq_all_leafOk
        total main queryBounds oracle selector strong
          baseReach
    _ ≤
        Pr[optionSatisfies (RunTree.All strong) |
          forkTreeCombined total main queryBounds oracle
            selector weak total (Nat.le_refl total)] :=
      probEvent_optionSatisfies_le_of_oracleOptionSuccessDom
        dominates (RunTree.All strong)

/-- Closed gate-dominance transport for the full fork tree. -/
theorem forkTreeCombined_isSome_le_qualified_weaker_of_gate
    [spec.DecidableEq]
    [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)]
    [unifSpec ⊂ₒ spec]
    (total : Nat)
    (main : OracleComp spec α)
    (queryBounds : ι → Nat)
    (oracle : ι)
    (selector :
      Nat → α → Option (Fin (queryBounds oracle + 1)))
    (strong weak : α × QueryLog spec → Prop)
    [DecidablePred strong]
    [DecidablePred weak]
    (hgate : ∀ run, strong run → weak run)
    (baseReach : ∀ level, level < total →
      CfReachable main queryBounds oracle
        (selector level)) :
    Pr[fun tree : Option (RunTree spec α total) =>
          tree.isSome |
        forkTreeCombined total main queryBounds oracle
          selector strong total (Nat.le_refl total)] ≤
      Pr[optionSatisfies (RunTree.All strong) |
        forkTreeCombined total main queryBounds oracle
          selector weak total (Nat.le_refl total)] := by
  apply forkTreeCombined_isSome_le_qualified_weaker
    total main queryBounds oracle selector
      strong weak baseReach
  exact forkTreeCombined_gatePointwiseDom
    total main queryBounds oracle selector
      strong weak hgate total (Nat.le_refl total)

#print axioms
  probEvent_optionSatisfies_le_of_oracleOptionSuccessDom
#print axioms forkTreeCombined_zero_gatePointwiseDom
#print axioms forkTreeCombined_gateReplayRefines
#print axioms forkTreeCombined_gatePointwiseDom
#print axioms forkTreeCombined_isSome_eq_all_leafOk
#print axioms forkTreeCombined_isSome_le_qualified_weaker
#print axioms
  forkTreeCombined_isSome_le_qualified_weaker_of_gate

end Ipp

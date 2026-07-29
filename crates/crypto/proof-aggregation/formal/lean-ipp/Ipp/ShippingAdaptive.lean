import Ipp.ShippingHashGame

/-!
An outer ideal-oracle experiment for adaptive shipping calls.

The adversary selects one call/proof package while querying the same lazy
Blake2b oracle that subsequently supplies the verifier challenges. This module
is deliberately generic: a production instantiation must still package the
heterogeneous shipping call and prove a cache-conditioned fixed-call bound.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal

namespace Ipp.ShippingAdaptive

noncomputable section

abbrev Blake2bSpec := Ipp.ShippingHashGame.Blake2bOracleSpec
abbrev Cache := Blake2bSpec.QueryCache

/-- One adversarially selected shipping call and its decoded aggregate proof.
The opaque `Call` component can retain all routed statement and contract data. -/
structure Choice (Call Proof : Type) where
  call : Call
  proof : Proof

/-- The single oracle program: adversarial selection followed by verification.
Both phases are inside one bind and therefore one lazy-oracle simulation. -/
def sharedProgram {Call Proof : Type}
    (adversary : OracleComp Blake2bSpec (Choice Call Proof))
    (verify : Choice Call Proof → OracleComp Blake2bSpec Bool) :
    OracleComp Blake2bSpec (Choice Call Proof × Bool) := do
  let choice ← adversary
  let accepted ← verify choice
  pure (choice, accepted)

/-- The adaptive ideal experiment. Its returned cache is the cache after both
the adversary and verifier have run, not a fresh verifier-only cache. -/
def idealExperiment
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    {Call Proof : Type}
    (adversary : OracleComp Blake2bSpec (Choice Call Proof))
    (verify : Choice Call Proof → OracleComp Blake2bSpec Bool) :
    ProbComp ((Choice Call Proof × Bool) × Cache) :=
  (simulateQ Blake2bSpec.randomOracle
    (sharedProgram adversary verify)).run ∅

/-- The adversary phase with its exact post-adversary lazy cache exposed. -/
def adversaryRun
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    {Call Proof : Type}
    (adversary : OracleComp Blake2bSpec (Choice Call Proof)) :
    ProbComp (Choice Call Proof × Cache) :=
  (simulateQ Blake2bSpec.randomOracle adversary).run ∅

/-- One fixed selected call continued from the adversary's existing cache. -/
def fixedCallRun
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    {Call Proof : Type}
    (verify : Choice Call Proof → OracleComp Blake2bSpec Bool)
    (choice : Choice Call Proof) (initial : Cache) :
    ProbComp (Bool × Cache) :=
  (simulateQ Blake2bSpec.randomOracle (verify choice)).run initial

/-- The adaptive bad event ignores the final cache but retains the chosen call
and proof in the experiment output. -/
def InvalidAccepted {Call Proof : Type}
    (invalid : Choice Call Proof → Prop) :
    ((Choice Call Proof × Bool) × Cache) → Prop :=
  fun output => invalid output.1.1 ∧ output.1.2 = true

/-- The same event after fixing one selected call and its starting cache. -/
def FixedInvalidAccepted {Call Proof : Type}
    (invalid : Choice Call Proof → Prop)
    (choice : Choice Call Proof) : Bool × Cache → Prop :=
  fun output => invalid choice ∧ output.1 = true

/-- Exposes the exact cache threading of the single simulated oracle program:
the verifier starts from the cache produced by the adversary. -/
theorem idealExperiment_eq_threaded
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    {Call Proof : Type}
    (adversary : OracleComp Blake2bSpec (Choice Call Proof))
    (verify : Choice Call Proof → OracleComp Blake2bSpec Bool) :
    idealExperiment adversary verify =
      adversaryRun adversary >>= fun selected =>
        (fun checked => ((selected.1, checked.1), checked.2)) <$>
          fixedCallRun verify selected.1 selected.2 := by
  simp [idealExperiment, adversaryRun, fixedCallRun, sharedProgram,
    simulateQ_bind, StateT.run_bind]

/-- A cache-conditioned fixed-call theorem lifts through adaptive selection.
The premise is local to each reachable choice/cache pair; it is not the desired
outer conclusion restated as an assumption. -/
theorem adaptive_invalidAcceptance_le_of_reachable_fixedCall
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    {Call Proof : Type}
    (adversary : OracleComp Blake2bSpec (Choice Call Proof))
    (verify : Choice Call Proof → OracleComp Blake2bSpec Bool)
    (invalid : Choice Call Proof → Prop)
    (ε : ℝ≥0∞)
    (hfixed : ∀ choice cache,
      (choice, cache) ∈ support (adversaryRun adversary) →
        Pr[FixedInvalidAccepted invalid choice |
          fixedCallRun verify choice cache] ≤ ε) :
    Pr[InvalidAccepted invalid |
      idealExperiment adversary verify] ≤ ε := by
  rw [idealExperiment_eq_threaded]
  apply probEvent_bind_le_of_forall_le
  rintro ⟨choice, cache⟩ hreachable
  rw [probEvent_map]
  change Pr[FixedInvalidAccepted invalid choice |
    fixedCallRun verify choice cache] ≤ ε
  exact hfixed choice cache hreachable

/-- Uniform fixed-call bounds are sufficient for the reachable-cache premise. -/
theorem adaptive_invalidAcceptance_le_of_fixedCall
    [SampleableType Ipp.ShippingHashGame.DigestBytes]
    {Call Proof : Type}
    (adversary : OracleComp Blake2bSpec (Choice Call Proof))
    (verify : Choice Call Proof → OracleComp Blake2bSpec Bool)
    (invalid : Choice Call Proof → Prop)
    (ε : ℝ≥0∞)
    (hfixed : ∀ choice cache,
      Pr[FixedInvalidAccepted invalid choice |
        fixedCallRun verify choice cache] ≤ ε) :
    Pr[InvalidAccepted invalid |
      idealExperiment adversary verify] ≤ ε :=
  adaptive_invalidAcceptance_le_of_reachable_fixedCall
    adversary verify invalid ε
      (fun choice cache _ => hfixed choice cache)

/-- The whole shared program spends the adversary budget followed by the
uniform fixed-verifier budget. -/
theorem sharedProgram_isTotalQueryBound
    {Call Proof : Type}
    (adversary : OracleComp Blake2bSpec (Choice Call Proof))
    (verify : Choice Call Proof → OracleComp Blake2bSpec Bool)
    (adversaryQueries verifierQueries : Nat)
    (hadv : IsTotalQueryBound adversary adversaryQueries)
    (hverify : ∀ choice,
      IsTotalQueryBound (verify choice) verifierQueries) :
    IsTotalQueryBound (sharedProgram adversary verify)
      (adversaryQueries + verifierQueries) := by
  unfold sharedProgram
  refine isTotalQueryBound_bind
    (n₁ := adversaryQueries) (n₂ := verifierQueries) hadv ?_
  intro choice
  refine isTotalQueryBound_bind
    (n₁ := verifierQueries) (n₂ := 0) (hverify choice) ?_
  intro accepted
  show IsTotalQueryBound
    (pure (choice, accepted) :
      OracleComp Blake2bSpec (Choice Call Proof × Bool)) 0
  trivial

#print axioms idealExperiment_eq_threaded
#print axioms adaptive_invalidAcceptance_le_of_reachable_fixedCall
#print axioms adaptive_invalidAcceptance_le_of_fixedCall
#print axioms sharedProgram_isTotalQueryBound

end

end Ipp.ShippingAdaptive

/-
U5a: bad-event probability accounting for the wrapped cached-RO SnarkPack
Fiat--Shamir game (DESIGN §U5a, §R7 item 4).

The probability space is `replayFirstRun (fsRandomFunction (FsGame stmt adv))`
over `unifSpec + SnarkpackFsSpec` — the lazy structured random function feeds
fresh uniform `F` samples on structured cache misses, of which ≤ `Q qb` occur in
scope. Its support points are `(out, sourceLog)` pairs whose wrapped image is
`{ out := out, trace := fsPointTrace sourceLog }`.

The `WrappedRunGood` predicate consumed by U5d(4) excludes six bad events; this
file states the union-bound accounting for them and proves the quantitative
lower bound `Q_0 ≥ Pr[accept] − err_bad` by pure ENNReal event algebra.

R7(4) status: the SIX per-event bounds are stated as the parametric interface
`BadEventBudget` (a clearly-named hypothesis bundle); the `q0_lower_bound`
complement/union algebra over them is proved concretely. See the REPORT-CODEX
"U5a (opus session)" section for the constants chosen, which bounds went
parametric, and the exact remaining gaps.

U5a-quant (opus session 2): the foundational per-miss uniform mass is now proved
concretely as `fresh_miss_uniform` (a structured cache MISS installs each fixed
`v : F` with probability exactly `1/|F|`) and its set form `fresh_miss_mem_le`
(a miss lands in a finite set `bad` with probability ≤ `|bad|/|F|`). These are
the load-bearing per-slot masses the KZG/randomizer/birthday union bounds
consume; the remaining gap to discharge the `BadEventBudget` fields concretely
is the distributional union bound over the ≤ `Q qb` miss ordinals of the whole
game (see REPORT-CODEX "U5a-quant").

Spec rows: `fs.stage-labels`, `groth16.randomizer`, `tipp-mipp.gipa`,
`tipp-mipp.kzg`, `fs.challenge-preimage`.
-/
import Ipp.FsFork

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp

noncomputable section

variable {F G1 G2 GT : Type}
  [Field F] [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
  [AddCommGroup GT] [Module F GT]
  [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]

/-- R7's whole-game query cap: `Q qb := qb + 1`, the size of `Fin (qb + 1)`.
The `+1` is not an extra query; `qb` is predecessor-style input to the cap. -/
abbrev Q (qb : Nat) : Nat := qb + 1

/-- `Q` unfolds to the predecessor-style whole-game query cap. -/
@[simp] theorem Q_eq_add_one (qb : Nat) : Q qb = qb + 1 := rfl

/-- The whole-game query cap has at least one ordinal. -/
@[simp] theorem Q_pos (qb : Nat) : 0 < Q qb := Nat.zero_lt_succ qb

/-- The structured SnarkPack FS source spec (uniform sampling + the structured
challenge oracle). Its `Range` at the challenge index is `F`. -/
abbrev FsSourceSpec (F G1 G2 GT : Type) := unifSpec + SnarkpackFsSpec F G1 G2 GT

/-- Support-point type of the wrapped cached-RO computation. -/
abbrev FsRunLog (μ : Nat) (F G1 G2 GT : Type) :=
  FsResult μ F G1 G2 GT × QueryLog (FsSourceSpec F G1 G2 GT)

/-- The lazy random-function probability space of the FS game (DESIGN §U5a).
Uniform on structured misses; `replayFirstRun` exposes the miss log. -/
abbrev fsProbComp {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT) (Proof μ F G1 G2 GT)) :
    OracleComp (FsSourceSpec F G1 G2 GT) (FsRunLog μ F G1 G2 GT) :=
  replayFirstRun (fsRandomFunction (FsGame stmt adv))

/-- Query logging preserves the cached game's whole-query cap. -/
theorem fsProbComp_isTotalQueryBound {μ : Nat}
    [IsUniformSpec (FsSourceSpec F G1 G2 GT)]
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    {n : Nat} (h : IsTotalQueryBound (FsGame stmt adv) n) :
    IsTotalQueryBound (fsProbComp stmt adv) n := by
  unfold fsProbComp replayFirstRun
  apply (isTotalQueryBound_run_simulateQ_loggingOracle_iff
    (fsRandomFunction (FsGame stmt adv)) n).mpr
  exact fsRandomFunction_isTotalQueryBound (FsGame stmt adv) h

/-- The wrapped run determined by a source support point: the recomputed
verifier result plus the structured miss trace. -/
def wrappedOf {μ : Nat} (z : FsRunLog μ F G1 G2 GT) :
    WrappedFsRun (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT) :=
  { out := z.1, trace := fsPointTrace z.2 }

/-- The run's verifier accepted. -/
def Accepted {μ : Nat} (z : FsRunLog μ F G1 G2 GT) : Prop :=
  z.1.accept = true

/-- Bad event 1 (`answer_collision_bound`): two distinct structured miss
ordinals carry equal fresh answers — the RO birthday collision that breaks
`StructuredAnswersInjective`. -/
def BadCollision {μ : Nat} (z : FsRunLog μ F G1 G2 GT) : Prop :=
  ¬ StructuredAnswersInjective (F := F)
      (fsPointTrace z.2).length (flattenFsLog z.2)

/-- Bad event 2 (`randomizer_rootset_bound`): the sampled randomizer landed in
the pre-`r` discrepancy root set (`groth16.randomizer`). Modelled by an
abstract `Set F` so the consumer instantiates it with `discrepancyRootSet d`
and `discrepancyRootSet_card` for the size. -/
def BadRandomizer {μ : Nat} (badR : Set F) (z : FsRunLog μ F G1 G2 GT) : Prop :=
  z.1.transcript.randomizer ∈ badR

/-- Bad event 3 (`dependency_order_bound`): some in-budget round slot is not
preceded by both the randomizer and x0 misses (`DependencyOrdered` fails). -/
def BadDependency {μ : Nat} (qb : Nat) (stmt : FsStatement μ F G1 G2 GT)
    (z : FsRunLog μ F G1 G2 GT) : Prop :=
  ¬ DependencyOrdered qb stmt (wrappedOf z)

/-- Bad event 4 (`round_slot_order_bound`): accepted round-point first
occurrences are not chronological. A misordered pre-query must guess a later
fresh-uniform round challenge. -/
def BadRoundOrder {μ : Nat} (qb : Nat) (z : FsRunLog μ F G1 G2 GT) : Prop :=
  ¬ RoundSlotOrdered qb (wrappedOf z)

/-- Bad event 5 (`kzg_z_bound`): the KZG challenge landed in the per-statement
bad set (`tipp-mipp.kzg`). Abstract `Set F` of size ≤ `dZ`. -/
def BadKzg {μ : Nat} (badZ : Set F) (z : FsRunLog μ F G1 G2 GT) : Prop :=
  z.1.transcript.kzg ∈ badZ

/-- Bad event 6 (`round_unqueried_bound`): some transcript round point was
never cache-missed, or its first miss exceeds the fork budget. -/
def BadUnqueried {μ : Nat} (qb : Nat) (z : FsRunLog μ F G1 G2 GT) : Prop :=
  ∃ level, level < μ ∧ RoundPointUnqueried qb level (wrappedOf z)

/-- The complete goodness event carried into U5d(4): `WrappedRunGood` (accept,
challenge acceptance, in-budget chronologically ordered round slots, dependency
order, and structured-answer injectivity) together with the randomizer- and
KZG-goodness excluded in U5e. -/
def RunGoodFull {μ : Nat} (qb : Nat) (stmt : FsStatement μ F G1 G2 GT)
    (badR badZ : Set F) (z : FsRunLog μ F G1 G2 GT) : Prop :=
  WrappedRunGood qb stmt (wrappedOf z) (flattenFsLog z.2) ∧
    z.1.transcript.randomizer ∉ badR ∧ z.1.transcript.kzg ∉ badZ

section FreshMiss

/-- **U5a foundational uniform-miss lemma.** In the cached structured source
oracle, the fresh answer installed at a structured cache MISS is uniform on `F`.
Concretely: the first component (the sampled answer) of one miss step at an
uncached `point` equals any fixed `v` with probability exactly `1/|F|`. This is
the load-bearing per-miss uniform mass on which the KZG / birthday union bounds
build; it is a direct `probOutput_query` computation once the miss step is
unfolded to its `$ᵗ F` sampling. -/
theorem fresh_miss_uniform {Point : Type} [DecidableEq Point] [Fintype F]
    [IsUniformSpec (unifSpec + (Point →ₒ F))]
    (point : Point) (cache : (Point →ₒ F).QueryCache)
    (hmiss : cache point = none) (v : F) :
    Pr[= v | Prod.fst <$> ((fsSourceOracle Point F) (Sum.inr point)).run cache] =
      (Fintype.card F : ℝ≥0∞)⁻¹ := by
  have hrun : Prod.fst <$> ((fsSourceOracle Point F) (Sum.inr point)).run cache =
      ((unifSpec + (Point →ₒ F)).query (Sum.inr point) :
        OracleComp (unifSpec + (Point →ₒ F)) F) := by
    simp [fsSourceOracle, QueryImpl.add_apply_inr, QueryImpl.withCaching_apply,
      StateT.run_bind, StateT.run_get, fsSourceImpl, hmiss]
  rw [hrun, probOutput_query]
  congr
  exact Subsingleton.elim _ _

/-- **Set form of the uniform-miss lemma.** The fresh answer installed at a
structured cache miss lands in any finite set `bad` with probability at most
`|bad|/|F|` — the per-slot mass consumed by the KZG and randomizer union
bounds. -/
theorem fresh_miss_mem_le {Point : Type} [DecidableEq Point] [Fintype F]
    [IsUniformSpec (unifSpec + (Point →ₒ F))]
    (point : Point) (cache : (Point →ₒ F).QueryCache)
    (hmiss : cache point = none) (bad : Finset F) :
    Pr[fun z => z.1 ∈ bad |
        ((fsSourceOracle Point F) (Sum.inr point)).run cache] ≤
      (bad.card : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) := by
  classical
  have hterm : ∀ w : F,
      (if w ∈ bad then
        Pr[= w | Prod.fst <$> ((fsSourceOracle Point F) (Sum.inr point)).run cache]
       else 0) =
        (if w ∈ bad then (Fintype.card F : ℝ≥0∞)⁻¹ else 0) := by
    intro w
    by_cases hw : w ∈ bad
    · rw [if_pos hw, if_pos hw, fresh_miss_uniform point cache hmiss w]
    · rw [if_neg hw, if_neg hw]
  have hmap : Pr[fun z => z.1 ∈ bad |
        ((fsSourceOracle Point F) (Sum.inr point)).run cache] =
      Pr[(· ∈ bad) |
        Prod.fst <$> ((fsSourceOracle Point F) (Sum.inr point)).run cache] := by
    rw [probEvent_map]; rfl
  refine le_of_eq ?_
  rw [hmap, probEvent_eq_sum_fintype_ite]
  trans (∑ x : F, if x ∈ bad then (Fintype.card F : ℝ≥0∞)⁻¹ else 0)
  · exact Finset.sum_congr rfl (fun w _ => hterm w)
  · rw [← Finset.sum_filter, Finset.filter_univ_mem, Finset.sum_const, nsmul_eq_mul,
      div_eq_mul_inv]

end FreshMiss

section Quantitative

variable [(FsSourceSpec F G1 G2 GT).DecidableEq]
  [IsUniformSpec (FsSourceSpec F G1 G2 GT)]
  [∀ j, SampleableType ((FsSourceSpec F G1 G2 GT).Range j)]
  [unifSpec ⊂ₒ FsSourceSpec F G1 G2 GT]

/-- Accepting support runs satisfy `ChallengesAccepted`: the four scalar nonce
loops only accept nonzero (and `≠ 1` for the randomizer) answers. Extracted from
the public U5d(3) leaf-data transfer. -/
theorem accepted_challengesAccepted {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    {z : FsRunLog μ F G1 G2 GT}
    (hz : z ∈ support (fsProbComp stmt adv))
    (hacc : Accepted z) :
    ChallengesAccepted z.1 := by
  have hleaf := (wrapped_source_leaf_data stmt adv (out := z.1) (sourceLog := z.2) hz).2
  exact (hleaf hacc).2.2.2

/-- Pointwise complement decomposition on the support: an accepting run whose
full goodness fails must witness one of the six bad events. This is the union
step of the U5a accounting; `ChallengesAccepted` is discharged for free on
accepting support points. -/
theorem accepted_not_good_bad {μ : Nat}
    (qb : Nat) (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (badR badZ : Set F)
    {z : FsRunLog μ F G1 G2 GT}
    (hz : z ∈ support (fsProbComp stmt adv))
    (hacc : Accepted z)
    (hnot : ¬ RunGoodFull qb stmt badR badZ z) :
    (Accepted z ∧ BadCollision z) ∨ (Accepted z ∧ BadRandomizer badR z) ∨
    (Accepted z ∧ BadDependency qb stmt z) ∨
      (Accepted z ∧ BadRoundOrder qb z) ∨
      (Accepted z ∧ BadKzg badZ z) ∨ (Accepted z ∧ BadUnqueried qb z) := by
  classical
  by_cases hR : z.1.transcript.randomizer ∈ badR
  · exact Or.inr (Or.inl ⟨hacc, hR⟩)
  by_cases hZ : z.1.transcript.kzg ∈ badZ
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ⟨hacc, hZ⟩))))
  · have hWRG : ¬ WrappedRunGood qb stmt (wrappedOf z) (flattenFsLog z.2) :=
      fun hw => hnot ⟨hw, hR, hZ⟩
    have hCA : ChallengesAccepted (wrappedOf z).out :=
      accepted_challengesAccepted stmt adv hz hacc
    have hrest : ¬ ((∀ level, level < μ →
        ¬ RoundPointUnqueried qb level (wrappedOf z)) ∧
        RoundSlotOrdered qb (wrappedOf z) ∧
        DependencyOrdered qb stmt (wrappedOf z) ∧
        StructuredAnswersInjective (F := F) (wrappedOf z).trace.length
          (flattenFsLog z.2)) := by
      intro h
      exact hWRG ⟨hacc, hCA, h.1, h.2.1, h.2.2.1, h.2.2.2⟩
    rw [not_and_or, not_and_or, not_and_or] at hrest
    rcases hrest with hu | ho | hd | hs
    · -- some round point unqueried / out of budget
      push_neg at hu
      obtain ⟨level, hlevel, hunq⟩ := hu
      exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr
        ⟨hacc, ⟨level, hlevel, hunq⟩⟩))))
    · -- cross-round order violated
      exact Or.inr (Or.inr (Or.inr (Or.inl ⟨hacc, ho⟩)))
    · -- dependency order violated
      exact Or.inr (Or.inr (Or.inl ⟨hacc, hd⟩))
    · -- structured-answer collision
      exact Or.inl ⟨hacc, hs⟩

/-- The parametric U5a bad-event interface (DESIGN §R7 item 4). Each field is an
RO union bound over the ≤ `Q qb` structured misses in scope; the concrete-constant
proofs are the remaining U5a work (see the report). Naming matches the six
deliverable bounds. -/
structure BadEventBudget {μ : Nat}
    (qb : Nat) (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    [Fintype F]
    (badR badZ : Set F) (dR dZ : Nat) (bUnq : ℝ≥0∞) : Prop where
  /-- Birthday union bound over ordinal pairs. -/
  answer_collision_bound :
    Pr[fun z => Accepted z ∧ BadCollision z | fsProbComp stmt adv] ≤
      (((Q qb) ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)
  /-- Randomizer root-set miss over ≤ `Q qb` candidate randomizer points; the
  randomizer stage rejects `{0,1}` so the per-slot conditional uniform mass is
  ≤ 1/(|F|−2). -/
  randomizer_rootset_bound :
    Pr[fun z => Accepted z ∧ BadRandomizer badR z | fsProbComp stmt adv] ≤
      (((Q qb) * dR : Nat) : ℝ≥0∞) / ((Fintype.card F : ℝ≥0∞) - 2)
  /-- Dependency-order guessing event: an early round-ℓ miss must match the
  later fresh-uniform x0/prev answer; union over levels and early misses. -/
  dependency_order_bound :
    Pr[fun z => Accepted z ∧ BadDependency qb stmt z | fsProbComp stmt adv] ≤
      ((μ * Q qb : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)
  /-- Cross-round pre-query guessing event; union over adjacent round
  dependencies and early misses. Sessions 13--14 discharge this field. -/
  round_slot_order_bound :
    Pr[fun z => Accepted z ∧ BadRoundOrder qb z | fsProbComp stmt adv] ≤
      ((μ * Q qb : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)
  /-- KZG bad-set hit over ≤ `Q qb` candidate KZG points, bad set of size ≤ dZ. -/
  kzg_z_bound :
    Pr[fun z => Accepted z ∧ BadKzg badZ z | fsProbComp stmt adv] ≤
      (((Q qb) * dZ : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)
  /-- Round-point-unqueried bound (kept fully parametric per DESIGN §R7 item 4 /
  the item-5 note: an accepting run with an unqueried round point already
  satisfies the acceptance chain on a fresh answer). -/
  round_unqueried_bound :
    Pr[fun z => Accepted z ∧ BadUnqueried qb z | fsProbComp stmt adv] ≤ bUnq

/-- Assemble a bad-event budget from the bounds that have actually been
established.  Fields whose distributional reductions remain open stay explicit
hypotheses rather than being hidden behind an unsound query-budget assumption. -/
protected theorem BadEventBudget.ofBounds [Fintype F] {μ : Nat}
    (qb : Nat) (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (badR badZ : Set F) (dR dZ : Nat) (bUnq : ℝ≥0∞)
    (hCol : Pr[fun z => Accepted z ∧ BadCollision z | fsProbComp stmt adv] ≤
      (((Q qb) ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞))
    (hRnd : Pr[fun z => Accepted z ∧ BadRandomizer badR z | fsProbComp stmt adv] ≤
      (((Q qb) * dR : Nat) : ℝ≥0∞) / ((Fintype.card F : ℝ≥0∞) - 2))
    (hDep : Pr[fun z => Accepted z ∧ BadDependency qb stmt z | fsProbComp stmt adv] ≤
      ((μ * Q qb : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞))
    (hOrd : Pr[fun z => Accepted z ∧ BadRoundOrder qb z | fsProbComp stmt adv] ≤
      ((μ * Q qb : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞))
    (hKzg : Pr[fun z => Accepted z ∧ BadKzg badZ z | fsProbComp stmt adv] ≤
      (((Q qb) * dZ : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞))
    (hUnq : Pr[fun z => Accepted z ∧ BadUnqueried qb z | fsProbComp stmt adv] ≤ bUnq) :
    BadEventBudget qb stmt adv badR badZ dR dZ bUnq :=
  ⟨hCol, hRnd, hDep, hOrd, hKzg, hUnq⟩

/-- **U5a core (item 5), abstract form.** Pure ENNReal event algebra: the
accepting-and-good probability is at least the accepting probability minus the
sum of the six per-event bounds. Union bound over the complement events;
`ChallengesAccepted` is free on accepting support points. -/
theorem q0_lower_bound_abstract {μ : Nat}
    (qb : Nat) (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (badR badZ : Set F)
    (bCol bRnd bDep bOrd bKzg bUnq : ℝ≥0∞)
    (hCol : Pr[fun z => Accepted z ∧ BadCollision z | fsProbComp stmt adv] ≤ bCol)
    (hRnd : Pr[fun z => Accepted z ∧ BadRandomizer badR z | fsProbComp stmt adv] ≤ bRnd)
    (hDep : Pr[fun z => Accepted z ∧ BadDependency qb stmt z | fsProbComp stmt adv] ≤ bDep)
    (hOrd : Pr[fun z => Accepted z ∧ BadRoundOrder qb z | fsProbComp stmt adv] ≤ bOrd)
    (hKzg : Pr[fun z => Accepted z ∧ BadKzg badZ z | fsProbComp stmt adv] ≤ bKzg)
    (hUnq : Pr[fun z => Accepted z ∧ BadUnqueried qb z | fsProbComp stmt adv] ≤ bUnq) :
    Pr[fun z => Accepted z ∧ RunGoodFull qb stmt badR badZ z | fsProbComp stmt adv] ≥
      Pr[fun z => Accepted z | fsProbComp stmt adv] -
        (bCol + (bRnd + (bDep + (bOrd + (bKzg + bUnq))))) := by
  classical
  set mx := fsProbComp stmt adv with hmx
  -- Abbreviations for the good event and the accepting-but-not-good residual.
  set G : FsRunLog μ F G1 G2 GT → Prop :=
    fun z => Accepted z ∧ RunGoodFull qb stmt badR badZ z with hG
  set R : FsRunLog μ F G1 G2 GT → Prop :=
    fun z => Accepted z ∧ ¬ RunGoodFull qb stmt badR badZ z with hR
  -- The six accepting bad events, right-nested.
  set q : FsRunLog μ F G1 G2 GT → Prop :=
    fun z => (Accepted z ∧ BadCollision z) ∨ (Accepted z ∧ BadRandomizer badR z) ∨
      (Accepted z ∧ BadDependency qb stmt z) ∨ (Accepted z ∧ BadRoundOrder qb z) ∨
      (Accepted z ∧ BadKzg badZ z) ∨ (Accepted z ∧ BadUnqueried qb z) with hq
  rw [ge_iff_le, tsub_le_iff_right]
  -- Goal: Pr[Accepted] ≤ Pr[G] + (bCol + (bRnd + (bDep + (bKzg + bUnq)))).
  -- Step 1: accept splits into good and accepting-not-good.
  have hsplit : Pr[fun z => Accepted z | mx] ≤ Pr[fun z => G z ∨ R z | mx] := by
    apply probEvent_mono''
    intro z hacc
    by_cases hgood : RunGoodFull qb stmt badR badZ z
    · exact Or.inl ⟨hacc, hgood⟩
    · exact Or.inr ⟨hacc, hgood⟩
  -- Step 2: union bound on good ∨ residual.
  have hor : Pr[fun z => G z ∨ R z | mx] ≤ Pr[G | mx] + Pr[R | mx] :=
    probEvent_or_le mx G R
  -- Step 3: the residual is covered by the six accepting bad events.
  have hRq : Pr[R | mx] ≤ Pr[q | mx] := by
    apply probEvent_mono
    intro z hz hzR
    exact accepted_not_good_bad qb stmt adv badR badZ hz hzR.1 hzR.2
  -- Step 4: union bound across the six bad events.
  have hqsum : Pr[q | mx] ≤
      Pr[fun z => Accepted z ∧ BadCollision z | mx] +
        (Pr[fun z => Accepted z ∧ BadRandomizer badR z | mx] +
          (Pr[fun z => Accepted z ∧ BadDependency qb stmt z | mx] +
            (Pr[fun z => Accepted z ∧ BadRoundOrder qb z | mx] +
              (Pr[fun z => Accepted z ∧ BadKzg badZ z | mx] +
                Pr[fun z => Accepted z ∧ BadUnqueried qb z | mx])))) := by
    rw [hq]
    refine le_trans (probEvent_or_le _ _ _) (add_le_add le_rfl ?_)
    refine le_trans (probEvent_or_le _ _ _) (add_le_add le_rfl ?_)
    refine le_trans (probEvent_or_le _ _ _) (add_le_add le_rfl ?_)
    refine le_trans (probEvent_or_le _ _ _) (add_le_add le_rfl ?_)
    exact probEvent_or_le _ _ _
  -- Assemble the numeric bound on the residual.
  have hresidual : Pr[R | mx] ≤
      bCol + (bRnd + (bDep + (bOrd + (bKzg + bUnq)))) := by
    refine le_trans hRq (le_trans hqsum ?_)
    exact add_le_add hCol (add_le_add hRnd
      (add_le_add hDep (add_le_add hOrd (add_le_add hKzg hUnq))))
  -- Combine everything.
  calc Pr[fun z => Accepted z | mx]
      ≤ Pr[fun z => G z ∨ R z | mx] := hsplit
    _ ≤ Pr[G | mx] + Pr[R | mx] := hor
    _ ≤ Pr[G | mx] + (bCol + (bRnd + (bDep + (bOrd + (bKzg + bUnq))))) :=
        add_le_add le_rfl hresidual

/-- **U5a core (item 5), concrete form.** Instantiates the abstract lower bound
with the parametric `BadEventBudget` constants: `Q_0 ≥ acc − err_bad` with
`Q := qb + 1` (the whole-game cap), `Q²/|F|`, `Q·dR/(|F|−2)`, two `μ·Q/|F|`,
`Q·dZ/|F|`, and `bUnq` (DESIGN §U5a, §R7 item 4). -/
theorem q0_lower_bound [Fintype F] {μ : Nat}
    (qb : Nat) (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (badR badZ : Set F) (dR dZ : Nat) (bUnq : ℝ≥0∞)
    (H : BadEventBudget qb stmt adv badR badZ dR dZ bUnq) :
    Pr[fun z => Accepted z ∧ RunGoodFull qb stmt badR badZ z | fsProbComp stmt adv] ≥
      Pr[fun z => Accepted z | fsProbComp stmt adv] -
        ((((Q qb) ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) +
          ((((Q qb) * dR : Nat) : ℝ≥0∞) / ((Fintype.card F : ℝ≥0∞) - 2) +
            (((μ * Q qb : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) +
              (((μ * Q qb : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) +
                ((((Q qb) * dZ : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) +
                  bUnq))))) :=
  q0_lower_bound_abstract qb stmt adv badR badZ _ _ _ _ _ _
    H.answer_collision_bound H.randomizer_rootset_bound H.dependency_order_bound
    H.round_slot_order_bound H.kzg_z_bound H.round_unqueried_bound

end Quantitative

end

end Ipp

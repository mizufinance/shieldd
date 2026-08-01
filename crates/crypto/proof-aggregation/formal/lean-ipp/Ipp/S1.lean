import Ipp.FsBadEvents
import Ipp.SnarkPackV1Refinement

/-!
S1 quantitative soundness capstone. The fork gate retains the randomizer and
KZG exclusions, so a positive full-depth extraction supplies both the product-
lane accepting tree and the root-set premise needed by `u4_capstone`.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.S1

noncomputable section

variable {F G1 G2 GT : Type}
  [Field F] [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
  [AddCommGroup GT] [Module F GT]
  [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]

/-- Sum of the five nonzero U5a bounds, with `Q = qb + 1`. -/
def badEventError [Fintype F] (qb dR dZ : Nat) : ℝ≥0∞ :=
  ((((Q qb) ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) +
    ((((Q qb) * dR : Nat) : ℝ≥0∞) / ((Fintype.card F : ℝ≥0∞) - 2) +
      ((((Q qb) ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) +
        ((((Q qb) ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) +
          (((Q qb) * dZ : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)))))

/-- Canonical finite discrepancy set selected by the proof-owned root
commitments before their randomizer answer is sampled. -/
noncomputable def s1BadRandomizers {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT] [DecidableEq F] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (payload : RandomizerPayload GT) : Finset F :=
  let witness := Ipp.SnarkPackV1.Refinement.canonicalWitness
    stmt (payload.comA, payload.comC) payload.comB
  (discrepancyRootSet_card (F := F) (fun i =>
    groth16Discrepancy stmt.e stmt.alpha stmt.beta stmt.gamma stmt.delta
      (fun j => (witness.items j).a) (fun j => (witness.items j).c)
      stmt.Aic (fun j => (witness.items j).b) i)).1.toFinset

@[simp] theorem coe_s1BadRandomizers {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT] [DecidableEq F] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (payload : RandomizerPayload GT) :
    (s1BadRandomizers stmt payload : Set F) =
      discrepancyRootSet (fun i =>
        let witness := Ipp.SnarkPackV1.Refinement.canonicalWitness
          stmt (payload.comA, payload.comC) payload.comB
        groth16Discrepancy stmt.e stmt.alpha stmt.beta stmt.gamma stmt.delta
          (fun j => (witness.items j).a) (fun j => (witness.items j).c)
          stmt.Aic (fun j => (witness.items j).b) i) := by
  let witness := Ipp.SnarkPackV1.Refinement.canonicalWitness
    stmt (payload.comA, payload.comC) payload.comB
  exact (discrepancyRootSet_card (F := F) (fun i =>
    groth16Discrepancy stmt.e stmt.alpha stmt.beta stmt.gamma stmt.delta
      (fun j => (witness.items j).a) (fun j => (witness.items j).c)
      stmt.Aic (fun j => (witness.items j).b) i)).1.coe_toFinset

theorem s1BadRandomizers_card {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
    [AddCommGroup GT] [Module F GT] [DecidableEq F] {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (payload : RandomizerPayload GT) :
    (s1BadRandomizers stmt payload).card ≤ 2 ^ μ - 1 := by
  let witness := Ipp.SnarkPackV1.Refinement.canonicalWitness
    stmt (payload.comA, payload.comC) payload.comB
  let d := fun i => groth16Discrepancy stmt.e stmt.alpha stmt.beta stmt.gamma
    stmt.delta (fun j => (witness.items j).a)
      (fun j => (witness.items j).c) stmt.Aic
      (fun j => (witness.items j).b) i
  have h := discrepancyRootSet_card (F := F) d
  change h.1.toFinset.card ≤ 2 ^ μ - 1
  rw [← Set.ncard_eq_toFinset_card _ h.1]
  exact h.2

/-- A positive quantitative fork bound extracts a commitment-consistent hidden
witness and proves every ordered Groth16 PPE. -/
theorem s1_soundness [Fintype F]
    [(FsSourceSpec F G1 G2 GT).DecidableEq]
    [IsUniformSpec (FsSourceSpec F G1 G2 GT)]
    [∀ j, SampleableType ((FsSourceSpec F G1 G2 GT).Range j)]
    [unifSpec ⊂ₒ FsSourceSpec F G1 G2 GT]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F] [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F) (dZ : Nat)
    (hbindV : KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
    (hbindW : KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
    (hbindA : PairingCommitmentBinding (u4ACommitAtom stmt.e)
      (fun i => (stmt.srsV i, stmt.srsV i)))
    (hbindB : ∀ r : F, PairingCommitmentBinding (u4BCommitAtom stmt.e)
      (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i))
    (hZcard : badZ.card ≤ dZ)
    (hquery : IsTotalQueryBound (FsGame stmt adv) (Q (qb (Sum.inr ()))))
    (hpositive : 0 <
      ((forkTreeStep (qb (Sum.inr ()) + 1)
        (Fintype.card F))^[μ])
        (Pr[Accepted | fsProbComp stmt adv] -
          badEventError (F := F) (qb (Sum.inr ())) (2 ^ μ - 1) dZ)) :
    ∃ run : WrappedFsRun
        (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
        (FsResult μ F G1 G2 GT),
      ∃ log : QueryLog (FsWrappedSpec F),
        (run, log) ∈ support (replayFirstRun (wrapFs (FsGame stmt adv))) ∧
          Ipp.SnarkPackV1.Refinement.HasValidRepresentation
            stmt run.out.proof := by
  classical
  let badR := s1BadRandomizers stmt
  let leafOk : (WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT) × QueryLog (FsWrappedSpec F)) → Prop :=
    WrappedRunGoodFull (qb (Sum.inr ())) stmt
      (fun payload => (badR payload : Set F)) (badZ : Set F)
  let main : OracleComp (FsWrappedSpec F) (WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)) := wrapFs (FsGame stmt adv)
  let cf : Nat → WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT) → Option (Fin (qb (Sum.inr ()) + 1)) :=
    fun level run => roundSlot (qb (Sum.inr ())) level run
  have hq0 := q0_lower_bound (qb (Sum.inr ())) stmt adv badR badZ
    (2 ^ μ - 1) dZ (s1BadRandomizers_card stmt) hZcard hquery
  have hbase : Pr[Accepted | fsProbComp stmt adv] -
      badEventError (F := F) (qb (Sum.inr ())) (2 ^ μ - 1) dZ ≤
      Pr[leafOk | replayFirstRun main] := by
    calc
      _ ≤ Pr[fun z => Accepted z ∧ RunGoodFull (qb (Sum.inr ())) stmt
          (fun payload => (badR payload : Set F)) (badZ : Set F) z |
            fsProbComp stmt adv] := by
        simpa only [badEventError] using hq0
      _ ≤ Pr[leafOk | replayFirstRun main] := by
        simpa [leafOk, main, badR] using
          (wrapped_good_probability_eq (qb (Sum.inr ())) stmt adv badR badZ).le
  have hselector : ∀ {first}, first ∈ support (replayFirstRun main) → leafOk first →
      ∀ level, level < μ → ∃ s, cf level first.1 = some s := by
    intro first hfirst hgood level hlevel
    exact fs_roundSlot_selector_total stmt adv (qb (Sum.inr ())) hfirst hgood.1 level hlevel
  have horder : ∀ {depth} (hdepth : depth < μ)
      {tree : RunTree (FsWrappedSpec F)
        (WrappedFsRun (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
          (FsResult μ F G1 G2 GT)) depth} {outerLog : QueryLog (FsWrappedSpec F)},
      (some tree, outerLog) ∈ support (replayFirstRun
        (forkTreeCombined μ main qb (Sum.inr ()) cf leafOk depth
          (Nat.le_of_lt hdepth))) →
      ∀ {selected next},
        cf (combinedLevel μ depth hdepth) tree.root.1 = some selected →
        treeFirstSlot cf μ depth tree = some next → selected < next := by
    intro depth hdepth tree outerLog hrun selected next hselected hfirst
    have hall := forkTreeCombined_support_all_leafOk μ depth (Nat.le_of_lt hdepth)
      main qb (Sum.inr ()) cf leafOk
      (fun level _ => fs_roundSlot_reachable stmt adv qb level) hrun
    have hgood := hall.root.1
    have hpos : 0 < depth := by
      by_contra h
      have : depth = 0 := Nat.eq_zero_of_not_pos h
      subst depth
      simp [treeFirstSlot] at hfirst
    have hnext : roundSlot (qb (Sum.inr ())) (μ - depth) tree.root.1 = some next := by
      simpa [cf, treeFirstSlot, hpos] using hfirst
    apply hgood.2.2.2.1 (μ - (depth + 1)) (μ - depth) (by omega) (by omega)
    · simpa [cf, combinedLevel] using hselected
    · exact hnext
  have hfork := forkTree_bound μ main qb (Sum.inr ()) cf leafOk
    (fun level _ => fs_roundSlot_reachable stmt adv qb level) hselector horder
  have hcard : Fintype.card ((FsWrappedSpec F).Range (Sum.inr ())) = Fintype.card F := by
    congr
  have hcardE : (Fintype.card ((FsWrappedSpec F).Range (Sum.inr ())) : ℝ≥0∞) =
      (Fintype.card F : ℝ≥0∞) := by
    exact_mod_cast hcard
  have hfork' :
      ((forkTreeStep (qb (Sum.inr ()) + 1) (Fintype.card F))^[μ])
          (Pr[leafOk | replayFirstRun main]) ≤
        Pr[fun t : Option (RunTree (FsWrappedSpec F)
            (WrappedFsRun (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
              (FsResult μ F G1 G2 GT)) μ) => t.isSome |
          forkTreeCombined μ main qb (Sum.inr ()) cf leafOk μ (Nat.le_refl μ)] := by
    convert hfork using 1
    congr 1
    funext x
    unfold forkTreeStep
    congr
    all_goals exact Subsingleton.elim _ _
  have hmono := (forkTreeStep_monotone
      (qb (Sum.inr ()) + 1) (Fintype.card F))
    |>.iterate μ hbase
  have hsuccessPos : 0 < Pr[fun t : Option (RunTree (FsWrappedSpec F)
      (WrappedFsRun (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
        (FsResult μ F G1 G2 GT)) μ) => t.isSome |
      forkTreeCombined μ main qb (Sum.inr ()) cf leafOk μ (Nat.le_refl μ)] :=
    lt_of_lt_of_le hpositive (le_trans hmono hfork')
  obtain ⟨treeOpt, htreeSupport, hsome⟩ := probEvent_pos_iff.mp hsuccessPos
  cases treeOpt with
  | none => simp at hsome
  | some tree =>
    have hconsistent := forkTreeCombined_support_props μ main qb (Sum.inr ()) cf leafOk
      (fun level _ => fs_roundSlot_reachable stmt adv qb level) htreeSupport
    have hallFull := hconsistent.all_leafOk
    have hallGood := hallFull.imp (fun _ h => h.1)
    have hconsistentGood := hconsistent.mono_leafOk main qb (Sum.inr ()) cf leafOk
      (fun run => WrappedRunGood (qb (Sum.inr ())) stmt run.1 run.2)
      (fun _ h => h.1)
    have htreeAccept := tree_to_acceptTree stmt adv qb hbindV hbindW
      (by simpa [main, cf] using hconsistentGood)
    have hrootSupport := hconsistent.all_support.root
    have haccepts := wrapped_support_accepts stmt adv hrootSupport hallFull.root.1.1
    let r := tree.root.1.out.transcript.randomizer
    let rootProof := tree.root.1.out.proof
    have hr : r ≠ 0 := by
      simpa [r] using haccepts.1
    have htreeAccept' :
        AcceptTree (u4ACommitAtom stmt.e) (u4BCommitAtom stmt.e)
          u4TCommitMap (u4TLanePairing stmt.e) μ
          (fun i => (stmt.srsV i, stmt.srsV i))
          (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i)
          (fun i => r ^ (i : Nat))
          (u4AEmbedding rootProof.ComA) (u4BEmbedding rootProof.ComB)
          (u4TCommitMap (rootProof.ipAb, rootProof.aggC)) := by
      simpa [r, rootProof] using htreeAccept
    obtain ⟨ac, bScaled, hrootA, hrootB, _hproduct⟩ :=
      u4_gipa_extraction
        (u4ACommitAtom stmt.e) (u4BCommitAtom stmt.e)
        u4TCommitMap (u4TLanePairing stmt.e)
        (fun i => (stmt.srsV i, stmt.srsV i))
        (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i)
        (fun i => r ^ (i : Nat))
        (u4AEmbedding rootProof.ComA) (u4BEmbedding rootProof.ComB)
        (u4TCommitMap (rootProof.ipAb, rootProof.aggC))
        hbindA (hbindB r) htreeAccept'
    let witness :
        Ipp.Goal.Witness (2 ^ μ)
          (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2) :=
      { items := fun i =>
          { a := (ac i).1
            b := (r ^ (i : Nat))⁻¹ • bScaled i
            c := (ac i).2 } }
    have hscaledMessages :
        (fun i : Fin (2 ^ μ) =>
          r ^ (i : Nat) • (witness.items i).b) = bScaled := by
      funext i
      simp [witness, hr]
    have hrootBScaled :
        u4BEmbedding rootProof.ComB =
          commitV (u4BCommitAtom stmt.e)
            (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i)
            (fun i => r ^ (i : Nat) • (witness.items i).b) := by
      rw [hscaledMessages]
      exact hrootB
    have hrootBPlain :
        u4BEmbedding rootProof.ComB =
          commitV (u4BCommitAtom stmt.e) stmt.srsW
            (fun i => (witness.items i).b) := by
      exact hrootBScaled.trans
        (Ipp.SnarkPackV1.Refinement.commitV_rescale_cancel
          (u4BCommitAtom stmt.e) stmt.srsW
          (fun i => (witness.items i).b) r hr)
    have hopen :
        Ipp.SnarkPackV1.Refinement.RootOpensAt
          stmt rootProof.ComA rootProof.ComB witness := by
      constructor
      · simpa [witness] using hrootA
      · exact hrootBPlain
    let canonical :=
      Ipp.SnarkPackV1.Refinement.canonicalWitness
        stmt rootProof.ComA rootProof.ComB
    have hcanonical :
        Ipp.SnarkPackV1.Refinement.RootOpensAt
          stmt rootProof.ComA rootProof.ComB canonical := by
      exact Ipp.SnarkPackV1.Refinement.canonicalWitness_opens_of_exists
        stmt rootProof.ComA rootProof.ComB ⟨witness, hopen⟩
    have hbindBPlain :
        PairingCommitmentBinding (u4BCommitAtom stmt.e) stmt.srsW := by
      simpa using hbindB (1 : F)
    have hwitness : witness = canonical :=
      Ipp.SnarkPackV1.Refinement.rootOpensAt_unique
        stmt rootProof.ComA rootProof.ComB hbindA hbindBPlain
        hopen hcanonical
    have hrootCanonical :
        r ∉ discrepancyRootSet (fun i =>
          groth16Discrepancy stmt.e stmt.alpha stmt.beta stmt.gamma
            stmt.delta (fun j => (canonical.items j).a)
            (fun j => (canonical.items j).c) stmt.Aic
            (fun j => (canonical.items j).b) i) := by
      have hgood := hallFull.root.2.1
      change r ∉
        (s1BadRandomizers stmt
          (proofRandomizerPayload rootProof) : Set F) at hgood
      rw [coe_s1BadRandomizers] at hgood
      simpa [proofRandomizerPayload, rootProof, canonical] using hgood
    have hrootWitness :
        r ∉ discrepancyRootSet (fun i =>
          groth16Discrepancy stmt.e stmt.alpha stmt.beta stmt.gamma
            stmt.delta (fun j => (witness.items j).a)
            (fun j => (witness.items j).c) stmt.Aic
            (fun j => (witness.items j).b) i) := by
      simpa [hwitness] using hrootCanonical
    have hvalid :
        ∀ i, stmt.e (witness.items i).a (witness.items i).b =
          groth16Rhs stmt.e stmt.alpha (stmt.Aic i)
            (witness.items i).c stmt.beta stmt.gamma stmt.delta := by
      apply u4_capstone stmt.e stmt.srsV stmt.srsW
        (u4AEmbedding rootProof.ComA) (u4BEmbedding rootProof.ComB)
        rootProof.ipAb rootProof.aggC stmt.alpha stmt.beta stmt.gamma
        stmt.delta (fun i => (witness.items i).a)
        (fun i => (witness.items i).c) stmt.Aic
        (fun i => (witness.items i).b) r
        (∑ i : Fin (2 ^ μ), r ^ (i : Nat))
        (∑ i : Fin (2 ^ μ), r ^ (i : Nat) • stmt.Aic i)
      · exact hbindA
      · exact hbindB r
      · exact hopen.1
      · exact hrootBScaled
      · exact htreeAccept'
      · rfl
      · rfl
      · simpa [r, rootProof] using haccepts.2.2.2.2.2.2.2
      · exact hrootWitness
    refine ⟨tree.root.1, tree.root.2, hrootSupport, ?_⟩
    apply (Ipp.SnarkPackV1.Refinement.hasValidRepresentation_iff
      stmt rootProof).2
    exact ⟨witness, hopen, hvalid⟩

/-- If no adversarial output has a valid commitment-bound representation, the
explicit full-depth fork expression cannot be positive. -/
theorem invalid_goal_fork_bound_nonpositive [Fintype F]
    [(FsSourceSpec F G1 G2 GT).DecidableEq]
    [IsUniformSpec (FsSourceSpec F G1 G2 GT)]
    [∀ j, SampleableType ((FsSourceSpec F G1 G2 GT).Range j)]
    [unifSpec ⊂ₒ FsSourceSpec F G1 G2 GT]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F] [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (FsSourceSpec F G1 G2 GT) (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F) (dZ : Nat)
    (hbindV : KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
    (hbindW : KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
    (hbindA : PairingCommitmentBinding (u4ACommitAtom stmt.e)
      (fun i => (stmt.srsV i, stmt.srsV i)))
    (hbindB : ∀ r : F, PairingCommitmentBinding (u4BCommitAtom stmt.e)
      (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i))
    (hZcard : badZ.card ≤ dZ)
    (hquery : IsTotalQueryBound (FsGame stmt adv) (Q (qb (Sum.inr ()))))
    (hinvalid : ∀ proof,
      ¬Ipp.SnarkPackV1.Refinement.HasValidRepresentation stmt proof) :
    ¬ 0 <
      ((forkTreeStep (qb (Sum.inr ()) + 1)
        (Fintype.card F))^[μ])
        (Pr[Accepted | fsProbComp stmt adv] -
          badEventError (F := F) (qb (Sum.inr ())) (2 ^ μ - 1) dZ) := by
  intro hpositive
  obtain ⟨run, log, _hsupport, hvalid⟩ :=
    s1_soundness stmt adv qb badZ dZ hbindV hbindW hbindA hbindB
      hZcard hquery hpositive
  exact hinvalid run.out.proof hvalid

/-- For a fixed decoded shipping proof, the same contrapositive needs
invalidity only for that proof: the pure adversary, verifier, cache, and wrapper
all preserve its identity. -/
theorem invalid_proof_fork_bound_nonpositive [Fintype F]
    [(FsSourceSpec F G1 G2 GT).DecidableEq]
    [IsUniformSpec (FsSourceSpec F G1 G2 GT)]
    [∀ j, SampleableType ((FsSourceSpec F G1 G2 GT).Range j)]
    [unifSpec ⊂ₒ FsSourceSpec F G1 G2 GT]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F] [unifSpec ˡ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (proof : Proof μ F G1 G2 GT)
    (qb : (FsWrappedSpec F).Domain → Nat)
    (badZ : Finset F) (dZ : Nat)
    (hbindV : KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
    (hbindW : KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
    (hbindA : PairingCommitmentBinding (u4ACommitAtom stmt.e)
      (fun i => (stmt.srsV i, stmt.srsV i)))
    (hbindB : ∀ r : F, PairingCommitmentBinding (u4BCommitAtom stmt.e)
      (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i))
    (hZcard : badZ.card ≤ dZ)
    (hquery : IsTotalQueryBound
      (FsGame stmt
        (pure proof :
          OracleComp (FsSourceSpec F G1 G2 GT)
            (Proof μ F G1 G2 GT)))
      (Q (qb (Sum.inr ()))))
    (hinvalid :
      ¬Ipp.SnarkPackV1.Refinement.HasValidRepresentation stmt proof) :
    ¬ 0 <
      ((forkTreeStep (qb (Sum.inr ()) + 1)
        (Fintype.card F))^[μ])
        (Pr[Accepted |
            fsProbComp stmt
              (pure proof :
                OracleComp (FsSourceSpec F G1 G2 GT)
                  (Proof μ F G1 G2 GT))] -
          badEventError (F := F)
            (qb (Sum.inr ())) (2 ^ μ - 1) dZ) := by
  intro hpositive
  obtain ⟨run, log, hsupport, hvalid⟩ :=
    s1_soundness stmt
      (pure proof :
        OracleComp (FsSourceSpec F G1 G2 GT)
          (Proof μ F G1 G2 GT))
      qb badZ dZ hbindV hbindW hbindA hbindB
      hZcard hquery hpositive
  have hproof : run.out.proof = proof :=
    wrapped_pure_game_proof_eq stmt proof hsupport
  apply hinvalid
  simpa [hproof] using hvalid

end

end Ipp.S1

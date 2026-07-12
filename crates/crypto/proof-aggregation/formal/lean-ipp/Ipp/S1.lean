import Ipp.FsBadEvents

/-!
S1 quantitative soundness capstone. The fork gate retains the randomizer and
KZG exclusions, so a positive full-depth extraction supplies both the product-
lane accepting tree and the root-set premise needed by `u4_capstone`.
-/

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp

noncomputable section

variable {F G1 G2 GT : Type}
  [Field F] [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
  [AddCommGroup GT] [Module F GT]
  [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]

/-- Sum of the six U5a bounds, with `Q = qb + 1`. -/
def badEventError [Fintype F] (μ qb dR dZ : Nat) (bUnq : ℝ≥0∞) : ℝ≥0∞ :=
  ((((Q qb) ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) +
    ((((Q qb) * dR : Nat) : ℝ≥0∞) / ((Fintype.card F : ℝ≥0∞) - 2) +
      (((μ * Q qb : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) +
        (((μ * Q qb : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) +
          ((((Q qb) * dZ : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞) + bUnq)))))

/-- `assume.kzg-structured-key-binding` and
`assume.pairing-commitment-binding`: a positive quantitative fork bound maps
an accepting FS execution to every per-proof Groth16 PPE, removing the
Filecoin-lineage S1 assumption rows. -/
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
    (badZ : Set F) (dZ : Nat) (bUnq : ℝ≥0∞)
    (hbindV : KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
    (hbindW : KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
    (hbindA : PairingCommitmentBinding (u4ACommitAtom stmt.e)
      (fun i => (stmt.srsV i, stmt.srsV i)))
    (hbindB : ∀ r : F, PairingCommitmentBinding (u4BCommitAtom stmt.e)
      (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i))
    (hComA : u4AEmbedding stmt.ComA = commitV (u4ACommitAtom stmt.e)
      (fun i => (stmt.srsV i, stmt.srsV i)) (fun i => (stmt.A i, stmt.C i)))
    (hComB : ∀ r : F, u4BEmbedding stmt.ComB = commitV (u4BCommitAtom stmt.e)
      (fun i => (r ^ (i : Nat))⁻¹ • stmt.srsW i)
      (fun i => r ^ (i : Nat) • stmt.B i))
    (H : BadEventBudget (qb (Sum.inr ())) stmt adv
      (discrepancyRootSet (fun i => groth16Discrepancy stmt.e stmt.alpha
        stmt.beta stmt.gamma stmt.delta stmt.A stmt.C stmt.Aic stmt.B i))
      badZ (2 ^ μ - 1) dZ bUnq)
    (hpositive : 0 <
      ((forkTreeStep (qb (Sum.inr ()) + 1)
        (Fintype.card F))^[μ])
        (Pr[Accepted | fsProbComp stmt adv] -
          badEventError (F := F) μ (qb (Sum.inr ())) (2 ^ μ - 1) dZ bUnq)) :
    ∀ i, stmt.e (stmt.A i) (stmt.B i) =
      groth16Rhs stmt.e stmt.alpha (stmt.Aic i) (stmt.C i)
        stmt.beta stmt.gamma stmt.delta := by
  classical
  let badR : Set F := discrepancyRootSet (fun i =>
    groth16Discrepancy stmt.e stmt.alpha stmt.beta stmt.gamma stmt.delta
      stmt.A stmt.C stmt.Aic stmt.B i)
  let leafOk : (WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT) × QueryLog (FsWrappedSpec F)) → Prop :=
    WrappedRunGoodFull (qb (Sum.inr ())) stmt badR badZ
  let main : OracleComp (FsWrappedSpec F) (WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT)) := wrapFs (FsGame stmt adv)
  let cf : Nat → WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT) → Option (Fin (qb (Sum.inr ()) + 1)) :=
    fun level run => roundSlot (qb (Sum.inr ())) level run
  have hq0 := q0_lower_bound (qb (Sum.inr ())) stmt adv badR badZ
    (2 ^ μ - 1) dZ bUnq H
  have hbase : Pr[Accepted | fsProbComp stmt adv] -
      badEventError (F := F) μ (qb (Sum.inr ())) (2 ^ μ - 1) dZ bUnq ≤
      Pr[leafOk | replayFirstRun main] := by
    exact le_trans (by simpa [badEventError, badR] using hq0) H.wrapped_good_lower_bound
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
    apply u4_capstone stmt.e stmt.srsV stmt.srsW
      (u4AEmbedding stmt.ComA) (u4BEmbedding stmt.ComB)
      tree.root.1.out.proof.ipAb tree.root.1.out.proof.aggC
      stmt.alpha stmt.beta stmt.gamma stmt.delta stmt.A stmt.C stmt.Aic stmt.B
      r (∑ i : Fin (2 ^ μ), r ^ (i : Nat))
      (∑ i : Fin (2 ^ μ), r ^ (i : Nat) • stmt.Aic i)
    · exact hbindA
    · exact hbindB r
    · exact hComA
    · exact hComB r
    · simpa [r] using htreeAccept
    · rfl
    · rfl
    · simpa [r] using haccepts.2.2.2.2.2.2.2
    · exact hallFull.root.2.1

end

end Ipp

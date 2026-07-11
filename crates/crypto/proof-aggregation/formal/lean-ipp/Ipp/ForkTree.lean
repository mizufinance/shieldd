/-
U5c: strict depth-indexed composition of four-way replay forks (DESIGN §U5c).

Each node keeps its canonical run as child zero and creates only three fresh
replays.  Recursive calls use each child's own log, so transcript prefixes
chain without wrapping branches in new first-run computations.

Spec row: `tipp-mipp.gipa`.
-/
import Ipp.Fork

open OracleSpec OracleComp ENNReal Function

namespace Ipp

variable {ι : Type} {spec : OracleSpec ι} {α : Type}

/-- A depth-indexed four-ary tree of canonical output/log runs (DESIGN §U5c;
`tipp-mipp.gipa`).  At a node, child zero is its canonical continuation. -/
inductive RunTree (spec : OracleSpec ι) (α : Type) : Nat → Type
  | leaf (run : α × QueryLog spec) : RunTree spec α 0
  | node {depth : Nat} (children : Fin 4 → RunTree spec α depth) :
      RunTree spec α (depth + 1)

namespace RunTree

/-- The canonical run of a tree is obtained by following child zero. -/
def root : {depth : Nat} → RunTree spec α depth → α × QueryLog spec
  | 0, .leaf run => run
  | _ + 1, .node children => root (children 0)

/-- A predicate holds on every canonical run stored in the tree. -/
def All (P : α × QueryLog spec → Prop) :
    {depth : Nat} → RunTree spec α depth → Prop
  | 0, .leaf run => P run
  | _ + 1, .node children => ∀ k, All P (children k)

/-- Pointwise implication lifts to all runs of a tree. -/
theorem All.imp {P Q : α × QueryLog spec → Prop}
    {depth : Nat} {tree : RunTree spec α depth}
    (h : tree.All P) (hpq : ∀ run, P run → Q run) : tree.All Q := by
  induction tree with
  | leaf run => exact hpq run h
  | node children ih =>
      intro k
      exact ih k (h k)

end RunTree

/-- Per-node consistency for the U5c replay tree.  The optional lower slot is
the parent slot; requiring it to be smaller records stage ordering along every
branch.  Leaf evidence also establishes global first-run support. -/
inductive TreeConsistent [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1))) :
    (level : Nat) → Option (Fin (qb i + 1)) →
      {depth : Nat} → RunTree spec α depth → Prop
  | leaf (level : Nat) (lower : Option (Fin (qb i + 1)))
      (run : α × QueryLog spec)
      (hsupport : run ∈ support (replayFirstRun main)) :
      TreeConsistent main qb i cf level lower (.leaf run)
  | node (level : Nat) (lower : Option (Fin (qb i + 1))) {depth : Nat}
      (children : Fin 4 → RunTree spec α depth)
      (s : Fin (qb i + 1)) (answers : Fin 4 → spec.Range i)
      (cursor slotPos : Nat)
      (hcf : ∀ k, cf level (children k).root.1 = some s)
      (hinjective : Function.Injective answers)
      (hanswers : ∀ k,
        QueryLog.getQueryValue? (children k).root.2 i ↑s = some (answers k))
      (hcursor : 0 < cursor)
      (hprefix : ∀ a b n, n < cursor →
        QueryLog.inputAt? (children a).root.2 n =
          QueryLog.inputAt? (children b).root.2 n)
      (hslotPos : slotPos < cursor)
      (hslotInput : ∀ k,
        QueryLog.inputAt? (children k).root.2 slotPos = some i)
      (hslotRank : ∀ k,
        (QueryLog.getQ ((children k).root.2.take slotPos) (· = i)).length = (s : Nat))
      (hprefixValues : ∀ a b n, n < slotPos →
        (children a).root.2[n]? = (children b).root.2[n]?)
      (hstrict : ∀ previous, lower = some previous → previous < s)
      (hchildren : ∀ k,
        TreeConsistent main qb i cf (level + 1) (some s) (children k)) :
      TreeConsistent main qb i cf level lower (.node children)

/-- Compose fixed-root four-way forks.  Only the root caller performs
`replayFirstRun`; recursive calls replay each branch's own canonical log. -/
noncomputable def forkTreeFrom [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (level : Nat) (lower : Option (Fin (qb i + 1)))
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    (depth : Nat) → (α × QueryLog spec) →
      OracleComp spec (Option (RunTree spec α depth))
  | 0, first => pure (some (.leaf first))
  | depth + 1, first => do
      match cf level first.1 with
      | none => pure none
      | some s =>
          if ∀ previous, lower = some previous → previous < s then
            let runs? ← forkReplay4From main qb i (cf level) first
            match runs? with
            | none => pure none
            | some runs =>
                let t₀? ← forkTreeFrom main qb i cf (level + 1) (some s) depth (runs 0)
                let t₁? ← forkTreeFrom main qb i cf (level + 1) (some s) depth (runs 1)
                let t₂? ← forkTreeFrom main qb i cf (level + 1) (some s) depth (runs 2)
                let t₃? ← forkTreeFrom main qb i cf (level + 1) (some s) depth (runs 3)
                match t₀?, t₁?, t₂?, t₃? with
                | some t₀, some t₁, some t₂, some t₃ =>
                    pure (some (.node ![t₀, t₁, t₂, t₃]))
                | _, _, _, _ => pure none
          else
            pure none
termination_by depth => depth

/-- Build the U5c tree with one canonical first run followed by three replays
per internal node (DESIGN §U5c; `tipp-mipp.gipa`). -/
noncomputable def forkTree [spec.DecidableEq]
    (depth : Nat) (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    OracleComp spec (Option (RunTree spec α depth)) := do
  let first ← replayFirstRun main
  forkTreeFrom main qb i cf 0 none depth first

private theorem forkTreeFrom_support_props [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (level : Nat) (lower : Option (Fin (qb i + 1)))
    (depth : Nat) (first : α × QueryLog spec)
    (hfirst : first ∈ support (replayFirstRun main))
    {tree : RunTree spec α depth}
    (h : some tree ∈ support (forkTreeFrom main qb i cf level lower depth first)) :
    tree.root = first ∧ TreeConsistent main qb i cf level lower tree := by
  induction depth generalizing level lower first with
  | zero =>
      simp only [forkTreeFrom, mem_support_pure_iff] at h
      have htree : tree = .leaf first := Option.some.inj h
      subst tree
      exact ⟨rfl, .leaf level lower first hfirst⟩
  | succ depth ih =>
      simp only [forkTreeFrom] at h
      split at h
      · simp at h
      · rename_i s hcf₀
        split_ifs at h with hstrict
        · rw [mem_support_bind_iff] at h
          obtain ⟨runs?, hruns?, h⟩ := h
          rcases runs? with _ | runs
          · simp at h
          · rw [mem_support_bind_iff] at h
            obtain ⟨t₀?, ht₀?, h⟩ := h
            rw [mem_support_bind_iff] at h
            obtain ⟨t₁?, ht₁?, h⟩ := h
            rw [mem_support_bind_iff] at h
            obtain ⟨t₂?, ht₂?, h⟩ := h
            rw [mem_support_bind_iff] at h
            obtain ⟨t₃?, ht₃?, h⟩ := h
            rcases t₀? with _ | t₀ <;> rcases t₁? with _ | t₁ <;>
              rcases t₂? with _ | t₂ <;> rcases t₃? with _ | t₃ <;>
              simp at h
            have htree : tree = .node ![t₀, t₁, t₂, t₃] := h
            subst tree
            rcases forkReplay4From_support_props main qb i (cf level) first hfirst hruns? with
              ⟨slot, answers, cursor, slotPos, hruns₀, hrunsSupport, hcf, hinj,
                hanswers, hcursor, hprefix, hslotPos, hslotInput, hslotRank,
                hprefixValues⟩
            have hslot : slot = s := by
              have := hcf 0
              simp [hruns₀, hcf₀] at this
              exact this.symm
            subst slot
            have hc₀ := ih (level := level + 1) (lower := some s)
              (first := runs 0) (tree := t₀) (hrunsSupport 0) ht₀?
            have hc₁ := ih (level := level + 1) (lower := some s)
              (first := runs 1) (tree := t₁) (hrunsSupport 1) ht₁?
            have hc₂ := ih (level := level + 1) (lower := some s)
              (first := runs 2) (tree := t₂) (hrunsSupport 2) ht₂?
            have hc₃ := ih (level := level + 1) (lower := some s)
              (first := runs 3) (tree := t₃) (hrunsSupport 3) ht₃?
            have hroot : ∀ k, (![t₀, t₁, t₂, t₃] k).root = runs k := by
              intro k
              fin_cases k
              · exact hc₀.1
              · exact hc₁.1
              · exact hc₂.1
              · exact hc₃.1
            refine ⟨?_, .node level lower ![t₀, t₁, t₂, t₃] s answers cursor slotPos
              ?_ hinj ?_ hcursor ?_ hslotPos ?_ ?_ ?_ hstrict ?_⟩
            · simpa [RunTree.root] using hc₀.1.trans hruns₀
            · intro k
              rw [hroot k]
              exact hcf k
            · intro k
              rw [hroot k]
              exact hanswers k
            · intro a b n hn
              rw [hroot a, hroot b]
              exact hprefix a b n hn
            · intro k
              rw [hroot k]
              exact hslotInput k
            · intro k
              rw [hroot k]
              exact hslotRank k
            · intro a b n hn
              rw [hroot a, hroot b]
              exact hprefixValues a b n hn
            · intro k
              fin_cases k
              · exact hc₀.2
              · exact hc₁.2
              · exact hc₂.2
              · exact hc₃.2
        · simp at h

/-- Success of the U5c computation establishes every per-node common-slot,
distinct-answer, positive-prefix, increasing-slot, and first-run support fact
(`tipp-mipp.gipa`, DESIGN §U5c). -/
theorem forkTree_support_props [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (depth : Nat) (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    {tree : RunTree spec α depth}
    (h : some tree ∈ support (forkTree depth main qb i cf)) :
    TreeConsistent main qb i cf 0 none tree := by
  simp only [forkTree] at h
  rw [mem_support_bind_iff] at h
  obtain ⟨first, hfirst, htree⟩ := h
  exact (forkTreeFrom_support_props main qb i cf 0 none depth first hfirst htree).2

/-- Consistency entails support for every run stored in the tree. -/
theorem TreeConsistent.all_support [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    {level : Nat} {lower : Option (Fin (qb i + 1))}
    {depth : Nat} {tree : RunTree spec α depth}
    (h : TreeConsistent main qb i cf level lower tree) :
    tree.All (fun run => run ∈ support (replayFirstRun main)) := by
  induction h with
  | leaf _ _ _ hsupport => exact hsupport
  | @node level lower depth children s answers cursor slotPos hcf hinjective hanswers
      hcursor hprefix hslotPos hslotInput hslotRank hprefixValues hstrict hchildren ih =>
      exact ih

/-- Transfer any first-run postcondition to every run of a successful U5c
tree, packaged with all consistency facts (DESIGN §U5c;
`tipp-mipp.gipa`). -/
theorem forkTree_propertyTransfer [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (depth : Nat) (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (P_out : α → QueryLog spec → Prop)
    (hP : ∀ {x log}, (x, log) ∈ support (replayFirstRun main) → P_out x log)
    {tree : RunTree spec α depth}
    (h : some tree ∈ support (forkTree depth main qb i cf)) :
    TreeConsistent main qb i cf 0 none tree ∧
      tree.All (fun run => P_out run.1 run.2) := by
  have hconsistent := forkTree_support_props depth main qb i cf h
  refine ⟨hconsistent, ?_⟩
  have hall := hconsistent.all_support
  exact hall.imp (fun run hrun => hP hrun)

/-- Abstract one-level success interface for strict U5c composition.  It says
that extending any supported canonical-run subtree by one replay-fork level
lowers success by at most the monotone transformer `f`. -/
def ForkTreeNodeLowerBound [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1))) (f : ℝ≥0∞ → ℝ≥0∞) : Prop :=
  ∀ (level : Nat) (lower : Option (Fin (qb i + 1)))
      (depth : Nat) (first : α × QueryLog spec),
    first ∈ support (replayFirstRun main) →
    f Pr[fun tree : Option (RunTree spec α depth) => tree.isSome |
        forkTreeFrom main qb i cf level lower depth first] ≤
      Pr[fun tree : Option (RunTree spec α (depth + 1)) => tree.isSome |
        forkTreeFrom main qb i cf level lower (depth + 1) first]

/-- Parametric strict tree bound: an abstract per-node extension bound composes
by function iteration over the U5c depth (DESIGN §U5c;
`tipp-mipp.gipa`). -/
theorem forkTree_bound_param [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (depth : Nat) (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (f : ℝ≥0∞ → ℝ≥0∞) (hf : Monotone f)
    (hnode : ForkTreeNodeLowerBound main qb i cf f) :
    (f^[depth]) 1 ≤
      Pr[fun tree : Option (RunTree spec α depth) => tree.isSome |
        forkTree depth main qb i cf] := by
  have hfrom : ∀ (d level : Nat) (lower : Option (Fin (qb i + 1)))
      (first : α × QueryLog spec),
      first ∈ support (replayFirstRun main) →
      (f^[d]) 1 ≤
        Pr[fun tree : Option (RunTree spec α d) => tree.isSome |
          forkTreeFrom main qb i cf level lower d first] := by
    intro d
    induction d with
    | zero =>
        intro level lower first hfirst
        simp [forkTreeFrom]
    | succ d ih =>
        intro level lower first hfirst
        calc
          (f^[d + 1]) 1 = f ((f^[d]) 1) := by
            rw [Function.iterate_succ_apply']
          _ ≤ f Pr[fun tree : Option (RunTree spec α d) => tree.isSome |
              forkTreeFrom main qb i cf level lower d first] :=
            hf (ih level lower first hfirst)
          _ ≤ Pr[fun tree : Option (RunTree spec α (d + 1)) => tree.isSome |
              forkTreeFrom main qb i cf level lower (d + 1) first] :=
            hnode level lower d first hfirst
  have hbind := mul_le_probEvent_bind
    (mx := replayFirstRun main)
    (my := fun first => forkTreeFrom main qb i cf 0 none depth first)
    (p := fun _ => True)
    (q := fun tree : Option (RunTree spec α depth) => tree.isSome)
    (r := 1) (r' := (f^[depth]) 1)
    (by simp)
    (fun first hfirst _ => hfrom depth 0 none first hfirst)
  simpa [forkTree] using hbind

end Ipp

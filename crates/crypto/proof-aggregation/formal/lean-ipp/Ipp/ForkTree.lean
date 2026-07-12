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

/-- A predicate holding throughout a run tree holds at its canonical root. -/
theorem All.root {P : α × QueryLog spec → Prop}
    {depth : Nat} {tree : RunTree spec α depth} (h : tree.All P) : P tree.root := by
  induction tree with
  | leaf run => exact h
  | node children ih => exact ih 0 (h 0)

end RunTree

/-- Per-node consistency for the U5c replay tree.  The optional lower slot is
the parent slot; requiring it to be smaller records stage ordering along every
branch.  Leaf evidence also establishes global first-run support. -/
inductive TreeConsistent [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) :
    (level : Nat) → Option (Fin (qb i + 1)) →
      {depth : Nat} → RunTree spec α depth → Prop
  | leaf (level : Nat) (lower : Option (Fin (qb i + 1)))
      (run : α × QueryLog spec)
      (hsupport : run ∈ support (replayFirstRun main))
      (hgate : leafOk run) :
      TreeConsistent main qb i cf leafOk level lower (.leaf run)
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
        TreeConsistent main qb i cf leafOk (level + 1) (some s) (children k)) :
      TreeConsistent main qb i cf leafOk level lower (.node children)

/-- Compose fixed-root four-way forks.  Only the root caller performs
`replayFirstRun`; recursive calls replay each branch's own canonical log. -/
noncomputable def forkTreeFrom [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (level : Nat) (lower : Option (Fin (qb i + 1)))
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    (depth : Nat) → (α × QueryLog spec) →
      OracleComp spec (Option (RunTree spec α depth))
  | 0, first => if leafOk first then pure (some (.leaf first)) else pure none
  | depth + 1, first => do
      match cf level first.1 with
      | none => pure none
      | some s =>
          if ∀ previous, lower = some previous → previous < s then
            let runs? ← forkReplay4From main qb i (cf level) first
            match runs? with
            | none => pure none
            | some runs =>
                let t₀? ← forkTreeFrom main qb i cf leafOk (level + 1) (some s) depth (runs 0)
                let t₁? ← forkTreeFrom main qb i cf leafOk (level + 1) (some s) depth (runs 1)
                let t₂? ← forkTreeFrom main qb i cf leafOk (level + 1) (some s) depth (runs 2)
                let t₃? ← forkTreeFrom main qb i cf leafOk (level + 1) (some s) depth (runs 3)
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
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    OracleComp spec (Option (RunTree spec α depth)) := do
  let first ← replayFirstRun main
  forkTreeFrom main qb i cf leafOk 0 none depth first

/-- The transcript level added while bottom-up combined replay extends a tree. -/
def combinedLevel (total built : Nat) (h : built < total) : Nat :=
  total - (built + 1)

/-- The first extracted slot stored along a combined-replay tree's root path. -/
def treeFirstSlot
    {qb : ι → Nat}
    {i : ι}
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (total built : Nat) (tree : RunTree spec α built) :
    Option (Fin (qb i + 1)) :=
  if h : 0 < built then cf (total - built) tree.root.1 else none

/-- Select the new replay slot only when it precedes the child tree's first slot. -/
def combinedTreeSelector
    (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (total built : Nat) (h : built < total) :
    Option (RunTree spec α built) → Option (Fin (qb i + 1))
  | none => none
  | some tree =>
      match cf (combinedLevel total built h) tree.root.1 with
      | none => none
      | some s =>
          match treeFirstSlot cf total built tree with
          | none => some s
          | some next => if s < next then some s else none

/-- Keep a successfully extracted child and discard its outer replay log. -/
def keepCombinedChild {depth : Nat} :
    (Option (RunTree spec α depth) × QueryLog spec) →
      OracleComp spec (Option (RunTree spec α depth))
  | (some tree, _) => pure (some tree)
  | (none, _) => pure none

/-- Join four successful extracted children under one combined-replay node. -/
def assembleCombinedNode {depth : Nat} :
    Option (Fin 4 →
      (Option (RunTree spec α depth) × QueryLog spec) ×
        Option (RunTree spec α depth)) →
      Option (RunTree spec α (depth + 1))
  | some branches =>
      if h : forall k, (branches k).2.isSome then
        some (.node (fun k => (branches k).2.get (h k)))
      else none
  | none => none

@[simp] theorem combinedLevel_eq (total built : Nat) (h : built < total) :
    combinedLevel total built h = total - (built + 1) := rfl

@[simp] theorem treeFirstSlot_zero
    (qb : ι → Nat)
    (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (total : Nat) (tree : RunTree spec α 0) :
    treeFirstSlot cf total 0 tree = none := by
  simp [treeFirstSlot]

@[simp] theorem treeFirstSlot_succ
    (qb : ι → Nat)
    (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (total built : Nat) (tree : RunTree spec α (built + 1)) :
    treeFirstSlot cf total (built + 1) tree = cf (total - (built + 1)) tree.root.1 := by
  simp [treeFirstSlot]

@[simp] theorem combinedTreeSelector_none
    (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (total built : Nat) (h : built < total) :
    combinedTreeSelector qb i cf total built h
      (none : Option (RunTree spec α built)) = none := rfl

@[simp] theorem combinedTreeSelector_some_cf_none
    (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (total built : Nat) (h : built < total) (tree : RunTree spec α built)
    (hcf : cf (combinedLevel total built h) tree.root.1 = none) :
    combinedTreeSelector qb i cf total built h (some tree) = none := by
  change (match cf (combinedLevel total built h) tree.root.1 with
    | none => none
    | some s =>
        match treeFirstSlot cf total built tree with
        | none => some s
        | some next => if s < next then some s else none) = none
  rw [hcf]

@[simp] theorem combinedTreeSelector_some_first_none
    (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (total built : Nat) (h : built < total) (tree : RunTree spec α built)
    (s : Fin (qb i + 1))
    (hcf : cf (combinedLevel total built h) tree.root.1 = some s)
    (hfirst : treeFirstSlot cf total built tree = none) :
    combinedTreeSelector qb i cf total built h (some tree) = some s := by
  change (match cf (combinedLevel total built h) tree.root.1 with
    | none => none
    | some s =>
        match treeFirstSlot cf total built tree with
        | none => some s
        | some next => if s < next then some s else none) = some s
  rw [hcf, hfirst]

@[simp] theorem combinedTreeSelector_some_first_some
    (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (total built : Nat) (h : built < total) (tree : RunTree spec α built)
    (s next : Fin (qb i + 1))
    (hcf : cf (combinedLevel total built h) tree.root.1 = some s)
    (hfirst : treeFirstSlot cf total built tree = some next) :
    combinedTreeSelector qb i cf total built h (some tree) =
      if s < next then some s else none := by
  change (match cf (combinedLevel total built h) tree.root.1 with
    | none => none
    | some s =>
        match treeFirstSlot cf total built tree with
        | none => some s
        | some next => if s < next then some s else none) =
      if s < next then some s else none
  rw [hcf, hfirst]

@[simp] theorem keepCombinedChild_some {depth : Nat}
    (tree : RunTree spec α depth) (log : QueryLog spec) :
    keepCombinedChild (some tree, log) = pure (some tree) := rfl

@[simp] theorem keepCombinedChild_none {depth : Nat} (log : QueryLog spec) :
    keepCombinedChild ((none : Option (RunTree spec α depth)), log) =
      pure none := rfl

@[simp] theorem some_mem_support_keepCombinedChild_iff {depth : Nat}
    (tree : RunTree spec α depth) (child : Option (RunTree spec α depth))
    (log : QueryLog spec) :
    some tree ∈ support (keepCombinedChild (child, log)) ↔ child = some tree := by
  cases child <;> simp [keepCombinedChild, eq_comm]

@[simp] theorem assembleCombinedNode_none {depth : Nat} :
    assembleCombinedNode (α := α) (spec := spec) (depth := depth) none = none := rfl

@[simp] theorem assembleCombinedNode_some_of_all_isSome {depth : Nat}
    (branches : Fin 4 →
      (Option (RunTree spec α depth) × QueryLog spec) ×
        Option (RunTree spec α depth))
    (h : forall k, (branches k).2.isSome) :
    assembleCombinedNode (some branches) =
      some (.node (fun k => (branches k).2.get (h k))) := by
  simp [assembleCombinedNode, h]

@[simp] theorem assembleCombinedNode_some_of_not_all_isSome {depth : Nat}
    (branches : Fin 4 →
      (Option (RunTree spec α depth) × QueryLog spec) ×
        Option (RunTree spec α depth))
    (h : ¬ forall k, (branches k).2.isSome) :
    assembleCombinedNode (some branches) = none := by
  simp [assembleCombinedNode, h]

/-- Build a tree bottom-up by replaying the entire previously built extractor. -/
noncomputable def forkTreeCombined [spec.DecidableEq]
    (total : Nat) (main : OracleComp spec α)
    (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec] :
    (built : Nat) → built ≤ total →
      OracleComp spec (Option (RunTree spec α built))
  | 0, _ => do
      let first ← replayFirstRun main
      if leafOk first then pure (some (.leaf first)) else pure none
  | built + 1, hle =>
      assembleCombinedNode <$> forkReplay4Continue
        (forkTreeCombined total main qb i cf leafOk built (by omega))
        qb i (combinedTreeSelector qb i cf total built (by omega)) none
        keepCombinedChild
termination_by built _ => built

/-- Unfold one leaf-gate layer of the combined extractor. -/
@[simp] theorem forkTreeCombined_zero [spec.DecidableEq]
    (total : Nat) (main : OracleComp spec α)
    (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (hle : 0 ≤ total) :
    forkTreeCombined total main qb i cf leafOk 0 hle = (do
      let first ← replayFirstRun main
      if leafOk first then pure (some (.leaf first)) else pure none) := by
  simp only [forkTreeCombined]

/-- Unfold one replay-and-assembly layer of the combined extractor. -/
@[simp] theorem forkTreeCombined_succ [spec.DecidableEq]
    (total built : Nat) (main : OracleComp spec α)
    (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (hle : built + 1 ≤ total) :
    forkTreeCombined total main qb i cf leafOk (built + 1) hle =
      assembleCombinedNode <$> forkReplay4Continue
        (forkTreeCombined total main qb i cf leafOk built (by omega))
        qb i (combinedTreeSelector qb i cf total built (by omega)) none
        keepCombinedChild := by
  simp only [forkTreeCombined]

/-- Assembly succeeds exactly when a four-way output exists and every child did. -/
theorem assembleCombinedNode_isSome_iff {depth : Nat}
    (branches? : Option (Fin 4 →
      (Option (RunTree spec α depth) × QueryLog spec) ×
        Option (RunTree spec α depth))) :
    (assembleCombinedNode branches?).isSome ↔
      ∃ branches, branches? = some branches ∧ ∀ k, (branches k).2.isSome := by
  cases branches? with
  | none => simp
  | some branches =>
      by_cases h : ∀ k, (branches k).2.isSome <;>
        simp [assembleCombinedNode, h]

/-- Every successful continued fork has four successful child continuations. -/
theorem forkReplay4Continue_success_all_isSome [spec.DecidableEq]
    [IsUniformSpec spec] [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    {depth : Nat}
    (main : OracleComp spec (Option (RunTree spec α depth)))
    (qb : ι → Nat) (i : ι)
    (cf : Option (RunTree spec α depth) → Option (Fin (qb i + 1)))
    {branches : Fin 4 →
      (Option (RunTree spec α depth) × QueryLog spec) ×
        Option (RunTree spec α depth)}
    (h : some branches ∈ support
      (forkReplay4Continue main qb i cf none keepCombinedChild)) :
    ∀ k, (branches k).2.isSome := by
  rcases forkReplay4_propertyTransfer
      (continuedForkMain main keepCombinedChild) qb i
      (continuedForkSelector qb i cf none) (fun _ _ => True)
      (fun _ => trivial) h with ⟨_, s, _, hselector, _⟩
  intro k
  have hk := hselector k
  rcases hbranch : branches k with ⟨⟨tree?, log⟩, child?⟩
  simp only [hbranch, continuedForkSelector] at hk
  cases child? with
  | none => simp at hk
  | some child => simp

/-- Node assembly preserves the exact `isSome` success event of one replay level. -/
theorem probEvent_isSome_assembleCombinedNode_forkReplay4Continue
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    {depth : Nat}
    (main : OracleComp spec (Option (RunTree spec α depth)))
    (qb : ι → Nat) (i : ι)
    (cf : Option (RunTree spec α depth) → Option (Fin (qb i + 1))) :
    Pr[fun tree : Option (RunTree spec α (depth + 1)) => tree.isSome |
        assembleCombinedNode <$> forkReplay4Continue main qb i cf none keepCombinedChild] =
      Pr[fun branches : Option (Fin 4 →
          (Option (RunTree spec α depth) × QueryLog spec) ×
            Option (RunTree spec α depth)) => branches.isSome |
        forkReplay4Continue main qb i cf none keepCombinedChild] := by
  rw [probEvent_map]
  apply probEvent_ext
  intro branches? hsupport
  cases branches? with
  | none => simp
  | some branches =>
      have hall := forkReplay4Continue_success_all_isSome main qb i cf hsupport
      simp [assembleCombinedNode, hall]

private theorem forkTreeFrom_support_props [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (level : Nat) (lower : Option (Fin (qb i + 1)))
    (depth : Nat) (first : α × QueryLog spec)
    (hfirst : first ∈ support (replayFirstRun main))
    {tree : RunTree spec α depth}
    (h : some tree ∈ support (forkTreeFrom main qb i cf leafOk level lower depth first)) :
    tree.root = first ∧ TreeConsistent main qb i cf leafOk level lower tree := by
  induction depth generalizing level lower first with
  | zero =>
      simp only [forkTreeFrom] at h
      split_ifs at h with hgate
      · simp only [mem_support_pure_iff] at h
        have htree : tree = .leaf first := Option.some.inj h
        subst tree
        exact ⟨rfl, .leaf level lower first hfirst hgate⟩
      · simp at h
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
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    {tree : RunTree spec α depth}
    (h : some tree ∈ support (forkTree depth main qb i cf leafOk)) :
    TreeConsistent main qb i cf leafOk 0 none tree := by
  simp only [forkTree] at h
  rw [mem_support_bind_iff] at h
  obtain ⟨first, hfirst, htree⟩ := h
  exact (forkTreeFrom_support_props main qb i cf leafOk 0 none depth first hfirst htree).2

/-- The canonical base run exposed by an outer combined-extractor log.  The
prefix clause is the explicit session-7 replay projection obligation. -/
def CombinedCanonicalProjection [spec.DecidableEq]
    (main : OracleComp spec α) {built : Nat} (tree : RunTree spec α built)
    (outerLog : QueryLog spec) : Prop :=
  ∃ baseRun : α × QueryLog spec,
    baseRun ∈ support (replayFirstRun main) ∧ tree.root = baseRun ∧
      ∀ n, n < baseRun.2.length → outerLog[n]? = baseRun.2[n]?

/-- The nested replay-prefix witness needed to turn one combined node into an
R6 node. -/
def CombinedNodePrefixProjection [spec.DecidableEq]
    (total : Nat) (main : OracleComp spec α) (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1))) {built : Nat}
    (children : Fin 4 → RunTree spec α built) (outerLog : QueryLog spec) : Prop :=
  ∃ slot : Fin (qb i + 1), ∃ answers : Fin 4 → spec.Range i,
    ∃ cursor slotPos : Nat,
      CombinedCanonicalProjection main (.node children) outerLog ∧
      (∀ k, cf (total - (built + 1)) (children k).root.1 = some slot) ∧
      Function.Injective answers ∧
      (∀ k, QueryLog.getQueryValue? (children k).root.2 i ↑slot = some (answers k)) ∧
      0 < cursor ∧
      (∀ a b n, n < cursor → QueryLog.inputAt? (children a).root.2 n =
        QueryLog.inputAt? (children b).root.2 n) ∧
      slotPos < cursor ∧
      (∀ k, QueryLog.inputAt? (children k).root.2 slotPos = some i) ∧
      (∀ k, (QueryLog.getQ ((children k).root.2.take slotPos) (· = i)).length = (slot : Nat)) ∧
      (∀ a b n, n < slotPos → (children a).root.2[n]? = (children b).root.2[n]?) ∧
      (∀ k next, treeFirstSlot cf total built (children k) = some next → slot < next)

/-- A logged continued child exposes the successful nested extractor run, and
the outer logging layer records exactly its embedded extractor log. -/
private theorem continuedForkMain_keepCombinedChild_support_props
    {depth : Nat} (extractor : OracleComp spec (Option (RunTree spec α depth)))
    {tree : RunTree spec α depth} {innerLog outerLog : QueryLog spec}
    (h : (((some tree, innerLog), some tree), outerLog) ∈ support
      (replayFirstRun (continuedForkMain extractor keepCombinedChild))) :
    (some tree, innerLog) ∈ support (replayFirstRun extractor) ∧ outerLog = innerLog := by
  change (((some tree, innerLog), some tree), outerLog) ∈ support
    (continuedForkMain extractor keepCombinedChild).withQueryLog at h
  rw [continuedForkMain, OracleComp.withQueryLog_bind, mem_support_bind_iff] at h
  obtain ⟨p, hp, h⟩ := h
  rcases p with ⟨⟨tree?, logged⟩, prefixLog⟩
  rcases tree? with _ | tree'
  · simp [keepCombinedChild] at h
  simp [keepCombinedChild] at h
  rcases h with ⟨⟨⟨htree, hlog⟩, _⟩, houter⟩
  subst tree'
  subst logged
  subst outerLog
  have hlogs := OracleComp.withQueryLog_self_log_eq extractor hp
  subst prefixLog
  constructor
  · have hmapped : (some tree, innerLog) ∈ support
        (Prod.fst <$> (replayFirstRun extractor).withQueryLog) := by
      rw [support_map, Set.mem_image]
      exact ⟨((some tree, innerLog), innerLog), hp, rfl⟩
    change (some tree, innerLog) ∈ support
      (Prod.fst <$> replayFirstRun (replayFirstRun extractor)) at hmapped
    simpa only [fst_map_replayFirstRun] using hmapped
  · rfl

private lemma take_eq_of_getElem?_eq_below_combined {β : Type}
    (xs ys : List β) (n : Nat) (h : ∀ m, m < n → xs[m]? = ys[m]?) :
    xs.take n = ys.take n := by
  induction n generalizing xs ys with
  | zero => rfl
  | succ n ih =>
      cases xs with
      | nil =>
          cases ys with
          | nil => rfl
          | cons y ys => simpa using h 0 (Nat.zero_lt_succ n)
      | cons x xs =>
          cases ys with
          | nil => simpa using h 0 (Nat.zero_lt_succ n)
          | cons y ys =>
              have hxy : x = y := by simpa using h 0 (Nat.zero_lt_succ n)
              subst y
              simp only [List.take_succ_cons, List.cons.injEq, true_and]
              apply ih
              intro m hm
              simpa using h (m + 1) (by omega)

private lemma getQ_prefix_combined [spec.DecidableEq]
    (xs ys : QueryLog spec) (p : ι → Prop) [DecidablePred p]
    (h : xs <+: ys) : xs.getQ p <+: ys.getQ p := by
  rcases h with ⟨tail, rfl⟩
  exact ⟨QueryLog.getQ tail p, by simp⟩

/-- Project the full replay-prefix relation of one successful combined fork to
the canonical base runs stored at its four child roots.  The child projection
hypotheses are precisely the already-completed nested-child component of the
bottom-up induction; no relation is claimed after the selected fork query. -/
theorem combinedNodePrefixProjection_of_outerReplay
    [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (total built : Nat) (hbuilt : built < total)
    (main : OracleComp spec α) (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (extractor : OracleComp spec (Option (RunTree spec α built)))
    (hbaseReach : CfReachable main qb i (cf (combinedLevel total built hbuilt)))
    {children : Fin 4 → RunTree spec α built}
    {childLogs : Fin 4 → QueryLog spec} {outerLog : QueryLog spec}
    {branches : Fin 4 →
      (Option (RunTree spec α built) × QueryLog spec) ×
        Option (RunTree spec α built)}
    (hfork : some branches ∈ support
      (forkReplay4Continue extractor qb i
        (combinedTreeSelector qb i cf total built hbuilt) none keepCombinedChild))
    (hbranches : ∀ k,
      branches k = ((some (children k), childLogs k), some (children k)))
    (hchildren : ∀ k,
      CombinedCanonicalProjection main (children k) (childLogs k))
    (hcanonical : CombinedCanonicalProjection main (.node children) outerLog) :
    CombinedNodePrefixProjection total main qb i cf children outerLog := by
  unfold forkReplay4Continue at hfork
  rcases forkReplay4_support_props_full
      (continuedForkMain extractor keepCombinedChild) qb i
      (continuedForkSelector qb i
        (combinedTreeSelector qb i cf total built hbuilt) none) hfork with
    ⟨runs, slot, answers, cursor, slotPos, hrunsOutput, hrunsSupport, hselector,
      hinjective, hanswers, hcursor, hprefix, hslotPos, hslotInput, hslotRank,
      hprefixValues⟩
  have hrunsEq : ∀ k,
      runs k = (((some (children k), childLogs k), some (children k)), childLogs k) := by
    intro k
    have hout := (hrunsOutput k).symm.trans (hbranches k)
    have hs := continuedForkMain_keepCombinedChild_support_props extractor
      (tree := children k) (innerLog := childLogs k) (outerLog := (runs k).2) (by
        rw [← hout]
        exact hrunsSupport k)
    exact Prod.ext hout hs.2
  have hcf : ∀ k,
      cf (total - (built + 1)) (children k).root.1 = some slot := by
    intro k
    have hs := hselector k
    rw [hrunsEq k] at hs
    simp only [continuedForkSelector, gatedForkSelector] at hs
    have hs' : combinedTreeSelector qb i cf total built hbuilt (some (children k)) =
        some slot := by
      rcases hz : combinedTreeSelector qb i cf total built hbuilt (some (children k)) with _ | s
      · simp [hz] at hs
      · simp [hz] at hs
        simpa [hs] using hz
    rcases hcurrent : cf (total - (built + 1)) (children k).root.1 with _ | s
    · simp [combinedTreeSelector, hcurrent] at hs'
    have hsEq : s = slot := by
      rcases hfirst : treeFirstSlot cf total built (children k) with _ | next
      · have : some s = some slot := by
          simpa [combinedTreeSelector, hcurrent, hfirst] using hs'
        exact Option.some.inj this
      · by_cases hlt : s < next
        · have : some s = some slot := by
            simpa [combinedTreeSelector, hcurrent, hfirst, hlt] using hs'
          exact Option.some.inj this
        · simp [combinedTreeSelector, hcurrent, hfirst, hlt] at hs'
    subst s
    rfl
  have hslotOrder : ∀ k next,
      treeFirstSlot cf total built (children k) = some next → slot < next := by
    intro k next hfirst
    have hs := hselector k
    rw [hrunsEq k] at hs
    simp only [continuedForkSelector, gatedForkSelector] at hs
    have hcurrent := hcf k
    by_cases hlt : slot < next
    · exact hlt
    · simp [combinedTreeSelector, hcurrent, hfirst, hlt] at hs
  have hrootPrefix : ∀ k n, n < (children k).root.2.length →
      (childLogs k)[n]? = (children k).root.2[n]? := by
    intro k n hn
    rcases hchildren k with ⟨baseRun, hsupport, hroot, hpref⟩
    rw [hroot]
    exact hpref n (by simpa [← hroot] using hn)
  have hrootSupport : ∀ k,
      (children k).root ∈ support (replayFirstRun main) := by
    intro k
    rcases hchildren k with ⟨baseRun, hsupport, hroot, hpref⟩
    simpa [hroot] using hsupport
  have hslotWithin : ∀ k, slotPos < (children k).root.2.length := by
    intro k
    by_contra hnot
    have hle : (children k).root.2.length ≤ slotPos := by omega
    have htake : (childLogs k).take (children k).root.2.length =
        (children k).root.2 := by
      exact (take_eq_of_getElem?_eq_below_combined _ _ _ (hrootPrefix k)).trans
        List.take_length
    have hpref : (children k).root.2 <+: (childLogs k).take slotPos := by
      rw [← htake]
      have heq : ((childLogs k).take slotPos).take (children k).root.2.length =
          (childLogs k).take (children k).root.2.length := by
        simp [List.take_take, Nat.min_eq_left hle]
      rw [← heq]
      exact List.take_prefix _ _
    have hprefQ := getQ_prefix_combined _ _ (· = i) hpref
    have hcountLe := hprefQ.length_le
    have hreachable := hbaseReach (hrootSupport k) slot (by
      simpa [combinedLevel] using hcf k)
    obtain ⟨u, hu⟩ := Option.isSome_iff_exists.mp hreachable
    have hget := QueryLog.getQ_getElem?_eq_of_getQueryValue?_eq_some
      (children k).root.2 i (slot : Nat) u hu
    have hlt := (List.getElem?_eq_some_iff.1 hget).1
    have hrank : (QueryLog.getQ ((childLogs k).take slotPos) (· = i)).length =
        (slot : Nat) := by simpa [hrunsEq k] using hslotRank k
    have hcountLe' : ((children k).root.2.getQ (· = i)).length ≤ (slot : Nat) :=
      hcountLe.trans_eq hrank
    omega
  have hrootGetValue : ∀ k,
      QueryLog.getQueryValue? (children k).root.2 i ↑slot = some (answers k) := by
    intro k
    have htake : (childLogs k).take (children k).root.2.length =
        (children k).root.2 := by
      exact (take_eq_of_getElem?_eq_below_combined _ _ _ (hrootPrefix k)).trans
        List.take_length
    have hpref : (children k).root.2 <+: childLogs k := by
      rw [← htake]
      exact List.take_prefix _ _
    have hprefQ := getQ_prefix_combined _ _ (· = i) hpref
    rcases hprefQ with ⟨tail, hprefQ⟩
    apply QueryLog.getQueryValue?_eq_some_of_getQ_getElem?
    have hchild := QueryLog.getQ_getElem?_eq_of_getQueryValue?_eq_some
      (childLogs k) i (slot : Nat) (answers k) (by
        simpa [hrunsEq k] using hanswers k)
    rw [← hprefQ] at hchild
    rw [List.getElem?_append_left] at hchild
    · exact hchild
    · have hreachable := hbaseReach (hrootSupport k) slot (by
          simpa [combinedLevel] using hcf k)
      obtain ⟨u, hu⟩ := Option.isSome_iff_exists.mp hreachable
      exact (List.getElem?_eq_some_iff.1
        (QueryLog.getQ_getElem?_eq_of_getQueryValue?_eq_some
          (children k).root.2 i (slot : Nat) u hu)).1
  refine ⟨slot, answers, slotPos + 1, slotPos, hcanonical, hcf, hinjective,
    hrootGetValue, by omega, ?_, by omega, ?_, ?_, ?_, hslotOrder⟩
  · intro a b n hn
    have hna : n < (children a).root.2.length := lt_of_lt_of_le hn (by
      have := hslotWithin a
      omega)
    have hnb : n < (children b).root.2.length := lt_of_lt_of_le hn (by
      have := hslotWithin b
      omega)
    have hab := hprefix a b n (by omega)
    rw [hrunsEq a, hrunsEq b] at hab
    unfold QueryLog.inputAt? at hab ⊢
    rw [← hrootPrefix a n hna, ← hrootPrefix b n hnb]
    exact hab
  · intro k
    have hp := hrootPrefix k slotPos (hslotWithin k)
    have hi := hslotInput k
    rw [hrunsEq k] at hi
    unfold QueryLog.inputAt? at hi ⊢
    rw [← hp]
    exact hi
  · intro k
    have htake := take_eq_of_getElem?_eq_below_combined
      (childLogs k) (children k).root.2 slotPos (fun n hn =>
        hrootPrefix k n (lt_trans hn (hslotWithin k)))
    rw [← htake]
    simpa [hrunsEq k] using hslotRank k
  · intro a b n hn
    have hna : n < (children a).root.2.length := lt_trans hn (hslotWithin a)
    have hnb : n < (children b).root.2.length := lt_trans hn (hslotWithin b)
    rw [← hrootPrefix a n hna, ← hrootPrefix b n hnb]
    simpa [hrunsEq a, hrunsEq b] using hprefixValues a b n hn

/-- An optional parent slot is admissible when it is absent, a leaf has no
first slot, or it is strictly below the first slot of a positive-depth tree. -/
def CombinedSlotLower
    (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (total built : Nat) (tree : RunTree spec α built)
    (lower : Option (Fin (qb i + 1))) : Prop :=
  lower = none ∨ built = 0 ∨ ∃ first,
    treeFirstSlot cf total built tree = some first ∧
      ∀ previous, lower = some previous → previous < first

/-- Construction-side invariant for bottom-up combined replay.  Its node
projection is deliberately an explicit witness until session 7 proves it. -/
inductive CombinedReplayConsistent [spec.DecidableEq]
    (total : Nat) (main : OracleComp spec α) (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) :
    (built : Nat) → RunTree spec α built → QueryLog spec → Prop
  | leaf (outerLog : QueryLog spec) (run : α × QueryLog spec)
      (hprojection : CombinedCanonicalProjection main (.leaf run) outerLog)
      (hgate : leafOk run) :
      CombinedReplayConsistent total main qb i cf leafOk 0 (.leaf run) outerLog
  | node {built : Nat} (outerLog : QueryLog spec)
      (children : Fin 4 → RunTree spec α built) (hcover : built + 1 ≤ total)
      (hprojection : CombinedNodePrefixProjection total main qb i cf children outerLog)
      (childLogs : Fin 4 → QueryLog spec)
      (hchildren : ∀ k,
        CombinedReplayConsistent total main qb i cf leafOk built (children k) (childLogs k)) :
      CombinedReplayConsistent total main qb i cf leafOk (built + 1) (.node children) outerLog

namespace CombinedReplayConsistent

/-- Introduce a successful combined leaf from its canonical base projection. -/
theorem leaf_intro [spec.DecidableEq]
    (total : Nat) (main : OracleComp spec α) (qb : ι → Nat) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) (outerLog : QueryLog spec)
    (run : α × QueryLog spec)
    (hprojection : CombinedCanonicalProjection main (.leaf run) outerLog)
    (hgate : leafOk run) :
    CombinedReplayConsistent total main qb i cf leafOk 0 (.leaf run) outerLog :=
  .leaf outerLog run hprojection hgate

/-- Every stored combined-tree leaf is a canonical first run. -/
theorem all_support [spec.DecidableEq]
    {total : Nat} {main : OracleComp spec α} {qb : ι → Nat} {i : ι}
    {cf : Nat → α → Option (Fin (qb i + 1))} {leafOk : α × QueryLog spec → Prop}
    {built : Nat} {tree : RunTree spec α built} {outerLog : QueryLog spec}
    (h : CombinedReplayConsistent total main qb i cf leafOk built tree outerLog) :
    tree.All (fun run => run ∈ support (replayFirstRun main)) := by
  induction h with
  | leaf outerLog run hprojection hgate =>
      rcases hprojection with ⟨baseRun, hsupport, hroot, hprefix⟩
      change run ∈ support (replayFirstRun main)
      have hrun : run = baseRun := by simpa [RunTree.root] using hroot
      simpa [hrun] using hsupport
  | node outerLog children hcover hprojection childLogs hchildren ih =>
      intro k
      exact ih k

/-- Every stored combined-tree leaf satisfies the construction gate. -/
theorem all_leafOk [spec.DecidableEq]
    {total : Nat} {main : OracleComp spec α} {qb : ι → Nat} {i : ι}
    {cf : Nat → α → Option (Fin (qb i + 1))} {leafOk : α × QueryLog spec → Prop}
    {built : Nat} {tree : RunTree spec α built} {outerLog : QueryLog spec}
    (h : CombinedReplayConsistent total main qb i cf leafOk built tree outerLog) :
    tree.All leafOk := by
  induction h with
  | leaf outerLog run hprojection hgate => exact hgate
  | node outerLog children hcover hprojection childLogs hchildren ih =>
      intro k
      exact ih k

/-- Positive-depth combined trees expose their first slot. -/
theorem firstSlot_some [spec.DecidableEq]
    {total : Nat} {main : OracleComp spec α} {qb : ι → Nat} {i : ι}
    {cf : Nat → α → Option (Fin (qb i + 1))} {leafOk : α × QueryLog spec → Prop}
    {built : Nat} {tree : RunTree spec α built} {outerLog : QueryLog spec}
    (h : CombinedReplayConsistent total main qb i cf leafOk built tree outerLog)
    (hpositive : 0 < built) :
    ∃ slot, treeFirstSlot cf total built tree = some slot := by
  cases h with
  | leaf => simp at hpositive
  | node outerLog children hcover hprojection childLogs hchildren =>
      rcases hprojection with ⟨slot, answers, cursor, slotPos, hbase, hcf, hinjective,
        hanswers, hcursor, hprefix, hslotPos, hslotInput, hslotRank, hprefixValues,
        hslotOrder⟩
      refine ⟨slot, ?_⟩
      simpa [treeFirstSlot_succ] using hcf 0

/-- The newly exposed slot of a combined node precedes every child first slot. -/
theorem slot_lt_child_first [spec.DecidableEq]
    {total : Nat} {main : OracleComp spec α} {qb : ι → Nat} {i : ι}
    {cf : Nat → α → Option (Fin (qb i + 1))} {leafOk : α × QueryLog spec → Prop}
    {built : Nat} {children : Fin 4 → RunTree spec α built} {outerLog : QueryLog spec}
    (h : CombinedReplayConsistent total main qb i cf leafOk (built + 1) (.node children) outerLog)
    (k : Fin 4) (next : Fin (qb i + 1))
    (hfirst : treeFirstSlot cf total built (children k) = some next) :
    ∃ slot, cf (total - (built + 1)) (children 0).root.1 = some slot ∧ slot < next := by
  cases h with
  | node outerLog children hcover hprojection childLogs hchildren =>
      rcases hprojection with ⟨slot, answers, cursor, slotPos, hbase, hcf, hinjective,
        hanswers, hcursor, hprefix, hslotPos, hslotInput, hslotRank, hprefixValues,
        hslotOrder⟩
      exact ⟨slot, hcf 0, hslotOrder k next hfirst⟩

/-- Forget the construction-only outer-log projection, retaining precisely the
unchanged R6 tree interface. -/
theorem forget [spec.DecidableEq]
    {total : Nat} {main : OracleComp spec α} {qb : ι → Nat} {i : ι}
    {cf : Nat → α → Option (Fin (qb i + 1))} {leafOk : α × QueryLog spec → Prop}
    {built : Nat} {tree : RunTree spec α built} {outerLog : QueryLog spec}
    (h : CombinedReplayConsistent total main qb i cf leafOk built tree outerLog)
    (lower : Option (Fin (qb i + 1)))
    (hlower : CombinedSlotLower qb i cf total built tree lower) :
    TreeConsistent main qb i cf leafOk (total - built) lower tree := by
  induction h generalizing lower with
  | leaf outerLog run hprojection hgate =>
      rcases hprojection with ⟨baseRun, hsupport, hroot, hprefix⟩
      have hrun : run = baseRun := by simpa [RunTree.root] using hroot
      exact .leaf (total - 0) lower run (by simpa [hrun] using hsupport) hgate
  | @node built outerLog children hcover hprojection childLogs hchildren ih =>
      rcases hprojection with ⟨slot, answers, cursor, slotPos, hbase, hcf, hinjective,
        hanswers, hcursor, hprefix, hslotPos, hslotInput, hslotRank, hprefixValues,
        hslotOrder⟩
      have hstrict : ∀ previous, lower = some previous → previous < slot := by
        intro previous hlowerEq
        rcases hlower with hnone | hzero | ⟨first, hfirst, hbelow⟩
        · simp [hnone] at hlowerEq
        · omega
        · have hfirstSlot : first = slot := by
            have hfirst' : cf (total - (built + 1)) (children 0).root.1 = some first := by
              simpa [treeFirstSlot_succ] using hfirst
            exact Option.some.inj (hfirst'.symm.trans (hcf 0))
          simpa [hfirstSlot] using hbelow previous hlowerEq
      refine .node (total - (built + 1)) lower children slot answers cursor slotPos hcf
        hinjective hanswers hcursor hprefix hslotPos hslotInput hslotRank hprefixValues
        hstrict ?_
      intro k
      have hchildLower : CombinedSlotLower qb i cf total built (children k) (some slot) := by
        by_cases hzero : built = 0
        · exact Or.inr (Or.inl hzero)
        · obtain ⟨next, hnext⟩ := firstSlot_some (hchildren k) (by omega)
          exact Or.inr (Or.inr ⟨next, hnext,
            fun previous hprevious => by
              have hprevious' : previous = slot := Option.some.inj hprevious.symm
              simpa [hprevious'] using hslotOrder k next hnext⟩)
      have htree := ih k (some slot) hchildLower
      convert htree using 1 <;> omega

end CombinedReplayConsistent

/-- Consistency entails support for every run stored in the tree. -/
theorem TreeConsistent.all_support [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop)
    {level : Nat} {lower : Option (Fin (qb i + 1))}
    {depth : Nat} {tree : RunTree spec α depth}
    (h : TreeConsistent main qb i cf leafOk level lower tree) :
    tree.All (fun run => run ∈ support (replayFirstRun main)) := by
  induction h with
  | leaf _ _ _ hsupport _ => exact hsupport
  | @node level lower depth children s answers cursor slotPos hcf hinjective hanswers
      hcursor hprefix hslotPos hslotInput hslotRank hprefixValues hstrict hchildren ih =>
      exact ih

/-- Consistency carries the depth-zero gate to every leaf. -/
theorem TreeConsistent.all_leafOk [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop)
    {level : Nat} {lower : Option (Fin (qb i + 1))}
    {depth : Nat} {tree : RunTree spec α depth}
    (h : TreeConsistent main qb i cf leafOk level lower tree) :
    tree.All leafOk := by
  induction h with
  | leaf _ _ _ _ hgate => exact hgate
  | @node level lower depth children s answers cursor slotPos hcf hinjective hanswers
      hcursor hprefix hslotPos hslotInput hslotRank hprefixValues hstrict hchildren ih =>
      intro k
      exact ih k

/-- Success of gated recursion establishes the leaf gate structurally. -/
theorem forkTree_success_all_leafOk [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (depth : Nat) (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    {tree : RunTree spec α depth}
    (h : some tree ∈ support (forkTree depth main qb i cf leafOk)) :
    tree.All leafOk :=
  (forkTree_support_props depth main qb i cf leafOk h).all_leafOk

/-- A successful positive-depth gated subtree aligns its canonical root with
the exact selector event used by the quantitative fork bound. -/
theorem TreeConsistent.root_selectorAccepted [spec.DecidableEq]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop)
    {level : Nat} {lower : Option (Fin (qb i + 1))}
    {depth : Nat} {tree : RunTree spec α depth}
    (hreach : CfReachable main qb i (cf level))
    (h : TreeConsistent main qb i cf leafOk level lower tree)
    (hdepth : 0 < depth) :
    ForkSelectorAccepted main qb i (cf level) lower tree.root := by
  cases h with
  | leaf _ _ _ _ _ => simp at hdepth
  | node level lower children s answers cursor slotPos hcf hinjective hanswers
      hcursor hprefix hslotPos hslotInput hslotRank hprefixValues hstrict hchildren =>
      refine ⟨hreach, s, ?_, ?_, hstrict⟩
      · simpa [RunTree.root] using hcf 0
      · simpa [RunTree.root] using congrArg Option.isSome (hanswers 0)

/-- Support-level event alignment for gated depth-`d+1` recursion. -/
theorem forkTree_success_selectorAccepted [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (depth : Nat) (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (hreach : CfReachable main qb i (cf 0))
    {tree : RunTree spec α (depth + 1)}
    (h : some tree ∈ support (forkTree (depth + 1) main qb i cf leafOk)) :
    ForkSelectorAccepted main qb i (cf 0) none tree.root :=
  TreeConsistent.root_selectorAccepted main qb i cf leafOk hreach
    (forkTree_support_props (depth + 1) main qb i cf leafOk h) (by omega)

/-- Transfer any first-run postcondition to every run of a successful U5c
tree, packaged with all consistency facts (DESIGN §U5c;
`tipp-mipp.gipa`). -/
theorem forkTree_propertyTransfer [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (depth : Nat) (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (P_out : α → QueryLog spec → Prop)
    (hP : ∀ {x log}, (x, log) ∈ support (replayFirstRun main) → P_out x log)
    {tree : RunTree spec α depth}
    (h : some tree ∈ support (forkTree depth main qb i cf leafOk)) :
    TreeConsistent main qb i cf leafOk 0 none tree ∧
      tree.All (fun run => P_out run.1 run.2) := by
  have hconsistent := forkTree_support_props depth main qb i cf leafOk h
  refine ⟨hconsistent, ?_⟩
  have hall := hconsistent.all_support
  exact hall.imp (fun run hrun => hP hrun)

/-- Quantitative one-level transformer from revised R7. -/
noncomputable def forkTreeStep (q h x : ℝ≥0∞) : ℝ≥0∞ :=
  (x * (x / q - h⁻¹)) ^ 4 - 3 * h⁻¹

/-- The revised R7 transformer is globally monotone on `ℝ≥0∞`. -/
theorem forkTreeStep_monotone (q h : ℝ≥0∞) : Monotone (forkTreeStep q h) := by
  intro a b hab
  unfold forkTreeStep
  apply tsub_le_tsub_right
  apply pow_le_pow_left'
  exact mul_le_mul' hab (tsub_le_tsub_right (ENNReal.div_le_div_right hab q) _)

/-- Averaged success of the exact gated depth-`depth` continuation at a
separate transcript `level` and parent slot. -/
noncomputable def averagedForkTreeSuccess [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (level : Nat) (lower : Option (Fin (qb i + 1))) (depth : Nat) : ℝ≥0∞ :=
  Pr[fun tree : Option (RunTree spec α depth) => tree.isSome | do
    let first ← replayFirstRun main
    forkTreeFrom main qb i cf leafOk level lower depth first]

/-- Depth zero is exactly the averaged gated leaf event. -/
theorem averagedForkTreeSuccess_zero [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (level : Nat) (lower : Option (Fin (qb i + 1))) :
    averagedForkTreeSuccess main qb i cf leafOk level lower 0 =
      Pr[leafOk | replayFirstRun main] := by
  classical
  unfold averagedForkTreeSuccess
  rw [probEvent_bind_eq_tsum]
  rw [probEvent_eq_tsum_ite]
  refine tsum_congr fun first => ?_
  by_cases hgate : leafOk first <;> simp [forkTreeFrom, hgate]

/-- The public gated tree probability is the level-zero averaged
continuation. -/
theorem forkTree_probability_eq_average [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (depth : Nat) (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk] :
    Pr[fun tree : Option (RunTree spec α depth) => tree.isSome |
        forkTree depth main qb i cf leafOk] =
      averagedForkTreeSuccess main qb i cf leafOk 0 none depth := by
  rfl

/-- The depth-`depth` child continuation selected by a parent run.  The
sampled parent slot is the lower bound passed to every child subtree. -/
noncomputable def forkTreeChildContinuation [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (level depth : Nat) (first : α × QueryLog spec) :
    OracleComp spec (Option (RunTree spec α depth)) :=
  match cf level first.1 with
  | none => pure none
  | some s =>
      forkTreeFrom main qb i cf leafOk (level + 1) (some s) depth first

/-- Canonical success mass entering one continued four-way fork.  Unlike a
fixed-lower average, this threads the slot sampled from the parent run. -/
noncomputable def forkTreeContinuationMass [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (level : Nat) (lower : Option (Fin (qb i + 1))) (depth : Nat) : ℝ≥0∞ :=
  ∑ s, Pr[= some s |
    continuedForkSelector qb i (cf level) lower <$> continuedForkMain main
      (forkTreeChildContinuation main qb i cf leafOk level depth)]

/-- Sound one-level endpoint with the sampled child slot threaded through the
continuation.  Identifying its right side with `forkTreeFrom` requires a
separate replay-order coupling theorem. -/
theorem forkTreeContinuationMass_step [spec.DecidableEq] [IsUniformSpec spec]
    [∀ j, SampleableType (spec.Range j)] [unifSpec ⊂ₒ spec]
    [unifSpec ˡ⊂ₒ spec]
    (main : OracleComp spec α) (qb : ι → ℕ) (i : ι)
    (cf : Nat → α → Option (Fin (qb i + 1)))
    (leafOk : α × QueryLog spec → Prop) [DecidablePred leafOk]
    (level : Nat) (lower : Option (Fin (qb i + 1))) (depth : Nat)
    (hreach : CfReachable
      (continuedForkMain main
        (forkTreeChildContinuation main qb i cf leafOk level depth)) qb i
      (continuedForkSelector qb i (cf level) lower)) :
    forkTreeStep (qb i + 1) (Fintype.card (spec.Range i))
        (forkTreeContinuationMass main qb i cf leafOk level lower depth) ≤
      Pr[fun r : Option (Fin 4 →
          (α × QueryLog spec) × Option (RunTree spec α depth)) => r.isSome |
        forkReplay4Continue main qb i (cf level) lower
          (forkTreeChildContinuation main qb i cf leafOk level depth)] := by
  simpa [forkTreeStep, forkTreeContinuationMass] using
    forkReplay4Continue_bound main qb i (cf level) lower
      (forkTreeChildContinuation main qb i cf leafOk level depth) hreach

/-- Scalar recurrence iteration, used once the continuation-aware one-level
estimate identifies the successive averaged quantities. -/
theorem forkTree_iterate_bound (q h : ℝ≥0∞) (Q : Nat → ℝ≥0∞)
    (hrec : ∀ d, forkTreeStep q h (Q d) ≤ Q (d + 1)) :
    ∀ depth, ((forkTreeStep q h)^[depth]) (Q 0) ≤ Q depth := by
  intro depth
  induction depth with
  | zero => simp
  | succ depth ih =>
      rw [Function.iterate_succ_apply']
      exact le_trans (forkTreeStep_monotone q h ih) (hrec depth)

end Ipp

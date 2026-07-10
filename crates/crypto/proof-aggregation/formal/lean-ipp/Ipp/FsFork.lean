/-
U5d(4): single-index Fiat--Shamir wrapping and replay-tree assembly.

The wrapper preserves the occurrence-by-occurrence semantics of `FsGame`:
structured challenge queries are not cached, and every occurrence is forwarded
to the single challenge index while its structured point is recorded.

Spec rows: `tipp-mipp.gipa`, `fs.stage-labels`.
-/
import Ipp.FsGame

open OracleSpec OracleComp Function
open scoped OracleSpec.PrimitiveQuery

namespace Ipp

noncomputable section

variable {F G1 G2 GT RandomizerPayload X0Payload BridgePayload KzgPayload : Type}

/-- The structured point carrier recorded by the U5d(4) wrapper (DESIGN
§U5d(4); `fs.stage-labels`, `tipp-mipp.gipa`). -/
abbrev FsPoint := ChallengePoint F G1 GT RandomizerPayload X0Payload
  BridgePayload KzgPayload

/-- Uniform sampling plus the one fixed challenge-oracle index forked by U5c. -/
abbrev FsWrappedSpec (F : Type) : OracleSpec (Nat ⊕ Unit) :=
  unifSpec + (Unit →ₒ F)

/-- Output and chronological structured-query trace of a wrapped computation. -/
structure WrappedFsRun (Point α : Type) where
  out : α
  trace : List Point
deriving DecidableEq

/-- Forward ambient uniform sampling without changing the structured trace. -/
def fsUnifFwd (Point F : Type) :
    QueryImpl unifSpec (StateT (List Point) (OracleComp (FsWrappedSpec F))) :=
  fun n => (FsWrappedSpec F).query (Sum.inl n)

/-- Forward every structured challenge occurrence to the fixed `Unit` index
and append its point to the side trace.  This deliberately does not cache. -/
def fsSingleImpl (Point F : Type) :
    QueryImpl (Point →ₒ F)
      (StateT (List Point) (OracleComp (FsWrappedSpec F))) :=
  fun point => do
    let value : F ← monadLift
      ((FsWrappedSpec F).query (Sum.inr ()) : OracleComp (FsWrappedSpec F) F)
    modify (· ++ [point])
    pure value

/-- Run the wrapper from an existing chronological point prefix. -/
def wrapFsFrom {Point α : Type}
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α) (initial : List Point) :
    OracleComp (FsWrappedSpec F) (WrappedFsRun Point α) := do
  let (out, trace) ← StateT.run
    (simulateQ (fsUnifFwd Point F + fsSingleImpl Point F) oa) initial
  pure { out := out, trace := trace }

/-- Route a structured FS computation through one challenge index and retain
the structured query sequence (DESIGN §U5d(4); `fs.stage-labels`). -/
def wrapFs {Point α : Type}
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α) :
    OracleComp (FsWrappedSpec F) (WrappedFsRun Point α) :=
  wrapFsFrom oa []

/-- Structured points in a source log, in chronological occurrence order. -/
def fsPointTrace {Point : Type} :
    QueryLog (unifSpec + (Point →ₒ F)) → List Point
  | [] => []
  | ⟨Sum.inl _, _⟩ :: rest => fsPointTrace rest
  | ⟨Sum.inr point, _⟩ :: rest => point :: fsPointTrace rest

/-- Erase structured challenge indices to the wrapper's fixed `Unit` index. -/
def flattenFsLog {Point : Type} :
    QueryLog (unifSpec + (Point →ₒ F)) → QueryLog (FsWrappedSpec F)
  | [] => []
  | ⟨Sum.inl n, value⟩ :: rest =>
      ⟨Sum.inl n, value⟩ :: flattenFsLog rest
  | ⟨Sum.inr _, value⟩ :: rest =>
      ⟨Sum.inr (), value⟩ :: flattenFsLog rest

/-- Support-level occurrence bijection for the non-caching U5d(4) wrapper:
the wrapped run has exactly the erased outer log and exactly the structured
points from the source log, in order. -/
private theorem wrapFsFrom_support_iff {Point α : Type}
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (initial expected : List Point) (out : α)
    (sourceLog : QueryLog (unifSpec + (Point →ₒ F))) :
    ({ out := out, trace := expected ++ fsPointTrace sourceLog },
        flattenFsLog sourceLog) ∈
        support (replayFirstRun (wrapFsFrom oa initial)) ↔
      (out, sourceLog) ∈ support (replayFirstRun oa) ∧
        initial = expected := by
  induction oa using OracleComp.inductionOn generalizing initial expected out sourceLog with
  | pure x =>
      cases sourceLog with
      | nil => simp [replayFirstRun, wrapFsFrom, fsPointTrace, flattenFsLog, eq_comm]
      | cons q rest =>
          rcases q with ⟨t, value⟩
          cases t <;> simp [replayFirstRun, wrapFsFrom, fsPointTrace, flattenFsLog]
  | query_bind t next ih =>
      cases t with
      | inl n =>
          cases sourceLog with
          | nil =>
              simp [replayFirstRun, wrapFsFrom, fsUnifFwd,
                OracleSpec.loggingOracle, QueryImpl.withLogging_apply, flattenFsLog]
          | cons q rest =>
              rcases q with ⟨t, value⟩
              cases t with
              | inl n' =>
                  simp [replayFirstRun, wrapFsFrom, fsUnifFwd,
                    OracleSpec.loggingOracle, QueryImpl.withLogging_apply,
                    fsPointTrace, flattenFsLog]
                  constructor
                  · rintro ⟨i, hw, hn, hv⟩
                    have hi := (ih i initial expected out rest).mp (by
                      simpa [replayFirstRun, wrapFsFrom] using hw)
                    exact ⟨⟨i, hi.1, hn, hv⟩, hi.2⟩
                  · rintro ⟨⟨i, hs, hn, hv⟩, hie⟩
                    refine ⟨i, ?_, hn, hv⟩
                    simpa [replayFirstRun, wrapFsFrom] using
                      (ih i initial expected out rest).mpr ⟨hs, hie⟩
              | inr point =>
                  simp [replayFirstRun, wrapFsFrom, fsUnifFwd,
                    OracleSpec.loggingOracle, QueryImpl.withLogging_apply,
                    fsPointTrace, flattenFsLog]
      | inr point =>
          cases sourceLog with
          | nil =>
              simp [replayFirstRun, wrapFsFrom, fsSingleImpl,
                OracleSpec.loggingOracle, QueryImpl.withLogging_apply, flattenFsLog]
          | cons q rest =>
              rcases q with ⟨t, value⟩
              cases t with
              | inl n =>
                  simp [replayFirstRun, wrapFsFrom, fsSingleImpl,
                    OracleSpec.loggingOracle, QueryImpl.withLogging_apply,
                    fsPointTrace, flattenFsLog]
              | inr point' =>
                  simp [replayFirstRun, wrapFsFrom, fsSingleImpl,
                    OracleSpec.loggingOracle, QueryImpl.withLogging_apply,
                    fsPointTrace, flattenFsLog]
                  have hrec := ih value (initial ++ [point]) (expected ++ [point']) out rest
                  constructor
                  · intro hw
                    have hr := hrec.mp (by
                      simpa [replayFirstRun, wrapFsFrom, List.append_assoc] using hw)
                    have hparts := List.append_inj' hr.2 (by simp)
                    have hip : initial = expected := hparts.1
                    have hpoint : point = point' := by simpa using hparts.2
                    exact ⟨⟨hr.1, hpoint⟩, hip⟩
                  · rintro ⟨⟨hs, hpoint⟩, hip⟩
                    subst expected
                    subst point'
                    simpa [replayFirstRun, wrapFsFrom, List.append_assoc] using
                      hrec.mpr ⟨hs, rfl⟩

/-- Support-level occurrence bijection for the non-caching U5d(4) wrapper:
the wrapped run has exactly the erased outer log and exactly the structured
points from the source log, in order. -/
theorem wrapFs_support_iff {Point α : Type}
    (oa : OracleComp (unifSpec + (Point →ₒ F)) α)
    (out : α) (sourceLog : QueryLog (unifSpec + (Point →ₒ F))) :
    ({ out := out, trace := fsPointTrace sourceLog }, flattenFsLog sourceLog) ∈
        support (replayFirstRun (wrapFs oa)) ↔
      (out, sourceLog) ∈ support (replayFirstRun oa) := by
  simpa [wrapFs] using wrapFsFrom_support_iff oa [] [] out sourceLog

/-- The round-`level` point determined by a wrapped FS output, when the level
is within the proof transcript (DESIGN §U5d(4); `fs.stage-labels`). -/
def wrappedRoundPoint {μ : Nat}
    (level : Nat)
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (GT := GT)
        (RandomizerPayload := RandomizerPayload) (X0Payload := X0Payload)
        (BridgePayload := BridgePayload) (KzgPayload := KzgPayload))
      (FsResult μ F G1 G2 GT)) :
    Option (FsPoint (F := F) (G1 := G1) (GT := GT)
      (RandomizerPayload := RandomizerPayload) (X0Payload := X0Payload)
      (BridgePayload := BridgePayload) (KzgPayload := KzgPayload)) := by
  if hlevel : level < μ then
    let i : Fin μ := ⟨level, hlevel⟩
    exact some (.round level (run.out.transcript.roundPrev i) (run.out.proof.rounds i))
  else
    exact none

/-- First occurrence of the run's round point in the structured side trace,
bounded for U5c's `Fin (qb + 1)` selector (DESIGN §U5d(4)). -/
def roundSlot [DecidableEq F] [DecidableEq G1] [DecidableEq GT]
    [DecidableEq RandomizerPayload] [DecidableEq X0Payload]
    [DecidableEq BridgePayload] [DecidableEq KzgPayload]
    {μ : Nat} (qb level : Nat)
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (GT := GT)
        (RandomizerPayload := RandomizerPayload) (X0Payload := X0Payload)
        (BridgePayload := BridgePayload) (KzgPayload := KzgPayload))
      (FsResult μ F G1 G2 GT)) : Option (Fin (qb + 1)) := by
  match wrappedRoundPoint level run with
  | none => exact none
  | some point =>
      if hmem : point ∈ run.trace then
        let idx := run.trace.findIdx (· == point)
        if hidx : idx < qb + 1 then exact some ⟨idx, hidx⟩ else exact none
      else
        exact none

/-- Explicit U5a-accounted bad event: the requested round is absent/out of
bounds, or its first trace occurrence exceeds the fork budget. -/
def RoundPointUnqueried [DecidableEq F] [DecidableEq G1] [DecidableEq GT]
    [DecidableEq RandomizerPayload] [DecidableEq X0Payload]
    [DecidableEq BridgePayload] [DecidableEq KzgPayload]
    {μ : Nat} (qb level : Nat)
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (GT := GT)
        (RandomizerPayload := RandomizerPayload) (X0Payload := X0Payload)
        (BridgePayload := BridgePayload) (KzgPayload := KzgPayload))
      (FsResult μ F G1 G2 GT)) : Prop :=
  match wrappedRoundPoint level run with
  | none => True
  | some point => point ∉ run.trace ∨ qb + 1 ≤ run.trace.findIdx (· == point)

/-- Every round selector either returns its bounded first occurrence or lies
in the explicit `RoundPointUnqueried` event. -/
theorem roundSlot_some_or_unqueried
    [DecidableEq F] [DecidableEq G1] [DecidableEq GT]
    [DecidableEq RandomizerPayload] [DecidableEq X0Payload]
    [DecidableEq BridgePayload] [DecidableEq KzgPayload]
    {μ : Nat} (qb level : Nat)
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (GT := GT)
        (RandomizerPayload := RandomizerPayload) (X0Payload := X0Payload)
        (BridgePayload := BridgePayload) (KzgPayload := KzgPayload))
      (FsResult μ F G1 G2 GT)) :
    (∃ s, roundSlot qb level run = some s) ∨
      RoundPointUnqueried qb level run := by
  unfold roundSlot RoundPointUnqueried
  split
  · exact Or.inr trivial
  · rename_i point hpoint
    split
    · rename_i hmem
      dsimp only
      split
      · rename_i hidx
        exact Or.inl ⟨_, rfl⟩
      · rename_i hidx
        exact Or.inr (Or.inr (Nat.le_of_not_gt hidx))
    · rename_i hmem
      exact Or.inr (Or.inl hmem)

/-- A source support point and its wrapped image carry the U5d(3) accepted
leaf postcondition used by the round selector and tree assembly. -/
theorem wrapped_source_leaf_data
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload) (Proof μ F G1 G2 GT))
    {out : FsResult μ F G1 G2 GT}
    {sourceLog : QueryLog (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload)}
    (h : (out, sourceLog) ∈ support (replayFirstRun (FsGame stmt adv))) :
    (({ out := out, trace := fsPointTrace sourceLog }, flattenFsLog sourceLog) ∈
        support (replayFirstRun (wrapFs (FsGame stmt adv)))) ∧
      accepted_run_leaf_data stmt out sourceLog := by
  exact ⟨(wrapFs_support_iff (FsGame stmt adv) out sourceLog).2 h,
    accepted_supports_leaf_data stmt adv h⟩

/-- Accepting source runs therefore have a bounded round selector unless they
fall in the explicit unqueried/out-of-budget event; its probability is U5a. -/
theorem accepted_roundSlot_some_or_unqueried
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq GT]
    [DecidableEq RandomizerPayload] [DecidableEq X0Payload]
    [DecidableEq BridgePayload] [DecidableEq KzgPayload]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload) (Proof μ F G1 G2 GT))
    (qb level : Nat)
    {out : FsResult μ F G1 G2 GT}
    {sourceLog : QueryLog (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload)}
    (h : (out, sourceLog) ∈ support (replayFirstRun (FsGame stmt adv)))
    (haccept : out.accept = true) :
    let run : WrappedFsRun
        (FsPoint (F := F) (G1 := G1) (GT := GT)
          (RandomizerPayload := RandomizerPayload) (X0Payload := X0Payload)
          (BridgePayload := BridgePayload) (KzgPayload := KzgPayload))
        (FsResult μ F G1 G2 GT) :=
      { out := out, trace := fsPointTrace sourceLog }
    (∃ s, roundSlot qb level run = some s) ∨
      RoundPointUnqueried qb level run := by
  intro run
  have _hleaf := (wrapped_source_leaf_data stmt adv h).2 haccept
  exact roundSlot_some_or_unqueried qb level run

/-- One sound U5d(4) node: four distinct nonzero oracle answers become the
inverse challenges consumed by `AcceptTree.node` (`tipp-mipp.gipa`). -/
theorem acceptTree_node_of_answers
    {K1 K2 Msg1 Msg2 M IPv : Type}
    [Field F]
    [AddCommGroup K1] [Module F K1] [AddCommGroup K2] [Module F K2]
    [AddCommGroup Msg1] [Module F Msg1] [AddCommGroup Msg2] [Module F Msg2]
    [AddCommGroup M] [Module F M] [AddCommGroup IPv] [Module F IPv]
    (cmA : K1 →ₗ[F] Msg1 →ₗ[F] M) (cmB : K2 →ₗ[F] Msg2 →ₗ[F] M)
    (cmT : IPv →ₗ[F] M) (ip : Msg1 →ₗ[F] Msg2 →ₗ[F] IPv)
    {μ : Nat} {ckA : Fin (2 ^ (μ + 1)) → K1}
    {ckB : Fin (2 ^ (μ + 1)) → K2} {ComA ComB ComT : M}
    (LA RA LB RB LT RT : M) (answer : Fin 4 → F)
    (hinjective : Function.Injective answer)
    (hnonzero : ∀ k, answer k ≠ 0)
    (child : ∀ k, AcceptTree cmA cmB cmT ip μ
      (foldPow (K1 := K1) μ (answer k) ckA)
      (foldPow (K1 := K2) μ (answer k)⁻¹ ckB)
      (foldCom (answer k)⁻¹ LA ComA RA)
      (foldCom (answer k)⁻¹ LB ComB RB)
      (foldCom (answer k)⁻¹ LT ComT RT)) :
    AcceptTree cmA cmB cmT ip (μ + 1) ckA ckB ComA ComB ComT := by
  let c : Fin 4 → F := fun k => (answer k)⁻¹
  have hcinjective : Function.Injective c := by
    intro a b hab
    apply hinjective
    have := congrArg Inv.inv hab
    simpa [c] using this
  have hcnonzero : ∀ k, c k ≠ 0 := by
    intro k
    simpa [c] using hnonzero k
  refine .node LA RA LB RB LT RT c hcinjective hcnonzero ?_
  intro k
  simpa [c] using child k

/-- The three lane equalities supplied by `leaf_accept_to_base` from U5d(3)
leaf data. With lane-native folds (DESIGN §U5d(4) lane-nativity) these are
the FULL lane values — the tagged `AcceptTree.base` equalities follow by
the lane-pure embeddings. -/
def LeafBaseComponents
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload) (proof : Proof μ F G1 G2 GT)
    (transcript : FsTranscript μ F) : Prop :=
  let folded := terminalFold stmt.ComA stmt.ComB proof transcript.roundAnswer
  let xV := transcript.roundAnswer
  let xW := fun i => gipaChallenge (transcript.roundAnswer i)
  let rShift := transcript.randomizer⁻¹
  (folded.comA =
      u4ALaneAtom stmt.e
        ((foldKey xV (fun i => (stmt.srsV i, stmt.srsV i))) 0)
        (proof.aFinal, proof.cFinal)) ∧
  (folded.comB =
      u4BLaneAtom stmt.e
        ((foldKey xW
          (fun i => (rShift ^ (i : Nat) • stmt.srsW i, (1 : F)))) 0)
        (proof.bFinal, terminalR transcript.randomizer transcript.roundAnswer)) ∧
  (folded.comT =
      u4TLanePairing stmt.e (proof.aFinal, proof.cFinal)
        (proof.bFinal, terminalR transcript.randomizer transcript.roundAnswer))

/-- U5d(4) leaf assembly up to the full-tag purity boundary. -/
theorem leafData_to_base_components
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload) (proof : Proof μ F G1 G2 GT)
    (transcript : FsTranscript μ F)
    (hbindV : KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
    (hbindW : KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
    (hleaf : LeafData stmt proof transcript) :
    LeafBaseComponents stmt proof transcript := by
  dsimp [LeafData] at hleaf
  dsimp [LeafBaseComponents]
  obtain ⟨h1, h2, h3, h4, h5, h6, hkzgV, hkzgW⟩ := hleaf
  have hbase := leaf_accept_to_base stmt.e stmt.srsV stmt.srsW stmt.acceptV
    stmt.acceptW transcript.roundAnswer
    (fun i => gipaChallenge (transcript.roundAnswer i))
    transcript.randomizer⁻¹ proof.vFinal proof.vOpening proof.wFinal proof.wOpening
    proof.aFinal proof.cFinal proof.bFinal
    (terminalR transcript.randomizer transcript.roundAnswer)
    (terminalFold stmt.ComA stmt.ComB proof transcript.roundAnswer).comA.1
    (terminalFold stmt.ComA stmt.ComB proof transcript.roundAnswer).comB.1
    (terminalFold stmt.ComA stmt.ComB proof transcript.roundAnswer).comT.1
    (terminalFold stmt.ComA stmt.ComB proof transcript.roundAnswer).comA.2
    (terminalFold stmt.ComA stmt.ComB proof transcript.roundAnswer).comT.2
    h1 h2 h3 h4 h5 hbindV hbindW hkzgV hkzgW
  obtain ⟨hA1, hA2⟩ := Prod.ext_iff.mp hbase.1
  obtain ⟨hB1, hB2⟩ := Prod.ext_iff.mp hbase.2.1
  obtain ⟨hT1, hT2⟩ := Prod.ext_iff.mp hbase.2.2
  exact ⟨Prod.ext hA1 hA2, Prod.ext hB1 (h6.trans hB2), Prod.ext hT1 hT2⟩

/-- Acceptance and the two explicit U5a exclusions required on every wrapped
run used by U5d(4) (`fs.stage-labels`, `tipp-mipp.gipa`). -/
def WrappedRunGood
    [Zero F] [DecidableEq F] [DecidableEq G1] [DecidableEq GT]
    [DecidableEq RandomizerPayload] [DecidableEq X0Payload]
    [DecidableEq BridgePayload] [DecidableEq KzgPayload]
    {μ : Nat} (qb : Nat)
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (GT := GT)
        (RandomizerPayload := RandomizerPayload) (X0Payload := X0Payload)
        (BridgePayload := BridgePayload) (KzgPayload := KzgPayload))
      (FsResult μ F G1 G2 GT)) : Prop :=
  run.out.accept = true ∧
    ¬ZeroChallenge run.out ∧
    ∀ level, level < μ → ¬RoundPointUnqueried qb level run

/-- Assemble the wrapped U5c replay tree into the product-lane `AcceptTree`
consumed by `u4_capstone` (DESIGN §U5d(4); `tipp-mipp.gipa`,
`fs.stage-labels`).

The proof is stalled at the full tagged-leaf equality recorded in
`REPORT-CODEX.md`: `LeafData` proves only the lane projections exposed by
`leaf_accept_to_base`, while `AcceptTree.base` requires all tagged components. -/
theorem tree_to_acceptTree
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq GT]
    [DecidableEq RandomizerPayload] [DecidableEq X0Payload]
    [DecidableEq BridgePayload] [DecidableEq KzgPayload]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload) (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (hbindV : KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
    (hbindW : KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
    {tree : RunTree (FsWrappedSpec F)
      (WrappedFsRun
        (FsPoint (F := F) (G1 := G1) (GT := GT)
          (RandomizerPayload := RandomizerPayload) (X0Payload := X0Payload)
          (BridgePayload := BridgePayload) (KzgPayload := KzgPayload))
        (FsResult μ F G1 G2 GT)) μ}
    (hconsistent : TreeConsistent (wrapFs (FsGame stmt adv)) qb (Sum.inr ())
      (fun level run => roundSlot (qb (Sum.inr ())) level run) 0 none tree)
    (hgood : tree.All (fun run => WrappedRunGood (qb (Sum.inr ())) run.1)) :
    let r := tree.root.1.out.transcript.randomizer
    AcceptTree (u4ACommitAtom stmt.e) (u4BCommitAtom stmt.e) u4TCommitMap
      (u4TLanePairing stmt.e) μ
      (fun i => (stmt.srsV i, stmt.srsV i))
      (fun i => ((r ^ (i : Nat))⁻¹ • stmt.srsW i, (1 : F)))
      (u4AEmbedding stmt.ComA) (u4BEmbedding stmt.ComB)
      (u4TCommitMap (tree.root.1.out.proof.ipAb, tree.root.1.out.proof.aggC)) := by
  sorry

/-- Support-level U5d endpoint: successful wrapped `forkTree` construction,
together with accepting good leaves, yields the exact `AcceptTree` statement
consumed by `u4_capstone`. Probability accounting is deferred to U5e. -/
theorem fsFork_success_acceptTree
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq GT]
    [DecidableEq RandomizerPayload] [DecidableEq X0Payload]
    [DecidableEq BridgePayload] [DecidableEq KzgPayload]
    [IsUniformSpec (FsWrappedSpec F)]
    [∀ j, SampleableType ((FsWrappedSpec F).Range j)]
    [unifSpec ⊂ₒ FsWrappedSpec F]
    {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT RandomizerPayload X0Payload BridgePayload
      KzgPayload)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 GT RandomizerPayload
      X0Payload BridgePayload KzgPayload) (Proof μ F G1 G2 GT))
    (qb : (FsWrappedSpec F).Domain → Nat)
    (hbindV : KzgStructuredKeyBinding stmt.srsV stmt.acceptV)
    (hbindW : KzgStructuredKeyBinding stmt.srsW stmt.acceptW)
    {tree : RunTree (FsWrappedSpec F)
      (WrappedFsRun
        (FsPoint (F := F) (G1 := G1) (GT := GT)
          (RandomizerPayload := RandomizerPayload) (X0Payload := X0Payload)
          (BridgePayload := BridgePayload) (KzgPayload := KzgPayload))
        (FsResult μ F G1 G2 GT)) μ}
    (hsuccess : some tree ∈ support (forkTree μ (wrapFs (FsGame stmt adv)) qb
      (Sum.inr ()) (fun level run => roundSlot (qb (Sum.inr ())) level run)))
    (hgood : tree.All (fun run => WrappedRunGood (qb (Sum.inr ())) run.1)) :
    let r := tree.root.1.out.transcript.randomizer
    AcceptTree (u4ACommitAtom stmt.e) (u4BCommitAtom stmt.e) u4TCommitMap
      (u4TLanePairing stmt.e) μ
      (fun i => (stmt.srsV i, stmt.srsV i))
      (fun i => ((r ^ (i : Nat))⁻¹ • stmt.srsW i, (1 : F)))
      (u4AEmbedding stmt.ComA) (u4BEmbedding stmt.ComB)
      (u4TCommitMap (tree.root.1.out.proof.ipAb, tree.root.1.out.proof.aggC)) := by
  apply tree_to_acceptTree stmt adv qb hbindV hbindW
    (forkTree_support_props μ (wrapFs (FsGame stmt adv)) qb (Sum.inr ())
      (fun level run => roundSlot (qb (Sum.inr ())) level run) hsuccess)
    hgood

end

end Ipp

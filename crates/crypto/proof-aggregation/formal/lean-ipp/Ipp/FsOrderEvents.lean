/-
Exact accepted-event reductions for dependency and round-slot order failures.
-/
import Ipp.FsOrderSupport

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp

noncomputable section

variable {F G1 G2 GT : Type}
  [Fintype F] [Field F]
  [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
  [AddCommGroup GT] [Module F GT]
  [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
  [IsUniformSpec (unifSpec + (FsPoint (F := F) (G1 := G1)
    (G2 := G2) (GT := GT) →ₒ F))]

/-- The concrete entries of an accepted dependency edge satisfy the generic
candidate extractor. -/
theorem acceptedChain_candidate_of_entries {μ k : Nat}
    (stmt : FsStatement μ F G1 G2 GT) (out : FsResult μ F G1 G2 GT)
    (hchain : TranscriptChaining out.transcript.x0 out.transcript.roundPrev
      out.transcript.roundAnswer)
    (hk : k + 1 < μ + 2) {child : FsPoint (F := F) (G1 := G1)
      (G2 := G2) (GT := GT)} {answer : F}
    (hchild : acceptedChainPoint? stmt out (k + 1) = some child)
    (hanswer : acceptedChainAnswer? out k = some answer) :
    orderCandidate child = some answer := by
  cases k with
  | zero =>
      simp only [acceptedChainPoint?, Option.some.injEq] at hchild
      simp only [acceptedChainAnswer?, Option.some.injEq] at hanswer
      subst child
      subst answer
      rfl
  | succ k =>
      cases k with
      | zero =>
          have hμ : 0 < μ := by omega
          rw [acceptedChainPoint?, dif_pos hμ] at hchild
          simp only [Option.some.injEq] at hchild
          simp only [acceptedChainAnswer?, Option.some.injEq] at hanswer
          subst child
          subst answer
          simpa [orderCandidate] using congrArg some (hchain.zero hμ)
      | succ k =>
          have hk' : k + 1 < μ := by omega
          have hk0 : k < μ := by omega
          rw [acceptedChainPoint?, dif_pos hk'] at hchild
          rw [acceptedChainAnswer?, dif_pos hk0] at hanswer
          simp only [Option.some.injEq] at hchild hanswer
          subst child
          subst answer
          simpa [orderCandidate] using congrArg some (hchain.succ k hk')

/-- The accepted chain position is the `tracePos` of its concrete point. -/
theorem acceptedChain_tracePos {μ k : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    {out : FsResult μ F G1 G2 GT}
    {sourceLog : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT)}
    (hsupport : (out, sourceLog) ∈ support
      (replayFirstRun (fsRandomFunction (FsGame stmt adv))))
    (haccept : out.accept = true) (hk : k < μ + 2) :
    ∃ point answer,
      acceptedChainPoint? stmt out k = some point ∧
      acceptedChainAnswer? out k = some answer ∧
      tracePos point
        ({ out := out, trace := fsPointTrace sourceLog } :
          WrappedFsRun (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
            (FsResult μ F G1 G2 GT)) =
        some (acceptedChainPos stmt out sourceLog k) ∧
      (fsPointTrace sourceLog)[acceptedChainPos stmt out sourceLog k]? = some point ∧
      (structuredAnswers sourceLog)[acceptedChainPos stmt out sourceLog k]? =
        some answer ∧
      acceptedChainPos stmt out sourceLog k < (fsPointTrace sourceLog).length := by
  obtain ⟨point, answer, hpoint, hanswer, hgetPoint, hgetAnswer, hlen⟩ :=
    acceptedChain_entry stmt adv hsupport haccept k hk
  have hmem : point ∈ fsPointTrace sourceLog := by
    exact List.mem_of_getElem? hgetPoint
  refine ⟨point, answer, hpoint, hanswer, ?_, hgetPoint, hgetAnswer, hlen⟩
  unfold tracePos
  rw [if_pos hmem]
  unfold acceptedChainPos
  rw [hpoint]

/-- Any non-increasing accepted dependency edge yields one in-budget instance
of the generic candidate-pair event. -/
theorem accepted_adjacent_candidate_witness {μ n k : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    {out : FsResult μ F G1 G2 GT}
    {sourceLog : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT)}
    (hsupport : (out, sourceLog) ∈ support
      (replayFirstRun (fsRandomFunction (FsGame stmt adv))))
    (haccept : out.accept = true)
    (hbound : IsTotalQueryBound (FsGame stmt adv) n)
    (hchain : TranscriptChaining out.transcript.x0 out.transcript.roundPrev
      out.transcript.roundAnswer)
    (hk : k + 1 < μ + 2)
    (hnoninc : acceptedChainPos stmt out sourceLog (k + 1) ≤
      acceptedChainPos stmt out sourceLog k) :
    ∃ i, i < n ∧ ∃ j, j < n ∧ i ≤ j ∧ ∃ point answer,
      (fsPointTrace sourceLog)[i]? = some point ∧
      orderCandidate point = some answer ∧
      (structuredAnswers sourceLog)[j]? = some answer := by
  obtain ⟨child, childAnswer, hchild, _hchildAnswer, _hchildPos,
    hchildGet, _hchildValue, hchildLen⟩ :=
    acceptedChain_tracePos stmt adv hsupport haccept hk
  have hk0 : k < μ + 2 := by omega
  obtain ⟨parent, answer, _hparent, hanswer, _hparentPos,
    _hparentGet, hparentValue, hparentLen⟩ :=
    acceptedChain_tracePos stmt adv hsupport haccept hk0
  have hcandidate : orderCandidate child = some answer :=
    acceptedChain_candidate_of_entries stmt out hchain hk hchild hanswer
  have hlog : sourceLog.length ≤ n :=
    log_length_le_of_mem_support_run_simulateQ
      (fsRandomFunction_isTotalQueryBound (FsGame stmt adv) hbound) hsupport
  have hchildBound : acceptedChainPos stmt out sourceLog (k + 1) < n :=
    Nat.lt_of_lt_of_le hchildLen (Nat.le_trans (fsPointTrace_length_le sourceLog) hlog)
  have hparentBound : acceptedChainPos stmt out sourceLog k < n :=
    Nat.lt_of_lt_of_le hparentLen (Nat.le_trans (fsPointTrace_length_le sourceLog) hlog)
  exact ⟨acceptedChainPos stmt out sourceLog (k + 1), hchildBound,
    acceptedChainPos stmt out sourceLog k, hparentBound, hnoninc,
    child, answer, hchildGet, hcandidate, hparentValue⟩

/-- An accepted dependency-order failure contains an in-budget inverted
dependency edge. -/
theorem accepted_badDependency_candidate_witness {μ : Nat}
    (qb : Nat) (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (hbound : IsTotalQueryBound (FsGame stmt adv) (qb + 1))
    {out : FsResult μ F G1 G2 GT}
    {sourceLog : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT)}
    (hsupport : (out, sourceLog) ∈ support
      (replayFirstRun (fsRandomFunction (FsGame stmt adv))))
    (haccept : out.accept = true)
    (hbad : ¬ DependencyOrdered qb stmt
      ({ out := out, trace := fsPointTrace sourceLog } :
        WrappedFsRun (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
          (FsResult μ F G1 G2 GT))) :
    ∃ i, i < qb + 1 ∧ ∃ j, j < qb + 1 ∧ i ≤ j ∧ ∃ point answer,
      (fsPointTrace sourceLog)[i]? = some point ∧
      orderCandidate point = some answer ∧
      (structuredAnswers sourceLog)[j]? = some answer := by
  let run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT) :=
    { out := out, trace := fsPointTrace sourceLog }
  have hwrapped := (wrapped_source_leaf_data stmt adv hsupport).1
  have hchain := wrapped_supports_transcript_chaining stmt adv hwrapped haccept
  simp only [DependencyOrdered, not_forall, _root_.not_imp] at hbad
  obtain ⟨level, slot, hslot, hdep⟩ := hbad
  have hlevel : level < μ := by
    by_contra hn
    have : roundSlot qb level run = none := by
      simp [roundSlot, wrappedRoundPoint, hn, run]
    rw [this] at hslot
    simp at hslot
  have hslotPos := roundSlot_tracePos run hlevel hslot
  obtain ⟨roundPoint, _roundAnswer, hroundPoint, _hroundAnswer,
    hroundPos, _hroundGet, _hroundValue, _hroundLen⟩ :=
    acceptedChain_tracePos stmt adv hsupport haccept (k := level + 2) (by omega)
  have hroundPointEq : roundPoint = .round
      (out.transcript.roundPrev ⟨level, hlevel⟩)
      (out.proof.rounds ⟨level, hlevel⟩)
      (out.transcript.roundNonce ⟨level, hlevel⟩) := by
    simpa [acceptedChainPoint?, hlevel] using hroundPoint.symm
  subst roundPoint
  have hend : acceptedChainPos stmt out sourceLog (level + 2) = (slot : Nat) :=
    Option.some.inj (hroundPos.symm.trans hslotPos)
  obtain ⟨rPoint, _rAnswer, hrPoint, _hrAnswer, hrPos,
    _hrGet, _hrValue, _hrLen⟩ :=
    acceptedChain_tracePos stmt adv hsupport haccept (k := 0) (by omega)
  have hrPointEq : rPoint = wrappedRandomizerPoint stmt run := by
    simpa [acceptedChainPoint?, wrappedRandomizerPoint, run] using hrPoint.symm
  subst rPoint
  obtain ⟨xPoint, _xAnswer, hxPoint, _hxAnswer, hxPos,
    _hxGet, _hxValue, _hxLen⟩ :=
    acceptedChain_tracePos stmt adv hsupport haccept (k := 1) (by omega)
  have hxPointEq : xPoint = wrappedX0Point stmt run := by
    simpa [acceptedChainPoint?, wrappedX0Point, run] using hxPoint.symm
  subst xPoint
  have hlate : (slot : Nat) ≤ acceptedChainPos stmt out sourceLog 0 ∨
      (slot : Nat) ≤ acceptedChainPos stmt out sourceLog 1 := by
    by_contra h
    push Not at h
    exact hdep ⟨⟨acceptedChainPos stmt out sourceLog 0, hrPos, h.1⟩,
      ⟨acceptedChainPos stmt out sourceLog 1, hxPos, h.2⟩⟩
  let p := acceptedChainPos stmt out sourceLog
  rcases hlate with hrLate | hxLate
  · obtain ⟨k, _hk0, hkEnd, hnoninc⟩ :=
      exists_adjacent_nonincreasing p (a := 0) (b := level + 2) (by omega) (by
        simpa [p, hend] using hrLate)
    exact accepted_adjacent_candidate_witness stmt adv hsupport haccept hbound hchain
      (k := k) (by omega) (by simpa [p] using hnoninc)
  · obtain ⟨k, _hk1, hkEnd, hnoninc⟩ :=
      exists_adjacent_nonincreasing p (a := 1) (b := level + 2) (by omega) (by
        simpa [p, hend] using hxLate)
    exact accepted_adjacent_candidate_witness stmt adv hsupport haccept hbound hchain
      (k := k) (by omega) (by simpa [p] using hnoninc)

/-- Exact accepted dependency-order event, bounded by all adaptive candidate
pairs among the whole-game structured misses. -/
theorem dependency_order_candidate_bound {μ : Nat}
    (qb : Nat) (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (hbound : IsTotalQueryBound (FsGame stmt adv) (qb + 1)) :
    Pr[fun z => z.1.accept = true ∧
        ¬ DependencyOrdered qb stmt
          ({ out := z.1, trace := fsPointTrace z.2 } :
            WrappedFsRun (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
              (FsResult μ F G1 G2 GT)) |
      replayFirstRun (fsRandomFunction (FsGame stmt adv))] ≤
      ((((qb + 1) ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) := by
  apply le_trans (probEvent_mono (q := fun z =>
      ∃ i, i < qb + 1 ∧ ∃ j, j < qb + 1 ∧ i ≤ j ∧ ∃ point answer,
        (fsPointTrace z.2)[i]? = some point ∧
        orderCandidate point = some answer ∧
        (structuredAnswers z.2)[j]? = some answer) (by
          intro z hz hbad
          exact accepted_badDependency_candidate_witness qb stmt adv hbound hz
            hbad.1 hbad.2))
  exact structured_point_candidate_before_le
    (fsRandomFunction (FsGame stmt adv)) orderCandidate (qb + 1)

/-- An accepted round-slot order failure contains an in-budget inverted
adjacent round dependency. -/
theorem accepted_badRoundOrder_candidate_witness {μ : Nat}
    (qb : Nat) (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (hbound : IsTotalQueryBound (FsGame stmt adv) (qb + 1))
    {out : FsResult μ F G1 G2 GT}
    {sourceLog : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT)}
    (hsupport : (out, sourceLog) ∈ support
      (replayFirstRun (fsRandomFunction (FsGame stmt adv))))
    (haccept : out.accept = true)
    (hbad : ¬ RoundSlotOrdered qb
      ({ out := out, trace := fsPointTrace sourceLog } :
        WrappedFsRun (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
          (FsResult μ F G1 G2 GT))) :
    ∃ i, i < qb + 1 ∧ ∃ j, j < qb + 1 ∧ i ≤ j ∧ ∃ point answer,
      (fsPointTrace sourceLog)[i]? = some point ∧
      orderCandidate point = some answer ∧
      (structuredAnswers sourceLog)[j]? = some answer := by
  let run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT) :=
    { out := out, trace := fsPointTrace sourceLog }
  have hwrapped := (wrapped_source_leaf_data stmt adv hsupport).1
  have hchain := wrapped_supports_transcript_chaining stmt adv hwrapped haccept
  simp only [RoundSlotOrdered, not_forall, _root_.not_imp] at hbad
  obtain ⟨earlier, later, helt, hlater, s, t, hs, ht, hnot⟩ := hbad
  have hearlier : earlier < μ := Nat.lt_trans helt hlater
  have hsTrace := roundSlot_tracePos run hearlier hs
  have htTrace := roundSlot_tracePos run hlater ht
  obtain ⟨earlierPoint, _earlierAnswer, hEarlierPoint, _hEarlierAnswer,
    hEarlierPos, _hEarlierGet, _hEarlierValue, _hEarlierLen⟩ :=
    acceptedChain_tracePos stmt adv hsupport haccept (k := earlier + 2) (by omega)
  have hEarlierPointEq : earlierPoint = .round
      (out.transcript.roundPrev ⟨earlier, hearlier⟩)
      (out.proof.rounds ⟨earlier, hearlier⟩)
      (out.transcript.roundNonce ⟨earlier, hearlier⟩) := by
    simpa [acceptedChainPoint?, hearlier] using hEarlierPoint.symm
  subst earlierPoint
  have hsPos : acceptedChainPos stmt out sourceLog (earlier + 2) = (s : Nat) :=
    Option.some.inj (hEarlierPos.symm.trans hsTrace)
  obtain ⟨laterPoint, _laterAnswer, hLaterPoint, _hLaterAnswer,
    hLaterPos, _hLaterGet, _hLaterValue, _hLaterLen⟩ :=
    acceptedChain_tracePos stmt adv hsupport haccept (k := later + 2) (by omega)
  have hLaterPointEq : laterPoint = .round
      (out.transcript.roundPrev ⟨later, hlater⟩)
      (out.proof.rounds ⟨later, hlater⟩)
      (out.transcript.roundNonce ⟨later, hlater⟩) := by
    simpa [acceptedChainPoint?, hlater] using hLaterPoint.symm
  subst laterPoint
  have htPos : acceptedChainPos stmt out sourceLog (later + 2) = (t : Nat) :=
    Option.some.inj (hLaterPos.symm.trans htTrace)
  let p := acceptedChainPos stmt out sourceLog
  have hts : p (later + 2) ≤ p (earlier + 2) := by
    rw [show p (later + 2) = (t : Nat) by simpa [p] using htPos,
      show p (earlier + 2) = (s : Nat) by simpa [p] using hsPos]
    omega
  obtain ⟨k, _hkStart, hkEnd, hnoninc⟩ :=
    exists_adjacent_nonincreasing p (a := earlier + 2) (b := later + 2)
      (by omega) hts
  exact accepted_adjacent_candidate_witness stmt adv hsupport haccept hbound hchain
    (k := k) (by omega) (by simpa [p] using hnoninc)

/-- Exact accepted round-slot order event, bounded by all adaptive candidate
pairs among the whole-game structured misses. -/
theorem round_slot_order_candidate_bound {μ : Nat}
    (qb : Nat) (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    (hbound : IsTotalQueryBound (FsGame stmt adv) (qb + 1)) :
    Pr[fun z => z.1.accept = true ∧
        ¬ RoundSlotOrdered qb
          ({ out := z.1, trace := fsPointTrace z.2 } :
            WrappedFsRun (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
              (FsResult μ F G1 G2 GT)) |
      replayFirstRun (fsRandomFunction (FsGame stmt adv))] ≤
      ((((qb + 1) ^ 2 : Nat) : ℝ≥0∞) / (Fintype.card F : ℝ≥0∞)) := by
  apply le_trans (probEvent_mono (q := fun z =>
      ∃ i, i < qb + 1 ∧ ∃ j, j < qb + 1 ∧ i ≤ j ∧ ∃ point answer,
        (fsPointTrace z.2)[i]? = some point ∧
        orderCandidate point = some answer ∧
        (structuredAnswers z.2)[j]? = some answer) (by
          intro z hz hbad
          exact accepted_badRoundOrder_candidate_witness qb stmt adv hbound hz
            hbad.1 hbad.2))
  exact structured_point_candidate_before_le
    (fsRandomFunction (FsGame stmt adv)) orderCandidate (qb + 1)

end

end Ipp

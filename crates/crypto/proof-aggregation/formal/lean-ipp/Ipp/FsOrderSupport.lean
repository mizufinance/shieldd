/-
Accepted-run support facts for the protocol dependency chain.
-/
import Ipp.FsOrderBounds

open OracleSpec OracleComp Function
open scoped OracleSpec.PrimitiveQuery

namespace Ipp

noncomputable section

variable {F G1 G2 GT : Type}
  [Fintype F] [IsUniformSpec (unifSpec + (FsPoint (F := F) (G1 := G1)
    (G2 := G2) (GT := GT) →ₒ F))]
  [Field F] [AddCommGroup G1] [Module F G1] [AddCommGroup G2] [Module F G2]
  [AddCommGroup GT] [Module F GT]
  [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]

/-- A bounded first trace position reconstructs the corresponding round slot. -/
theorem roundSlot_of_tracePos {μ qb level i : Nat}
    (run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT))
    (hlevel : level < μ)
    (hpos : tracePos (.round
      (run.out.transcript.roundPrev ⟨level, hlevel⟩)
      (run.out.proof.rounds ⟨level, hlevel⟩)
      (run.out.transcript.roundNonce ⟨level, hlevel⟩)) run = some i)
    (hi : i < qb + 1) :
    roundSlot qb level run = some ⟨i, hi⟩ := by
  unfold tracePos at hpos
  split at hpos
  · rename_i hmem
    have heq : run.trace.findIdx (· == .round
        (run.out.transcript.roundPrev ⟨level, hlevel⟩)
        (run.out.proof.rounds ⟨level, hlevel⟩)
        (run.out.transcript.roundNonce ⟨level, hlevel⟩)) = i :=
      Option.some.inj hpos
    simp [roundSlot, wrappedRoundPoint, hlevel, hmem, heq, hi]
  · simp at hpos

/-- Every accepted dependency-chain node has an aligned point and answer at
its first structured-miss position. -/
theorem acceptedChain_entry {μ : Nat}
    (stmt : FsStatement μ F G1 G2 GT)
    (adv : OracleComp (unifSpec + SnarkpackFsSpec F G1 G2 GT)
      (Proof μ F G1 G2 GT))
    {out : FsResult μ F G1 G2 GT}
    {sourceLog : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT)}
    (hsupport : (out, sourceLog) ∈ support
      (replayFirstRun (fsRandomFunction (FsGame stmt adv))))
    (haccept : out.accept = true) (k : Nat) (hk : k < μ + 2) :
    let pos := acceptedChainPos stmt out sourceLog k
    ∃ point answer,
      acceptedChainPoint? stmt out k = some point ∧
      acceptedChainAnswer? out k = some answer ∧
      (fsPointTrace sourceLog)[pos]? = some point ∧
      (structuredAnswers sourceLog)[pos]? = some answer ∧
      pos < (fsPointTrace sourceLog).length := by
  let run : WrappedFsRun
      (FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT))
      (FsResult μ F G1 G2 GT) :=
    { out := out, trace := fsPointTrace sourceLog }
  have hwrapped := (wrapped_source_leaf_data stmt adv hsupport).1
  cases k with
  | zero =>
      let point : FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT) :=
        .randomizer
          { comA := stmt.ComA.1, comB := stmt.ComB, comC := stmt.ComA.2 }
          out.transcript.randomizerNonce
      have hquery : QueryAnswered sourceLog (Sum.inr point)
          out.transcript.randomizer := by
        simpa [point] using accepted_source_randomizer_query stmt adv hsupport haccept
      have hmem : point ∈ run.trace := by
        exact fsPointTrace_mem_of_queryAnswered hquery
      have hpos : tracePos point run =
          some (acceptedChainPos stmt out sourceLog 0) := by
        simp [tracePos, hmem, acceptedChainPos, acceptedChainPoint?, point, run]
      obtain ⟨hlen, hpoint⟩ := tracePos_get hpos
      have hanswer := wrappedRandomizer_answer_at_tracePos stmt adv hwrapped haccept hpos
      rw [getQueryValue?_flattenFsLog] at hanswer
      refine ⟨point, out.transcript.randomizer, rfl, rfl, ?_, hanswer, ?_⟩
      · exact List.getElem?_eq_some_iff.mpr ⟨hlen, by simpa [run] using hpoint⟩
      · simpa [run] using hlen
  | succ k =>
      cases k with
      | zero =>
          let point : FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT) :=
            .x0
              { r := out.transcript.randomizer, comA := stmt.ComA.1,
                comB := stmt.ComB, comC := stmt.ComA.2,
                ipAb := out.proof.ipAb, aggC := out.proof.aggC }
              out.transcript.x0Nonce
          have hquery : QueryAnswered sourceLog (Sum.inr point)
              out.transcript.x0 := by
            simpa [point] using accepted_source_x0_query stmt adv hsupport haccept
          have hmem : point ∈ run.trace := by
            exact fsPointTrace_mem_of_queryAnswered hquery
          have hpos : tracePos point run =
              some (acceptedChainPos stmt out sourceLog 1) := by
            simp [tracePos, hmem, acceptedChainPos, acceptedChainPoint?, point, run]
          obtain ⟨hlen, hpoint⟩ := tracePos_get hpos
          have hanswer := wrappedX0_answer_at_tracePos stmt adv hwrapped haccept hpos
          rw [getQueryValue?_flattenFsLog] at hanswer
          refine ⟨point, out.transcript.x0, rfl, rfl, ?_, hanswer, ?_⟩
          · exact List.getElem?_eq_some_iff.mpr ⟨hlen, by simpa [run] using hpoint⟩
          · simpa [run] using hlen
      | succ level =>
          have hlevel : level < μ := by omega
          let i : Fin μ := ⟨level, hlevel⟩
          let point : FsPoint (F := F) (G1 := G1) (G2 := G2) (GT := GT) :=
            .round (out.transcript.roundPrev i) (out.proof.rounds i)
              (out.transcript.roundNonce i)
          have hquery : QueryAnswered sourceLog (Sum.inr point)
              (out.transcript.roundAnswer i) := by
            have hrounds := ((wrapped_source_leaf_data stmt adv hsupport).2 haccept).1 i
            simpa [point, i] using hrounds
          have hmem : point ∈ run.trace := by
            exact fsPointTrace_mem_of_queryAnswered hquery
          have hpos : tracePos point run =
              some (acceptedChainPos stmt out sourceLog (level + 2)) := by
            simp [tracePos, hmem, acceptedChainPos, acceptedChainPoint?, point, i, run,
              hlevel]
          obtain ⟨hlen, hpoint⟩ := tracePos_get hpos
          let slot : Fin (run.trace.length + 1) :=
            ⟨acceptedChainPos stmt out sourceLog (level + 2), by omega⟩
          have hslot : roundSlot run.trace.length level run = some slot := by
            apply roundSlot_of_tracePos run hlevel hpos
          have hanswer := wrapped_roundSlot_answer_eq_transcript stmt adv i hwrapped
            haccept hslot
          rw [getQueryValue?_flattenFsLog] at hanswer
          refine ⟨point, out.transcript.roundAnswer i, ?_, ?_, ?_, ?_, ?_⟩
          · simp [acceptedChainPoint?, point, i, hlevel]
          · simp [acceptedChainAnswer?, i, hlevel]
          · exact List.getElem?_eq_some_iff.mpr ⟨hlen, by simpa [run] using hpoint⟩
          · simpa [slot, i] using hanswer
          · simpa [run] using hlen

end

end Ipp

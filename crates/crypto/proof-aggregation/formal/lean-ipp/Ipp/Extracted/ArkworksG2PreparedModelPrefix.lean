import Ipp.Extracted.ArkworksG2PreparedResult
import Mathlib.Tactic

/-! Prefix states of the fixed 63-position prepared-G2 model. -/

namespace Ipp.Extracted.ArkworksG2PreparedModelPrefix

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2PreparedResult

/-- Ate bits consumed when `remaining` countdown positions are left. -/
def processedBits (remaining : Nat) : List Bool :=
  ateLoopBits.take (63 - remaining)

/-- Pure schedule state after exactly the consumed bit prefix. -/
def preparedModelAt (q : AffineRep Fq2) (remaining : Nat) : PreparedModelState :=
  (processedBits remaining).foldl (preparedModelStep q)
    ⟨⟨q.x, q.y, 1⟩, []⟩

private theorem processedBits_step_fin :
    ∀ remaining : Fin 64, 0 < remaining.val →
      processedBits (remaining.val - 1) =
        processedBits remaining.val ++
          [ateLoopParameter.testBit (remaining.val - 1)] := by
  decide

/-- Consuming the current bit applies exactly one modeled schedule step. -/
theorem preparedModelAt_step (q : AffineRep Fq2) {remaining : Nat}
    (hpos : 0 < remaining) (hbound : remaining ≤ 63) :
    preparedModelAt q (remaining - 1) =
      preparedModelStep q (preparedModelAt q remaining)
        (ateLoopParameter.testBit (remaining - 1)) := by
  have hbits := processedBits_step_fin ⟨remaining, by omega⟩ hpos
  unfold preparedModelAt
  rw [hbits, List.foldl_append]
  rfl

@[simp] theorem preparedModelAt_initial (q : AffineRep Fq2) :
    preparedModelAt q 63 = ⟨⟨q.x, q.y, 1⟩, []⟩ := by
  rfl

@[simp] theorem preparedModelAt_final (q : AffineRep Fq2) :
    preparedModelAt q 0 = preparedModelFinite q := by
  rfl

#print axioms preparedModelAt_step
#print axioms preparedModelAt_initial
#print axioms preparedModelAt_final

end Ipp.Extracted.ArkworksG2PreparedModelPrefix

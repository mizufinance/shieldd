import ShielddGnarkFormal.Specs
import ShielddGnarkFormal.Extracted.BoolSelect
import ShielddGnarkFormal.Extracted.IsZero
import ShielddGnarkFormal.Extracted.Nullifier
import ProvenZk.Gates

namespace Shieldd
namespace GnarkFormal

namespace BoolSelect := Shieldd.GnarkFormal.Extracted.BoolSelect
namespace IsZero := Shieldd.GnarkFormal.Extracted.IsZero

theorem boolSelectExtracted_implies_select
    [Fact (Nat.Prime BoolSelect.Order)]
    {cond ifTrue ifFalse valid : BoolSelect.F}
    (h : BoolSelect.circuit cond ifTrue ifFalse valid) :
    GatesDef.select cond ifTrue ifFalse valid := by
  rcases h with ⟨_, gate, hSelect, hEq, _⟩
  dsimp [BoolSelect.Gates, GatesGnark9, GatesGnark8, GatesDef.eq] at hSelect hEq ⊢
  simpa [hEq] using hSelect

theorem boolSelectExtracted_bool_condition
    [Fact (Nat.Prime BoolSelect.Order)]
    {cond : Bool}
    {ifTrue ifFalse valid : BoolSelect.F}
    (h : BoolSelect.circuit (if cond then (1 : BoolSelect.F) else 0) ifTrue ifFalse valid) :
    valid = if cond then ifTrue else ifFalse := by
  have hSelect := boolSelectExtracted_implies_select h
  cases cond <;> simp [GatesDef.select, GatesDef.is_bool] at hSelect ⊢

theorem isZeroExtracted_implies_is_zero
    [Fact (Nat.Prime IsZero.Order)]
    {input out : IsZero.F}
    (h : IsZero.circuit input out) :
    GatesDef.is_zero input out := by
  rcases h with ⟨gate, hIsZero, hEq, _⟩
  dsimp [IsZero.Gates, GatesGnark9, GatesGnark8, GatesDef.eq] at hIsZero hEq ⊢
  simpa [hEq] using hIsZero

end GnarkFormal
end Shieldd

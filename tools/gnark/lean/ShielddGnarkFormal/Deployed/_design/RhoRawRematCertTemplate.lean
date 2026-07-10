import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.LinearCombination
set_option maxRecDepth 100000
set_option maxHeartbeats 20000000
namespace TemplateProto
abbrev Order : ℕ := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order
def dotLC (rho : Nat → F) : List (F × Nat) → F
  | [] => 0
  | (a,w) :: t => a * rho w + dotLC rho t
def Triple := List (F × Nat) × List (F × Nat) × List (F × Nat)
def rowHolds (rho : Nat → F) (t : Triple) : Prop := dotLC rho t.1 * dotLC rho t.2.1 = dotLC rho t.2.2

-- DEPLOYED slice (toy): wires 1,2,3 inputs, wire 0 = const 1.
-- row D0: (w1 + w2 + w3) * w4 = w5      (wide left factor)
def deployedData : List Triple :=
  [ ([((1:F),1),((1:F),2),((1:F),3)], [((1:F),4)], [((1:F),5)]) ]
def deployedAll (rho : Nat → F) : Prop := ∀ t ∈ deployedData, rowHolds rho t

-- REMAT: synthetic s6 := w1+w2, s7 := s6+w3 ; rewritten D0 -> s7 * w4 = w5
def rematData : List Triple :=
  [ ([((1:F),1),((1:F),2)], [((1:F),0)], [((1:F),6)])      -- s6 = w1+w2
  , ([((1:F),6),((1:F),3)], [((1:F),0)], [((1:F),7)])      -- s7 = s6+w3
  , ([((1:F),7)], [((1:F),4)], [((1:F),5)]) ]              -- s7*w4 = w5
def rematAll (rho : Nat → F) : Prop := ∀ t ∈ rematData, rowHolds rho t

-- rhoExt: extend witness with synthetic wire values (their defining LCs).
def rhoExt (rho : Nat → F) : Nat → F := fun w =>
  if w = 6 then rho 1 + rho 2
  else if w = 7 then (rho 1 + rho 2) + rho 3
  else rho w

-- CERTIFICATE: deployed ⇒ remat (under rhoExt). Each remat row by linear_combination.
theorem deployed_to_remat (rho : Nat → F) (h0 : rho 0 = 1) (hd : deployedAll rho) :
    rematAll (rhoExt rho) := by
  have hD0 : rowHolds rho deployedData[0] := hd _ (by simp [deployedData])
  simp only [rowHolds, dotLC, deployedData] at hD0
  intro t ht
  fin_cases ht <;>
    simp only [rowHolds, dotLC, rhoExt, h0, Nat.reduceEqDiff, reduceIte] <;>
    first
      | linear_combination hD0
      | ring
end TemplateProto

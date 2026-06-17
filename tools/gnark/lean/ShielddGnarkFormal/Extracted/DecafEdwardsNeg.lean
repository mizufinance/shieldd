import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace Shieldd.GnarkFormal.Extracted.DecafEdwardsNeg

def Order : ℕ := 0x12ab655e9a2ca55660b44d1e5c37b00159aa76fed00000010a11800000000001
variable [Fact (Nat.Prime Order)]
abbrev F := ZMod Order
abbrev Gates := GatesGnark9 Order



def circuit (X: F) (Y: F) (OutX: F) (OutY: F): Prop :=
    ∃gate_0, gate_0 = Gates.mul X X ∧
    ∃gate_1, gate_1 = Gates.mul Y Y ∧
    ∃gate_2, gate_2 = Gates.sub gate_1 gate_0 ∧
    ∃gate_3, gate_3 = Gates.mul (3021:F) gate_0 ∧
    ∃gate_4, gate_4 = Gates.mul gate_3 gate_1 ∧
    ∃gate_5, gate_5 = Gates.add (1:F) gate_4 ∧
    Gates.eq gate_2 gate_5 ∧
    ∃gate_7, gate_7 = Gates.neg X ∧
    Gates.eq gate_7 OutX ∧
    Gates.eq Y OutY ∧
    ∃gate_10, gate_10 = Gates.mul OutX OutX ∧
    ∃gate_11, gate_11 = Gates.mul OutY OutY ∧
    ∃gate_12, gate_12 = Gates.sub gate_11 gate_10 ∧
    ∃gate_13, gate_13 = Gates.mul (3021:F) gate_10 ∧
    ∃gate_14, gate_14 = Gates.mul gate_13 gate_11 ∧
    ∃gate_15, gate_15 = Gates.add (1:F) gate_14 ∧
    Gates.eq gate_12 gate_15 ∧
    True

end Shieldd.GnarkFormal.Extracted.DecafEdwardsNeg

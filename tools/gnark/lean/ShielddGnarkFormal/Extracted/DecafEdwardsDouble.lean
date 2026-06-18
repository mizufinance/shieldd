import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace Shieldd.GnarkFormal.Extracted.DecafEdwardsDouble

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
    ∃gate_7, gate_7 = Gates.mul X Y ∧
    ∃gate_8, gate_8 = Gates.mul X X ∧
    ∃gate_9, gate_9 = Gates.mul Y Y ∧
    ∃gate_10, gate_10 = Gates.mul (2:F) gate_7 ∧
    ∃gate_11, gate_11 = Gates.mul gate_8 (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) ∧
    ∃gate_12, gate_12 = Gates.sub gate_9 gate_11 ∧
    ∃gate_13, gate_13 = Gates.add gate_9 gate_11 ∧
    ∃gate_14, gate_14 = Gates.sub (2:F) gate_13 ∧
    ∃gate_15, Gates.div_unchecked gate_10 gate_13 gate_15 ∧
    ∃gate_16, Gates.div_unchecked gate_12 gate_14 gate_16 ∧
    Gates.eq gate_15 OutX ∧
    Gates.eq gate_16 OutY ∧
    ∃gate_19, gate_19 = Gates.mul OutX OutX ∧
    ∃gate_20, gate_20 = Gates.mul OutY OutY ∧
    ∃gate_21, gate_21 = Gates.sub gate_20 gate_19 ∧
    ∃gate_22, gate_22 = Gates.mul (3021:F) gate_19 ∧
    ∃gate_23, gate_23 = Gates.mul gate_22 gate_20 ∧
    ∃gate_24, gate_24 = Gates.add (1:F) gate_23 ∧
    Gates.eq gate_21 gate_24 ∧
    True

end Shieldd.GnarkFormal.Extracted.DecafEdwardsDouble

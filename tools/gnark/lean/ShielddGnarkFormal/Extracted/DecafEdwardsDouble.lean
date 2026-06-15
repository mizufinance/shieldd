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
    ∃gate_0, gate_0 = Gates.mul X Y ∧
    ∃gate_1, gate_1 = Gates.mul X X ∧
    ∃gate_2, gate_2 = Gates.mul Y Y ∧
    ∃gate_3, gate_3 = Gates.mul (2:F) gate_0 ∧
    ∃gate_4, gate_4 = Gates.mul gate_1 (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) ∧
    ∃gate_5, gate_5 = Gates.sub gate_2 gate_4 ∧
    ∃gate_6, gate_6 = Gates.add gate_2 gate_4 ∧
    ∃gate_7, gate_7 = Gates.sub (2:F) gate_6 ∧
    ∃gate_8, Gates.div_unchecked gate_3 gate_6 gate_8 ∧
    ∃gate_9, Gates.div_unchecked gate_5 gate_7 gate_9 ∧
    Gates.eq gate_8 OutX ∧
    Gates.eq gate_9 OutY ∧
    True

end Shieldd.GnarkFormal.Extracted.DecafEdwardsDouble

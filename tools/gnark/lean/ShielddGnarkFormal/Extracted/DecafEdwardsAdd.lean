import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd

def Order : ℕ := 0x12ab655e9a2ca55660b44d1e5c37b00159aa76fed00000010a11800000000001
variable [Fact (Nat.Prime Order)]
abbrev F := ZMod Order
abbrev Gates := GatesGnark9 Order



def circuit (LX: F) (LY: F) (RX: F) (RY: F) (OutX: F) (OutY: F): Prop :=
    ∃gate_0, gate_0 = Gates.mul LX (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) ∧
    ∃gate_1, gate_1 = Gates.sub LY gate_0 ∧
    ∃gate_2, gate_2 = Gates.add RX RY ∧
    ∃gate_3, gate_3 = Gates.mul gate_1 gate_2 ∧
    ∃gate_4, gate_4 = Gates.mul RY LX ∧
    ∃gate_5, gate_5 = Gates.mul RX LY ∧
    ∃gate_6, gate_6 = Gates.mul (3021:F) gate_4 ∧
    ∃gate_7, gate_7 = Gates.mul gate_6 gate_5 ∧
    ∃gate_8, gate_8 = Gates.add gate_4 gate_5 ∧
    ∃gate_9, gate_9 = Gates.add (1:F) gate_7 ∧
    ∃gate_10, gate_10 = Gates.mul (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) gate_4 ∧
    ∃gate_11, gate_11 = Gates.sub gate_10 gate_5 ∧
    ∃gate_12, gate_12 = Gates.add gate_11 gate_3 ∧
    ∃gate_13, gate_13 = Gates.sub (1:F) gate_7 ∧
    ∃gate_14, Gates.div_unchecked gate_8 gate_9 gate_14 ∧
    ∃gate_15, Gates.div_unchecked gate_12 gate_13 gate_15 ∧
    Gates.eq gate_14 OutX ∧
    Gates.eq gate_15 OutY ∧
    True

end Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd

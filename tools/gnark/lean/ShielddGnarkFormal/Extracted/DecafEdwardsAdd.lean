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
    ∃gate_0, gate_0 = Gates.mul LX LX ∧
    ∃gate_1, gate_1 = Gates.mul LY LY ∧
    ∃gate_2, gate_2 = Gates.sub gate_1 gate_0 ∧
    ∃gate_3, gate_3 = Gates.mul (3021:F) gate_0 ∧
    ∃gate_4, gate_4 = Gates.mul gate_3 gate_1 ∧
    ∃gate_5, gate_5 = Gates.add (1:F) gate_4 ∧
    Gates.eq gate_2 gate_5 ∧
    ∃gate_7, gate_7 = Gates.mul RX RX ∧
    ∃gate_8, gate_8 = Gates.mul RY RY ∧
    ∃gate_9, gate_9 = Gates.sub gate_8 gate_7 ∧
    ∃gate_10, gate_10 = Gates.mul (3021:F) gate_7 ∧
    ∃gate_11, gate_11 = Gates.mul gate_10 gate_8 ∧
    ∃gate_12, gate_12 = Gates.add (1:F) gate_11 ∧
    Gates.eq gate_9 gate_12 ∧
    ∃gate_14, gate_14 = Gates.mul LX (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) ∧
    ∃gate_15, gate_15 = Gates.sub LY gate_14 ∧
    ∃gate_16, gate_16 = Gates.add RX RY ∧
    ∃gate_17, gate_17 = Gates.mul gate_15 gate_16 ∧
    ∃gate_18, gate_18 = Gates.mul RY LX ∧
    ∃gate_19, gate_19 = Gates.mul RX LY ∧
    ∃gate_20, gate_20 = Gates.mul (3021:F) gate_18 ∧
    ∃gate_21, gate_21 = Gates.mul gate_20 gate_19 ∧
    ∃gate_22, gate_22 = Gates.add gate_18 gate_19 ∧
    ∃gate_23, gate_23 = Gates.add (1:F) gate_21 ∧
    ∃gate_24, gate_24 = Gates.mul (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) gate_18 ∧
    ∃gate_25, gate_25 = Gates.sub gate_24 gate_19 ∧
    ∃gate_26, gate_26 = Gates.add gate_25 gate_17 ∧
    ∃gate_27, gate_27 = Gates.sub (1:F) gate_21 ∧
    ∃gate_28, Gates.div_unchecked gate_22 gate_23 gate_28 ∧
    ∃gate_29, Gates.div_unchecked gate_26 gate_27 gate_29 ∧
    Gates.eq gate_28 OutX ∧
    Gates.eq gate_29 OutY ∧
    ∃gate_32, gate_32 = Gates.mul OutX OutX ∧
    ∃gate_33, gate_33 = Gates.mul OutY OutY ∧
    ∃gate_34, gate_34 = Gates.sub gate_33 gate_32 ∧
    ∃gate_35, gate_35 = Gates.mul (3021:F) gate_32 ∧
    ∃gate_36, gate_36 = Gates.mul gate_35 gate_33 ∧
    ∃gate_37, gate_37 = Gates.add (1:F) gate_36 ∧
    Gates.eq gate_34 gate_37 ∧
    True

end Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd

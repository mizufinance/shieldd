import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 50000000

namespace TwoGadgets

def Order : ℕ := 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001
variable [Fact (Nat.Prime Order)]
abbrev F := ZMod Order
abbrev Gates := GatesGnark9 Order
local instance (priority := 2000) : CommRing F := ZMod.commRing _
local instance (priority := 3000) : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) : Zero F := (ZMod.commRing _).toZero
local instance (priority := 3000) : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) : Neg F := (ZMod.commRing _).toNeg
local instance (priority := 3000) : Sub F := (ZMod.commRing _).toSub
local instance (priority := 3000) : MulOneClass F := (ZMod.commRing _).toMulOneClass
local instance (priority := 3000) : CommSemiring F := (ZMod.commRing _).toCommSemiring
local instance (priority := 3000) : Ring F := (ZMod.commRing _).toRing

def MyWidget_11 (Test_1: F) (Test_2: F) (k: F -> Prop): Prop :=
    ∃gate_0, gate_0 = Gates.add Test_1 Test_2 ∧
    ∃gate_1, gate_1 = Gates.mul Test_1 Test_2 ∧
    ∃gate_2, Gates.div gate_0 gate_1 gate_2 ∧
    Gates.is_bool (11:F) ∧
    k gate_2

def MySecondWidget_11 (Test_1: F) (Test_2: F) : Prop :=
    ∃gate_0, gate_0 = Gates.mul Test_1 Test_2 ∧
    MyWidget_11 Test_1 Test_2 fun gate_1 =>
    ∃_ignored_, _ignored_ = Gates.mul gate_0 gate_1 ∧
    True

def circuit (In_1: F) (In_2: F): Prop :=
    ∃gate_0, gate_0 = Gates.add In_1 In_2 ∧
    ∃gate_1, gate_1 = Gates.mul In_1 In_2 ∧
    MySecondWidget_11 gate_0 gate_1 ∧
    True

end TwoGadgets
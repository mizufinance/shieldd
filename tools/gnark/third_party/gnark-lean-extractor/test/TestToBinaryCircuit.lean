import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 50000000

namespace ToBinaryCircuit

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

def VectorGadget_3_3_3_3 (In_1: List.Vector F 3) (In_2: List.Vector F 3) (Nested: List.Vector (List.Vector F 3) 3) (k: List.Vector F 3 -> Prop): Prop :=
    ∃_ignored_, _ignored_ = Gates.mul In_1[0] In_2[0] ∧
    ∃_ignored_, _ignored_ = Gates.mul In_1[1] In_2[1] ∧
    ∃gate_2, gate_2 = Gates.mul In_1[2] In_2[2] ∧
    k vec![gate_2, gate_2, gate_2]

def circuit (In: F) (Out: F) (Double: List.Vector (List.Vector F 3) 3): Prop :=
    ∃gate_0, Gates.to_binary In 3 gate_0 ∧
    ∃gate_1, Gates.to_binary Out 3 gate_1 ∧
    ∃_ignored_, _ignored_ = Gates.add Double[2][2] Double[1][1] ∧
    ∃_ignored_, _ignored_ = Gates.add _ignored_ Double[0][0] ∧
    ∃_ignored_, _ignored_ = Gates.mul gate_0[1] gate_1[1] ∧
    VectorGadget_3_3_3_3 Double[2] Double[0] Double fun gate_4 =>
    ∃_ignored_, _ignored_ = Gates.mul gate_4[2] gate_4[1] ∧
    True

end ToBinaryCircuit
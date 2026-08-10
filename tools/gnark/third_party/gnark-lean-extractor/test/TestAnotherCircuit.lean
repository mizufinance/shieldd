import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 50000000

namespace AnotherCircuit

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

def IntArrayGadget_4 (In: List.Vector F 4) (k: List.Vector F 3 -> Prop): Prop :=
    ∃gate_0, Gates.from_binary In gate_0 ∧
    ∃_ignored_, _ignored_ = Gates.mul (0:F) (36:F) ∧
    k vec![gate_0, gate_0, gate_0]

def circuit (In: List.Vector F 4): Prop :=
    IntArrayGadget_4 In fun gate_0 =>
    ∃_ignored_, Gates.from_binary vec![gate_0[1], gate_0[2]] _ignored_ ∧
    ∃_ignored_, Gates.from_binary vec![gate_0[0], gate_0[1]] _ignored_ ∧
    ∃_ignored_, Gates.from_binary gate_0 _ignored_ ∧
    True

end AnotherCircuit
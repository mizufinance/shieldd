import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 50000000

namespace CircuitWithParameter

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

def ReturnItself_3_3 (In_1: List.Vector F 3) (Out: List.Vector F 3) (k: List.Vector F 3 -> Prop): Prop :=
    ∃gate_0, gate_0 = Gates.mul In_1[0] In_1[0] ∧
    ∃gate_1, gate_1 = Gates.mul In_1[1] In_1[1] ∧
    ∃gate_2, gate_2 = Gates.mul In_1[2] In_1[2] ∧
    k vec![gate_0, gate_1, gate_2]

def SliceGadget_3_3 (In_1: List.Vector F 3) (In_2: List.Vector F 3) (k: F -> Prop): Prop :=
    ∃_ignored_, _ignored_ = Gates.mul In_1[0] In_2[0] ∧
    ∃_ignored_, _ignored_ = Gates.mul In_1[1] In_2[1] ∧
    ∃_ignored_, _ignored_ = Gates.mul In_1[2] In_2[2] ∧
    ∃gate_3, Gates.from_binary In_1 gate_3 ∧
    k gate_3

def SliceGadget_2_2 (In_1: List.Vector F 2) (In_2: List.Vector F 2) (k: F -> Prop): Prop :=
    ∃_ignored_, _ignored_ = Gates.mul In_1[0] In_2[0] ∧
    ∃_ignored_, _ignored_ = Gates.mul In_1[1] In_2[1] ∧
    ∃gate_2, Gates.from_binary In_1 gate_2 ∧
    k gate_2

def circuit (In: F) (Path: List.Vector F 3) (Tree: List.Vector F 2): Prop :=
    ReturnItself_3_3 Path vec![(0:F), (0:F), (0:F)] fun gate_0 =>
    Gates.eq gate_0[1] gate_0[2] ∧
    ReturnItself_3_3 Path gate_0 fun gate_2 =>
    Gates.eq gate_2[1] gate_2[2] ∧
    ReturnItself_3_3 Path gate_2 fun gate_4 =>
    Gates.eq gate_4[1] gate_4[2] ∧
    ∃_ignored_, Gates.from_binary Path _ignored_ ∧
    ∃_ignored_, Gates.from_binary gate_4 _ignored_ ∧
    ∃_ignored_, Gates.from_binary vec![gate_4[1], gate_4[2], gate_4[0]] _ignored_ ∧
    ∃_ignored_, Gates.from_binary vec![gate_4[1], (0:F), gate_4[0]] _ignored_ ∧
    ∃_ignored_, Gates.from_binary vec![gate_4[1], gate_4[2]] _ignored_ ∧
    ∃_ignored_, Gates.to_binary In 254 _ignored_ ∧
    ∃gate_12, Gates.to_binary (20:F) 254 gate_12 ∧
    ∃gate_13, Gates.from_binary gate_12 gate_13 ∧
    Gates.eq (20:F) gate_13 ∧
    SliceGadget_3_3 Path Path fun _ =>
    ∃_ignored_, _ignored_ = Gates.mul Path[0] Path[0] ∧
    SliceGadget_2_2 Tree Tree fun _ =>
    Gates.eq (20:F) In ∧
    True

end CircuitWithParameter
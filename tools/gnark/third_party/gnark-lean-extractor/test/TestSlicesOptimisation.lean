import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 50000000

namespace SlicesOptimisation

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

def SlicesGadget_3_2_4_3_2 (TwoDim: List.Vector (List.Vector F 3) 2) (ThreeDim: List.Vector (List.Vector (List.Vector F 4) 3) 2) (k: List.Vector F 7 -> Prop): Prop :=
    k vec![ThreeDim[0][0][0], ThreeDim[0][0][1], ThreeDim[0][0][2], ThreeDim[0][0][3], TwoDim[0][0], TwoDim[0][1], TwoDim[0][2]]

def SlicesGadget_1_2_4_3_3 (TwoDim: List.Vector (List.Vector F 1) 2) (ThreeDim: List.Vector (List.Vector (List.Vector F 4) 3) 3) (k: List.Vector F 5 -> Prop): Prop :=
    k vec![ThreeDim[0][0][0], ThreeDim[0][0][1], ThreeDim[0][0][2], ThreeDim[0][0][3], TwoDim[0][0]]

def TwoSlices_3_2 (TwoDim: List.Vector (List.Vector F 3) 2) (k: List.Vector (List.Vector F 3) 2 -> Prop): Prop :=
    k TwoDim

def ThreeSlices_4_3_2 (ThreeDim: List.Vector (List.Vector (List.Vector F 4) 3) 2) (k: List.Vector (List.Vector (List.Vector F 4) 3) 2 -> Prop): Prop :=
    k ThreeDim

def circuit (Test: F) (Id: List.Vector F 3) (TwoDim: List.Vector (List.Vector F 3) 2) (ThreeDim: List.Vector (List.Vector (List.Vector F 4) 3) 2): Prop :=
    SlicesGadget_3_2_4_3_2 TwoDim ThreeDim fun _ =>
    SlicesGadget_3_2_4_3_2 vec![TwoDim[1], TwoDim[0]] vec![vec![ThreeDim[1][0], ThreeDim[1][1], ThreeDim[1][2]], vec![ThreeDim[0][0], ThreeDim[0][1], ThreeDim[0][2]]] fun _ =>
    SlicesGadget_1_2_4_3_3 vec![vec![TwoDim[1][1]], vec![TwoDim[1][0]]] vec![vec![ThreeDim[1][0], ThreeDim[1][1], ThreeDim[1][2]], vec![ThreeDim[0][0], ThreeDim[0][1], ThreeDim[0][2]], vec![ThreeDim[1][0], ThreeDim[1][1], ThreeDim[1][2]]] fun _ =>
    SlicesGadget_3_2_4_3_2 vec![TwoDim[1], vec![TwoDim[1][0], TwoDim[0][0], TwoDim[1][1]]] ThreeDim fun _ =>
    TwoSlices_3_2 TwoDim fun _ =>
    ThreeSlices_4_3_2 ThreeDim fun gate_5 =>
    ThreeSlices_4_3_2 gate_5 fun gate_6 =>
    ThreeSlices_4_3_2 gate_6 fun _ =>
    True

end SlicesOptimisation
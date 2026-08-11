import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 50000000

namespace DeletionMbuCircuit

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

def DeletionProof_2_2_3_2_2_3 (DeletionIndices: List.Vector F 2) (PreRoot: F) (IdComms: List.Vector F 2) (MerkleProofs: List.Vector (List.Vector F 3) 2) (k: F -> Prop): Prop :=
    k PreRoot

def circuit (InputHash: F) (DeletionIndices: List.Vector F 2) (PreRoot: F) (PostRoot: F) (IdComms: List.Vector F 2) (MerkleProofs: List.Vector (List.Vector F 3) 2): Prop :=
    DeletionProof_2_2_3_2_2_3 DeletionIndices PreRoot IdComms MerkleProofs fun gate_0 =>
    Gates.eq gate_0 PostRoot ∧
    True

end DeletionMbuCircuit
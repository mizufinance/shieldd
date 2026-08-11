import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

instance templateFactPrime : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

local instance (priority := 2000) baseCommRing : CommRing F := ZMod.commRing _
local instance (priority := 3000) baseAdd : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) baseMul : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) baseNatCast : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) baseZero : Zero F := (ZMod.commRing _).toZero
local instance (priority := 3000) baseOne : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) baseNeg : Neg F := (ZMod.commRing _).toNeg
local instance (priority := 3000) baseSub : Sub F := (ZMod.commRing _).toSub
local instance (priority := 3000) baseMulOneClass : MulOneClass F := (ZMod.commRing _).toMulOneClass
local instance (priority := 3000) baseCommSemiring : CommSemiring F := (ZMod.commRing _).toCommSemiring
local instance (priority := 3000) baseRing : Ring F := (ZMod.commRing _).toRing

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5

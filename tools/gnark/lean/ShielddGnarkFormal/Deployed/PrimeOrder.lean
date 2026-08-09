import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.Extracted.PoseidonHash1
import ShielddGnarkFormal.Extracted.PoseidonHash4
import ShielddGnarkFormal.Extracted.PoseidonHash5
import ShielddGnarkFormal.Extracted.PoseidonHash6
import ShielddGnarkFormal.Extracted.PoseidonHash7
import ShielddGnarkFormal.Extracted.Poseidon2
import ShielddGnarkFormal.Extracted.Nullifier
import ShielddGnarkFormal.Extracted.QuadPath2
import ShielddGnarkFormal.Extracted.QuadPath16
import ShielddGnarkFormal.Extracted.QuadPath24
import ShielddGnarkFormal.Extracted.DecafCompressToField
import ShielddGnarkFormal.Extracted.DecafDtk
import ShielddGnarkFormal.Extracted.DecafEncodeToCurve
import ShielddGnarkFormal.Extracted.DecafRvk
import ShielddGnarkFormal.Extracted.DecafEdwardsAdd
import ShielddGnarkFormal.Extracted.DecafEdwardsDouble
import ShielddGnarkFormal.Extracted.DecafEdwardsNeg
import ShielddGnarkFormal.Extracted.IvkModR
import ShielddGnarkFormal.Extracted.ScalarMulLE128
import ShielddGnarkFormal.Extracted.ScalarMulLE251
import ShielddGnarkFormal.Extracted.NetBalanceCommitment
import ShielddGnarkFormal.Extracted.NetBalanceCommitment2
import ShielddGnarkFormal.Extracted.CanonicalFqBits
import ShielddGnarkFormal.Extracted.Deployed.DecafAssertOnCurve4_e37c7d
import ShielddGnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e
import ShielddGnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0
import ShielddGnarkFormal.Extracted.Deployed.StatementHash470_5c3d95

namespace Shieldd.GnarkFormal.Deployed

/-! Prime-order instances for extracted gadgets over the BLS12-377 scalar field.

Every extracted `Order` below is definitionally the modulus certified by
`decaf377ScalarFieldPrime`; this registry exposes that checked fact to bridges.
-/

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash1.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash4.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash5.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash6.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash7.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Poseidon2.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Nullifier.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.QuadPath2.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.QuadPath16.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.QuadPath24.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafCompressToField.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafDtk.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafRvk.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafEdwardsDouble.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafEdwardsNeg.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.IvkModR.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.ScalarMulLE128.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.ScalarMulLE251.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.NetBalanceCommitment.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.NetBalanceCommitment2.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.CanonicalFqBits.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.DecafAssertOnCurve4_e37c7d.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode0350_28e5d0.Order) := ⟨decaf377ScalarFieldPrime⟩
instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order) := ⟨decaf377ScalarFieldPrime⟩

end Shieldd.GnarkFormal.Deployed

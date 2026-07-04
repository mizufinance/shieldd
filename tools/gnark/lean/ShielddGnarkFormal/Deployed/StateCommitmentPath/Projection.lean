import ShielddGnarkFormal.QuadPathSpec
import ShielddGnarkFormal.Deployed.PrimeOrderAssumption

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000

/-! Wire-independent projection for deployed state-commitment paths.

The deployed circuit hashes each Merkle level with its own Poseidon domain
(`TCTDomain + height`, heights 1..24; the leaf hash uses `TCTDomain` itself),
so the recovery fold threads a per-level domain function — unlike the abstract
`QuadPath24`, which reuses one domain. -/

namespace Shieldd.GnarkFormal.Deployed.StateCommitmentPath

open Shieldd.GnarkFormal.Extracted.QuadPath2 (F Order)
open Shieldd.GnarkFormal.QuadPath (recoverStep)

instance : Fact (Nat.Prime Order) := ⟨decaf377ScalarFieldPrime⟩

def tctLeafDomainLit : F :=
  (545001158149490383238005163525397553024965043366546261617421270984613353336 : F)

/-- 24-level 4-ary Merkle recovery with a per-level hash domain. Level `k`
(0-based, leaf-adjacent first) uses domain `dom k`, siblings
`(s0 k, s1 k, s2 k)` and position bits `(b0 k, b1 k)`. -/
def recover24H (H4 : F → F → F → F → F → F) (dom : Nat → F) (leaf : F)
    (s0 s1 s2 b0 b1 : Nat → F) : F :=
  let step := fun (k : Nat) (cur : F) =>
    recoverStep H4 (dom k) cur (s0 k) (s1 k) (s2 k) (b0 k) (b1 k)
  step 23 (step 22 (step 21 (step 20 (step 19 (step 18 (step 17 (step 16
    (step 15 (step 14 (step 13 (step 12 (step 11 (step 10 (step 9 (step 8
      (step 7 (step 6 (step 5 (step 4 (step 3 (step 2 (step 1 (step 0
        leaf)))))))))))))))))))))))

/-- The deployed select block computes exactly `children`: given the four
indicator rows and six correction rows (as the extracted constraints state
them), the hash of the correction sums is `recoverStep`. -/
theorem recoverStep_eq (H4 : F → F → F → F → F → F)
    (dom cur s0 s1 s2 b0 b1 i0 i1 i2 i3 t0 t1 t2 t3 t4 t5 : F)
    (hi0 : (1 - b0) * (1 - b1) = i0) (hi1 : b0 * (1 - b1) = i1)
    (hi2 : b1 * (1 - b0) = i2) (hi3 : b0 * b1 = i3)
    (h0 : i0 * (cur - s0) = t0) (h1 : i0 * (s0 - s1) = t1)
    (h2 : i1 * (cur - s1 - t1) = t2) (h3 : b1 * (s2 - s1) = t3)
    (h4 : i2 * (cur - s1 - t3) = t4) (h5 : i3 * (cur - s2) = t5) :
    H4 dom (s0 + t0) (s1 + t1 + t2) (s1 + t3 + t4) (s2 + t5)
      = recoverStep H4 dom cur s0 s1 s2 b0 b1 := by
  unfold recoverStep Shieldd.GnarkFormal.QuadPath.children
  rw [← h2, ← h4, ← h0, ← h1, ← h3, ← h5, ← hi0, ← hi1, ← hi2, ← hi3]
  ring

end Shieldd.GnarkFormal.Deployed.StateCommitmentPath

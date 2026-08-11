import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Deployed.CertifiedDecafNetBalancePoseidon_d2168a8e35fdPoseidon.FullTail

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.CertifiedDecafNetBalancePoseidon_d2168a8e35fdPoseidon

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Poseidon1Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon1Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_d2168a8e35fdPoseidonRows230.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash1.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedDecafNetBalancePoseidon_d2168a8e35fdPoseidonRows230.Order))

theorem spec38_eq_permSpec (sin0 : F) :
    (spec38 sin0)[1] = permSpec1 domainLit sin0 := by
  unfold permSpec1 domainLit
  rfl

end Shieldd.GnarkFormal.Deployed.CertifiedDecafNetBalancePoseidon_d2168a8e35fdPoseidon

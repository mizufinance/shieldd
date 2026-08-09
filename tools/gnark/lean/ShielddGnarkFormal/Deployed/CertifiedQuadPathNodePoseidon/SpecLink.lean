import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.FullTail

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Poseidon4Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon4Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash4.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.Order))

theorem spec38_eq_permSpec (sin0 : F) (sin1 : F) (sin2 : F) (sin3 : F) :
    (spec38 sin0 sin1 sin2 sin3)[1] = permSpec4 domainLit sin0 sin1 sin2 sin3 := by
  unfold permSpec4 domainLit
  rfl

end Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon

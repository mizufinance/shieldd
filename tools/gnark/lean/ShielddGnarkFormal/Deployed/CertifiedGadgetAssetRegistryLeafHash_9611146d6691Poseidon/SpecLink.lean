import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691Poseidon.FullTail

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691Poseidon

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Poseidon5Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon5Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash5.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.Order))

theorem spec38_eq_permSpec (sin0 : F) (sin1 : F) (sin2 : F) (sin3 : F) (sin4 : F) :
    (spec38 sin0 sin1 sin2 sin3 sin4)[1] = permSpec5 domainLit sin0 sin1 sin2 sin3 sin4 := by
  unfold permSpec5 domainLit
  rfl

end Shieldd.GnarkFormal.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691Poseidon

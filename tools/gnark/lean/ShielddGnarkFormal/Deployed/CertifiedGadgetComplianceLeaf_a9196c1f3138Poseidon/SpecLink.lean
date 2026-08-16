import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_a9196c1f3138Poseidon.FullTail

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_a9196c1f3138Poseidon

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Poseidon6Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon6Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_a9196c1f3138PoseidonRows430.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash6.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_a9196c1f3138PoseidonRows430.Order))

theorem spec38_eq_permSpec (sin0 : F) (sin1 : F) (sin2 : F) (sin3 : F) (sin4 : F) (sin5 : F) :
    (spec38 sin0 sin1 sin2 sin3 sin4 sin5)[1] = permSpec6 domainLit sin0 sin1 sin2 sin3 sin4 sin5 := by
  unfold permSpec6 domainLit
  rfl

end Shieldd.GnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_a9196c1f3138Poseidon

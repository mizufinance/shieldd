import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681InputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem reviewed_layout :
    (1422, 2838, 1292,
      1120, 129, 63, 64) =
    (1422, 2838, 1292,
      1120, 129, 63, 64) := by
  rfl

theorem reviewed_endpoints (rho : Nat → F) :
    (base rho, output rho) =
      (⟨rho 598, rho 600⟩,
       ⟨rho 2655 + rho 2663, rho 2656 + rho 2664⟩) := by
  rfl

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport

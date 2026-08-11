import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem reviewed_layout :
    (2968, 4384, 2838,
      2665, 129, 63, 64) =
    (2968, 4384, 2838,
      2665, 129, 63, 64) := by
  rfl

theorem reviewed_endpoints (rho : Nat → F) :
    (base rho, output rho) =
      (⟨rho 598, rho 600⟩,
       ⟨rho 4200 + rho 4208, rho 4201 + rho 4209⟩) := by
  rfl

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport

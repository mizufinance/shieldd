import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41UserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem reviewed_layout :
    (1808, 4566, 0,
      1, 251, 124, 125) =
    (1808, 4566, 0,
      1, 251, 124, 125) := by
  rfl

theorem reviewed_endpoints (rho : Nat → F) :
    (base rho, output rho) =
      (⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩,
       ⟨rho 4562 + rho 4570, rho 4563 + rho 4571⟩) := by
  rfl

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport

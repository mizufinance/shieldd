import ProvenZk.Gates


set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

/-! Auto-generated deployed-slice relation for `assert.eq` (size 1).
Flat R1CS rows of the gnark partial-evaluated gadget, constants verbatim.
Generated from the checked deployed-slice IR; do not edit by hand. -/

namespace Shieldd.GnarkFormal.Extracted.Deployed.AssertEq1_944014

def Order : ℕ := 8444461749428370424248824938781546531375899335154063827935233455917409239041
variable [Fact (Nat.Prime Order)]
abbrev F := ZMod Order

def relation (i0 i1 : F) : Prop :=
  ((1 : F)) * ((1 : F) * i1) = ((1 : F) * i0)

end Shieldd.GnarkFormal.Extracted.Deployed.AssertEq1_944014

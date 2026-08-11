import ProvenZk.Gates


set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 50000000

/-! Auto-generated deployed-slice relation for `assert.eq` (size 1).
Flat R1CS rows of the gnark partial-evaluated gadget, constants verbatim.
Generated from the checked deployed-slice IR; do not edit by hand. -/

namespace Shieldd.GnarkFormal.Extracted.Deployed.AssertEq1_745c86

def Order : ℕ := 8444461749428370424248824938781546531375899335154063827935233455917409239041
variable [Fact (Nat.Prime Order)]
abbrev F := ZMod Order

def relation (o0 : F) : Prop :=
  ((1 : F)) * ((1 : F) * o0) = ((1 : F) * o0)

end Shieldd.GnarkFormal.Extracted.Deployed.AssertEq1_745c86

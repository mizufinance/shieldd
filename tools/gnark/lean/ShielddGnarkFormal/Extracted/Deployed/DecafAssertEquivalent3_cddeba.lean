import ProvenZk.Gates


set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 50000000

/-! Auto-generated deployed-slice relation for `decaf.assert_equivalent` (size 3).
Flat R1CS rows of the gnark partial-evaluated gadget, constants verbatim.
Generated from the checked deployed-slice IR; do not edit by hand. -/

namespace Shieldd.GnarkFormal.Extracted.Deployed.DecafAssertEquivalent3_cddeba

def Order : ℕ := 8444461749428370424248824938781546531375899335154063827935233455917409239041
variable [Fact (Nat.Prime Order)]
abbrev F := ZMod Order

def relation (i0 i1 i2 i3 : F) : Prop :=
∃ v0 v1 : F,
  ((1 : F) * i2) * ((1 : F) * i1) = ((1 : F) * v0) ∧
  ((1 : F) * i0) * ((1 : F) * i3) = ((1 : F) * v1) ∧
  ((1 : F)) * ((1 : F) * v0) = ((1 : F) * v1)

end Shieldd.GnarkFormal.Extracted.Deployed.DecafAssertEquivalent3_cddeba

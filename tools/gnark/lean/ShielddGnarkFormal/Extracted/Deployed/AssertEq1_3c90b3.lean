import ProvenZk.Gates


set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 50000000

/-! Auto-generated deployed-slice relation for `assert.eq` (size 1).
Flat R1CS rows of the gnark partial-evaluated gadget, constants verbatim.
Generated from the checked deployed-slice IR; do not edit by hand. -/

namespace Shieldd.GnarkFormal.Extracted.Deployed.AssertEq1_3c90b3

def Order : ℕ := 8444461749428370424248824938781546531375899335154063827935233455917409239041
variable [Fact (Nat.Prime Order)]
abbrev F := ZMod Order

def relation (i0 i1 i2 i3 : F) : Prop :=
∃ v0 : F,
  ((1 : F)) * ((6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * i0 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * i1 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * i2 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * i3) = ((1 : F) * v0)

end Shieldd.GnarkFormal.Extracted.Deployed.AssertEq1_3c90b3

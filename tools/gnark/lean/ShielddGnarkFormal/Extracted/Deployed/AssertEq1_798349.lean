import ProvenZk.Gates


set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

/-! Auto-generated deployed-slice relation for `assert.eq` (size 1).
Flat R1CS rows of the gnark partial-evaluated gadget, constants verbatim.
Generated from the checked deployed-slice IR; do not edit by hand. -/

namespace Shieldd.GnarkFormal.Extracted.Deployed.AssertEq1_798349

def Order : ℕ := 8444461749428370424248824938781546531375899335154063827935233455917409239041
variable [Fact (Nat.Prime Order)]
abbrev F := ZMod Order

def relation (i0 i1 i2 i3 i4 : F) (o0 : F) : Prop :=
  ((1 : F)) * ((7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * i0 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * i1 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * i2 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * i3 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * i4) = ((1 : F) * o0)

end Shieldd.GnarkFormal.Extracted.Deployed.AssertEq1_798349

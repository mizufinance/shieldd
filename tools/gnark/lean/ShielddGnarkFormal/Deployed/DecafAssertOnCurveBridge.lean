import ShielddGnarkFormal.Extracted.Deployed.DecafAssertOnCurve4_e37c7d
import ShielddGnarkFormal.EdwardsBridge
import ShielddGnarkFormal.EdwardsCompleteness

/-! Deployed-slice soundness bridge for the `decaf.assert_on_curve` class.

The standalone Edwards bridges prove gadgets over *structured* extracted gate
chains; this proves the **flat, constant-folded deployed slice** (`relation`,
generated from the checked deployed-slice IR) implies the very same spec the
rest of the development consumes — `EdwardsBridge.onCurve`. The folded curve
constant in the deployed row (`3021`) is exactly `EdwardsBridge.d`. -/

namespace Shieldd.GnarkFormal.Deployed.DecafAssertOnCurve

open Shieldd.GnarkFormal.Extracted.Deployed.DecafAssertOnCurve4_e37c7d (relation)

variable [Fact (Nat.Prime Extracted.Deployed.DecafAssertOnCurve4_e37c7d.Order)]
variable [Fact (Nat.Prime Extracted.DecafEdwardsAdd.Order)]

/-- The deployed `decaf.assert_on_curve` slice pins its two inputs to the
decaf377 twisted-Edwards curve. -/
theorem circuit_sound (i0 i1 : EdwardsBridge.F) (h : relation i0 i1) :
    EdwardsBridge.onCurve ⟨i0, i1⟩ := by
  obtain ⟨v0, v1, v2, h0, h1, h2, h3⟩ := h
  have e0 : v0 = i0 * i0 := by linear_combination -h0
  have e1 : v1 = i1 * i1 := by linear_combination -h1
  subst e0 e1
  simp only [EdwardsBridge.onCurve, EdwardsBridge.d]
  linear_combination h3 - h2

end Shieldd.GnarkFormal.Deployed.DecafAssertOnCurve

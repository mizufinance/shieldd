import ShielddGnarkFormal.CanonicalFqBitsBridge
import ShielddGnarkFormal.ChoiceFreeZMod

/-!
Producing-direction helpers for the canonical-`Fq`-bits feeder: introduction
lemmas that build `chainK` one rung at a time from deployed flat rows. The
deployed slice only constrains the `pmBit n = false` rungs (`pe * bits[n]! = 0`);
the `pmBit n = true` rungs are pure accumulator threading. A run of consecutive
`false` rungs shares one prefix-equal accumulator wire because `pe * bit = 0`
forces `pe * (1 - bit) = pe`. The zero-run invariance lemma below captures that.
-/

namespace Shieldd.GnarkFormal.Extracted.CanonicalFqBits

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

variable [Fact (Nat.Prime Order)]

/-- `pmBit n = true` rung: pure accumulator threading, no slice obligation. -/
theorem chainK_intro_true (bits : List.Vector F 253) (k : List.Vector F 253 → Prop)
    (n : ℕ) (pe : F) (hb : pmBit n = true)
    (h : chainK bits k n (pe * bits[n]!)) :
    chainK bits k (n + 1) pe := by
  rw [chainK, hb, if_pos rfl]; exact h

/-- `pmBit n = false` rung: discharge the slice obligation `pe * bits[n]! = 0`
then recurse with the threaded accumulator. -/
theorem chainK_intro_false (bits : List.Vector F 253) (k : List.Vector F 253 → Prop)
    (n : ℕ) (pe : F) (hb : pmBit n = false)
    (hz : pe * bits[n]! = 0)
    (h : chainK bits k n (pe * (1 - bits[n]!))) :
    chainK bits k (n + 1) pe := by
  rw [chainK, hb, if_neg (by simp)]; exact ⟨hz, h⟩

/-- Zero-run invariance: once `pe * bit = 0`, the threaded accumulator is
unchanged (`pe * (1 - bit) = pe`). Lets a whole run of `false` rungs reuse the
single deployed prefix-flag wire as the shared `pe`. -/
theorem accum_fixed_of_annihilates (pe bit : F) (hz : pe * bit = 0) :
    pe * (1 - bit) = pe := by
  have : pe * (1 - bit) = pe - pe * bit := by ring
  rw [this, hz, sub_zero]

/-- Base rung: `chainK bits k 0 pe` is definitionally `k bits`. -/
theorem chainK_intro_zero (bits : List.Vector F 253) (k : List.Vector F 253 → Prop)
    (pe : F) (h : k bits) : chainK bits k 0 pe := h

end Shieldd.GnarkFormal.Extracted.CanonicalFqBits

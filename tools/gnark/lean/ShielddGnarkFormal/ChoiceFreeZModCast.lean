import ShielddGnarkFormal.ChoiceFreeZMod

/-! Constructive cast reduction for ring-only `ZMod` proofs. -/

namespace Shieldd.GnarkFormal.ChoiceFreeZMod

/-- Prove natural casts equal through their canonical residues, avoiding the
classical `CharP` equality route. -/
theorem natCast_eq_natCast_of_mod_eq (n a b : ℕ) (hn : n ≠ 0)
    (hmod : a % n = b % n) : (a : ZMod n) = (b : ZMod n) := by
  letI : NeZero n := ⟨hn⟩
  apply ZMod.val_injective n
  simpa only [ZMod.val_natCast] using hmod

end Shieldd.GnarkFormal.ChoiceFreeZMod

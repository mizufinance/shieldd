import ShielddGnarkFormal.IvkModRBridge

/-! # Deployed DTK `< r` / `< q-4r` constant-ladder keystone

The deployed DTK `.sr1cs` slice carries the two folded constant ladders
(`IvkReduced < r` and the `q - 4r` headroom check) as *bare* bilinear rows. Each
rung is a single constant-folded multiply: the StepZero rung pins
`pe' = pe·(1-bit)` and the StepOne rung pins the `(pe·bit, or-form)` pair. The
generated per-rung certificate packages those rows into the abstract raw-row
relation `depLtcRaw`.

The extracted DTK circuit routes the same ladders through
`Extracted.IvkModR.ltcRec` (the fuel-folded counter form already used by
`DtkBridge`'s forward decomposition). These ladders are *pure* (no curve
arithmetic, no completeness side conditions), so the deployed → extracted bridge
is a single fuel induction with no on-curve threading: each bare rung's defining
equation is exactly the `ltConstStep{Zero,One}_uncps` output. This module closes
that gap once, reusably across all three DTK instances and both bound ladders. -/

namespace Shieldd.GnarkFormal.Deployed.Dtk

open Shieldd.GnarkFormal.Extracted.IvkModR

variable [Fact (Nat.Prime Extracted.IvkModR.Order)]

/-- Deployed raw-row form of the folded constant ladder `ltcRec`. Each rung is a
bare bilinear row relation: `Zrow pe bit pe'` for the StepZero case and
`Orow pe il bit g0 g1` for the StepOne case, keyed on `cb` exactly as `ltcRec`. -/
def depLtcRaw (A : List.Vector F 253) (cb : ℕ → Bool) (k : F → Prop)
    (Zrow : F → F → F → Prop) (Orow : F → F → F → F → F → Prop) :
    ℕ → F → F → Prop
  | 0, _, il => k il
  | (m + 1), pe, il =>
      if cb m then ∃ g0 g1, Orow pe il A[m]! g0 g1 ∧ depLtcRaw A cb k Zrow Orow m g0 g1
      else ∃ pe', Zrow pe A[m]! pe' ∧ depLtcRaw A cb k Zrow Orow m pe' il

/-- **Keystone.** A deployed bare-row constant ladder (`depLtcRaw`) implies the
extracted folded ladder (`ltcRec`), given per-rung certificates that each bare
StepZero/StepOne row reproduces the canonical `ltConstStep` output. One fuel
induction; the rungs are pure so no invariant is threaded. -/
theorem depLtcRaw_to_ltcRec (A : List.Vector F 253) (cb : ℕ → Bool) (k : F → Prop)
    (Zrow : F → F → F → Prop) (Orow : F → F → F → F → F → Prop)
    (hZ : ∀ pe bit pe', Zrow pe bit pe' → pe' = pe * (1 - bit))
    (hO : ∀ pe il bit g0 g1, Orow pe il bit g0 g1 →
        g0 = pe * bit ∧ g1 = il + pe * (1 - bit) - il * (pe * (1 - bit))) :
    ∀ fuel pe il, depLtcRaw A cb k Zrow Orow fuel pe il → ltcRec A cb k fuel pe il := by
  intro fuel
  induction fuel with
  | zero => intro pe il h; simpa [depLtcRaw, ltcRec] using h
  | succ m ih =>
    intro pe il h
    rw [depLtcRaw] at h
    rw [ltcRec]
    cases hc : cb m with
    | true =>
      simp only [hc, if_true] at h ⊢
      rw [ltConstStepOne_uncps]
      rcases h with ⟨g0, g1, hrow, htail⟩
      obtain ⟨hg0, hg1⟩ := hO _ _ _ _ _ hrow
      have htailR := ih g0 g1 htail
      rw [hg0, hg1] at htailR
      simpa using htailR
    | false =>
      simp only [hc, if_false] at h ⊢
      rw [ltConstStepZero_uncps]
      rcases h with ⟨pe', hrow, htail⟩
      have hpe' := hZ _ _ _ hrow
      have htailR := ih pe' il htail
      rwa [hpe'] at htailR

end Shieldd.GnarkFormal.Deployed.Dtk

import ShielddGnarkFormal.RvkDeployedRung
import ShielddGnarkFormal.DtkBridge

/-! # Deployed DTK ladder keystone

The deployed DTK `.sr1cs` slice carries the 251-rung variable-base
`ScalarMulLE(div_gen, ivk)` ladder as *bare* bilinear rows (each
`DivUnchecked`/`Select`/`Double` leaves only its constraint row, the quotient
hint being witness-side). The generated per-rung certificate packages those rows
into the abstract raw-row relation `RvkDeployedRung.depLadderRaw` (the same
deployed ladder shape used by rvk).

The extracted DTK circuit, however, routes its ladder through
`DtkBridge.dtkLadderK` — the CPS `scalarMulStep` nest. The two are structurally
identical after `dtkStep_uncps`: each is `∃ acc' cur', R … ∧ <tail>` with the
rung relation `R` being `StepRel` for `dtkLadderK` and the bare-row `Q` for
`depLadderRaw`. This module closes the gap once: given a per-rung certificate
`hstep` promoting each bare deployed rung to `StepRel` (under the incoming
on-curve invariants — exactly `RvkDeployedRung.deployedRung_stepRel`), the whole
deployed ladder implies the extracted `dtkLadderK`. The on-curve invariant is
threaded through one fuel induction so the denominators stay dischargeable and
the mirror circuit is never touched. -/

namespace Shieldd.GnarkFormal.Deployed.Dtk

open Shieldd.GnarkFormal.ScalarMulBridge
open Shieldd.GnarkFormal.RvkDeployedRung
open Shieldd.GnarkFormal.DtkBridge (dtkLadderK dtkStep_uncps)
open Bool (toZMod)
open EdwardsBridge (Point onCurve)

variable [Fact (Nat.Prime Extracted.DecafEdwardsAdd.Order)]

/-- **Keystone.** A deployed bare-row DTK ladder (`depLadderRaw Q`) implies the
extracted CPS ladder (`dtkLadderK`), given a per-rung certificate `hstep` that
each bare rung yields `StepRel` under the incoming on-curve invariants. One fuel
induction threading on-curve via `stepRel_semantic`; mirrors
`depLadderRaw_final_semantic` with the extracted CPS as the conclusion. -/
theorem depLadderRaw_to_dtkLadderK {n : ℕ}
    (Q : F → Point → Point → Point → Point → Prop)
    (bits : List.Vector Bool n) (k : List.Vector F 4 → Prop)
    (hstep : ∀ (bit : Bool) (acc cur acc' cur' : Point),
        onCurve acc → onCurve cur →
        Q (toZMod bit) acc cur acc' cur' →
        StepRel (toZMod bit) acc cur acc' cur') :
    ∀ fuel bitIndex acc cur,
      bitIndex + fuel ≤ n →
      onCurve acc → onCurve cur →
      depLadderRaw Q (bits.map toZMod) k fuel bitIndex acc cur →
      dtkLadderK (bits.map toZMod) k fuel bitIndex acc cur := by
  intro fuel
  induction fuel with
  | zero =>
    intro bitIndex acc cur _ _ _ h
    simpa [depLadderRaw, dtkLadderK] using h
  | succ fuel ih =>
    intro bitIndex acc cur hbound hacc hcur h
    rw [depLadderRaw] at h
    rcases h with ⟨acc', cur', hQ, htail⟩
    have hlt : bitIndex < n := by omega
    have hbit :
        ((bits.map toZMod)[bitIndex]! : F) = toZMod bits[bitIndex]! := by
      rw [getElem!_pos (bits.map toZMod) bitIndex hlt,
        getElem!_pos bits bitIndex hlt, List.Vector.getElem_map]
    rw [hbit] at hQ
    have hrel := hstep bits[bitIndex]! acc cur acc' cur' hacc hcur hQ
    have hsem := stepRel_semantic bits[bitIndex]! acc cur acc' cur' hrel hacc hcur
    rcases hsem with ⟨_, _, haccOn, hcurOn⟩
    rw [dtkLadderK, dtkStep_uncps]
    refine ⟨acc', cur', ?_, ?_⟩
    · rw [hbit]; cases acc; cases cur; exact hrel
    · have htailD := ih (bitIndex + 1) acc' cur' (by omega) haccOn hcurOn htail
      cases acc'; cases cur'; simpa using htailD

end Shieldd.GnarkFormal.Deployed.Dtk

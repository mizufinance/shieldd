import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg16
import ShielddGnarkFormal.DtkBridge

/-!
Fast inner-loop harness for DTK adapter obligations.

Purpose: iterate on a SINGLE failing sub-goal in seconds, instead of rebuilding
the 6329-row `DtkAdapterSegN` module (or worse, the whole downstream tree).

Loop:
  1. Copy the exact failing goal + the relation rows it needs out of the build log.
  2. State it here as an `example` over an abstract `rho`, with the rows as
     hypotheses (matching `SegN.relationRowK` bodies verbatim).
  3. `LEAN_NUM_THREADS=1 lake env lean <this file>` — type-checks THIS file only,
     against the cached Seg16/DtkBridge oleans. No unpack, no ladder rebuild.
  4. Use a SINGLE tactic (not `first | … | …`) so the residual is visible.
  5. Once green, transplant the tactic into `gen/gen_dtk_slice.py` and do ONE
     full adapter build to confirm.

Delete obligations from here once they are green in the generator.
-/

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Probe

open Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

-- Example slot (already solved; kept as a template for seg34/45 debugging).
-- The ivk-guard product obligation: relationRow24 + the c2 = -c1 field fold.
example (rho : Nat → Seg16.F)
    (r24 : (1 : Seg16.F) * rho 13103 *
        ((5602780471396575806509277699913763570037463653793953144491313093258883571225 : Seg16.F) * rho 13099
          + (1 : Seg16.F) * rho 13100) = (1 : Seg16.F) * rho 13106)
    (hcm : (5602780471396575806509277699913763570037463653793953144491313093258883571225 : Seg16.F)
      = -2841681278031794617739547238867782961338435681360110683443920362658525667816) :
    rho 13106 + 2 * (1 * rho 13106) -
      (rho 13103 *
          (rho 13100 - 2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 13099) +
        2 * (1 * rho 13103 *
            (5602780471396575806509277699913763570037463653793953144491313093258883571225 * rho 13099
              + 1 * rho 13100))) = 0 := by
  simp only [hcm] at r24 ⊢
  linear_combination (-3 : Seg16.F) * r24

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Probe

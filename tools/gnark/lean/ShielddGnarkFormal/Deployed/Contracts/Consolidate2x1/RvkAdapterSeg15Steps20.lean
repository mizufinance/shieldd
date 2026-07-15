import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step250

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_steps20 (rho : Nat -> Seg15.F)
    (r250 : Seg15.relationRow250 rho)
    (r1797 : Seg15.relationRow1797 rho)
    (r1798 : Seg15.relationRow1798 rho)
    (r1799 : Seg15.relationRow1799 rho)
    (r1800 : Seg15.relationRow1800 rho)
    (r1801 : Seg15.relationRow1801 rho)
    (r1802 : Seg15.relationRow1802 rho)
    (r1803 : Seg15.relationRow1803 rho)
    (r1804 : Seg15.relationRow1804 rho)
    : ∀ i, 250 ≤ i → i ≤ 250 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16136 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_step250 rho r250 r1797 r1798 r1799 r1800 r1801 r1802 r1803 r1804 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


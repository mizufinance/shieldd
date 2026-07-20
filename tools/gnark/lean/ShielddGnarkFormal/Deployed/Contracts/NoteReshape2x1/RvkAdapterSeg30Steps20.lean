import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step250

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_steps20 (rho : Nat -> Seg30.F)
    (r250 : Seg30.relationRow250 rho)
    (r1797 : Seg30.relationRow1797 rho)
    (r1798 : Seg30.relationRow1798 rho)
    (r1799 : Seg30.relationRow1799 rho)
    (r1800 : Seg30.relationRow1800 rho)
    (r1801 : Seg30.relationRow1801 rho)
    (r1802 : Seg30.relationRow1802 rho)
    (r1803 : Seg30.relationRow1803 rho)
    (r1804 : Seg30.relationRow1804 rho)
    : ∀ i, 250 ≤ i → i ≤ 250 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28311 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_step250 rho r250 r1797 r1798 r1799 r1800 r1801 r1802 r1803 r1804 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


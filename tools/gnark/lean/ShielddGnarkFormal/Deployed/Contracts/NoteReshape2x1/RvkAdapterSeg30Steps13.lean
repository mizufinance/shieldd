import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step215
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step216
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step217
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step218
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step219

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_steps13 (rho : Nat -> Seg30.F)
    (r215 : Seg30.relationRow215 rho)
    (r1517 : Seg30.relationRow1517 rho)
    (r1518 : Seg30.relationRow1518 rho)
    (r1519 : Seg30.relationRow1519 rho)
    (r1520 : Seg30.relationRow1520 rho)
    (r1521 : Seg30.relationRow1521 rho)
    (r1522 : Seg30.relationRow1522 rho)
    (r1523 : Seg30.relationRow1523 rho)
    (r1524 : Seg30.relationRow1524 rho)
    (r216 : Seg30.relationRow216 rho)
    (r1525 : Seg30.relationRow1525 rho)
    (r1526 : Seg30.relationRow1526 rho)
    (r1527 : Seg30.relationRow1527 rho)
    (r1528 : Seg30.relationRow1528 rho)
    (r1529 : Seg30.relationRow1529 rho)
    (r1530 : Seg30.relationRow1530 rho)
    (r1531 : Seg30.relationRow1531 rho)
    (r1532 : Seg30.relationRow1532 rho)
    (r217 : Seg30.relationRow217 rho)
    (r1533 : Seg30.relationRow1533 rho)
    (r1534 : Seg30.relationRow1534 rho)
    (r1535 : Seg30.relationRow1535 rho)
    (r1536 : Seg30.relationRow1536 rho)
    (r1537 : Seg30.relationRow1537 rho)
    (r1538 : Seg30.relationRow1538 rho)
    (r1539 : Seg30.relationRow1539 rho)
    (r1540 : Seg30.relationRow1540 rho)
    (r218 : Seg30.relationRow218 rho)
    (r1541 : Seg30.relationRow1541 rho)
    (r1542 : Seg30.relationRow1542 rho)
    (r1543 : Seg30.relationRow1543 rho)
    (r1544 : Seg30.relationRow1544 rho)
    (r1545 : Seg30.relationRow1545 rho)
    (r1546 : Seg30.relationRow1546 rho)
    (r1547 : Seg30.relationRow1547 rho)
    (r1548 : Seg30.relationRow1548 rho)
    (r219 : Seg30.relationRow219 rho)
    (r1549 : Seg30.relationRow1549 rho)
    (r1550 : Seg30.relationRow1550 rho)
    (r1551 : Seg30.relationRow1551 rho)
    (r1552 : Seg30.relationRow1552 rho)
    (r1553 : Seg30.relationRow1553 rho)
    (r1554 : Seg30.relationRow1554 rho)
    (r1555 : Seg30.relationRow1555 rho)
    (r1556 : Seg30.relationRow1556 rho)
    : ∀ i, 215 ≤ i → i ≤ 219 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_step215 rho r215 r1517 r1518 r1519 r1520 r1521 r1522 r1523 r1524 hacc
  · exact seg30_step216 rho r216 r1525 r1526 r1527 r1528 r1529 r1530 r1531 r1532 hacc
  · exact seg30_step217 rho r217 r1533 r1534 r1535 r1536 r1537 r1538 r1539 r1540 hacc
  · exact seg30_step218 rho r218 r1541 r1542 r1543 r1544 r1545 r1546 r1547 r1548 hacc
  · exact seg30_step219 rho r219 r1549 r1550 r1551 r1552 r1553 r1554 r1555 r1556 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


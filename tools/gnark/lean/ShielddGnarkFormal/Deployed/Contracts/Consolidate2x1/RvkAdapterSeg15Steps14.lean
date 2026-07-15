import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step220
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step221
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step222
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step223
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step224

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_steps14 (rho : Nat -> Seg15.F)
    (r220 : Seg15.relationRow220 rho)
    (r1557 : Seg15.relationRow1557 rho)
    (r1558 : Seg15.relationRow1558 rho)
    (r1559 : Seg15.relationRow1559 rho)
    (r1560 : Seg15.relationRow1560 rho)
    (r1561 : Seg15.relationRow1561 rho)
    (r1562 : Seg15.relationRow1562 rho)
    (r1563 : Seg15.relationRow1563 rho)
    (r1564 : Seg15.relationRow1564 rho)
    (r221 : Seg15.relationRow221 rho)
    (r1565 : Seg15.relationRow1565 rho)
    (r1566 : Seg15.relationRow1566 rho)
    (r1567 : Seg15.relationRow1567 rho)
    (r1568 : Seg15.relationRow1568 rho)
    (r1569 : Seg15.relationRow1569 rho)
    (r1570 : Seg15.relationRow1570 rho)
    (r1571 : Seg15.relationRow1571 rho)
    (r1572 : Seg15.relationRow1572 rho)
    (r222 : Seg15.relationRow222 rho)
    (r1573 : Seg15.relationRow1573 rho)
    (r1574 : Seg15.relationRow1574 rho)
    (r1575 : Seg15.relationRow1575 rho)
    (r1576 : Seg15.relationRow1576 rho)
    (r1577 : Seg15.relationRow1577 rho)
    (r1578 : Seg15.relationRow1578 rho)
    (r1579 : Seg15.relationRow1579 rho)
    (r1580 : Seg15.relationRow1580 rho)
    (r223 : Seg15.relationRow223 rho)
    (r1581 : Seg15.relationRow1581 rho)
    (r1582 : Seg15.relationRow1582 rho)
    (r1583 : Seg15.relationRow1583 rho)
    (r1584 : Seg15.relationRow1584 rho)
    (r1585 : Seg15.relationRow1585 rho)
    (r1586 : Seg15.relationRow1586 rho)
    (r1587 : Seg15.relationRow1587 rho)
    (r1588 : Seg15.relationRow1588 rho)
    (r224 : Seg15.relationRow224 rho)
    (r1589 : Seg15.relationRow1589 rho)
    (r1590 : Seg15.relationRow1590 rho)
    (r1591 : Seg15.relationRow1591 rho)
    (r1592 : Seg15.relationRow1592 rho)
    (r1593 : Seg15.relationRow1593 rho)
    (r1594 : Seg15.relationRow1594 rho)
    (r1595 : Seg15.relationRow1595 rho)
    (r1596 : Seg15.relationRow1596 rho)
    : ∀ i, 220 ≤ i → i ≤ 224 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16136 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_step220 rho r220 r1557 r1558 r1559 r1560 r1561 r1562 r1563 r1564 hacc
  · exact seg15_step221 rho r221 r1565 r1566 r1567 r1568 r1569 r1570 r1571 r1572 hacc
  · exact seg15_step222 rho r222 r1573 r1574 r1575 r1576 r1577 r1578 r1579 r1580 hacc
  · exact seg15_step223 rho r223 r1581 r1582 r1583 r1584 r1585 r1586 r1587 r1588 hacc
  · exact seg15_step224 rho r224 r1589 r1590 r1591 r1592 r1593 r1594 r1595 r1596 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1


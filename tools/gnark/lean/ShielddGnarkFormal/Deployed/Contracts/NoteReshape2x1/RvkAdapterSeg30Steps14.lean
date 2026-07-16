import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step220
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step221
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step222
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step223
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step224

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_steps14 (rho : Nat -> Seg30.F)
    (r220 : Seg30.relationRow220 rho)
    (r1557 : Seg30.relationRow1557 rho)
    (r1558 : Seg30.relationRow1558 rho)
    (r1559 : Seg30.relationRow1559 rho)
    (r1560 : Seg30.relationRow1560 rho)
    (r1561 : Seg30.relationRow1561 rho)
    (r1562 : Seg30.relationRow1562 rho)
    (r1563 : Seg30.relationRow1563 rho)
    (r1564 : Seg30.relationRow1564 rho)
    (r221 : Seg30.relationRow221 rho)
    (r1565 : Seg30.relationRow1565 rho)
    (r1566 : Seg30.relationRow1566 rho)
    (r1567 : Seg30.relationRow1567 rho)
    (r1568 : Seg30.relationRow1568 rho)
    (r1569 : Seg30.relationRow1569 rho)
    (r1570 : Seg30.relationRow1570 rho)
    (r1571 : Seg30.relationRow1571 rho)
    (r1572 : Seg30.relationRow1572 rho)
    (r222 : Seg30.relationRow222 rho)
    (r1573 : Seg30.relationRow1573 rho)
    (r1574 : Seg30.relationRow1574 rho)
    (r1575 : Seg30.relationRow1575 rho)
    (r1576 : Seg30.relationRow1576 rho)
    (r1577 : Seg30.relationRow1577 rho)
    (r1578 : Seg30.relationRow1578 rho)
    (r1579 : Seg30.relationRow1579 rho)
    (r1580 : Seg30.relationRow1580 rho)
    (r223 : Seg30.relationRow223 rho)
    (r1581 : Seg30.relationRow1581 rho)
    (r1582 : Seg30.relationRow1582 rho)
    (r1583 : Seg30.relationRow1583 rho)
    (r1584 : Seg30.relationRow1584 rho)
    (r1585 : Seg30.relationRow1585 rho)
    (r1586 : Seg30.relationRow1586 rho)
    (r1587 : Seg30.relationRow1587 rho)
    (r1588 : Seg30.relationRow1588 rho)
    (r224 : Seg30.relationRow224 rho)
    (r1589 : Seg30.relationRow1589 rho)
    (r1590 : Seg30.relationRow1590 rho)
    (r1591 : Seg30.relationRow1591 rho)
    (r1592 : Seg30.relationRow1592 rho)
    (r1593 : Seg30.relationRow1593 rho)
    (r1594 : Seg30.relationRow1594 rho)
    (r1595 : Seg30.relationRow1595 rho)
    (r1596 : Seg30.relationRow1596 rho)
    : ∀ i, 220 ≤ i → i ≤ 224 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_step220 rho r220 r1557 r1558 r1559 r1560 r1561 r1562 r1563 r1564 hacc
  · exact seg30_step221 rho r221 r1565 r1566 r1567 r1568 r1569 r1570 r1571 r1572 hacc
  · exact seg30_step222 rho r222 r1573 r1574 r1575 r1576 r1577 r1578 r1579 r1580 hacc
  · exact seg30_step223 rho r223 r1581 r1582 r1583 r1584 r1585 r1586 r1587 r1588 hacc
  · exact seg30_step224 rho r224 r1589 r1590 r1591 r1592 r1593 r1594 r1595 r1596 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step210
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step211
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step212
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step213
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step214

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_steps12 (rho : Nat -> Seg15.F)
    (r210 : Seg15.relationRow210 rho)
    (r1477 : Seg15.relationRow1477 rho)
    (r1478 : Seg15.relationRow1478 rho)
    (r1479 : Seg15.relationRow1479 rho)
    (r1480 : Seg15.relationRow1480 rho)
    (r1481 : Seg15.relationRow1481 rho)
    (r1482 : Seg15.relationRow1482 rho)
    (r1483 : Seg15.relationRow1483 rho)
    (r1484 : Seg15.relationRow1484 rho)
    (r211 : Seg15.relationRow211 rho)
    (r1485 : Seg15.relationRow1485 rho)
    (r1486 : Seg15.relationRow1486 rho)
    (r1487 : Seg15.relationRow1487 rho)
    (r1488 : Seg15.relationRow1488 rho)
    (r1489 : Seg15.relationRow1489 rho)
    (r1490 : Seg15.relationRow1490 rho)
    (r1491 : Seg15.relationRow1491 rho)
    (r1492 : Seg15.relationRow1492 rho)
    (r212 : Seg15.relationRow212 rho)
    (r1493 : Seg15.relationRow1493 rho)
    (r1494 : Seg15.relationRow1494 rho)
    (r1495 : Seg15.relationRow1495 rho)
    (r1496 : Seg15.relationRow1496 rho)
    (r1497 : Seg15.relationRow1497 rho)
    (r1498 : Seg15.relationRow1498 rho)
    (r1499 : Seg15.relationRow1499 rho)
    (r1500 : Seg15.relationRow1500 rho)
    (r213 : Seg15.relationRow213 rho)
    (r1501 : Seg15.relationRow1501 rho)
    (r1502 : Seg15.relationRow1502 rho)
    (r1503 : Seg15.relationRow1503 rho)
    (r1504 : Seg15.relationRow1504 rho)
    (r1505 : Seg15.relationRow1505 rho)
    (r1506 : Seg15.relationRow1506 rho)
    (r1507 : Seg15.relationRow1507 rho)
    (r1508 : Seg15.relationRow1508 rho)
    (r214 : Seg15.relationRow214 rho)
    (r1509 : Seg15.relationRow1509 rho)
    (r1510 : Seg15.relationRow1510 rho)
    (r1511 : Seg15.relationRow1511 rho)
    (r1512 : Seg15.relationRow1512 rho)
    (r1513 : Seg15.relationRow1513 rho)
    (r1514 : Seg15.relationRow1514 rho)
    (r1515 : Seg15.relationRow1515 rho)
    (r1516 : Seg15.relationRow1516 rho)
    : ∀ i, 210 ≤ i → i ≤ 214 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16130 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_step210 rho r210 r1477 r1478 r1479 r1480 r1481 r1482 r1483 r1484 hacc
  · exact seg15_step211 rho r211 r1485 r1486 r1487 r1488 r1489 r1490 r1491 r1492 hacc
  · exact seg15_step212 rho r212 r1493 r1494 r1495 r1496 r1497 r1498 r1499 r1500 hacc
  · exact seg15_step213 rho r213 r1501 r1502 r1503 r1504 r1505 r1506 r1507 r1508 hacc
  · exact seg15_step214 rho r214 r1509 r1510 r1511 r1512 r1513 r1514 r1515 r1516 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


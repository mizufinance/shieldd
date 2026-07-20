import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step205
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step206
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step207
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step208
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step209

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_steps11 (rho : Nat -> Seg30.F)
    (r205 : Seg30.relationRow205 rho)
    (r1437 : Seg30.relationRow1437 rho)
    (r1438 : Seg30.relationRow1438 rho)
    (r1439 : Seg30.relationRow1439 rho)
    (r1440 : Seg30.relationRow1440 rho)
    (r1441 : Seg30.relationRow1441 rho)
    (r1442 : Seg30.relationRow1442 rho)
    (r1443 : Seg30.relationRow1443 rho)
    (r1444 : Seg30.relationRow1444 rho)
    (r206 : Seg30.relationRow206 rho)
    (r1445 : Seg30.relationRow1445 rho)
    (r1446 : Seg30.relationRow1446 rho)
    (r1447 : Seg30.relationRow1447 rho)
    (r1448 : Seg30.relationRow1448 rho)
    (r1449 : Seg30.relationRow1449 rho)
    (r1450 : Seg30.relationRow1450 rho)
    (r1451 : Seg30.relationRow1451 rho)
    (r1452 : Seg30.relationRow1452 rho)
    (r207 : Seg30.relationRow207 rho)
    (r1453 : Seg30.relationRow1453 rho)
    (r1454 : Seg30.relationRow1454 rho)
    (r1455 : Seg30.relationRow1455 rho)
    (r1456 : Seg30.relationRow1456 rho)
    (r1457 : Seg30.relationRow1457 rho)
    (r1458 : Seg30.relationRow1458 rho)
    (r1459 : Seg30.relationRow1459 rho)
    (r1460 : Seg30.relationRow1460 rho)
    (r208 : Seg30.relationRow208 rho)
    (r1461 : Seg30.relationRow1461 rho)
    (r1462 : Seg30.relationRow1462 rho)
    (r1463 : Seg30.relationRow1463 rho)
    (r1464 : Seg30.relationRow1464 rho)
    (r1465 : Seg30.relationRow1465 rho)
    (r1466 : Seg30.relationRow1466 rho)
    (r1467 : Seg30.relationRow1467 rho)
    (r1468 : Seg30.relationRow1468 rho)
    (r209 : Seg30.relationRow209 rho)
    (r1469 : Seg30.relationRow1469 rho)
    (r1470 : Seg30.relationRow1470 rho)
    (r1471 : Seg30.relationRow1471 rho)
    (r1472 : Seg30.relationRow1472 rho)
    (r1473 : Seg30.relationRow1473 rho)
    (r1474 : Seg30.relationRow1474 rho)
    (r1475 : Seg30.relationRow1475 rho)
    (r1476 : Seg30.relationRow1476 rho)
    : ∀ i, 205 ≤ i → i ≤ 209 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28311 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_step205 rho r205 r1437 r1438 r1439 r1440 r1441 r1442 r1443 r1444 hacc
  · exact seg30_step206 rho r206 r1445 r1446 r1447 r1448 r1449 r1450 r1451 r1452 hacc
  · exact seg30_step207 rho r207 r1453 r1454 r1455 r1456 r1457 r1458 r1459 r1460 hacc
  · exact seg30_step208 rho r208 r1461 r1462 r1463 r1464 r1465 r1466 r1467 r1468 hacc
  · exact seg30_step209 rho r209 r1469 r1470 r1471 r1472 r1473 r1474 r1475 r1476 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


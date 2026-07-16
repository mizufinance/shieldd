import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step200
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step201
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step202
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step203
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step204

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_steps10 (rho : Nat -> Seg30.F)
    (r200 : Seg30.relationRow200 rho)
    (r1397 : Seg30.relationRow1397 rho)
    (r1398 : Seg30.relationRow1398 rho)
    (r1399 : Seg30.relationRow1399 rho)
    (r1400 : Seg30.relationRow1400 rho)
    (r1401 : Seg30.relationRow1401 rho)
    (r1402 : Seg30.relationRow1402 rho)
    (r1403 : Seg30.relationRow1403 rho)
    (r1404 : Seg30.relationRow1404 rho)
    (r201 : Seg30.relationRow201 rho)
    (r1405 : Seg30.relationRow1405 rho)
    (r1406 : Seg30.relationRow1406 rho)
    (r1407 : Seg30.relationRow1407 rho)
    (r1408 : Seg30.relationRow1408 rho)
    (r1409 : Seg30.relationRow1409 rho)
    (r1410 : Seg30.relationRow1410 rho)
    (r1411 : Seg30.relationRow1411 rho)
    (r1412 : Seg30.relationRow1412 rho)
    (r202 : Seg30.relationRow202 rho)
    (r1413 : Seg30.relationRow1413 rho)
    (r1414 : Seg30.relationRow1414 rho)
    (r1415 : Seg30.relationRow1415 rho)
    (r1416 : Seg30.relationRow1416 rho)
    (r1417 : Seg30.relationRow1417 rho)
    (r1418 : Seg30.relationRow1418 rho)
    (r1419 : Seg30.relationRow1419 rho)
    (r1420 : Seg30.relationRow1420 rho)
    (r203 : Seg30.relationRow203 rho)
    (r1421 : Seg30.relationRow1421 rho)
    (r1422 : Seg30.relationRow1422 rho)
    (r1423 : Seg30.relationRow1423 rho)
    (r1424 : Seg30.relationRow1424 rho)
    (r1425 : Seg30.relationRow1425 rho)
    (r1426 : Seg30.relationRow1426 rho)
    (r1427 : Seg30.relationRow1427 rho)
    (r1428 : Seg30.relationRow1428 rho)
    (r204 : Seg30.relationRow204 rho)
    (r1429 : Seg30.relationRow1429 rho)
    (r1430 : Seg30.relationRow1430 rho)
    (r1431 : Seg30.relationRow1431 rho)
    (r1432 : Seg30.relationRow1432 rho)
    (r1433 : Seg30.relationRow1433 rho)
    (r1434 : Seg30.relationRow1434 rho)
    (r1435 : Seg30.relationRow1435 rho)
    (r1436 : Seg30.relationRow1436 rho)
    : ∀ i, 200 ≤ i → i ≤ 204 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_step200 rho r200 r1397 r1398 r1399 r1400 r1401 r1402 r1403 r1404 hacc
  · exact seg30_step201 rho r201 r1405 r1406 r1407 r1408 r1409 r1410 r1411 r1412 hacc
  · exact seg30_step202 rho r202 r1413 r1414 r1415 r1416 r1417 r1418 r1419 r1420 hacc
  · exact seg30_step203 rho r203 r1421 r1422 r1423 r1424 r1425 r1426 r1427 r1428 hacc
  · exact seg30_step204 rho r204 r1429 r1430 r1431 r1432 r1433 r1434 r1435 r1436 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


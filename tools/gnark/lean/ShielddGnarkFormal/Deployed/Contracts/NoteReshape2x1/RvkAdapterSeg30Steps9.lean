import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step195
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step196
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step197
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step198
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step199

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_steps9 (rho : Nat -> Seg30.F)
    (r195 : Seg30.relationRow195 rho)
    (r1357 : Seg30.relationRow1357 rho)
    (r1358 : Seg30.relationRow1358 rho)
    (r1359 : Seg30.relationRow1359 rho)
    (r1360 : Seg30.relationRow1360 rho)
    (r1361 : Seg30.relationRow1361 rho)
    (r1362 : Seg30.relationRow1362 rho)
    (r1363 : Seg30.relationRow1363 rho)
    (r1364 : Seg30.relationRow1364 rho)
    (r196 : Seg30.relationRow196 rho)
    (r1365 : Seg30.relationRow1365 rho)
    (r1366 : Seg30.relationRow1366 rho)
    (r1367 : Seg30.relationRow1367 rho)
    (r1368 : Seg30.relationRow1368 rho)
    (r1369 : Seg30.relationRow1369 rho)
    (r1370 : Seg30.relationRow1370 rho)
    (r1371 : Seg30.relationRow1371 rho)
    (r1372 : Seg30.relationRow1372 rho)
    (r197 : Seg30.relationRow197 rho)
    (r1373 : Seg30.relationRow1373 rho)
    (r1374 : Seg30.relationRow1374 rho)
    (r1375 : Seg30.relationRow1375 rho)
    (r1376 : Seg30.relationRow1376 rho)
    (r1377 : Seg30.relationRow1377 rho)
    (r1378 : Seg30.relationRow1378 rho)
    (r1379 : Seg30.relationRow1379 rho)
    (r1380 : Seg30.relationRow1380 rho)
    (r198 : Seg30.relationRow198 rho)
    (r1381 : Seg30.relationRow1381 rho)
    (r1382 : Seg30.relationRow1382 rho)
    (r1383 : Seg30.relationRow1383 rho)
    (r1384 : Seg30.relationRow1384 rho)
    (r1385 : Seg30.relationRow1385 rho)
    (r1386 : Seg30.relationRow1386 rho)
    (r1387 : Seg30.relationRow1387 rho)
    (r1388 : Seg30.relationRow1388 rho)
    (r199 : Seg30.relationRow199 rho)
    (r1389 : Seg30.relationRow1389 rho)
    (r1390 : Seg30.relationRow1390 rho)
    (r1391 : Seg30.relationRow1391 rho)
    (r1392 : Seg30.relationRow1392 rho)
    (r1393 : Seg30.relationRow1393 rho)
    (r1394 : Seg30.relationRow1394 rho)
    (r1395 : Seg30.relationRow1395 rho)
    (r1396 : Seg30.relationRow1396 rho)
    : ∀ i, 195 ≤ i → i ≤ 199 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_step195 rho r195 r1357 r1358 r1359 r1360 r1361 r1362 r1363 r1364 hacc
  · exact seg30_step196 rho r196 r1365 r1366 r1367 r1368 r1369 r1370 r1371 r1372 hacc
  · exact seg30_step197 rho r197 r1373 r1374 r1375 r1376 r1377 r1378 r1379 r1380 hacc
  · exact seg30_step198 rho r198 r1381 r1382 r1383 r1384 r1385 r1386 r1387 r1388 hacc
  · exact seg30_step199 rho r199 r1389 r1390 r1391 r1392 r1393 r1394 r1395 r1396 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1


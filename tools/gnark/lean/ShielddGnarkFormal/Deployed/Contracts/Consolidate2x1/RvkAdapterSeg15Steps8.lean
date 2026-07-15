import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step190
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step191
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step192
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step193
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step194

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_steps8 (rho : Nat -> Seg15.F)
    (r190 : Seg15.relationRow190 rho)
    (r1317 : Seg15.relationRow1317 rho)
    (r1318 : Seg15.relationRow1318 rho)
    (r1319 : Seg15.relationRow1319 rho)
    (r1320 : Seg15.relationRow1320 rho)
    (r1321 : Seg15.relationRow1321 rho)
    (r1322 : Seg15.relationRow1322 rho)
    (r1323 : Seg15.relationRow1323 rho)
    (r1324 : Seg15.relationRow1324 rho)
    (r191 : Seg15.relationRow191 rho)
    (r1325 : Seg15.relationRow1325 rho)
    (r1326 : Seg15.relationRow1326 rho)
    (r1327 : Seg15.relationRow1327 rho)
    (r1328 : Seg15.relationRow1328 rho)
    (r1329 : Seg15.relationRow1329 rho)
    (r1330 : Seg15.relationRow1330 rho)
    (r1331 : Seg15.relationRow1331 rho)
    (r1332 : Seg15.relationRow1332 rho)
    (r192 : Seg15.relationRow192 rho)
    (r1333 : Seg15.relationRow1333 rho)
    (r1334 : Seg15.relationRow1334 rho)
    (r1335 : Seg15.relationRow1335 rho)
    (r1336 : Seg15.relationRow1336 rho)
    (r1337 : Seg15.relationRow1337 rho)
    (r1338 : Seg15.relationRow1338 rho)
    (r1339 : Seg15.relationRow1339 rho)
    (r1340 : Seg15.relationRow1340 rho)
    (r193 : Seg15.relationRow193 rho)
    (r1341 : Seg15.relationRow1341 rho)
    (r1342 : Seg15.relationRow1342 rho)
    (r1343 : Seg15.relationRow1343 rho)
    (r1344 : Seg15.relationRow1344 rho)
    (r1345 : Seg15.relationRow1345 rho)
    (r1346 : Seg15.relationRow1346 rho)
    (r1347 : Seg15.relationRow1347 rho)
    (r1348 : Seg15.relationRow1348 rho)
    (r194 : Seg15.relationRow194 rho)
    (r1349 : Seg15.relationRow1349 rho)
    (r1350 : Seg15.relationRow1350 rho)
    (r1351 : Seg15.relationRow1351 rho)
    (r1352 : Seg15.relationRow1352 rho)
    (r1353 : Seg15.relationRow1353 rho)
    (r1354 : Seg15.relationRow1354 rho)
    (r1355 : Seg15.relationRow1355 rho)
    (r1356 : Seg15.relationRow1356 rho)
    : ∀ i, 190 ≤ i → i ≤ 194 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16136 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_step190 rho r190 r1317 r1318 r1319 r1320 r1321 r1322 r1323 r1324 hacc
  · exact seg15_step191 rho r191 r1325 r1326 r1327 r1328 r1329 r1330 r1331 r1332 hacc
  · exact seg15_step192 rho r192 r1333 r1334 r1335 r1336 r1337 r1338 r1339 r1340 hacc
  · exact seg15_step193 rho r193 r1341 r1342 r1343 r1344 r1345 r1346 r1347 r1348 hacc
  · exact seg15_step194 rho r194 r1349 r1350 r1351 r1352 r1353 r1354 r1355 r1356 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

